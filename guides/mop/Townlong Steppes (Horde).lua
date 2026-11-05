-- 89-89 Townlong Steppes: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Townlong Steppes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 89-89 Townlong Steppes

step
    .goto 388,71.15,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30768 >>Turn in My Husband...
    .unitscan Suna Silentstrike
    .isOnQuest 30768
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 388,71.15,56.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31388 >>Turn in The Shado-Pan Offensive
    .target Taran Zhu
    .isOnQuest 31388
step
    .goto 388,71.15,56.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31695 >>Turn in Beyond the Wall
    .target Taran Zhu
    .isOnQuest 31695
step
    .goto 388,71.15,56.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 30814 >>Accept A Foot in the Door
    .target Taran Zhu
step
    #loop
    .goto 388,70.57,53.98,0
    .goto 388,70.57,53.98,40,0
    .goto 388,71.41,52.64,40,0
    >>Kill |cRXP_ENEMY_Osul Chargers|r
    .complete 30814,1 --Osul Charger slain (8)
    .mob Osul Charger
step
    .goto 388,71.15,56.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30814 >>Turn in A Foot in the Door
    .accept 30769 >>Accept First Assault
    .accept 30770 >>Accept Running Rampant
    .accept 30771 >>Accept Perfect Pitch
    .target Taran Zhu
step
    #loop
    .goto 388,68.12,54.82,0
    .goto 388,68.12,54.82,40,0
    .goto 388,68.95,50.83,40,0
    >>Loot the |cRXP_PICK_Pitch Pots|r for |cRXP_LOOT_Dark Pitch|r
    >>Kill |cRXP_ENEMY_Steppebeasts|r and |cRXP_ENEMY_Long-Haired Yaks|r
    >>Kill |cRXP_ENEMY_Osul Sharphorns|r
    .complete 30771,1 --Dark Pitch (8)
    .complete 30770,1 --Steppebeast (8)
    .complete 30769,1 --Osul Sharphorn slain (6)
    .mob Steppebeast
    .mob Long-Haired Yak
    .mob Osul Sharphorn
step
    .goto 388,67.20,52.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30770 >>Turn in Running Rampant
    .turnin 30771 >>Turn in Perfect Pitch
    .unitscan Ban Bearheart
step
    .goto 388,71.15,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30769 >>Turn in First Assault
    .accept 30772 >>Accept Seeing Red
    .accept 30774 >>Accept Ranger Rescue
    .unitscan Suna Silentstrike
step
    #completewith Along14
    >>As you go: Kill |cRXP_ENEMY_Osul Marauders|r and |cRXP_ENEMY_Osul Spitfires|r. Loot them for |cRXP_LOOT_Stone Key|r. Kill |cRXP_ENEMY_Osul Spitfires|r and |cRXP_ENEMY_Osul Marauders|r. |cRXP_WARN_Anything left is finished later|r
    .collect 81178,1,30774,1 --Stone Key (1)
    .complete 30772,1 --Osul Spitfire (8)
    .mob Osul Marauder
    .mob Osul Spitfire
step
    .goto 388,67.20,52.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30773 >>Accept Pitching In
    .unitscan Ban Bearheart
step
    .goto 388,66.99,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
    .accept 30775 >>Accept The Exile
    .target Katak the Defeated
step
    .goto 388,66.96,48.25
    >>Kill |cRXP_ENEMY_Ku-Tong|r
    .complete 30775,3 --Ku-Tong slain (1)
    .mob Ku-Tong
step
    .goto 388,66.59,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
    .complete 30774,2 --Lin Silentstrike
    .target Lin Silentstrike
step
    .goto 388,65.71,51.65
    >>Kill |cRXP_ENEMY_Urang|r
    >>Kill |cRXP_ENEMY_Battat|r
    .complete 30775,2 --Urang slain (1)
    .complete 30775,1 --Battat slain (1)
    .mob Urang
    .mob Battat
step
    #label Along14
    #loop
    .goto 388,64.08,50.35,0
    .goto 388,64.08,50.35,40,0
    .goto 388,66.05,52.35,40,0
    .goto 388,67.16,44.50,40,0
    >>Use Ban's Explosives to destroy 6 Osul Ballistas.
    .complete 30773,1 --Osul Ballista (6)
    .target Osul Ballista
step
    #loop
    .goto 388,66.66,44.90,0
    .goto 388,66.66,44.90,40,0
    .goto 388,67.32,47.23,40,0
    .goto 388,66.93,49.79,40,0
    >>Kill |cRXP_ENEMY_Osul Marauders|r and |cRXP_ENEMY_Osul Spitfires|r. Loot them for |cRXP_LOOT_Stone Key|r
    >>Kill |cRXP_ENEMY_Osul Spitfires|r and |cRXP_ENEMY_Osul Marauders|r
    .collect 81178,1,30774,1 --Stone Key (1)
    .complete 30772,1 --Osul Spitfire (8)
    .mob Osul Marauder
    .mob Osul Spitfire
step
    .goto 388,66.99,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
    .turnin 30775 >>Turn in The Exile while you are here
    .isQuestComplete 30775
    .target Katak the Defeated
step
    #loop
    .goto 388,67.04,45.83,0
    .goto 388,67.04,45.83,40,0
    .goto 388,66.26,51.48,40,0
    >>Unlock Drywood Cages to save 4 Longying Rangers and Lin Silentstrike.
    .complete 30774,1 --Longying Ranger (4)
    .target Longying Ranger
step
    .goto 388,67.20,52.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30774 >>Turn in Ranger Rescue
    .turnin 30772 >>Turn in Seeing Red
    .turnin 30773 >>Turn in Pitching In
    .unitscan Ban Bearheart
step
    .goto 388,71.15,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30776 >>Accept Jung Duk
    .unitscan Suna Silentstrike
step
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Jung Duk|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30776,1 --Jung Duk slain (1)
    .mob Jung Duk
step
    #label Along19
    .goto 388,66.99,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
    .turnin 30775 >>Turn in The Exile
    .target Katak the Defeated
step
    .goto 388,66.60,51.00
    >>Kill |cRXP_ENEMY_Jung Duk|r
    .complete 30776,1 --Jung Duk slain (1)
    .mob Jung Duk
step
    .goto 388,67.20,52.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30776 >>Turn in Jung Duk
    .accept 30777 >>Accept In Search of Suna
    .unitscan Ban Bearheart
step
    .goto 388,67.94,67.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
    .turnin 31894 >>Turn in A Delicate Balance
    .accept 30786 >>Accept A Spear Through My Side, A Chain Through My Soul
    .target Orbiss
step
    .goto 388,68.42,71.45
    >>Kill |cRXP_ENEMY_Dmong Naruuk|r
    .complete 30786,1 --Dmong Naruuk slain (1)
    .mob Dmong Naruuk
step
    .goto 388,67.94,67.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
    .turnin 30786 >>Turn in A Spear Through My Side, A Chain Through My Soul
    .accept 30787 >>Accept The Torches
    .target Orbiss
step
    #loop
    .goto 388,67.20,69.40,0
    .goto 388,67.20,69.40,40,0
    .goto 388,64.60,68.80,40,0
    >>Kill |cRXP_ENEMY_Mist-Shaman's Torches|r. Loot them for |cRXP_LOOT_Mist-Shaman's Torch|r
    .complete 30787,1 --Mist-Shaman's Torch (6)
    .mob Mist-Shaman's Torch
step
    .goto 388,67.94,67.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
    .turnin 30787 >>Turn in The Torches
    .accept 30788 >>Accept Golgoss
    .accept 30789 >>Accept Arconiss
    .target Orbiss
step
    .goto 388,70.60,69.60
    >>Summon Golgoss by planting the Mist-Shaman's Torches into the Peat Clump in the Upper Sumprushes.
    .complete 30788,1 --Golgoss
    .target Golgoss
step
    .goto 388,71.33,72.95
    >>Summon Arconiss by planting the Mist-Shaman's Torches into the Peat Mound in the Upper Sumprushes.
    .complete 30789,1 --Arconiss
    .target Arconiss
step
    .goto 388,67.94,67.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
    .turnin 30788 >>Turn in Golgoss
    .turnin 30789 >>Turn in Arconiss
    .accept 30815 >>Accept The Death of Me
    .target Orbiss
step
    .goto 388,67.94,67.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
    .complete 30815,1 --Orbiss
    .target Orbiss
step
    .goto 388,67.80,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30815 >>Turn in The Death of Me
    .accept 30792 >>Accept Orbiss Fades
    .accept 30791 >>Accept Arconiss Thirsts
    .accept 30790 >>Accept Golgoss Hungers
    .unitscan Orbiss
step
    #completewith Along32
    >>As you go: Pick up |cRXP_PICK_Snarlvine|r from the ground. Kill |cRXP_ENEMY_Swamp Rodents|r. Loot them for |cRXP_LOOT_Clotted Rodent's Blood|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30790,1 --Snarlvine (10)
    .complete 30791,1 --Clotted Rodent's Blood (4)
    .mob Swamp Rodent
step
    #label Along32
    #loop
    .goto 388,69.62,70.42,0
    .goto 388,69.62,70.42,40,0
    .goto 388,70.08,70.16,40,0
    .goto 388,72.71,70.91,40,0
    .goto 388,72.39,73.28,40,0
    .goto 388,74.00,73.87,40,0
    .goto 388,74.94,73.50,40,0
    >>Obtain 8 Gushing Mists by walking through mist geysers in the Upper Sumprushes.
    .complete 30792,1 --Steam Bunny
    .target Steam Bunny
step
    #loop
    .goto 388,72.97,72.14,0
    .goto 388,72.97,72.14,40,0
    .goto 388,74.11,73.13,40,0
    >>Pick up |cRXP_PICK_Snarlvine|r from the ground
    >>Kill |cRXP_ENEMY_Swamp Rodents|r. Loot them for |cRXP_LOOT_Clotted Rodent's Blood|r
    .complete 30790,1 --Snarlvine (10)
    .complete 30791,1 --Clotted Rodent's Blood (4)
    .mob Swamp Rodent
step
    .goto 388,67.80,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30792 >>Turn in Orbiss Fades
    .turnin 30790 >>Turn in Golgoss Hungers
    .turnin 30791 >>Turn in Arconiss Thirsts
    .accept 30793 >>Accept Mists' Opportunity
    .unitscan Orbiss
step
    .goto 388,76.68,72.90
    >>Kill |cRXP_ENEMY_Jahesh of Osul|r
    .complete 30793,1 --Jahesh of Osul slain (1)
    .mob Jahesh of Osul
step
    .goto 388,67.80,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30793 >>Turn in Mists' Opportunity
    .unitscan Orbiss
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30777 >>Turn in In Search of Suna
    .accept 30778 >>Accept Dust to Dust
    .accept 30779 >>Accept Slaying the Scavengers
    .target Ban Bearheart
step
    #completewith Along44
    >>As you go: Kill |cRXP_ENEMY_Ashfang Hyenas|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30779,1 --Ashfang Hyena slain (8)
    .mob Ashfang Hyena
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .accept 30780 >>Accept Totemic Research
    .target Yalia Sagewhisper
step
    #completewith Along44
    >>As you go: Pick up |cRXP_PICK_Palewind Totem|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 30780,1 --Palewind Totem (9)
step
    .goto 388,82.71,73.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao Tu|r
    .accept 30781 >>Accept Last Toll of the Yaungol
    .target Xiao Tu
step
    .goto 388,81.08,72.06
    >>Take Xiao Tu to the smoke trails at Hatred's Vice.
    .complete 30781,2 --Western Smoke Trail
    .target Western Smoke Trail
step
    .goto 388,83.97,70.85
    >>Take Xiao Tu to the smoke trails at Hatred's Vice.
    .complete 30781,4 --Northwestern Smoke Trail
    .target Northwestern Smoke Trail
step
    .goto 388,84.66,71.60
    >>Take Xiao Tu to the smoke trails at Hatred's Vice.
    .complete 30781,1 --Eastern Smoke Trail
    .target Eastern Smoke Trail
step
    .goto 388,83.56,78.42
    >>Take Xiao Tu to the smoke trails at Hatred's Vice.
    .complete 30781,3 --Southern Smoke Trail
    .target Southern Smoke Trail
step
    #label Along44
    #loop
    .goto 388,83.38,78.72,0
    .goto 388,83.38,78.72,40,0
    .goto 388,83.57,74.86,40,0
    .goto 388,84.42,71.83,40,0
    >>Interact with |cRXP_FRIENDLY_Palewind Villagers|r
    .complete 30778,1 --Palewind Villager (20)
    .target Palewind Villager
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30778 >>Turn in Dust to Dust while you are here
    .isQuestComplete 30778
    .target Ban Bearheart
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30781 >>Turn in Last Toll of the Yaungol while you are here
    .isQuestComplete 30781
    .target Ban Bearheart
step
    #loop
    .goto 388,82.94,78.48,0
    .goto 388,82.94,78.48,40,0
    .goto 388,80.90,73.45,40,0
    .goto 388,84.47,71.81,40,0
    >>Pick up |cRXP_PICK_Palewind Totem|r from the ground
    >>Kill |cRXP_ENEMY_Ashfang Hyenas|r
    .complete 30780,1 --Palewind Totem (9)
    .complete 30779,1 --Ashfang Hyena slain (8)
    .mob Ashfang Hyena
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .turnin 30780 >>Turn in Totemic Research while you are here
    .isQuestComplete 30780
    .target Yalia Sagewhisper
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30778 >>Turn in Dust to Dust
    .turnin 30779 >>Turn in Slaying the Scavengers
    .turnin 30781 >>Turn in Last Toll of the Yaungol
    .target Ban Bearheart
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .turnin 30780 >>Turn in Totemic Research
    .accept 30827 >>Accept What Lies Beneath
    .target Yalia Sagewhisper
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .complete 30827,1 --Yalia Sagewhisper
    .target Yalia Sagewhisper
step
    .goto 388,82.40,73.20
    >>Interact with |cRXP_FRIENDLY_Totem of Kindness|r
    .complete 30827,2 --Totem of Kindness
    .target Totem of Kindness
step
    .goto 388,82.60,73.60
    >>Interact with |cRXP_FRIENDLY_Totem of Serenity|r
    .complete 30827,4 --Totem of Serenity
    .target Totem of Serenity
step
    .goto 388,82.40,73.60
    >>Interact with |cRXP_FRIENDLY_Totem of Tranquility|r
    .complete 30827,3 --Totem of Tranquility
    .target Totem of Tranquility
step
    .goto 388,82.59,73.24
    >>Ritual completed
    .complete 30827,5 --Ritual completed
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .turnin 30827 >>Turn in What Lies Beneath
    .accept 30783 >>Accept Hatred Becomes Us
    .target Yalia Sagewhisper
step
    #completewith Along54
    >>As you go: Kill |cRXP_ENEMY_Seething Hatreds|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30783,1 --Seething Hatred slain (8)
    .mob Seething Hatred
step
    #label Along54
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .accept 30782 >>Accept Spiteful Spirits
    .target Ban Bearheart
step
    #loop
    .goto 388,82.00,71.60,0
    .goto 388,82.00,71.60,40,0
    .goto 388,83.60,74.20,40,0
    >>Kill |cRXP_ENEMY_Seething Hatreds|r
    >>Kill |cRXP_ENEMY_Spiteful Spirits|r
    .complete 30783,1 --Seething Hatred slain (8)
    .complete 30782,1 --Spiteful Spirit (10)
    .mob Seething Hatred
    .mob Spiteful Spirit
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30782 >>Turn in Spiteful Spirits while you are here
    .isQuestComplete 30782
    .target Ban Bearheart
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .turnin 30783 >>Turn in Hatred Becomes Us
    .target Yalia Sagewhisper
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30782 >>Turn in Spiteful Spirits
    .accept 30784 >>Accept The Point of No Return
    .target Ban Bearheart
step
    .goto 388,84.20,70.80
    >>Kill |cRXP_ENEMY_Suna Silentstrike|r
    .complete 30784,1 --Suna Silentstrike slain (1)
    .mob Suna Silentstrike
step
    .goto 388,82.68,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30784 >>Turn in The Point of No Return
    .accept 30785 >>Accept Gao-Ran Battlefront
    .target Ban Bearheart
step
    .goto 388,82.59,73.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
    .accept 31894 >>Accept A Delicate Balance
    .target Yalia Sagewhisper
step
    .goto 388,76.42,82.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30785 >>Turn in Gao-Ran Battlefront
    .accept 30884 >>Accept Behind the Battlefront
    .target Taran Zhu
step
    .goto 388,75.86,83.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
    .accept 30891 >>Accept Treatment for the Troops
    .target Septi the Herbalist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 388,74.83,81.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigermaster Liu-Do|r
    .accept 31393 >>Accept Temple of the White Tiger
    .target Tigermaster Liu-Do
step
    .goto 388,76.94,78.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30884 >>Turn in Behind the Battlefront
    .accept 30887 >>Accept Unwelcome Intruders
    .target Taoshi
step
    #loop
    .goto 388,80.24,78.23,0
    .goto 388,80.24,78.23,40,0
    .goto 388,78.54,72.75,40,0
    >>Pick up |cRXP_PICK_Violet Citron|r from the ground
    .complete 30891,1 --Violet Citron (10)
step
    .goto 388,78.45,80.52
    >>Kill |cRXP_ENEMY_Krik'thik Deep-Scouts|r
    .complete 30887,1 --Krik'thik Deep-Scout slain (12)
    .mob Krik'thik Deep-Scout
step
    .goto 388,79.47,84.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30887 >>Turn in Unwelcome Intruders
    .accept 30888 >>Accept Breach in the Defenses
    .accept 30890 >>Accept The Restless Watch
    .target Taoshi
step
    .goto 388,79.38,84.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mao the Lookout|r
    .accept 30889 >>Accept Trap Setting
    .target Mao the Lookout
step
    #completewith Along70
    >>As you go: Kill |cRXP_ENEMY_Shado-Pan Spike Traps|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30889,1 --Shado-Pan Spike Trap slain (8)
    .mob Shado-Pan Spike Trap
step
    #completewith Along69
    >>As you go: Kill |cRXP_ENEMY_Krik'thik Scentlayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30888,1 --Krik'thik Scentlayer slain (10)
    .mob Krik'thik Scentlayer
step
    #label Along69
    .goto 388,82.21,84.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Wei-Chin|r
    .complete 30890,1 --Scout Wei-Chin
    .target Scout Wei-Chin
step
    #label Along70
    .goto 388,81.27,86.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Long|r
    .complete 30890,2 --Scout Long
    .target Scout Long
step
    .goto 388,82.52,89.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Ying|r
    .complete 30890,3 --Scout Ying
    .target Scout Ying
step
    .goto 388,79.01,90.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jai-gan|r
    .complete 30890,4 --Scout Jai-gan
    .target Scout Jai-gan
step
    .goto 388,81.67,83.29
    >>Kill |cRXP_ENEMY_Shado-Pan Spike Traps|r
    >>Kill |cRXP_ENEMY_Krik'thik Scentlayers|r
    .complete 30889,1 --Shado-Pan Spike Trap slain (8)
    .complete 30888,1 --Krik'thik Scentlayer slain (10)
    .mob Shado-Pan Spike Trap
    .mob Krik'thik Scentlayer
step
    .goto 388,79.47,84.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30888 >>Turn in Breach in the Defenses
    .turnin 30890 >>Turn in The Restless Watch
    .accept 30960 >>Accept Returning from the Pass
    .target Taoshi
step
    .goto 388,79.38,84.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mao the Lookout|r
    .turnin 30889 >>Turn in Trap Setting
    .target Mao the Lookout
step
    .goto 388,76.42,82.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30960 >>Turn in Returning from the Pass
    .accept 30893 >>Accept The Endless Swarm
    .target Taran Zhu
step
    #completewith Along78
    >>As you go: Kill |cRXP_ENEMY_Krik'thik Locust-Guards|r and |cRXP_ENEMY_Krik'thik Limbpincers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30893,1 --Krik'thik Locust-Guard (8)
    .mob Krik'thik Locust-Guard
    .mob Krik'thik Limbpincer
step
    .goto 388,75.86,83.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
    .turnin 30891 >>Turn in Treatment for the Troops
    .accept 30892 >>Accept Back on Their Feet
    .accept 30894 >>Accept Rummaging Through the Remains
    .target Septi the Herbalist
step
    #label Along78
    .goto 388,76.38,89.36
    >>Interact with |cRXP_FRIENDLY_Injured Gao-Ran Blackguards|r
    .complete 30892,1 --Injured Gao-Ran Blackguard (8)
    .target Injured Gao-Ran Blackguard
step
    #loop
    .goto 388,76.72,88.92,0
    .goto 388,76.72,88.92,40,0
    .goto 388,74.39,84.01,40,0
    >>Kill |cRXP_ENEMY_Krik'thik Locust-Guards|r and |cRXP_ENEMY_Krik'thik Limbpincers|r
    >>Pick up |cRXP_PICK_Krik'thik Limb|r from the ground
    .complete 30893,1 --Krik'thik Locust-Guard (8)
    .complete 30894,1 --Krik'thik Limb (20)
    .mob Krik'thik Locust-Guard
    .mob Krik'thik Limbpincer
step
    .goto 388,75.86,83.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
    .turnin 30892 >>Turn in Back on Their Feet
    .turnin 30894 >>Turn in Rummaging Through the Remains
    .target Septi the Herbalist
step
    .goto 388,76.42,82.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30893 >>Turn in The Endless Swarm
    .accept 30895 >>Accept Improvised Ammunition
    .target Taran Zhu
step
    .goto 388,70.45,86.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r
    .accept 30896 >>Accept Thieves and Troublemakers
    .target Initiate Feng
step
    .goto 388,70.33,86.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Chao|r
    .accept 30897 >>Accept In the Wrong Hands
    .target Initiate Chao
step
    .goto 388,62.71,89.97
    >>Kill |cRXP_ENEMY_Needlebottom|r and loot |cRXP_LOOT_Initiate Chao's Sword|r
    >>Kill |cRXP_ENEMY_Agitated Nettleskins|r, |cRXP_ENEMY_Needlebottoms|r and |cRXP_ENEMY_Agitated Seedstealers|r
    .complete 30897,1 --Initiate Chao's Sword (1)
    .complete 30896,1 --Agitated Nettleskin (10)
    .mob Needlebottom
    .mob Agitated Nettleskin
    .mob Agitated Seedstealer
step
    #loop
    .goto 388,66.00,87.70,0
    .goto 388,66.00,87.70,40,0
    .goto 388,67.80,87.60,40,0
    >>Kill |cRXP_ENEMY_Agitated Seedstealers|r and |cRXP_ENEMY_Agitated Nettleskins|r. Loot them for |cRXP_LOOT_Volatile Dread Orb|r. It can also be picked up from |cRXP_PICK_Dread Orb|r on the ground
    .complete 30895,1 --Volatile Dread Orb (16)
    .mob Agitated Seedstealer
    .mob Agitated Nettleskin
step
    .goto 388,70.33,86.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Chao|r
    .turnin 30897 >>Turn in In the Wrong Hands
    .target Initiate Chao
step
    .goto 388,70.45,86.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r
    .turnin 30896 >>Turn in Thieves and Troublemakers
    .target Initiate Feng
step
    .goto 388,76.42,82.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30895 >>Turn in Improvised Ammunition
    .accept 30898 >>Accept Cutting the Swarm
    .target Taran Zhu
step
    .goto 388,74.20,87.60
    >>Kill |cRXP_ENEMY_Krik'thik Acidslingers|r and |cRXP_ENEMY_Krik'thik Drones|r
    .complete 30898,1 --Krik'thik Acidslinger (8)
    .mob Krik'thik Acidslinger
    .mob Krik'thik Drone
step
    .goto 388,74.23,85.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30898 >>Turn in Cutting the Swarm
    .accept 30900 >>Accept Terror of the Dread Wastes
    .target Taoshi
step
    .goto 388,74.20,87.20
    >>Kill |cRXP_ENEMY_Norvakess|r
    .complete 30900,1 --Norvakess slain (1)
    .mob Norvakess
step
    .goto 388,76.42,82.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30900 >>Turn in Terror of the Dread Wastes
    .accept 30901 >>Accept Along the Southern Front
    .target Taran Zhu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Nenshi|r
    .target Kite Master Nenshi
    .goto 388/870,2804.100,1436.700
    .fp Gao-Ran >>Get the Gao-Ran Battlefront Flight Path
step
    .goto 388,67.32,80.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30901 >>Turn in Along the Southern Front
    .accept 30970 >>Accept Enraged By Hatred
    .target Taoshi
step
    #completewith Along94
    >>As you go: Kill |cRXP_ENEMY_Seething Fleshrippers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30970,1 --Seething Fleshripper slain (9)
    .mob Seething Fleshripper
step
    #label Along94
    .goto 388,67.36,80.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Pao-Me|r
    .accept 30971 >>Accept Taking Stock
    .target Initiate Pao-Me
step
    #loop
    .goto 388,67.42,82.84,0
    .goto 388,67.42,82.84,40,0
    .goto 388,65.37,82.77,40,0
    >>Pick up |cRXP_PICK_Shado-Pan Fire Arrows|r from the ground
    >>Kill |cRXP_ENEMY_Seething Fleshrippers|r
    .complete 30971,1 --Shado-Pan Fire Arrows (120)
    .complete 30970,1 --Seething Fleshripper slain (9)
    .mob Seething Fleshripper
step
    .goto 388,67.36,80.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Pao-Me|r
    .turnin 30971 >>Turn in Taking Stock while you are here
    .isQuestComplete 30971
    .target Initiate Pao-Me
step
    .goto 388,67.32,80.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30970 >>Turn in Enraged By Hatred
    .target Taoshi
step
    .goto 388,67.36,80.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Pao-Me|r
    .turnin 30971 >>Turn in Taking Stock
    .accept 30972 >>Accept Joining the Fight
    .target Initiate Pao-Me
step
    .goto 388,61.59,79.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
    .turnin 30972 >>Turn in Joining the Fight
    .target Lao-Chin the Iron Belly
step
    .goto 388,61.63,79.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 30973 >>Accept Up In Flames
    .target Taran Zhu
step
    #loop
    .goto 388,61.40,79.60,0
    .goto 388,61.40,79.60,40,0
    .goto 388,59.80,80.80,40,0
    >>Kill |cRXP_ENEMY_Kor'thik Timberhusks|r
    .complete 30973,1 --Kor'thik Timberhusk slain (10)
    .mob Kor'thik Timberhusk
step
    .goto 388,61.63,79.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30973 >>Turn in Up In Flames
    .target Taran Zhu
step
    .goto 388,61.59,79.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
    .accept 30975 >>Accept The Taking of Dusklight Bridge
    .target Lao-Chin the Iron Belly
step
    .goto 388,54.20,77.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supplier Qiao|r
    .target Supplier Qiao
    .home >>Set your Hearthstone to Supplier Qiao's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 388,50.80,73.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Captain Elsia|r
    .turnin 32678 >>Turn in Thunder Calls
    .target Scout Captain Elsia
    .isOnQuest 32678
step
    .goto 388,49.14,71.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
    .accept 30921 >>Accept The Motives of the Mantid
    .accept 30923 >>Accept Set the Mantid Back
    .target Tai Ho
step
    .goto 388,49.14,71.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
    .accept 30922 >>Accept Natural Antiseptic
    .accept 30963 >>Accept The Field Armorer
    .accept 30964 >>Accept A Proper Poultice
    .target Provisioner Bamfu
step
    #loop
    .goto 388,56.17,54.09,0
    .goto 388,56.17,54.09,40,0
    .goto 388,55.84,50.71,40,0
    >>Click the |cRXP_PICK_Kri'thik Sword|r
    >>Click the |cRXP_PICK_Kri'thik Supplies|r
    >>Kill |cRXP_ENEMY_Kri'thik Boneslicers|r and |cRXP_ENEMY_Kri'thik Screamers|r
    .complete 30923,1 --Kri'thik Sword
    .complete 30923,2 --Kri'thik Supplies
    .complete 30921,1 --Kri'thik Boneslicer (8)
    .complete 30921,2 --Kri'thik Boneslicer (8)
    .complete 30921,3 --Kri'thik Boneslicer (8)
    .complete 30921,4 --Kri'thik Boneslicer (8)
    .mob Kri'thik Boneslicer
    .mob Kri'thik Screamer
step
    #completewith Along109
    >>As you go: Kill |cRXP_ENEMY_Longshadow Mushans|r and |cRXP_ENEMY_Longshadow Bulls|r. Loot them for |cRXP_LOOT_Full Mushan Bladder|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30922,1 --Full Mushan Bladder (5)
    .mob Longshadow Mushan
    .mob Longshadow Bull
step
    #loop
    .goto 388,52.02,48.44,0
    .goto 388,52.02,48.44,40,0
    .goto 388,50.89,51.61,40,0
    .goto 388,59.25,48.55,40,0
    .goto 388,55.91,42.30,40,0
    >>Pick up |cRXP_PICK_Mao-Willow|r from the ground
    .complete 30964,1 --Mao-Willow (11)
step
    #label Along109
    #loop
    .goto 388,54.50,69.95,0
    .goto 388,54.50,69.95,40,0
    .goto 388,52.50,72.69,40,0
    >>Kill |cRXP_ENEMY_Rankbite Tortoises|r and |cRXP_ENEMY_Rankbite Ancients|r. Loot them for |cRXP_LOOT_Rankbite Shell Fragment|r
    .complete 30963,1 --Rankbite Shell Fragment (120)
    .mob Rankbite Tortoise
    .mob Rankbite Ancient
step
    #loop
    .goto 388,56.90,46.72,0
    .goto 388,56.90,46.72,40,0
    .goto 388,55.23,46.31,40,0
    >>Kill |cRXP_ENEMY_Longshadow Mushans|r and |cRXP_ENEMY_Longshadow Bulls|r. Loot them for |cRXP_LOOT_Full Mushan Bladder|r
    .complete 30922,1 --Full Mushan Bladder (5)
    .mob Longshadow Mushan
    .mob Longshadow Bull
step
    .goto 388,49.14,71.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
    .turnin 30922 >>Turn in Natural Antiseptic
    .turnin 30963 >>Turn in The Field Armorer
    .turnin 30964 >>Turn in A Proper Poultice
    .target Provisioner Bamfu
step
    .goto 388,49.14,71.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
    .turnin 30921 >>Turn in The Motives of the Mantid
    .turnin 30923 >>Turn in Set the Mantid Back
    .accept 30924 >>Accept The Wisdom of Niuzao
    .target Tai Ho
step
    .goto 388,39.45,61.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30931 >>Accept My Father's Crossbow
    .unitscan Ku-Mo
step
    .goto 388,38.67,65.31
    >>Kill |cRXP_ENEMY_Et'kil|r and loot |cRXP_LOOT_Father's Crossbow|r
    .complete 30931,1 --Father's Crossbow (1)
    .mob Et'kil
step
    .goto 388,39.33,62.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30924 >>Turn in The Wisdom of Niuzao while you are here
    .isQuestComplete 30924
    .target Ogo the Younger
step
    .goto 388,39.45,61.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30931 >>Turn in My Father's Crossbow
    .unitscan Ku-Mo
step
    .goto 388,39.33,62.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30924 >>Turn in The Wisdom of Niuzao
    .accept 30925 >>Accept Niuzao's Price
    .target Ogo the Younger
step
    .goto 388,39.21,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluesaddle|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30929 >>Accept Bad Yak
    .unitscan Bluesaddle
step
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .accept 30932 >>Accept Father's Footsteps
    .target Sentinel Commander Qipan
step
    .goto 388,39.20,62.00
    >>Interact with |cRXP_FRIENDLY_Ruthers|r
    .complete 30929,1 --Ruthers
    .target Ruthers
step
    .goto 388,39.20,62.00
    >>Interact with |cRXP_FRIENDLY_Ruthers|r
    .complete 30929,2 --Ruthers
    .target Ruthers
step
    .goto 388,39.20,62.00
    >>Interact with |cRXP_FRIENDLY_Ruthers|r
    .complete 30929,3 --Ruthers
    .target Ruthers
step
    .goto 388,39.20,62.00
    >>Interact with |cRXP_FRIENDLY_Ruthers|r
    .complete 30929,4 --Ruthers
    .target Ruthers
step
    .goto 388,39.21,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluesaddle|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30929 >>Turn in Bad Yak
    .accept 30930 >>Accept Pick a Yak
    .unitscan Bluesaddle
step
    #completewith Along124
    >>As you go: Click the |cRXP_PICK_Father's Shield|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30932,3 --Father's Shield
step
    #label Along124
    .goto 388,37.40,60.90
    >>Click the |cRXP_PICK_Father's Bedroll|r
    .complete 30932,4 --Father's Bedroll
step
    #loop
    .goto 388,36.66,49.08,0
    .goto 388,36.66,49.08,40,0
    .goto 388,35.23,49.29,40,0
    .goto 388,34.82,48.14,40,0
    .goto 388,33.49,47.95,40,0
    >>Interact with |cRXP_FRIENDLY_Wild Townlong Yak|r
    .complete 30930,1 --Wild Townlong Yak
    .target Wild Townlong Yak
step
    #loop
    .goto 388,38.47,45.82,0
    .goto 388,38.47,45.82,40,0
    .goto 388,42.28,46.24,40,0
    .goto 388,43.46,49.60,40,0
    >>Kill |cRXP_ENEMY_Sra'thik Drones|r, |cRXP_ENEMY_Sra'thik Wound-Menders|r and |cRXP_ENEMY_Sra'thik Guards|r
    .complete 30925,1 --Sra'thik Drone (8)
    .complete 30925,2 --Sra'thik Drone (8)
    .complete 30925,3 --Sra'thik Drone (8)
    .complete 30925,4 --Sra'thik Drone (8)
    .mob Sra'thik Drone
    .mob Sra'thik Wound-Mender
    .mob Sra'thik Guard
step
    .goto 388,39.33,62.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30925 >>Turn in Niuzao's Price
    .target Ogo the Younger
step
    .goto 388,39.35,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .accept 30926 >>Accept The Terrible Truth
    .target Ogo the Elder
step
    .goto 388,39.15,62.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .accept 30928 >>Accept A Trail of Fear
    .target Yak-Keeper Kyana
step
    .goto 388,39.21,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluesaddle|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30930 >>Turn in Pick a Yak
    .unitscan Bluesaddle
step
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .accept 30927 >>Accept Give Them Peace
    .target Sentinel Commander Qipan
step
    #completewith Along132
    >>As you go: Kill |cRXP_ENEMY_Fear-Stricken Sentinels|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30927,1 --Fear-Stricken Sentinel (10)
    .mob Fear-Stricken Sentinel
step
    #label Along132
    .goto 388,32.77,61.52
    >>Investigate the Niuzao Catacombs, then slay the Dread Shadow that dwells within.
    .complete 30926,1 --Find Cave Credit
    .target Find Cave Credit
step
    #completewith next
    .zone 389 >>Travel to Niuzao Catacombs
    .zoneskip 389
step
    .goto 389,63.15,41.74
    >>Investigate the Niuzao Catacombs, then slay the Dread Shadow that dwells within.
    .complete 30926,2 --Investigate Cave Credit
    .target Investigate Cave Credit
step
    .goto 389,50.26,24.81
    >>Kill |cRXP_ENEMY_Dread Shadow|r
    .complete 30926,3 --Dread Shadow slain (1)
    .mob Dread Shadow
step
    #completewith next
    .zone 388 >>Leave Niuzao Catacombs for Townlong Steppes
    .zoneskip 388
step
    .goto 388,49.14,71.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
    .turnin 30926 >>Turn in The Terrible Truth
    .target Tai Ho
step
    #loop
    .goto 388,37.49,61.83,0
    .goto 388,37.49,61.83,40,0
    .goto 388,34.80,61.78,40,0
    >>Kill |cRXP_ENEMY_Fear-Stricken Sentinels|r
    .complete 30927,1 --Fear-Stricken Sentinel (10)
    .mob Fear-Stricken Sentinel
step
    #completewith next
    .zone 389 >>Travel to Niuzao Catacombs
    .zoneskip 389
step
    .goto 389,73.24,60.89
    >>Kill |cRXP_ENEMY_Dreadlings|r
    .complete 30928,1 --Dreadling slain (12)
    .mob Dreadling
step
    #completewith next
    .zone 388 >>Leave Niuzao Catacombs for Townlong Steppes
    .zoneskip 388
step
    .goto 388,39.16,61.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Yalo|r
    .complete 30932,2 --Sentinel Yalo
    .target Sentinel Yalo
step
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 30927 >>Turn in Give Them Peace while you are here
    .isQuestComplete 30927
    .target Sentinel Commander Qipan
step
    .goto 388,39.15,62.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .turnin 30928 >>Turn in A Trail of Fear while you are here
    .isQuestComplete 30928
    .target Yak-Keeper Kyana
step
    .goto 388,37.67,63.95
    >>Interact with |cRXP_FRIENDLY_Ha-Cha|r
    .complete 30932,1 --Ha-Cha
    .target Ha-Cha
step
    .goto 388,37.53,61.37
    >>Click the |cRXP_PICK_Father's Shield|r
    .complete 30932,3 --Father's Shield
step
    .goto 388,39.45,61.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30932 >>Turn in Father's Footsteps
    .unitscan Ku-Mo
step
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 30927 >>Turn in Give Them Peace
    .target Sentinel Commander Qipan
step
    .goto 388,39.15,62.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .turnin 30928 >>Turn in A Trail of Fear
    .target Yak-Keeper Kyana
step
    .goto 388,61.10,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30975 >>Turn in The Taking of Dusklight Bridge
    .target Taran Zhu
    .isQuestComplete 30975
step
    .goto 388,61.10,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 30976 >>Accept Joining the Hunt
    .target Taran Zhu
    .isQuestTurnedIn 30975 --any of: The Taking of Dusklight Bridge
    .xp <88,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Li-Sen|r
    .target Kite Master Li-Sen
    .goto 388/870,3960.800,1531.200
    .fp Rensai's Watchpost >>Get the Rensai's Watchpost Flight Path
    .zoneskip 388,1
step
    .goto 388,54.07,77.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30976 >>Turn in Joining the Hunt
    .target Taran Zhu
    .isOnQuest 30976
step
    .goto 388,54.07,77.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 30899 >>Accept In Skilled Hands
    .target Taran Zhu
    .isQuestTurnedIn 30976 --any of: Joining the Hunt
    .xp <88,1
step
    .goto 388,53.93,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
    .accept 30977 >>Accept Grounded Welcome
    .target Rensai Oakhide
    .isQuestTurnedIn 30976 --any of: Joining the Hunt
    .xp <88,1
step
    .goto 388,51.26,83.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
    .accept 31032 >>Accept Choking the Skies
    .target Marksman Ye
    .isQuestTurnedIn 30976 --any of: Joining the Hunt
    .xp <88,1
step
    .goto 388,51.67,87.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .turnin 30899 >>Turn in In Skilled Hands
    .target Hawkmaster Nurong
    .isOnQuest 30899
step
    .goto 388,51.67,87.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .accept 30978 >>Accept Hostile Skies
    .target Hawkmaster Nurong
    .isQuestTurnedIn 30899 --any of: In Skilled Hands
    .xp <88,1
step
    .goto 388,51.60,87.20
    >>Kill |cRXP_ENEMY_Kor'thik Swarmers|r
    .complete 30978,1 --Kor'thik Swarmer slain (50)
    .mob Kor'thik Swarmer
    .isOnQuest 30978
step
    .goto 388,53.60,87.40
    >>Kill |cRXP_ENEMY_Voress'thaliks|r
    .complete 30978,2 --Voress'thalik slain (8)
    .mob Voress'thalik
    .isOnQuest 30978
step
    .goto 388,51.67,87.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .turnin 30978 >>Turn in Hostile Skies
    .target Hawkmaster Nurong
    .isOnQuest 30978
step
    .goto 388,51.67,87.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .accept 30979 >>Accept Devastation Below
    .target Hawkmaster Nurong
    .isQuestTurnedIn 30978 --any of: Hostile Skies
    .xp <88,1
step
    .goto 388,54.53,86.02
    >>Kill |cRXP_ENEMY_Voress'thalik|r
    .complete 30979,1 --Voress'thalik slain (1)
    .mob Voress'thalik
    .isOnQuest 30979
step
    .goto 388,53.99,86.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .turnin 30979 >>Turn in Devastation Below
    .target Hawkmaster Nurong
    .isOnQuest 30979
step
    .goto 388,53.99,86.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .accept 30980 >>Accept Heroes of the Shado-Pan
    .target Hawkmaster Nurong
    .isQuestTurnedIn 30979 --any of: Devastation Below
    .xp <88,1
step
    #loop
    .goto 388,53.79,85.57,0
    .goto 388,53.79,85.57,40,0
    .goto 388,51.95,84.48,40,0
    >>Kill |cRXP_ENEMY_Kor'thik Fleetwings|r
    .complete 30977,1 --Kor'thik Fleetwing slain (12)
    .mob Kor'thik Fleetwing
    .isOnQuest 30977
step
    #loop
    .goto 388,53.79,85.57,0
    .goto 388,53.79,85.57,40,0
    .goto 388,51.95,84.48,40,0
    >>Interact with |cRXP_FRIENDLY_Kor'thik Fleetwings|r
    .complete 31032,1 --Kor'thik Fleetwing (10)
    .target Kor'thik Fleetwing
    .isOnQuest 31032
step
    .goto 388,51.26,83.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
    .turnin 31032 >>Turn in Choking the Skies
    .target Marksman Ye
    .isOnQuest 31032
step
    .goto 388,53.93,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
    .turnin 30977 >>Turn in Grounded Welcome
    .target Rensai Oakhide
    .isOnQuest 30977
step
    .goto 388,54.07,77.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30980 >>Turn in Heroes of the Shado-Pan
    .target Taran Zhu
    .isOnQuest 30980
step
    .goto 388,54.07,77.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 31065 >>Accept Buried Beneath
    .target Taran Zhu
    .isQuestTurnedIn 30980 --any of: Heroes of the Shado-Pan
    .xp <88,1
step
    .goto 388,53.47,77.41
    >>Click the |cRXP_PICK_Wu Kao Spyglass|r
    .complete 31065,1 --Wu Kao Spyglass
    .isOnQuest 31065
step
    .goto 388,54.07,77.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31065 >>Turn in Buried Beneath
    .target Taran Zhu
    .isOnQuest 31065
step
    .goto 388,54.07,77.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 30981 >>Accept Taoshi and Korvexxis
    .accept 31063 >>Accept Lao-Chin and Serevex
    .accept 31064 >>Accept Nurong and Rothek
    .target Taran Zhu
    .isQuestTurnedIn 31065 --any of: Buried Beneath
    .xp <88,1
step
    .goto 388,53.93,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
    .accept 31687 >>Accept Thinning the Sik'thik
    .accept 31688 >>Accept The Search for Restless Leng
    .target Rensai Oakhide
    .isQuestTurnedIn 31065 --any of: Buried Beneath
    .xp <88,1
step
    .goto 388,46.61,83.05
    >>Kill |cRXP_ENEMY_Korvexxis|r
    .complete 30981,1 --Korvexxis slain (1)
    .mob Korvexxis
    .isOnQuest 30981
step
    .goto 388,39.85,75.60
    >>Kill |cRXP_ENEMY_Rothek|r
    .complete 31064,1 --Rothek slain (1)
    .mob Rothek
    .isOnQuest 31064
step
    .goto 388,45.38,77.43
    >>Kill |cRXP_ENEMY_Serevex|r
    .complete 31063,1 --Serevex slain (1)
    .mob Serevex
    .isOnQuest 31063
step
    #loop
    .goto 388,46.42,76.28,0
    .goto 388,46.42,76.28,40,0
    .goto 388,49.74,78.70,40,0
    >>Click the |cRXP_PICK_Sik'thik Cage|r
    .complete 31688,1 --Sik'thik Cage
    .isOnQuest 31688
step
    #loop
    .goto 388,46.42,76.28,0
    .goto 388,46.42,76.28,40,0
    .goto 388,49.74,78.70,40,0
    >>Click the |cRXP_PICK_Sik'thik Cage|r
    .complete 31688,2 --Sik'thik Cage
    .isOnQuest 31688
step
    #loop
    .goto 388,47.91,88.22,0
    .goto 388,47.91,88.22,40,0
    .goto 388,45.70,90.00,40,0
    >>Kill |cRXP_ENEMY_Sik'thik Venomspitters|r, |cRXP_ENEMY_Sik'thik Drones|r and |cRXP_ENEMY_Sik'thik Vess-Guards|r
    .complete 31687,1 --Sik'thik Venomspitter (8)
    .mob Sik'thik Venomspitter
    .mob Sik'thik Drone
    .mob Sik'thik Vess-Guard
    .isOnQuest 31687
step
    .goto 388,47.48,78.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 30981 >>Turn in Taoshi and Korvexxis
    .target Taran Zhu
    .isOnQuest 30981
step
    .goto 388,47.48,78.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31063 >>Turn in Lao-Chin and Serevex
    .target Taran Zhu
    .isOnQuest 31063
step
    .goto 388,47.48,78.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31064 >>Turn in Nurong and Rothek
    .target Taran Zhu
    .isOnQuest 31064
step
    .goto 388,47.48,78.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 30968 >>Accept The Sha of Hatred
    .target Taran Zhu
    .isQuestTurnedIn 30981 --Taoshi and Korvexxis
    .isQuestTurnedIn 31063 --Lao-Chin and Serevex
    .isQuestTurnedIn 31064 --Nurong and Rothek
    .xp <88,1
step
    .goto 388,46.00,82.60
    >>Kill |cRXP_ENEMY_Sha of Hatred|r
    .complete 30968,1 --Sha of Hatred slain (1)
    .mob Sha of Hatred
    .isOnQuest 30968
step
    .goto 388,46.12,82.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .turnin 30968 >>Turn in The Sha of Hatred
    .target Taoshi
    .isOnQuest 30968
step
    .goto 388,46.12,82.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .accept 31656 >>Accept The Threat in the South
    .target Taoshi
    .isQuestTurnedIn 30968 --any of: The Sha of Hatred
    .xp <89,1
step
    .goto 388,53.93,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
    .turnin 31687 >>Turn in Thinning the Sik'thik
    .target Rensai Oakhide
    .isOnQuest 31687
step
    .goto 388,53.93,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
    .turnin 31688 >>Turn in The Search for Restless Leng
    .target Rensai Oakhide
    .isOnQuest 31688
step
    .xp 89 >> Grind to 89
    >>|cRXP_WARN_You must be level 89 before moving onto Dread Wastes. Queue for dungeons using the Group Finder tool and complete the quests inside|r
    >>|cRXP_WARN_If you wish to quest regularly and you skipped a previous zone, before selecting that guide ensure you have disabled the "Skip overleveled steps" option in the Guide Routing tab|r
step
    +|cRXP_WARN_That is all of Townlong Steppes for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Kun-Lai Summit|r: Temple of the White Tiger << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Vale of Eternal Blossoms|r: The Threat in the South
    >>|cRXP_FRIENDLY_Dread Wastes and back here|r: The Taking of Dusklight Bridge
step
    +|cRXP_WARN_End of the Townlong Steppes route.|r
]])
