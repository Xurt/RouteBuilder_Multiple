-- 21-26 Ashenvale: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Ashenvale.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 21-26 Ashenvale
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step
    .goto 63,26.88,22.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Shyela|r
    .turnin 26408 >>Turn in Ashes in Ashenvale
    .target Sentinel Shyela
    .isOnQuest 26408
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,18.23,20.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 13602 >>Accept Naga of the Strand
    .target Shindrell Swiftfire
step
    .goto 63,18.22,20.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .accept 26465 >>Accept The Ancient Statuettes
    .target Talen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along3
    >>As you go: Kill |cRXP_ENEMY_Wrathtail Razortails|r, |cRXP_ENEMY_Wrathtail Wave Riders|r, |cRXP_ENEMY_Wrathtail Sea Witches|r and |cRXP_ENEMY_Wrathtail Sorceress|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13602,1 --Wrathtail Razortail (8)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sea Witch
    .mob Wrathtail Sorceress
step
    #label Along3
    #loop
    .goto 63,14.49,21.49,0
    .goto 63,14.49,21.49,40,0
    .goto 63,14.67,16.28,40,0
    .goto 63,10.72,20.67,40,0
    >>Pick up |cRXP_PICK_Ancient Statuette|r from the ground
    .complete 26465,1 --Ancient Statuette (10)
step
    .goto 63,18.22,20.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .turnin 26465 >>Turn in The Ancient Statuettes
    .accept 26466 >>Accept Ruuzel
    .target Talen
step
    #loop
    .goto 63,12.33,13.03,0
    .goto 63,12.33,13.03,40,0
    .goto 63,9.44,12.28,40,0
    .goto 63,6.64,13.29,40,0
    >>Kill |cRXP_ENEMY_Wrathtail Razortails|r, |cRXP_ENEMY_Wrathtail Wave Riders|r, |cRXP_ENEMY_Wrathtail Sea Witches|r and |cRXP_ENEMY_Wrathtail Sorceress|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Ruuzel|r and loot |cRXP_LOOT_Ring of Zoram|r
    .complete 13602,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Wrathtail Razortail (8)
    .complete 26466,1 --Ring of Zoram (1)
    .mob Wrathtail Razortail << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Wrathtail Wave Rider << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Wrathtail Sea Witch << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Wrathtail Sorceress << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Ruuzel
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
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
    .accept 28492 >>Accept Hero's Call: Ashenvale!
step
    #completewith next
    .zone 63 >>Leave Darnassus for Ashenvale
    .zoneskip 63
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,84.09,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .accept 26444 >>Accept Destroy the Legion
    .target Vindicator Vedaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.89,62.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .accept 26457 >>Accept Agents of Destruction
    .target Sentinel Luciel Starwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.76,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .accept 26446 >>Accept Reclaiming Felfire Hill
    .target Gnarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop26443x1
    >>|cRXP_LOOT_Diabolical Plans|r can drop from |cRXP_ENEMY_Searing Infernal|r, |cRXP_ENEMY_Roaming Felguard|r, |cRXP_ENEMY_Mannoroc Lasher|r. Use it to start the quest if you get one
    .collect 23777,1,26443 --Diabolical Plans (1)
    .accept 26443 >>Accept Diabolical Plans
    .use 23777
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop26443x1
    #loop
    .goto 63,81.15,69.18,0
    .goto 63,81.15,69.18,40,0
    .goto 63,83.52,70.55,40,0
    >>Click the |cRXP_PICK_Fertile Dirt Mound|r
    >>Kill |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Roaming Felguards|r and |cRXP_ENEMY_Mannoroc Lashers|r
    .complete 26446,1 --Fertile Dirt Mound
    .complete 26444,1 --Searing Infernal (8)
    .mob Searing Infernal
    .mob Roaming Felguard
    .mob Mannoroc Lasher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.76,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .turnin 26446 >>Turn in Reclaiming Felfire Hill
    .accept 13766 >>Accept Closure is Only Natural
    .target Gnarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,84.09,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .turnin 26443 >>Turn in Diabolical Plans
    .target Vindicator Vedaar
    .isOnQuest 26443
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,84.09,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .turnin 26444 >>Turn in Destroy the Legion
    .target Vindicator Vedaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,84.09,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .accept 26445 >>Accept Never Again!
    .target Vindicator Vedaar
    .isQuestTurnedIn 26443 --any of: Diabolical Plans
    .xp <19,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,84.63,75.22,0
    .goto 63,84.63,75.22,40,0
    .goto 63,84.67,78.43,40,0
    .goto 63,84.09,77.06,40,0
    .goto 63,82.96,79.66,40,0
    .goto 63,81.98,77.25,40,0
    .goto 63,81.53,77.55,40,0
    .goto 63,81.27,79.86,40,0
    >>Use Gnarl's Bough to close 10 Demon Gates.
    .complete 13766,1 --Demon Gate Master Bunny
    .target Demon Gate Master Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,89.74,76.71
    >>Kill |cRXP_ENEMY_Gorgannon|r and loot |cRXP_LOOT_Gorgannon's Flaming Blade|r
    .complete 26445,1 --Gorgannon's Flaming Blade (1)
    .mob Gorgannon
    .isOnQuest 26445
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.76,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .turnin 13766 >>Turn in Closure is Only Natural
    .accept 13792 >>Accept The Shadewalker
    .target Gnarl
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .accept 13848 >>Accept Bad News Bear-er
    .target Kadrak
    .isQuestTurnedIn 13805 --any of: Pierce Their Heart!
    .xp <19,1
step
    .goto 63,73.86,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .accept 13801 >>Accept Dead Elves Walking
    .target Pixel
    .isQuestTurnedIn 13803 --any of: Blood of the Weak
    .xp <19,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,75.64,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaivan Shadewalker|r
    .turnin 13792 >>Turn in The Shadewalker
    .accept 13796 >>Accept The Forest Heart
    .accept 26472 >>Accept Insane Druids
    .target Gaivan Shadewalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along36
    >>As you go: Kill |cRXP_ENEMY_Mavoris Cloudsbreak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26472,3 --Mavoris Cloudsbreak slain (1)
    .mob Mavoris Cloudsbreak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,74.74,75.23,0
    .goto 63,74.74,75.23,40,0
    .goto 63,76.72,74.10,40,0
    >>Kill |cRXP_ENEMY_Severed Druids|r and |cRXP_ENEMY_Severed Keepers|r. Loot them for |cRXP_LOOT_Untainted Spirit|r
    >>Kill |cRXP_ENEMY_Taneel Darkwood|r
    >>Kill |cRXP_ENEMY_Uthil Mooncall|r
    .collect 45571,1,13796,1 --Untainted Spirit (1)
    .complete 26472,1 --Taneel Darkwood slain (1)
    .complete 26472,2 --Uthil Mooncall slain (1)
    .mob Severed Druid
    .mob Severed Keeper
    .mob Taneel Darkwood
    .mob Uthil Mooncall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along36
    .goto 63,75.52,74.21
    >>Pick up |cRXP_PICK_The Forest Heart|r from the ground
    .complete 13796,1 --The Forest Heart (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,75.09,74.21
    >>Kill |cRXP_ENEMY_Mavoris Cloudsbreak|r
    .complete 26472,3 --Mavoris Cloudsbreak slain (1)
    .mob Mavoris Cloudsbreak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,75.64,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaivan Shadewalker|r
    .turnin 26472 >>Turn in Insane Druids
    .target Gaivan Shadewalker
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
    .zone 63 >>Leave The Exodar for Ashenvale
    .zoneskip 63
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,29.01,24.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bathran|r
    .accept 13595 >>Accept Of Their Own Design
    .target Bathran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.88,22.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Shyela|r
    .turnin 28492 >>Turn in Hero's Call: Ashenvale!
    .accept 13594 >>Accept Don't Forget the Horde
    .target Sentinel Shyela
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.75,22.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evenar Stillwhisper|r
    .accept 26473 >>Accept Bathran's Hair
    .target Evenar Stillwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along52
    >>As you go: Pick up |cRXP_PICK_Bathran's Hair|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 26473,1 --Bathran's Hair (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,30.76,24.06,0
    .goto 63,30.76,24.06,40,0
    .goto 63,32.07,22.27,40,0
    >>Kill |cRXP_ENEMY_Forsaken Herbalists|r and |cRXP_ENEMY_Orc Overseers|r
    >>Open the |cRXP_PICK_Potion of Wildfire|r. Loot it for |cRXP_LOOT_Bottle of Wildfire|r
    .complete 13594,1 --Forsaken Herbalist (8)
    .collect 44967,1,13595,1 --Bottle of Wildfire (1)
    .mob Forsaken Herbalist
    .mob Orc Overseer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,33.21,21.55
    >>Obtain a Bottle of Wildfire and throw it at Bathran's Corpse to burn it.
    .complete 13595,1 --Bathran's Corpse
    .target Bathran's Corpse
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along52
    .goto 63,29.01,24.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bathran|r
    .turnin 13595 >>Turn in Of Their Own Design
    .target Bathran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.88,22.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Shyela|r
    .turnin 13594 >>Turn in Don't Forget the Horde
    .accept 13617 >>Accept West to the Strand
    .target Sentinel Shyela
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,18.23,20.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 13602 >>Turn in Naga of the Strand
    .target Shindrell Swiftfire
step
    .goto 63,18.22,20.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .turnin 13617 >>Turn in West to the Strand << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 26466 >>Turn in Ruuzel
    .target Talen
step
    .goto 63,12.08,33.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .accept 13923 >>Accept To Hellscream's Watch
    .target Commander Grimfang
step
    .goto 63,12.08,33.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13848 >>Turn in Bad News Bear-er
    .target Commander Grimfang
    .isOnQuest 13848
step
    .goto 63,26.68,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .turnin 5713 >>Turn in One Shot.  One Kill.
    .target Sentinel Onaeya
    .isQuestComplete 5713
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.68,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .accept 13624 >>Accept A Squad of Your Own
    .target Sentinel Onaeya
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.26,35.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Maestra|r
    .accept 13630 >>Accept The Reason Why
    .target Moon Priestess Maestra
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.24,35.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .accept 13632 >>Accept Rear Guard Duty
    .target Liladris Moonriver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,27.58,33.25,0
    .goto 63,27.58,33.25,40,0
    .goto 63,28.79,30.10,40,0
    .goto 63,31.54,29.98,40,0
    >>Click the |cRXP_PICK_Green Moonstone|r
    >>Click the |cRXP_PICK_Red Moonstone|r
    >>Kill |cRXP_ENEMY_Thistlefur Warriors|r and |cRXP_ENEMY_Thistlefur Wise Ones|r
    >>Click the |cRXP_PICK_Blue Moonstone|r
    .complete 13630,2 --Green Moonstone
    .complete 13630,3 --Red Moonstone
    .complete 13632,1 --Thistlefur Warrior (8)
    .complete 13630,1 --Blue Moonstone
    .mob Thistlefur Warrior
    .mob Thistlefur Wise One
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.24,35.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 13632 >>Turn in Rear Guard Duty while you are here
    .isQuestComplete 13632
    .target Liladris Moonriver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.26,35.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Maestra|r
    .turnin 13630 >>Turn in The Reason Why while you are here
    .isQuestComplete 13630
    .target Moon Priestess Maestra
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,30.52,24.34,0
    .goto 63,30.52,24.34,40,0
    .goto 63,31.96,21.99,40,0
    >>Pick up |cRXP_PICK_Bathran's Hair|r from the ground
    .complete 26473,1 --Bathran's Hair (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.75,22.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evenar Stillwhisper|r
    .turnin 26473 >>Turn in Bathran's Hair
    .accept 13623 >>Accept Delivery for Orendil
    .target Evenar Stillwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.24,35.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 13632 >>Turn in Rear Guard Duty
    .target Liladris Moonriver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.84,36.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 13623 >>Turn in Delivery for Orendil while you are here
    .isQuestComplete 13623
    .target Orendil Broadleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.26,35.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Maestra|r
    .turnin 13630 >>Turn in The Reason Why
    .target Moon Priestess Maestra
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,27.36,39.29
    >>Kill |cRXP_ENEMY_Ashenvale Wreckers|r
    >>Kill |cRXP_ENEMY_Horde Invaders|r
    .complete 13624,1 --Ashenvale Wrecker slain (3)
    .complete 13624,2 --Horde Invader slain (10)
    .mob Ashenvale Wrecker
    .mob Horde Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.68,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .turnin 13624 >>Turn in A Squad of Your Own while you are here
    .isQuestComplete 13624
    .target Sentinel Onaeya
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.84,36.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 13623 >>Turn in Delivery for Orendil
    .accept 13642 >>Accept Bathed in Light
    .accept 26463 >>Accept Finding Teronis
    .target Orendil Broadleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.68,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .turnin 13624 >>Turn in A Squad of Your Own
    .accept 13626 >>Accept Respect for the Fallen
    .target Sentinel Onaeya
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,20.25,38.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
    .turnin 26463 >>Turn in Finding Teronis
    .accept 26464 >>Accept The Lost Gem
    .target Teronis' Corpse
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along71
    >>As you go: Kill |cRXP_ENEMY_Tendril from Belows|r and |cRXP_ENEMY_Harbinger Aphotics|r. Loot them for |cRXP_LOOT_Glowing Gem|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26464,1 --Glowing Gem (1)
    .mob Tendril from Below
    .mob Harbinger Aphotic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along71
    .goto 63,20.16,38.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Heartwise|r
    .accept 13644 >>Accept That Which Has Risen
    .target Keeper Heartwise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,19.79,39.75,0
    .goto 63,19.79,39.75,40,0
    .goto 63,20.13,43.23,40,0
    >>Kill |cRXP_ENEMY_Tendril from Belows|r and |cRXP_ENEMY_Harbinger Aphotics|r. Loot them for |cRXP_LOOT_Glowing Gem|r
    >>Kill |cRXP_ENEMY_Harbinger Aphotic|r
    >>Open the |cRXP_PICK_Light of Elune|r. Loot it for |cRXP_LOOT_Bathed Concoction|r
    .complete 26464,1 --Glowing Gem (1)
    .complete 13644,1 --Harbinger Aphotic slain (1)
    .complete 13642,1 --Bathed Concoction (1)
    .mob Tendril from Below
    .mob Harbinger Aphotic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,20.16,38.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Heartwise|r
    .turnin 13644 >>Turn in That Which Has Risen
    .target Keeper Heartwise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.97,40.83
    >>Kill |cRXP_ENEMY_Delgren the Purifier|r and loot |cRXP_LOOT_The Purifier's Prayer Book|r
    >>Kill |cRXP_ENEMY_Feero Ironhand|r and loot |cRXP_LOOT_Feero's Holy Hammer|r
    .complete 13626,2 --The Purifier's Prayer Book (1)
    .complete 13626,1 --Feero's Holy Hammer (1)
    .mob Delgren the Purifier
    .mob Feero Ironhand
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.68,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .turnin 13626 >>Turn in Respect for the Fallen
    .target Sentinel Onaeya
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.84,36.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 13642 >>Turn in Bathed in Light
    .turnin 26464 >>Turn in The Lost Gem
    .accept 13645 >>Accept To Raene Wolfrunner
    .accept 26474 >>Accept Orendil's Cure
    .target Orendil Broadleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,26.80,35.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Avana|r
    .accept 13646 >>Accept Astranaar Bound
    .target Sentinel Avana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.76,48.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luara|r
    .turnin 13646 >>Turn in Astranaar Bound
    .target Sentinel Luara
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 13645 >>Turn in To Raene Wolfrunner while you are here
    .isQuestComplete 13645
    .target Raene Wolfrunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.89,49.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 13849 >>Accept Astranaar's Burning!
    .target Sentinel Thenysil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,34.86,49.64,0
    .goto 63,34.86,49.64,40,0
    .goto 63,36.60,50.02,40,0
    .goto 63,36.12,52.05,40,0
    .goto 63,37.33,49.96,40,0
    .goto 63,37.08,52.90,40,0
    .goto 63,37.75,51.43,40,0
    >>Extinguish 15 fires.
    .complete 13849,1 --Astranaar's Burning! Fire Bunny
    .target Astranaar's Burning! Fire Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.89,49.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .turnin 13849 >>Turn in Astranaar's Burning! while you are here
    .isQuestComplete 13849
    .target Sentinel Thenysil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,37.37,51.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 26474 >>Turn in Orendil's Cure while you are here
    .isQuestComplete 26474
    .target Pelturas Whitemoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.97,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Palanaar|r
    .accept 26453 >>Accept A Helping Hand
    .target Vindicator Palanaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.89,49.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .turnin 13849 >>Turn in Astranaar's Burning!
    .accept 13853 >>Accept Return Fire
    .target Sentinel Thenysil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along83
    >>As you go: Kill |cRXP_ENEMY_Watch Wind Riders|r and |cRXP_ENEMY_Hellscream's Hellions|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13853,1 --Watch Wind Rider (8)
    .mob Watch Wind Rider
    .mob Hellscream's Hellion
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along83
    .goto 63,37.37,51.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 26474 >>Turn in Orendil's Cure
    .accept 26475 >>Accept Elune's Tear
    .target Pelturas Whitemoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,36.65,48.61,0
    .goto 63,36.65,48.61,40,0
    .goto 63,34.49,49.64,40,0
    .goto 63,39.63,53.00,40,0
    >>Kill |cRXP_ENEMY_Watch Wind Riders|r and |cRXP_ENEMY_Hellscream's Hellions|r
    .complete 13853,1 --Watch Wind Rider (8)
    .mob Watch Wind Rider
    .mob Hellscream's Hellion
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.89,49.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .turnin 13853 >>Turn in Return Fire while you are here
    .isQuestComplete 13853
    .target Sentinel Thenysil
step
    .goto 63,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .target Innkeeper Kimlya
    .home >>Set your Hearthstone to Innkeeper Kimlya's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 13645 >>Turn in To Raene Wolfrunner
    .accept 13867 >>Accept Culling the Furbolg Threat
    .target Raene Wolfrunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.89,49.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .turnin 13853 >>Turn in Return Fire
    .target Sentinel Thenysil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop13868x1
    >>|cRXP_LOOT_Troll Charm|r can drop from |cRXP_ENEMY_Thistlefur Shaman|r, |cRXP_ENEMY_Thistlefur Avenger|r, |cRXP_ENEMY_Thistlefur Pathfinder|r. Use it to start the quest if you get one
    .collect 46128,1,13868 --Troll Charm (1)
    .accept 13868 >>Accept Corrupting Influence?
    .use 46128
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop13868x1
    #loop
    .goto 63,31.22,44.61,0
    .goto 63,31.22,44.61,40,0
    .goto 63,30.60,38.48,40,0
    .goto 63,33.34,38.91,40,0
    >>Kill |cRXP_ENEMY_Thistlefur Shamans|r, |cRXP_ENEMY_Thistlefur Pathfinders|r and |cRXP_ENEMY_Thistlefur Avengers|r
    .complete 13867,1 --Thistlefur Shaman (8)
    .mob Thistlefur Shaman
    .mob Thistlefur Pathfinder
    .mob Thistlefur Avenger
step
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 13923 >>Turn in To Hellscream's Watch
    .target Captain Goggath
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,46.87,46.76
    >>Open the |cRXP_PICK_Soot-Covered Elune's Tear|r. Loot it for |cRXP_LOOT_Elune's Tear|r
    .complete 26475,1 --Elune's Tear (1)
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 63 >>Leave The Exodar for Ashenvale
    .zoneskip 63
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,37.37,51.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 26475 >>Turn in Elune's Tear
    .accept 13919 >>Accept A Trip to the Moonwell
    .target Pelturas Whitemoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 13867 >>Turn in Culling the Furbolg Threat
    .accept 26476 >>Accept Dryad Delivery
    .target Raene Wolfrunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 13868 >>Turn in Corrupting Influence?
    .target Raene Wolfrunner
    .isOnQuest 13868
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 13872 >>Accept Worgen Wisdom
    .target Raene Wolfrunner
    .isQuestTurnedIn 13868 --any of: Corrupting Influence?
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.42,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hephaestus Pilgrim|r
    .turnin 13872 >>Turn in Worgen Wisdom
    .target Hephaestus Pilgrim
    .isOnQuest 13872
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.42,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hephaestus Pilgrim|r
    .accept 13874 >>Accept A Not-So-Charmed Life
    .target Hephaestus Pilgrim
    .isQuestTurnedIn 13872 --any of: Worgen Wisdom
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,53.72,46.02
    >>Click the |cRXP_PICK_Moonwell of Purity|r
    .complete 13919,1 --Moonwell of Purity
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,53.72,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 13919 >>Turn in A Trip to the Moonwell
    .target ?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,53.72,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 13921 >>Accept He Who Would Be Forgiven
    .target !
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.00,58.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
    .accept 13928 >>Accept Recover the Fallen
    .target Sentinel Melyria Frostshadow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along107
    >>As you go: Kill |cRXP_ENEMY_Laughing Sisters|r. Loot them for |cRXP_LOOT_Laughing Sister's Corpse|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13928,1 --Laughing Sister's Corpse (10)
    .mob Laughing Sister
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.13,59.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 26476 >>Turn in Dryad Delivery
    .accept 26477 >>Accept Search the Bole
    .target Shael'dryn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.06,59.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrus Illwhisper|r
    .turnin 13921 >>Turn in He Who Would Be Forgiven
    .accept 13922 >>Accept In the Hands of the Perverse
    .target Avrus Illwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,66.64,55.39
    >>Kill |cRXP_ENEMY_Felmusk Satyrs|r, |cRXP_ENEMY_Felmusk Rogues|r, |cRXP_ENEMY_Felmusk Felsworns|r and |cRXP_ENEMY_Felmusk Shadowstalkers|r. Loot them for |cRXP_LOOT_Fallen Moonstone|r
    .complete 13922,1 --Fallen Moonstone (5)
    .mob Felmusk Satyr
    .mob Felmusk Rogue
    .mob Felmusk Felsworn
    .mob Felmusk Shadowstalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.06,59.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrus Illwhisper|r
    .turnin 13922 >>Turn in In the Hands of the Perverse
    .target Avrus Illwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along107
    .goto 63,59.06,59.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrus the Redeemed|r
    .accept 13924 >>Accept All's Well
    .target Avrus the Redeemed
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,86.84,44.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Architect Nemos|r
    .turnin 26453 >>Turn in A Helping Hand
    .accept 26454 >>Accept A Shameful Waste
    .target Architect Nemos
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,87.10,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .accept 26467 >>Accept Vile Satyr! Dryads in Danger!
    .target Illiyana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,85.21,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .accept 26455 >>Accept The Lost Chalice
    .target Kayneth Stillwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,78.33,44.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
    .turnin 26467 >>Turn in Vile Satyr! Dryads in Danger!
    .accept 26468 >>Accept The Branch of Cenarius
    .target Anilia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,78.41,42.53
    >>Kill |cRXP_ENEMY_Geltharis|r and loot |cRXP_LOOT_Branch of Cenarius|r
    .complete 26468,1 --Branch of Cenarius (1)
    .mob Geltharis
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,81.23,49.60
    >>Pick up |cRXP_PICK_Chalice of Elune|r from the ground
    >>Pick up |cRXP_PICK_Satyrnaar Fel Wood|r from the ground
    .complete 26455,1 --Chalice of Elune (1)
    .complete 26454,1 --Satyrnaar Fel Wood (5)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.76,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .turnin 26454 >>Turn in A Shameful Waste
    .turnin 13796 >>Turn in The Forest Heart
    .accept 13869 >>Accept Recover the Remains
    .target Gnarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along115
    >>As you go: Loot the |cRXP_PICK_Warsong Lumber Piles|r for |cRXP_LOOT_Warsong Lumber|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13869,1 --Warsong Lumber (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along115
    #loop
    .goto 63,87.73,64.04,0
    .goto 63,87.73,64.04,40,0
    .goto 63,87.77,60.99,40,0
    >>Kill |cRXP_ENEMY_Warsong Loggers|r, |cRXP_ENEMY_Warsong Shamans|r, |cRXP_ENEMY_Goblin Deforesters|r and |cRXP_ENEMY_Warsong Grunts|r
    .complete 26457,2 --Warsong Logger (8)
    .mob Warsong Logger
    .mob Warsong Shaman
    .mob Goblin Deforester
    .mob Warsong Grunt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,90.10,57.58,0
    .goto 63,90.10,57.58,40,0
    .goto 63,88.01,55.41,40,0
    >>Kill |cRXP_ENEMY_Overseer Gorthak|r
    >>Loot the |cRXP_PICK_Warsong Lumber Piles|r for |cRXP_LOOT_Warsong Lumber|r
    .complete 26457,1 --Overseer Gorthak slain (1)
    .complete 13869,1 --Warsong Lumber (10)
    .mob Overseer Gorthak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.89,62.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .turnin 26457 >>Turn in Agents of Destruction
    .accept 13698 >>Accept Explosives Shredding
    .target Sentinel Luciel Starwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.76,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .turnin 13869 >>Turn in Recover the Remains
    .target Gnarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,89.58,57.34,0
    .goto 63,89.58,57.34,40,0
    .goto 63,89.61,52.85,40,0
    >>Click the |cRXP_PICK_Horde Explosives|r
    .complete 13698,1 --Horde Explosives
step
    .goto 63,94.40,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kulg Gorespatter|r
    .turnin 24463 >>Turn in Probing into Ashenvale
    .target Kulg Gorespatter
    .isOnQuest 24463
step
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guardian Gurtar|r
    .accept 13875 >>Accept Gurtar's Request
    .target Guardian Gurtar
    .isQuestTurnedIn 13871 --any of: Security!
    .xp <19,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,87.10,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .turnin 26468 >>Turn in The Branch of Cenarius
    .accept 26469 >>Accept Satyr Slaying!
    .target Illiyana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,86.47,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Buurq|r
    .accept 13683 >>Accept Stopping the Rituals
    .target Anchorite Buurq
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,85.21,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin 26455 >>Turn in The Lost Chalice
    .target Kayneth Stillwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,80.99,49.48,0
    .goto 63,80.99,49.48,40,0
    .goto 63,78.72,46.01,40,0
    .goto 63,78.00,44.29,40,0
    >>Click the |cRXP_PICK_Ritual Gem|r
    >>Kill |cRXP_ENEMY_Xavian Rogues|r, |cRXP_ENEMY_Xavian Betrayers|r, |cRXP_ENEMY_Xavian Felsworns|r and |cRXP_ENEMY_Xavian Hellcallers|r. Loot them for |cRXP_LOOT_Satyr Horns|r
    .complete 13683,1 --Ritual Gem
    .complete 26469,1 --Satyr Horns (16)
    .mob Xavian Rogue
    .mob Xavian Betrayer
    .mob Xavian Felsworn
    .mob Xavian Hellcaller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,86.47,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Buurq|r
    .turnin 13683 >>Turn in Stopping the Rituals
    .target Anchorite Buurq
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,87.10,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .turnin 26469 >>Turn in Satyr Slaying!
    .target Illiyana
step
    .goto 63,73.33,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13875 >>Turn in Gurtar's Request
    .target Splintertree Demolisher
    .isOnQuest 13875
step
    #loop
    .goto 63,76.72,74.10,0
    .goto 63,76.72,74.10,40,0
    .goto 63,74.74,75.23,40,0
    >>Kill |cRXP_ENEMY_Severed Druids|r and |cRXP_ENEMY_Severed Keepers|r
    .complete 13801,1 --Severed Druid (15)
    .mob Severed Druid
    .mob Severed Keeper
    .isOnQuest 13801
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,78.47,83.90
    >>Kill |cRXP_ENEMY_Diathorus the Seeker|r and loot |cRXP_LOOT_Seeker's Fel Spear|r
    .complete 26445,2 --Seeker's Fel Spear (1)
    .mob Diathorus the Seeker
    .isOnQuest 26445
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kimlya's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,37.37,51.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 13924 >>Turn in All's Well
    .target Pelturas Whitemoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .accept 25640 >>Accept Bombs Away: Windshear Mine!
    .target Professor Xakxak Gyromate
    .isQuestTurnedIn 25622 --any of: Burn, Baby, Burn!
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .accept 25607 >>Accept Ze Gnomecorder
    .target Professor Xakxak Gyromate
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.08,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Jalin|r
    .accept 13979 >>Accept The Goblin Braintrust
    .accept 13913 >>Accept They Took Our Gnomes
    .target Huntress Jalin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.08,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Jalin|r
    .turnin 25615 >>Turn in Return to Stardust
    .target Huntress Jalin
    .isOnQuest 25615
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.08,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Jalin|r
    .accept 25616 >>Accept Hellscream's Legacy
    .target Huntress Jalin
    .isQuestTurnedIn 25615 --any of: Return to Stardust
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .accept 25622 >>Accept Burn, Baby, Burn!
    .target Professor Xakxak Gyromate
    .isQuestTurnedIn 25615 --Return to Stardust
    .isQuestTurnedIn 25621 --Field Test: Gnomecorder
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .accept 25621 >>Accept Field Test: Gnomecorder
    .target Professor Xakxak Gyromate
    .isQuestTurnedIn 25615 --any of: Return to Stardust
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.63,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 26838 >>Accept Rebels Without a Clue
    .accept 26470 >>Accept Retaking Mystral Lake
    .target Sentinel Velene Starstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along141
    >>As you go: Kill |cRXP_ENEMY_Goblin Technician|r and loot |cRXP_LOOT_Filthy Goblin Technology|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25607,1 --Filthy Goblin Technology (1)
    .mob Goblin Technician
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,46.14,61.56
    >>Kill |cRXP_ENEMY_Painmaster Thundrak|r
    >>Kill |cRXP_ENEMY_Chief Bombgineer Sploder|r and loot |cRXP_LOOT_Sploder's Head|r
    .complete 13913,1 --Painmaster Thundrak slain (1)
    .complete 13979,1 --Sploder's Head (1)
    .mob Painmaster Thundrak
    .mob Chief Bombgineer Sploder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along141
    .goto 63,46.19,61.42
    >>Click the |cRXP_PICK_The Bomb|r
    .accept 13981 >>Accept They Set Them Up The Bomb!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,46.24,70.25,0
    .goto 63,46.24,70.25,40,0
    .goto 63,48.22,69.74,40,0
    .goto 63,51.25,71.69,40,0
    >>Kill |cRXP_ENEMY_Tideress|r
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 26470,2 --Tideress slain (1)
    .complete 26470,1 --Befouled Water Elemental slain (12)
    .mob Tideress
    .mob Befouled Water Elemental
step
    .goto 63,49.75,65.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .accept 13967 >>Accept Thinning the... Herd?
    .target Senani Thunderheart
step
    #loop
    .goto 63,53.97,62.46,0
    .goto 63,53.97,62.46,40,0
    .goto 63,56.87,64.78,40,0
    >>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Pathfinders|r and |cRXP_ENEMY_Foulweald Totemics|r. Loot them for |cRXP_LOOT_Furbolg Ear|r
    .complete 13967,1 --Furbolg Ear (15)
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
    .mob Foulweald Totemic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,58.66,56.87,0
    .goto 63,58.66,56.87,40,0
    .goto 63,60.87,53.10,40,0
    .goto 63,61.88,50.27,40,0
    >>Kill |cRXP_ENEMY_Laughing Sisters|r. Loot them for |cRXP_LOOT_Laughing Sister's Corpse|r
    .complete 13928,1 --Laughing Sister's Corpse (10)
    .mob Laughing Sister
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,62.27,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halannia|r
    .turnin 13928 >>Turn in Recover the Fallen
    .accept 13935 >>Accept Defend the Tree!
    .target Halannia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,61.40,52.58,0
    .goto 63,61.40,52.58,40,0
    .goto 63,63.68,51.14,40,0
    >>Kill |cRXP_ENEMY_Warsong Demolishers|r, |cRXP_ENEMY_Warsong Tramplers|r and |cRXP_ENEMY_Warsong Invaders|r
    .complete 13935,1 --Warsong Demolisher (8)
    .mob Warsong Demolisher
    .mob Warsong Trampler
    .mob Warsong Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,58.63,41.78
    >>Kill |cRXP_ENEMY_Withered Ancients|r and |cRXP_ENEMY_Crazed Ancients|r. Loot them for |cRXP_LOOT_Wooden Key|r
    .collect 5475,1,26477,1 --Wooden Key (1)
    .mob Withered Ancient
    .mob Crazed Ancient
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,55.00,40.74
    >>Open the |cRXP_PICK_Worn Chest|r. Loot it for |cRXP_LOOT_Iron Shaft|r
    .complete 26477,1 --Iron Shaft (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.00,58.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
    .turnin 13935 >>Turn in Defend the Tree!
    .accept 26456 >>Accept Report from the Northern Front
    .target Sentinel Melyria Frostshadow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.13,59.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 26477 >>Turn in Search the Bole
    .accept 26478 >>Accept Playing Possum
    .target Shael'dryn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,62.55,60.26
    >>Open the |cRXP_PICK_Oso's Chest|r. Loot it for |cRXP_LOOT_Iron Pommel|r
    .complete 26478,1 --Iron Pommel (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,59.13,59.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 26478 >>Turn in Playing Possum
    .accept 26479 >>Accept Return to Raene
    .target Shael'dryn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kimlya's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 26479 >>Turn in Return to Raene
    .accept 26480 >>Accept Dartol's Rod
    .target Raene Wolfrunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.77,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 13965 >>Accept Check in on the Edunes
    .target Faldreas Goeth'Shael
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,34.89,49.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 13964 >>Accept To the Spire
    .target Sentinel Thenysil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,17.92,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Benjari Edune|r
    .turnin 13965 >>Turn in Check in on the Edunes
    .accept 13976 >>Accept Three Friends of the Forest
    .target Benjari Edune
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,17.98,60.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolyun|r
    .turnin 13976 >>Turn in Three Friends of the Forest
    .accept 13982 >>Accept In a Bind
    .target Bolyun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,18.08,59.88
    >>Kill |cRXP_ENEMY_Kaliva|r and loot |cRXP_LOOT_Heart of Kaliva|r
    .complete 13982,1 --Heart of Kaliva (1)
    .mob Kaliva
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,17.98,60.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolyun|r
    .turnin 13982 >>Turn in In a Bind
    .target Bolyun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,17.98,60.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolyun|r
    .accept 13985 >>Accept Clear the Shrine
    .target Bolyun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,21.80,60.34,0
    .goto 63,21.80,60.34,40,0
    .goto 63,26.43,63.89,40,0
    .goto 63,28.61,61.54,40,0
    >>Kill |cRXP_ENEMY_Lesser Felguards|r, |cRXP_ENEMY_Akkrilus|r and |cRXP_ENEMY_Felslayers|r
    .complete 13985,1 --Lesser Felguard (8)
    .mob Lesser Felguard
    .mob Akkrilus
    .mob Felslayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,22.22,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Baobob|r
    .turnin 13985 >>Turn in Clear the Shrine
    .accept 13987 >>Accept The Last Stand
    .target Big Baobob
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,22.36,52.96
    >>Kill |cRXP_ENEMY_Demonic Invaders|r
    .complete 13987,1 --Demonic Invader slain (30)
    .mob Demonic Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,22.22,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Baobob|r
    .turnin 13987 >>Turn in The Last Stand
    .target Big Baobob
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,37.98,30.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vear Darksnout|r
    .accept 13876 >>Accept Too Far Gone
    .target Vear Darksnout
    .isQuestTurnedIn 13868 --any of: Corrupting Influence?
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,39.94,33.71,0
    .goto 63,39.94,33.71,40,0
    .goto 63,42.05,34.16,40,0
    >>Loot the |cRXP_PICK_Troll Chests|r for |cRXP_LOOT_Troll Charm|r
    .complete 13874,1 --Troll Charm (8)
    .isOnQuest 13874
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,41.66,35.70
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r and loot |cRXP_LOOT_Bloodclaw's Collection|r
    .complete 13876,1 --Bloodclaw's Collection (1)
    .mob Dal Bloodclaw
    .isOnQuest 13876
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 63,46.31,62.42,0
    .goto 63,46.31,62.42,40,0
    .goto 63,43.70,63.63,40,0
    >>Kill |cRXP_ENEMY_Goblin Technician|r and loot |cRXP_LOOT_Filthy Goblin Technology|r
    .complete 25607,1 --Filthy Goblin Technology (1)
    .mob Goblin Technician
step
    .goto 63,49.75,65.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 13967 >>Turn in Thinning the... Herd?
    .target Senani Thunderheart
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,50.84,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .turnin 26480 >>Turn in Dartol's Rod
    .accept 13989 >>Accept King of the Foulweald
    .target Krolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,56.38,63.51
    >>Kill |cRXP_ENEMY_Chief Murgut|r
    .complete 13989,1 --Chief Murgut slain (1)
    .mob Chief Murgut
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 63 >>Leave Darnassus for Ashenvale
    .zoneskip 63
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.08,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Jalin|r
    .turnin 28539 >>Turn in Hero's Call: Stonetalon Mountains!
    .turnin 13979 >>Turn in The Goblin Braintrust
    .turnin 13981 >>Turn in They Set Them Up The Bomb!
    .turnin 13913 >>Turn in They Took Our Gnomes
    .target Huntress Jalin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .turnin 25607 >>Turn in Ze Gnomecorder
    .target Professor Xakxak Gyromate
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .accept 25729 >>Accept Gerenzo the Traitor
    .target Professor Xakxak Gyromate
    .isQuestTurnedIn 25652 --any of: Commandeer That Balloon!
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.23,71.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnombus the X-Terminator|r
    .accept 25613 >>Accept Do Yourself a Favor
    .target Gnombus the X-Terminator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.63,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 13964 >>Turn in To the Spire
    .turnin 26470 >>Turn in Retaking Mystral Lake
    .target Sentinel Velene Starstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .turnin 25621 >>Turn in Field Test: Gnomecorder
    .target Professor Xakxak Gyromate
    .isQuestComplete 25621
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .turnin 25622 >>Turn in Burn, Baby, Burn!
    .target Professor Xakxak Gyromate
    .isQuestComplete 25622
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,35.36,71.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Xakxak Gyromate|r
    .turnin 25729 >>Turn in Gerenzo the Traitor
    .target Professor Xakxak Gyromate
    .isQuestComplete 25729
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,50.84,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .turnin 13989 >>Turn in King of the Foulweald
    .accept 26481 >>Accept A New Adornment
    .target Krolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,50.84,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .turnin 26481 >>Turn in A New Adornment
    .target Krolg
    .isQuestComplete 26481
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,50.84,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .accept 26482 >>Accept True Power of the Rod
    .target Krolg
    .isQuestTurnedIn 26481 --any of: A New Adornment
    .xp <19,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,54.75,79.62
    >>Kill |cRXP_ENEMY_Ran Bloodtooth|r and loot |cRXP_LOOT_Ran Bloodtooth's Skull|r
    .complete 26481,1 --Ran Bloodtooth's Skull (1)
    .mob Ran Bloodtooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,61.85,83.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Farsong|r
    .turnin 26456 >>Turn in Report from the Northern Front
    .target Sentinel Farsong
step
    .goto 63,73.86,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .turnin 13801 >>Turn in Dead Elves Walking
    .target Pixel
    .isOnQuest 13801
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.89,62.65
    >>Kill |cRXP_ENEMY_Sentinel Luciel Starwhisper|r
    .complete 13698,2 --Sentinel Luciel Starwhisper (1)
    .mob Sentinel Luciel Starwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.89,62.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .turnin 13698 >>Turn in Explosives Shredding while you are here
    .isQuestComplete 13698
    .target Sentinel Luciel Starwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,84.09,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .turnin 26445 >>Turn in Never Again!
    .target Vindicator Vedaar
    .isOnQuest 26445
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,83.89,62.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .turnin 13698 >>Turn in Explosives Shredding
    .target Sentinel Luciel Starwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kimlya's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.42,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hephaestus Pilgrim|r
    .turnin 13874 >>Turn in A Not-So-Charmed Life
    .target Hephaestus Pilgrim
    .isOnQuest 13874
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.42,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hephaestus Pilgrim|r
    .accept 13877 >>Accept Go With The Flow
    .target Hephaestus Pilgrim
    .isQuestTurnedIn 13874 --any of: A Not-So-Charmed Life
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,49.98,59.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ota Wen|r
    .complete 26482,1 --Ota Wen
    .target Ota Wen
    .isOnQuest 26482
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sabina Pilgrim|r
    .turnin 13877 >>Turn in Go With The Flow
    .target Sabina Pilgrim
    .isOnQuest 13877
step
    .goto 63,52.09,56.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arctanus|r
    .accept 13884 >>Accept Put Out The Fire
    .target Arctanus
    .isQuestTurnedIn 13877,13879 --any of: Go With The Flow, Thunder Peak
    .xp <21,1
step
    .goto 63,52.33,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Core|r
    .accept 13880 >>Accept Hot Lava
    .target Core
    .isQuestTurnedIn 13877,13879 --any of: Go With The Flow, Thunder Peak
    .xp <21,1
step
    #loop
    .goto 63,52.69,54.70,0
    .goto 63,52.69,54.70,40,0
    .goto 63,51.66,49.56,40,0
    .goto 63,48.30,51.88,40,0
    >>Click the |cRXP_PICK_Lava Fissure|r
    .complete 13880,1 --Lava Fissure
    .isOnQuest 13880
step
    #loop
    .goto 63,49.30,52.76,0
    .goto 63,49.30,52.76,40,0
    .goto 63,49.46,48.66,40,0
    .goto 63,52.20,53.58,40,0
    >>Kill |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --Lava Rager slain (10)
    .mob Lava Rager
    .isOnQuest 13884
step
    .goto 63,52.09,56.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arctanus|r
    .turnin 13884 >>Turn in Put Out The Fire
    .target Arctanus
    .isOnQuest 13884
step
    .goto 63,52.33,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Core|r
    .turnin 13880 >>Turn in Hot Lava
    .target Core
    .isOnQuest 13880
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,52.33,56.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Vortex|r
    .accept 13886 >>Accept Vortex
    .target The Vortex
    .isQuestTurnedIn 13880 --Hot Lava
    .isQuestTurnedIn 13884 --Put Out The Fire
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,48.14,39.22
    >>Kill |cRXP_ENEMY_Lord Magmathar|r
    .complete 13886,1 --Lord Magmathar slain (1)
    .mob Lord Magmathar
    .isOnQuest 13886
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,37.98,30.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vear Darksnout|r
    .turnin 13876 >>Turn in Too Far Gone
    .target Vear Darksnout
    .isOnQuest 13876
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,36.62,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 26482 >>Turn in True Power of the Rod
    .target Raene Wolfrunner
    .isOnQuest 26482
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sabina Pilgrim|r
    .turnin 13886 >>Turn in Vortex
    .target Sabina Pilgrim
    .isOnQuest 13886
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
    +|cRXP_WARN_End of the Ashenvale route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Rebels Without a Clue << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stonetalon Mountains|r: Do Yourself a Favor, Hellscream's Legacy, Bombs Away: Windshear Mine! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: A New Adornment << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 27|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.2 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.1 levels of quests, starting around Skuerto). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
