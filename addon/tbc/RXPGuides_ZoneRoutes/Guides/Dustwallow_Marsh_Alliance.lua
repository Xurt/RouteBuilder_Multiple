-- 35-41 Dustwallow Marsh: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 35, 41).
-- Split into 3 guides, listed under "35 - 42 Dustwallow Marsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Dustwallow Marsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 42 Dustwallow Marsh
#subweight -35
#name 35-37 Dustwallow Marsh: around Captain Garran Vimes
#next Zone Routes (Alliance)\37-39 Dustwallow Marsh: around "Swamp Eye" Jarl

step
    .goto 1445/1,-4457.85,-3624.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1260 >>Turn in Morgan Stern
    .target Morgan Stern
    .isOnQuest 1260
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .accept 11126 >>Accept Traitors Among Us
    .target Calia Hastings
step
    #loop
    .goto 1445/1,-4504.05,-3817.98,0
    .goto 1445/1,-4504.05,-3817.98,40,0
    .goto 1445/1,-4435.27,-3854.03,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deserter Agitator|r
    .complete 11126,1 --Deserter Agitator (5)
    .target Deserter Agitator
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .goto 1445/1,-4517.49,-3828.83
    .fp Theramore >> Get the Theramore Flight Path
    .target Baldruc
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 11126 >>Turn in Traitors Among Us while you are here
    .isQuestComplete 11126
    .target Calia Hastings
step
    .goto 1445/1,-4391.17,-3682.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Aden|r
    .accept 11136 >>Accept A Disturbing Development
    .target Lieutenant Aden
step
    .goto 1445/1,-4447.87,-3645.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
    .accept 1282 >>Accept They Call Him Smiling Jim
    .target Guard Byron
step
    .goto 1445/1,-4538.70,-3721.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Lendry|r
    .turnin 1302 >>Turn in James Hyal
    .target Clerk Lendry
    .isOnQuest 1302
step
    .goto 1445/1,-4546.05,-3738.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r
    .turnin 1264 >>Turn in The Missing Diplomat
    .target Commander Samaul
    .isOnQuest 1264
step
    .goto 1445/1,-4546.05,-3738.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r
    .accept 1265 >>Accept The Missing Diplomat
    .target Commander Samaul
    .isQuestTurnedIn 1264 --any of: The Missing Diplomat
    .xp <28,1
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1282 >>Turn in They Call Him Smiling Jim
    .accept 11123 >>Accept Inspecting the Ruins
    .target Captain Garran Vimes
step
    .goto 1445/1,-4107.67,-3471.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Wymor|r
    .turnin 11136 >>Turn in A Disturbing Development
    .target Captain Wymor
step
    .goto 1445/1,-4120.80,-3464.83
    >>Sentry Point explored
    .complete 1265,1 --Sentry Point explored
    .isOnQuest 1265
step
    .goto 1445/1,-4462.05,-3757.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .turnin 1265 >>Turn in The Missing Diplomat
    .target Archmage Tervosh
    .isOnQuest 1265
step
    .goto 1445/1,-4462.05,-3757.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .accept 1266 >>Accept The Missing Diplomat
    .target Archmage Tervosh
    .isQuestTurnedIn 1265 --any of: The Missing Diplomat
    .xp <28,1
step
    .goto 1445/1,-4107.67,-3471.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Wymor|r
    .accept 11137 >>Accept Defias in Dustwallow?
    .target Captain Wymor
step
    .goto 1445/1,-3885.60,-2940.53
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1219 >>Accept The Orc Report
step
    .goto 1445/1,-3350.10,-2896.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    .turnin 1266 >>Turn in The Missing Diplomat
    .target Private Hendel
    .isOnQuest 1266
step
    .goto 1445/1,-3350.10,-2896.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    .accept 1324 >>Accept The Missing Diplomat
    .target Private Hendel
    .isQuestTurnedIn 1266 --any of: The Missing Diplomat
    .xp <28,1
step
    .goto 1445/1,-3350.10,-2896.08
    >>Kill |cRXP_ENEMY_Private Hendel|r
    .complete 1324,1 --Private Hendel slain (1)
    .mob Private Hendel
    .isOnQuest 1324
step
    .goto 1445/1,-4462.05,-3757.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .turnin 1324 >>Turn in The Missing Diplomat
    .target Archmage Tervosh
    .isOnQuest 1324
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .accept 1267 >>Accept The Missing Diplomat
    .target Lady Jaina Proudmoore
    .isQuestTurnedIn 1324 --any of: The Missing Diplomat
    .xp <28,1
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 1267 >>Turn in The Missing Diplomat
    .target Lady Jaina Proudmoore
    .isOnQuest 1267
step
    .goto 1445/1,-2820.37,-3372.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .accept 1177 >>Accept Hungry!
    .target Mudcrush Durtfeet
step
    .goto 1445/1,-2538.97,-3701.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inspector Tarem|r
    .turnin 11123 >>Turn in Inspecting the Ruins
    .target Inspector Tarem
step
    .goto 1445/1,-2534.25,-3700.73
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 1284 >>Accept Suspicious Hoofprints
step
    .goto 1445/1,-2541.07,-3721.73
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 1252 >>Accept Lieutenant Paval Reethe
step
    .goto 1445/1,-2530.57,-3735.03
    >>Click the |cRXP_PICK_Black Shield|r
    .accept 1253 >>Accept The Black Shield
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1947 >>Turn in Journey to the Marsh
    .target Tabetha
    .isOnQuest 1947
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1951 >>Turn in Rituals of Power
    .target Tabetha
    .isQuestComplete 1951
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1953 >>Turn in Return to the Marsh
    .target Tabetha
    .isOnQuest 1953
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1949 >>Accept Hidden Secrets
    .target Tabetha
    .isQuestTurnedIn 1947 --any of: Journey to the Marsh
    .xp <30,1
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1799 >>Turn in Fragments of the Orb of Orahil
    .target Tabetha
    .isQuestComplete 1799
step
    .xp 35 >>Grind to level 35 (The Zeppelin Crash needs it)
step
    .goto 1445/1,-3395.25,-4043.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .accept 11172 >>Accept The Zeppelin Crash
    .target Apprentice Morlann
step
    .goto 1445/1,-3392.62,-4036.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .accept 11169 >>Accept The Grimtotem Weapon
    .target Apprentice Garion
    .xp <35,1
step
    .goto 1445/1,-3787.42,-4025.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 11172 >>Turn in The Zeppelin Crash
    .target Moxie Steelgrille
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 11126 >>Turn in Traitors Among Us
    .accept 11128 >>Accept Propaganda War
    .target Calia Hastings
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1252 >>Turn in Lieutenant Paval Reethe while you are here
    .isQuestComplete 1252
    .target Captain Garran Vimes
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1253 >>Turn in The Black Shield while you are here
    .isQuestComplete 1253
    .target Captain Garran Vimes
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1284 >>Turn in Suspicious Hoofprints while you are here
    .isQuestComplete 1284
    .target Captain Garran Vimes
step
    .goto 1445/1,-4541.85,-4088.53
    >>Pick up |cRXP_PICK_Deserter Propaganda|r from the ground
    .complete 11128,1 --Deserter Propaganda (1)
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 11128 >>Turn in Propaganda War
    .accept 11133 >>Accept Discrediting the Deserters
    .target Calia Hastings
step
    #loop
    .goto 1445/1,-4479.37,-3807.13,0
    .goto 1445/1,-4479.37,-3807.13,40,0
    .goto 1445/1,-4411.65,-3722.08,40,0
    .goto 1445/1,-4323.97,-3607.63,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theramore Guard|r
    .complete 11133,1 --Theramore Guard (6)
    .target Theramore Guard
step
    .goto 1445/1,-4391.17,-3682.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Aden|r
    .turnin 1219 >>Turn in The Orc Report while you are here
    .isQuestComplete 1219
    .target Lieutenant Aden
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1252 >>Turn in Lieutenant Paval Reethe
    .turnin 1253 >>Turn in The Black Shield
    .turnin 1284 >>Turn in Suspicious Hoofprints
    .accept 1259 >>Accept Lieutenant Paval Reethe
    .accept 1319 >>Accept The Black Shield
    .target Captain Garran Vimes
step
    .goto 1445/1,-4547.62,-3717.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
    .turnin 1259 >>Turn in Lieutenant Paval Reethe
    .accept 1285 >>Accept Daelin's Men
    .target Adjutant Tesoran
step
    .goto 1445/1,-4391.17,-3682.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Aden|r
    .turnin 1219 >>Turn in The Orc Report
    .accept 1220 >>Accept Captain Vimes
    .target Lieutenant Aden
step << Mage
    .goto 1445/1,-4442.68,-3750.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysuria|r
    .train 49359 >> Train |T135764:0|t[Teleport: Theramore]
    .train 49360 >> Train |T135749:0|t[Portal: Theramore]
    .target Ysuria
    .xp <35,1
step
    .goto 1445/1,-4374.37,-3798.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
    .turnin 1319 >>Turn in The Black Shield
    .accept 1320 >>Accept The Black Shield
    .target Caz Twosprocket
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 11133 >>Turn in Discrediting the Deserters
    .target Calia Hastings
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1285 >>Turn in Daelin's Men
    .turnin 1220 >>Turn in Captain Vimes
    .turnin 1320 >>Turn in The Black Shield
    .accept 1286 >>Accept The Deserters
    .target Captain Garran Vimes
step
    .goto 1445/1,-4457.85,-3624.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .accept 1204 >>Accept Mudrock Soup and Bugs
    .target Morgan Stern
step
    #completewith Along44
    >>As you go: Kill |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongue|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1204,1 --Forked Mudrock Tongue (8)
    .mob Mudrock Spikeshell
step
    #label Along44
    .goto 1445/1,-4329.75,-3050.08
    >>Kill |cRXP_ENEMY_Garn Mathers|r and loot |cRXP_LOOT_Defias Orders|r
    .complete 11137,1 --Defias Orders (1)
    .mob Garn Mathers
step
    .goto 1445/1,-4447.87,-3645.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
    .accept 11212 >>Accept Tabetha's Farm
    .target Guard Byron
step
    .goto 1445/1,-4338.67,-3701.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uma Bartulm|r
    .target Uma Bartulm
    .home >>Set your Hearthstone to Uma Bartulm's inn
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .accept 11134 >>Accept The End of the Deserters
    .target Calia Hastings
step
    .goto 1445/1,-4558.12,-3846.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Amelyn|r
    .accept 11191 >>Accept This Old Lighthouse
    .target Sergeant Amelyn
step
    .goto 1445/1,-4760.77,-3680.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Babs Fizzletorque|r
    .turnin 11191 >>Turn in This Old Lighthouse
    .accept 11192 >>Accept Thresher Oil
    .target Babs Fizzletorque
step
    .goto 1445/1,-4976.02,-4026.58
    >>Kill |cRXP_ENEMY_Gavis Greyshield|r
    .complete 11134,1 --Gavis Greyshield Captured (1)
    .mob Gavis Greyshield
step
    #loop
    .goto 1445/1,-4752.37,-3911.08,0
    .goto 1445/1,-4752.37,-3911.08,40,0
    .goto 1445/1,-4757.62,-3820.78,40,0
    >>Kill |cRXP_ENEMY_Young Murk Thresher|r and loot |cRXP_LOOT_Thresher Oil|r
    .complete 11192,1 --Thresher Oil (1)
    .mob Young Murk Thresher
step
    .goto 1445/1,-4760.77,-3680.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Babs Fizzletorque|r
    .turnin 11192 >>Turn in Thresher Oil
    .accept 11193 >>Accept Dastardly Denizens of the Deep
    .target Babs Fizzletorque
step
    .goto 1445/1,-4610.10,-3849.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dirty" Michael Crowe|r
    .turnin 11193 >>Turn in Dastardly Denizens of the Deep
    .accept 11194 >>Accept Is it Real?
    .target "Dirty" Michael Crowe
step
    .goto 1445/1,-4562.32,-3819.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 11134 >>Turn in The End of the Deserters
    .target Calia Hastings
step
    .goto 1445/1,-4558.12,-3846.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Amelyn|r
    .accept 11177 >>Accept The Hermit of Swamplight Manor
    .target Sergeant Amelyn
step
    .goto 1445/1,-4059.90,-4139.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nat Pagle|r
    .turnin 11194 >>Turn in Is it Real?
    .accept 11209 >>Accept Nat's Bargain
    .target Nat Pagle
step
    .goto 1445/1,-4059.90,-4139.28
    >>Nat Pagle at Nat's Landing wants you to test his new fish bait.
    .complete 11209,1 --Fish Paste Tested (1)
step
    .goto 1445/1,-4059.90,-4139.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nat Pagle|r
    .turnin 11209 >>Turn in Nat's Bargain
    .accept 11210 >>Accept Oh, It's Real
    .target Nat Pagle
step
    .goto 1445/1,-3787.42,-4025.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .accept 11207 >>Accept Secure the Cargo!
    .accept 11174 >>Accept Corrosion Prevention
    .target Moxie Steelgrille
step
    #loop
    .goto 1445/1,-3754.87,-4087.13,0
    .goto 1445/1,-3754.87,-4087.13,40,0
    .goto 1445/1,-3695.02,-3945.03,40,0
    .goto 1445/1,-3846.75,-3922.28,40,0
    >>Kill |cRXP_ENEMY_Corrosive Swamp Oozes|r, |cRXP_ENEMY_Acidic Swamp Oozes|r and |cRXP_ENEMY_Bubbling Swamp Oozes|r
    >>Pick up |cRXP_PICK_Zeppelin Cargo|r from the ground
    .complete 11174,1 --Corrosive Swamp Ooze (10)
    .complete 11207,1 --Zeppelin Cargo (1)
    .mob Corrosive Swamp Ooze
    .mob Acidic Swamp Ooze
    .mob Bubbling Swamp Ooze
step
    .goto 1445/1,-3787.42,-4025.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 11174 >>Turn in Corrosion Prevention
    .turnin 11207 >>Turn in Secure the Cargo!
    .accept 11208 >>Accept Delivery for Drazzit
    .target Moxie Steelgrille
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11212 >>Turn in Tabetha's Farm
    .target Tabetha
step
    .goto 1445/1,-3392.62,-4036.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .accept 11169 >>Accept The Grimtotem Weapon
    .accept 11173 >>Accept The Reagent Thief
    .target Apprentice Garion
step
    .goto 1445/1,-2869.72,-3934.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
    .turnin 1286 >>Turn in The Deserters
    .accept 1287 >>Accept The Deserters
    .target Balos Jacken
step
    #loop
    .goto 1445/1,-3233.02,-4004.53,0
    .goto 1445/1,-3233.02,-4004.53,40,0
    .goto 1445/1,-3273.97,-3937.33,40,0
    .goto 1445/1,-3244.57,-4166.23,40,0
    >>Kill |cRXP_ENEMY_Mottled Drywallow Crocolisks|r and |cRXP_ENEMY_Drywallow Daggermaws|r
    >>Kill |cRXP_ENEMY_Noxious Shredders|r and |cRXP_ENEMY_Darkfang Creepers|r. Loot them for |cRXP_LOOT_Marsh Venom|r
    .complete 11169,1 --Mottled Drywallow Crocolisk (10)
    .complete 11173,1 --Marsh Venom (1)
    .mob Mottled Drywallow Crocolisk
    .mob Drywallow Daggermaw
    .mob Noxious Shredder
    .mob Darkfang Creeper
step
    .goto 1445/1,-3392.62,-4036.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .turnin 11169 >>Turn in The Grimtotem Weapon
    .turnin 11173 >>Turn in The Reagent Thief
    .target Apprentice Garion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dyslix Silvergrub|r
    .target Dyslix Silvergrub
    .goto 1445/1,-3223.200,-4568.400
    .fp Mudsprocket >>Get the Mudsprocket Flight Path
step
    .goto 1445/1,-3197.32,-4585.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11208 >>Turn in Delivery for Drazzit
    .target Drazzit Dripvalve
step
    .goto 1445/1,-3166.87,-4592.88
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 11184 >>Accept WANTED: Goreclaw the Ravenous
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11158 >>Accept Bloodfen Feathers
    .target Brogg
step
    #loop
    .goto 1445/1,-2757.90,-4312.88,0
    .goto 1445/1,-2757.90,-4312.88,40,0
    .goto 1445/1,-2685.45,-4318.13,40,0
    >>Kill |cRXP_ENEMY_Goreclaw the Ravenous|r
    >>Kill |cRXP_ENEMY_Bloodfen Razormaws|r, |cRXP_ENEMY_Bloodfen Lashtails|r and |cRXP_ENEMY_Goreclaw the Ravenous|r. Loot them for |cRXP_LOOT_Bloodfen Feather|r
    .complete 11184,1 --Goreclaw the Ravenous slain (1)
    .complete 11158,1 --Bloodfen Feather (5)
    .mob Goreclaw the Ravenous
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
step
    .goto 1445/1,-3197.32,-4585.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11184 >>Turn in WANTED: Goreclaw the Ravenous
    .target Drazzit Dripvalve
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11158 >>Turn in Bloodfen Feathers
    .target Brogg
step << Mage
    .isOnQuest 11210,1287,11137
    .train 49359,3
    .subzoneskip 513
step
    .goto 1445/1,-4629.52,-3845.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Mills|r
    .turnin 11210 >>Turn in Oh, It's Real
    .accept 11198 >>Accept Take Down Tethyr!
    .target Major Mills
step
    .goto 1445/1,-4657.35,-3880.98
    >>Kill |cRXP_ENEMY_Tethyr|r
    .complete 11198,1 --Tethyr slain (1)
    .mob Tethyr
step
    .goto 1445/1,-4629.52,-3845.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Mills|r
    .turnin 11198 >>Turn in Take Down Tethyr!
    .target Major Mills
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1287 >>Turn in The Deserters
    .accept 11143 >>Accept A Grim Connection
    .target Captain Garran Vimes
step
    .goto 1445/1,-4107.67,-3471.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Wymor|r
    .turnin 11137 >>Turn in Defias in Dustwallow?
    .accept 11138 >>Accept Renn McGill
    .target Captain Wymor
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 11177 >>Turn in The Hermit of Swamplight Manor
    .accept 1218 >>Accept Marsh Frog Legs
    .target "Swamp Eye" Jarl
step
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Giant Marsh Frogs|r. Loot them for |cRXP_LOOT_Marsh Frog Leg|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1218,1 --Marsh Frog Leg (10)
    .mob Giant Marsh Frog
step
    #label Along79
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .accept 11180 >>Accept What's Haunting Witch Hill?
    .target Mordant Grimsby
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r, |cRXP_ENEMY_Mirefin Muckdweller|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x1
    #loop
    .goto 1445/1,-3911.85,-2921.63,0
    .goto 1445/1,-3911.85,-2921.63,40,0
    .goto 1445/1,-3991.65,-2892.58,40,0
    .goto 1445/1,-3873.00,-2824.33,40,0
    >>Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r
    >>Kill |cRXP_ENEMY_Giant Marsh Frogs|r. Loot them for |cRXP_LOOT_Marsh Frog Leg|r
    .complete 11180,1 --Risen Spirit (8)
    .complete 1218,1 --Marsh Frog Leg (10)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
    .mob Giant Marsh Frog
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1218 >>Turn in Marsh Frog Legs
    .accept 1206 >>Accept Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11180 >>Turn in What's Haunting Witch Hill?
    .accept 11181 >>Accept The Witch's Bane
    .target Mordant Grimsby
step
    #loop
    .goto 1445/1,-3792.67,-2781.63,0
    .goto 1445/1,-3792.67,-2781.63,40,0
    .goto 1445/1,-3630.97,-2819.78,40,0
    .goto 1445/1,-3653.02,-2680.83,40,0
    >>Pick up |cRXP_PICK_Witchbane|r from the ground
    .complete 11181,1 --Witchbane (9)
step
    .goto 1445/1,-3424.65,-2840.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .accept 11146 >>Accept Raptor Captor
    .target Sergeant Lukas
step
    .goto 1445/1,-3422.55,-2894.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 11143 >>Turn in A Grim Connection
    .accept 11144 >>Accept Confirming the Suspicion
    .accept 11148 >>Accept Arms of the Grimtotems
    .target Captain Darill
step
    #loop
    .goto 1445/1,-3386.85,-2721.43,0
    .goto 1445/1,-3386.85,-2721.43,40,0
    .goto 1445/1,-3480.30,-2642.68,40,0
    .goto 1445/1,-3540.15,-2718.63,40,0
    >>Kill |cRXP_ENEMY_Bloodfen Raptors|r and |cRXP_ENEMY_Bloodfen Screechers|r
    .complete 11146,1 --Bloodfen Raptor (6)
    .mob Bloodfen Raptor
    .mob Bloodfen Screecher
step
    .goto 1445/1,-3436.20,-2646.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1222 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .goto 1445/1,-3540.67,-2893.63
    >>Help Stinky find Bogbean Leaves
    .complete 1222,1 --Help Stinky find Bogbean Leaves
step
    .goto 1445/1,-3424.65,-2840.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .turnin 11146 >>Turn in Raptor Captor
    .accept 11145 >>Accept Prisoners of the Grimtotems
    .accept 11147 >>Accept Unleash the Raptors
    .target Sergeant Lukas
step
    #completewith Along90
    >>As you go: Pick up |cRXP_PICK_Blackhoof Armaments|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11148,1 --Blackhoof Armaments (7)
step
    #label Along90
    #loop
    .goto 1445/1,-3327.00,-2646.53,0
    .goto 1445/1,-3327.00,-2646.53,40,0
    .goto 1445/1,-3237.22,-2577.93,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Breakers|r, |cRXP_ENEMY_Grimtotem Spirit-Shifters|r and |cRXP_ENEMY_Grimtotem Elders|r. Loot them for |cRXP_LOOT_Grimtotem Key|r
    .collect 33061,1,11145,1 --Grimtotem Key (1)
    .mob Grimtotem Breaker
    .mob Grimtotem Spirit-Shifter
    .mob Grimtotem Elder
step
    #completewith Along93
    >>As you go: Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r. |cRXP_WARN_Anything left is finished later|r
    .collect 33050,1,11144,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
step
    #loop
    .goto 1445/1,-3204.15,-2460.33,0
    .goto 1445/1,-3204.15,-2460.33,40,0
    .goto 1445/1,-3097.05,-2434.78,40,0
    >>Pick up |cRXP_PICK_Blackhoof Armaments|r from the ground
    .complete 11148,1 --Blackhoof Armaments (7)
step
    .goto 1445/1,-3121.72,-2468.38
    >>Sergeant Lukas at North Point Tower wants you to free 5 Theramore Prisoners.
    .complete 11145,1 --Theramore Prisoner (5)
    .target Theramore Prisoner
step
    #label Along93
    .goto 1445/1,-3153.75,-2445.63
    >>Sergeant Lukas at North Point Tower wants you to place the Raptor Bait near the windmill in Blackhoof Village.
    .complete 11147,1 --Invis Raptor Credit
    .target Invis Raptor Credit
step
    #loop
    .goto 1445/1,-2781.00,-2814.53,0
    .goto 1445/1,-2781.00,-2814.53,40,0
    .goto 1445/1,-2800.42,-2882.78,40,0
    .goto 1445/1,-2614.05,-2785.13,40,0
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Hatchlings|r, |cRXP_ENEMY_Darkmist Recluses|r and |cRXP_ENEMY_Darkmist Silkspinners|r. Loot them for |cRXP_LOOT_Unpopped Darkmist Eye|r
    .complete 1206,1 --Unpopped Darkmist Eye (20)
    .mob Darkmist Spider
    .mob Darkmist Hatchling
    .mob Darkmist Recluse
    .mob Darkmist Silkspinner
step
    #completewith next
    .hs >>Hearth to Uma Bartulm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1445/1,-4457.85,-3624.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1222 >>Turn in Stinky's Escape
    .target Morgan Stern
step
    .goto 1445/1,-4321.35,-2629.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renn McGill|r
    .turnin 11138 >>Turn in Renn McGill
    .accept 11139 >>Accept Secondhand Diving Gear
    .target Renn McGill
step
    .goto 1445/1,-4247.32,-2694.13
    >>Pick up |cRXP_PICK_Tool Kit|r from the ground
    >>Pick up |cRXP_PICK_Damaged Diving Gear|r from the ground
    .complete 11139,2 --Tool Kit (1)
    .complete 11139,1 --Damaged Diving Gear (1)
step
    .goto 1445/1,-4321.35,-2629.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renn McGill|r
    .turnin 11139 >>Turn in Secondhand Diving Gear
    .accept 11140 >>Accept Recover the Cargo!
    .target Renn McGill
step
    #loop
    .goto 1445/1,-4335.52,-2503.73,0
    .goto 1445/1,-4335.52,-2503.73,40,0
    .goto 1445/1,-4487.25,-2595.43,40,0
    >>Loot the |cRXP_PICK_Shipwreck Debris|r for |cRXP_LOOT_Salvaged Strongbox|r
    .complete 11140,1 --Salvaged Strongbox (6)
step
    .goto 1445/1,-4321.35,-2629.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renn McGill|r
    .turnin 11140 >>Turn in Recover the Cargo!
    .accept 11141 >>Accept Jaina Must Know
    .target Renn McGill
step
    #completewith Drop635x2
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r, |cRXP_ENEMY_Mirefin Muckdweller|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #completewith Drop635x2
    >>As you go: Kill |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongue|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1204,1 --Forked Mudrock Tongue (8)
    .mob Mudrock Spikeshell
step
    #label Drop635x2
    #loop
    .goto 1445/1,-4045.72,-2581.43,0
    .goto 1445/1,-4045.72,-2581.43,40,0
    .goto 1445/1,-3985.35,-2577.23,40,0
    .goto 1445/1,-3839.92,-2576.88,40,0
    >>Kill |cRXP_ENEMY_Mirefin Oracles|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Warriors|r and |cRXP_ENEMY_Mirefin Muckdwellers|r. Loot them for |cRXP_LOOT_Mirefin Head|r
    .complete 1177,1 --Mirefin Head (8)
    .mob Mirefin Oracle
    .mob Mirefin Coastrunner
    .mob Mirefin Warrior
    .mob Mirefin Muckdweller
step
    .goto 1445/1,-2820.37,-3372.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .turnin 1177 >>Turn in Hungry!
    .target Mudcrush Durtfeet
step << Mage
    .isOnQuest 1204,1222,11138,1206,11181
    .train 49359,3
    .subzoneskip 513
step
    #loop
    .goto 1445/1,-3201.52,-2437.58,0
    .goto 1445/1,-3201.52,-2437.58,40,0
    .goto 1445/1,-3128.02,-2402.93,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .collect 33050,1,11144,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
step
    #loop
    .goto 1445/1,-3864.07,-2495.68,0
    .goto 1445/1,-3864.07,-2495.68,40,0
    .goto 1445/1,-3953.85,-2356.03,40,0
    .goto 1445/1,-4108.20,-2574.08,40,0
    >>Kill |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongue|r
    .complete 1204,1 --Forked Mudrock Tongue (8)
    .mob Mudrock Spikeshell
step
    .goto 1445/1,-4457.85,-3624.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1204 >>Turn in Mudrock Soup and Bugs
    .accept 1258 >>Accept ... and Bugs
    .target Morgan Stern
step
    .goto 1445/1,-4457.85,-3624.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1258 >>Turn in ... and Bugs
    .target Morgan Stern
    .isQuestComplete 1258
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 42 Dustwallow Marsh
#subweight -35
#name 37-39 Dustwallow Marsh: around "Swamp Eye" Jarl
--RouteBuilder:next
#next Zone Routes (Alliance)\38-40 Stranglethorn Vale: around Fleet Master Seahorn;Zone Routes (Alliance)\38-39 Arathi Highlands: around Skuerto

step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1206 >>Turn in Jarl Needs Eyes
    .target "Swamp Eye" Jarl
    .isOnQuest 1206
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 1203 >>Accept Jarl Needs a Blade
    .target "Swamp Eye" Jarl
    .isQuestTurnedIn 1206 --any of: Jarl Needs Eyes
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11181 >>Turn in The Witch's Bane
    .target Mordant Grimsby
    .isOnQuest 11181
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .accept 11183 >>Accept Cleansing Witch Hill
    .target Mordant Grimsby
    .isQuestTurnedIn 11181 --any of: The Witch's Bane
step
    .goto 1445/1,-3871.95,-2967.48
    >>Kill |cRXP_ENEMY_Zelfrax|r
    .complete 11183,1 --Witch Hill Cleansed (1)
    .mob Zelfrax
    .isOnQuest 11183
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11183 >>Turn in Cleansing Witch Hill while you are here
    .isQuestComplete 11183
    .target Mordant Grimsby
step
    .goto 1445/1,-4008.45,-2724.23
    >>Kill |cRXP_ENEMY_Razorspine|r and loot |cRXP_LOOT_Razorspine's Sword|r
    .complete 1203,1 --Razorspine's Sword (1)
    .mob Razorspine
    .isOnQuest 1203
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1203 >>Turn in Jarl Needs a Blade
    .target "Swamp Eye" Jarl
    .isOnQuest 1203
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11183 >>Turn in Cleansing Witch Hill
    .target Mordant Grimsby
    .isOnQuest 11183
step
    .goto 1445/1,-3424.65,-2840.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .turnin 11145 >>Turn in Prisoners of the Grimtotems
    .target Sergeant Lukas
    .isOnQuest 11145
step
    .goto 1445/1,-3424.65,-2840.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .turnin 11147 >>Turn in Unleash the Raptors
    .target Sergeant Lukas
    .isOnQuest 11147
step
    .goto 1445/1,-3422.55,-2894.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 11148 >>Turn in Arms of the Grimtotems
    .target Captain Darill
    .isOnQuest 11148
step
    .goto 1445/1,-3422.55,-2894.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 11144 >>Turn in Confirming the Suspicion
    .target Captain Darill
    .isQuestComplete 11144
step
    .goto 1445/1,-3422.55,-2894.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .accept 11149 >>Accept Tabetha's Assistance
    .target Captain Darill
    .isQuestTurnedIn 11144 --Confirming the Suspicion
    .xp <35,1
    .isQuestTurnedIn 11148 --Arms of the Grimtotems
step
    #completewith next
    .hs >>Hearth to Uma Bartulm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 11141 >>Turn in Jaina Must Know
    .target Lady Jaina Proudmoore
    .isOnQuest 11141
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .accept 11142 >>Accept Survey Alcaz Island
    .target Lady Jaina Proudmoore
    .isQuestTurnedIn 11141 --any of: Jaina Must Know
step
    .goto 1445/1,-4509.82,-3823.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassa Crimsonwing|r
    .complete 11142,1 --Cassa Crimsonwing
    .target Cassa Crimsonwing
    .isOnQuest 11142
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 11142 >>Turn in Survey Alcaz Island
    .target Lady Jaina Proudmoore
    .isOnQuest 11142
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .accept 11222 >>Accept Warn Bolvar!
    .target Lady Jaina Proudmoore
    .isQuestTurnedIn 11142 --any of: Survey Alcaz Island
step
    .goto 1445/1,-4454.17,-3749.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 11223 >>Turn in Return to Jaina
    .target Lady Jaina Proudmoore
    .isOnQuest 11223
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11160 >>Accept Banner of the Stonemaul
    .accept 11161 >>Accept The Essence of Enmity
    .target Brogg
    .isQuestTurnedIn 11158 --any of: Bloodfen Feathers
step
    .goto 1445/1,-3155.85,-4587.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 11217 >>Accept Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1948 >>Accept Items of Power
    .target Tabetha
    .isQuestTurnedIn 1947 --any of: Journey to the Marsh
    .xp <30,1
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11149 >>Turn in Tabetha's Assistance
    .target Tabetha
    .isOnQuest 11149
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1952 >>Accept Mage's Wand
    .target Tabetha
    .isQuestTurnedIn 1948 --Items of Power
    .isQuestTurnedIn 1951 --Rituals of Power
    .xp <30,1
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11150 >>Accept Raze Direhorn Post!
    .target Tabetha
    .isQuestTurnedIn 11149 --any of: Tabetha's Assistance
    .xp <35,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1952 >>Turn in Mage's Wand
    .target Tabetha
    .isOnQuest 1952
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1957 >>Accept Mana Surges
    .target Tabetha
    .isQuestTurnedIn 1956 --any of: Power in Uldaman
    .xp <35,1
step << Mage
    .goto 1445/1,-3381.07,-4026.23
    >>Kill |cRXP_ENEMY_Mana Surges|r
    .complete 1957,1 --Mana Surge slain (12)
    .mob Mana Surge
    .isOnQuest 1957
step
    .goto 1445/1,-3395.25,-4043.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .accept 11156 >>Accept Direhorn Raiders
    .target Apprentice Morlann
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1957 >>Turn in Mana Surges
    .target Tabetha
    .isOnQuest 1957
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1958 >>Accept Celestial Power
    .target Tabetha
    .isQuestTurnedIn 1957 --any of: Mana Surges
    .xp <35,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1958 >>Turn in Celestial Power
    .target Tabetha
    .isOnQuest 1958
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1954 >>Accept The Infernal Orb
    .target Tabetha
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 4961 >>Accept Cleansing of the Orb of Orahil
    .target Tabetha
    .isQuestTurnedIn 1799 --Fragments of the Orb of Orahil
    .isQuestTurnedIn 4962 --Shard of a Felhound
    .xp <35,1
step
    #completewith Along144
    >>As you go: Kill |cRXP_ENEMY_Grimtotem Earthbinders|r and |cRXP_ENEMY_Grimtotem Destroyers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11156,1 --Direhorn Grimtotems killed (8)
    .mob Grimtotem Earthbinder
    .mob Grimtotem Destroyer
step
    .goto 1445/1,-3454.05,-3663.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cylla|r
    .accept 11185 >>Accept The Apothecary's Letter
    .target Apothecary Cylla
step
    .goto 1445/1,-3470.32,-3701.08
    >>Burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post, then return to Tabetha at her farm.
    .complete 11150,3 --East Tent
    .target East Tent
    .isOnQuest 11150
step
    .goto 1445/1,-3455.62,-3662.23
    >>Burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post, then return to Tabetha at her farm.
    .complete 11150,2 --Northeast Tent
    .target Northeast Tent
    .isOnQuest 11150
step
    #label Along144
    .goto 1445/1,-3421.50,-3640.88
    >>Burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post, then return to Tabetha at her farm.
    .complete 11150,1 --North Tent
    .target North Tent
    .isOnQuest 11150
step
    #loop
    .goto 1445/1,-3399.45,-3653.83,0
    .goto 1445/1,-3399.45,-3653.83,40,0
    .goto 1445/1,-3439.35,-3735.03,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Earthbinders|r and |cRXP_ENEMY_Grimtotem Destroyers|r
    .complete 11156,1 --Direhorn Grimtotems killed (8)
    .mob Grimtotem Earthbinder
    .mob Grimtotem Destroyer
step
    .goto 1445/1,-3395.25,-4043.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .turnin 11156 >>Turn in Direhorn Raiders
    .target Apprentice Morlann
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11150 >>Turn in Raze Direhorn Post!
    .target Tabetha
    .isOnQuest 11150
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11151 >>Accept Justice for the Hyals
    .target Tabetha
    .isQuestTurnedIn 11150 --any of: Raze Direhorn Post!
    .xp <35,1
step
    .goto 1445/1,-3362.17,-4054.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andello Porter|r
    .turnin 11185 >>Turn in The Apothecary's Letter
    .target Andello Porter
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1954 >>Turn in The Infernal Orb
    .target Tabetha
    .isQuestComplete 1954
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1955 >>Accept The Exorcism
    .target Tabetha
    .isQuestTurnedIn 1954 --any of: The Infernal Orb
    .xp <35,1
step
    .goto 1445/1,-2975.77,-4464.43
    >>Open the |cRXP_PICK_Stonemaul Clan Banner|r. Loot it for |cRXP_LOOT_Stonemaul Banner|r
    .complete 11160,1 --Stonemaul Banner (1)
    .isOnQuest 11160
step
    #loop
    .goto 1445/1,-2907.00,-4448.33,0
    .goto 1445/1,-2907.00,-4448.33,40,0
    .goto 1445/1,-2961.07,-4388.83,40,0
    .goto 1445/1,-3054.00,-4329.33,40,0
    >>Kill |cRXP_ENEMY_Firemane Scalebanes|r, |cRXP_ENEMY_Firemane Scouts|r and |cRXP_ENEMY_Firemane Ash Tails|r. Loot them for |cRXP_LOOT_Black Dragonkin Essence|r
    .complete 11161,1 --Black Dragonkin Essence (10)
    .mob Firemane Scalebane
    .mob Firemane Scout
    .mob Firemane Ash Tail
    .isOnQuest 11161
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11160 >>Turn in Banner of the Stonemaul
    .target Brogg
    .isOnQuest 11160
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11161 >>Turn in The Essence of Enmity
    .target Brogg
    .isOnQuest 11161
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11159 >>Accept Spirits of Stonemaul Hold
    .target Brogg
    .isQuestTurnedIn 11161 --any of: The Essence of Enmity
step
    #loop
    .goto 1445/1,-3369.00,-4427.33,0
    .goto 1445/1,-3369.00,-4427.33,40,0
    .goto 1445/1,-3327.00,-4322.33,40,0
    >>Kill |cRXP_ENEMY_Stonemaul Spirits|r
    .complete 11159,1 --Stonemaul Spirits laid to rest (10)
    .mob Stonemaul Spirit
    .isOnQuest 11159
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11159 >>Turn in Spirits of Stonemaul Hold
    .target Brogg
    .isOnQuest 11159
step
    #loop
    .goto 1445/1,-3411.00,-4660.78,0
    .goto 1445/1,-3411.00,-4660.78,40,0
    .goto 1445/1,-3506.02,-4778.73,40,0
    .goto 1445/1,-3436.72,-4848.73,40,0
    >>Pick up |cRXP_PICK_Wyrmtail|r from the ground
    .complete 11217,1 --Wyrmtail (8)
step
    .goto 1445/1,-3155.85,-4587.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 11217 >>Turn in Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step << Mage
    .goto 1445/1,-3289.72,-4306.23
    >>Open the |cRXP_PICK_Tin Vein|r. Loot it for |cRXP_LOOT_Jade|r
    .complete 1948,1 --Jade (1)
    .isOnQuest 1948
step << Mage
    .goto 1445/1,-3369.00,-4035.33
    >>Kill the Demon of the Orb
    .complete 1955,2 --Kill the Demon of the Orb
    .isOnQuest 1955
step << Mage
    .goto 1445/1,-3378.97,-4027.28
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    .complete 1955,1 --Demon of the Orb slain (1)
    .mob Demon of the Orb
    .isOnQuest 1955
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1955 >>Turn in The Exorcism
    .target Tabetha
    .isOnQuest 1955
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1956 >>Accept Power in Uldaman
    .target Tabetha
    .isQuestTurnedIn 1955 --any of: The Exorcism
    .xp <35,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1948 >>Turn in Items of Power
    .target Tabetha
    .isQuestComplete 1948
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1956 >>Turn in Power in Uldaman
    .target Tabetha
    .isQuestComplete 1956
step << Warlock
    .goto 1445/1,-3378.97,-4027.28
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    .complete 4961,1 --Demon of the Orb slain (1)
    .mob Demon of the Orb
    .isOnQuest 4961
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 4961 >>Turn in Cleansing of the Orb of Orahil
    .target Tabetha
    .isOnQuest 4961
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 4976 >>Accept Returning the Cleansed Orb
    .target Tabetha
    .isQuestTurnedIn 4961 --any of: Cleansing of the Orb of Orahil
    .xp <35,1
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 11151 >>Turn in Justice for the Hyals
    .target Captain Garran Vimes
    .isOnQuest 11151
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .accept 11152 >>Accept Peace at Last
    .target Captain Garran Vimes
    .isQuestTurnedIn 11151 --any of: Justice for the Hyals
    .xp <35,1
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .goto 1445/1,-4440.26,-3625.83
    .target Michael
    .subzoneskip 513,1
    .train 2976,1
step
    .goto 1445/1,-4318.20,-3532.03
    >>Click the |cRXP_PICK_Hyal Family Monument|r
    .complete 11152,1 --Hyal Family Monument
    .isOnQuest 11152
step
    .goto 1445/1,-4556.02,-3735.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 11152 >>Turn in Peace at Last
    .target Captain Garran Vimes
    .isOnQuest 11152
step
    +|cRXP_WARN_That is all of Dustwallow Marsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Crystal in the Mountains
    >>|cRXP_FRIENDLY_Stormwind City|r: Warn Bolvar!
    >>|cRXP_FRIENDLY_The Barrens|r: Returning the Cleansed Orb << Warlock
    >>|cRXP_FRIENDLY_Thousand Needles|r: Hidden Secrets << Mage
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Confirming the Suspicion
    >>|cRXP_FRIENDLY_Swamp of Sorrows and back here|r: ... and Bugs
    >>|cRXP_FRIENDLY_Desolace and back here|r: The Infernal Orb << Mage
step
    +|cRXP_WARN_Suggested next zones at level 38|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Fleet Master Seahorn), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.5 levels of quests, starting around Skuerto). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dustwallow Marsh is planned from level 41.|r Load its guide for level 41 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 42 Dustwallow Marsh
#subweight -35
#name 41-42 Dustwallow Marsh
--RouteBuilder:next
#next Zone Routes (Alliance)\38-40 Stranglethorn Vale: around Fleet Master Seahorn

step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1954 >>Turn in The Infernal Orb
    .target Tabetha
    .isQuestComplete 1954
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11211 >>Accept Help for Mudsprocket
    .target Tabetha
step
    .goto 1445/1,-3197.32,-4585.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11211 >>Turn in Help for Mudsprocket
    .target Drazzit Dripvalve
step
    .goto 1445/1,-4457.85,-3624.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1258 >>Turn in ... and Bugs
    .target Morgan Stern
    .isQuestComplete 1258
step
    #loop
    .goto 1445/1,-3201.52,-2437.58,0
    .goto 1445/1,-3201.52,-2437.58,40,0
    .goto 1445/1,-3128.02,-2402.93,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .collect 33050,1,11144,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
    .isOnQuest 11144
step
    .goto 1445/1,-3422.55,-2894.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 11144 >>Turn in Confirming the Suspicion
    .target Captain Darill
    .isQuestComplete 11144
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11162 >>Accept Challenge to the Black Flight
    .target Brogg
    .isQuestTurnedIn 11159 --any of: Spirits of Stonemaul Hold
step
    .goto 1445/1,-3715.50,-4700.33
    >>Kill |cRXP_ENEMY_Smolderwing|r
    .complete 11162,1 --Stonemaul Clan Avenged (1)
    .mob Smolderwing
    .isOnQuest 11162
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11162 >>Turn in Challenge to the Black Flight
    .target Brogg
    .isOnQuest 11162
step
    +|cRXP_WARN_End of the Dustwallow Marsh route.|r
step
    +|cRXP_WARN_Suggested next zones at level 41|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.6 levels of quests, starting around Fleet Master Seahorn). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
