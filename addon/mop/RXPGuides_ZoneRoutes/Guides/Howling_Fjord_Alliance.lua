-- 70-72 Howling Fjord: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 70, 78).
-- Split into 2 guides, listed under "70 - 79 Howling Fjord" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Howling Fjord.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 70 - 79 Howling Fjord
#subweight -70
#name 70-73 Howling Fjord: around Lurielle
--RouteBuilder:next
#next Zone Routes (Alliance)\71-74 Borean Tundra: around Elder Atkanok;Zone Routes (Alliance)\72-74 Dragonblight: around Aurastrasza;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.42,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Archaeologist Malzie|r
    .accept 2963 >>Accept Portents of Uldum
    .target Lead Archaeologist Malzie
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.81,28.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steel Gate Chief Archaeologist|r
    .accept 11390 >>Accept I've Got a Flying Machine!
    .target Steel Gate Chief Archaeologist
    .isQuestTurnedIn 11176 --any of: See to the Operations
    .xp <69,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.41,26.52
    >>Kill |cRXP_ENEMY_Sack of Relics|r
    .complete 11390,1 --Sack of Relics slain (3)
    .mob Sack of Relics
    .isOnQuest 11390
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.81,28.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steel Gate Chief Archaeologist|r
    .turnin 11390 >>Turn in I've Got a Flying Machine!
    .target Steel Gate Chief Archaeologist
    .isOnQuest 11390
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .accept 11432 >>Accept Sleeping Giants
    .target Mage-Lieutenant Malister
    .isQuestTurnedIn 11231 --any of: Of Keys and Cages
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .accept 11235 >>Accept Dealing With Gjalerbron
    .target Captain Adams
    .isQuestTurnedIn 11250 --any of: All Hail the Conqueror of Skorn!
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.86,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Levariol|r
    .accept 11231 >>Accept Of Keys and Cages
    .target Father Levariol
    .isQuestTurnedIn 11250 --any of: All Hail the Conqueror of Skorn!
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.86,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Levariol|r
    .accept 11239 >>Accept In Service to the Light
    .target Father Levariol
    .isQuestTurnedIn 11231 --any of: Of Keys and Cages
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.28,28.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Irena Stonemantle|r
    .accept 11393 >>Accept Where is Explorer Jaren?
    .target Overseer Irena Stonemantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.20,28.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Feknut|r
    .accept 11154 >>Accept Scare the Guano Out of Them!
    .target Engineer Feknut
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.05,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonleaf|r
    .accept 11322 >>Accept The Cleansing
    .target Watcher Moonleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,32.68,21.82,0
    .goto 117,32.68,21.82,40,0
    .goto 117,31.07,18.14,40,0
    >>Pick up |cRXP_PICK_Darkclaw Guano|r from the ground
    .complete 11154,1 --Darkclaw Guano (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop11237x1
    >>|cRXP_LOOT_Gjalerbron Attack Plans|r can drop from |cRXP_ENEMY_Gjalerbron Sleep-Watcher|r, |cRXP_ENEMY_Gjalerbron Rune-Caster|r, |cRXP_ENEMY_Gjalerbron Warrior|r. Use it to start the quest if you get one
    .collect 33289,1,11237 --Gjalerbron Attack Plans (1)
    .accept 11237 >>Accept Gjalerbron Attack Plans
    .use 33289
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,34.85,14.48,0
    .goto 117,34.85,14.48,40,0
    .goto 117,36.91,16.29,40,0
    .goto 117,32.80,11.85,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Sleep-Watchers|r, |cRXP_ENEMY_Gjalerbron Rune-Casters|r and |cRXP_ENEMY_Gjalerbron Warriors|r. Loot them for |cRXP_LOOT_Large Gjalerbron Cage Key|r
    .collect 33290,1,11231,1 --Large Gjalerbron Cage Key (1)
    .mob Gjalerbron Sleep-Watcher
    .mob Gjalerbron Rune-Caster
    .mob Gjalerbron Warrior
    .isOnQuest 11231
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,34.85,14.48,0
    .goto 117,34.85,14.48,40,0
    .goto 117,36.91,16.29,40,0
    .goto 117,32.80,11.85,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Sleep-Watchers|r, |cRXP_ENEMY_Gjalerbron Rune-Casters|r and |cRXP_ENEMY_Gjalerbron Warriors|r. Loot them for |cRXP_LOOT_Gjalerbron Cage Key|r
    .collect 33284,1,11231,1 --Gjalerbron Cage Key (1)
    .mob Gjalerbron Sleep-Watcher
    .mob Gjalerbron Rune-Caster
    .mob Gjalerbron Warrior
    .isOnQuest 11231
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,33.38,10.61,0
    .goto 117,33.38,10.61,40,0
    .goto 117,36.82,15.98,40,0
    >>Kill |cRXP_ENEMY_Deathless Watchers|r
    .complete 11239,1 --Deathless Watcher slain (10)
    .mob Deathless Watcher
    .isOnQuest 11239
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,38.31,13.14,0
    .goto 117,38.31,13.14,40,0
    .goto 117,36.09,7.48,40,0
    .goto 117,33.90,9.94,40,0
    >>Kill |cRXP_ENEMY_Necrolord|r and loot |cRXP_LOOT_Awakening Rod|r
    .collect 34083,1,11432,1 --Awakening Rod (1)
    .mob Necrolord
    .isOnQuest 11432
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,37.12,14.94,0
    .goto 117,37.12,14.94,40,0
    .goto 117,36.09,7.40,40,0
    .goto 117,33.58,9.13,40,0
    >>Kill |cRXP_ENEMY_Fearsome Horrors|r
    .complete 11239,2 --Fearsome Horror slain (4)
    .mob Fearsome Horror
    .isOnQuest 11239
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,38.19,13.21,0
    .goto 117,38.19,13.21,40,0
    .goto 117,36.93,7.64,40,0
    .goto 117,33.55,9.76,40,0
    >>Kill |cRXP_ENEMY_Dormant Vrykuls|r
    .complete 11432,1 --Dormant Vrykul slain (5)
    .mob Dormant Vrykul
    .isOnQuest 11432
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,34.88,11.78,0
    .goto 117,34.88,11.78,40,0
    .goto 117,35.00,15.08,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Rune-Casters|r
    .complete 11235,2 --Gjalerbron Rune-Caster slain (8)
    .mob Gjalerbron Rune-Caster
    .isOnQuest 11235
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,35.03,10.43,0
    .goto 117,35.03,10.43,40,0
    .goto 117,36.38,13.20,40,0
    .goto 117,38.90,9.60,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Prisoners|r
    .complete 11231,1 --Gjalerbron Prisoner slain (10)
    .mob Gjalerbron Prisoner
    .isOnQuest 11231
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,35.98,11.15,0
    .goto 117,35.98,11.15,40,0
    .goto 117,33.05,10.05,40,0
    .goto 117,39.20,9.66,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Sleep-Watchers|r
    .complete 11235,3 --Gjalerbron Sleep-Watcher slain (8)
    .mob Gjalerbron Sleep-Watcher
    .isOnQuest 11235
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,35.73,11.59,0
    .goto 117,35.73,11.59,40,0
    .goto 117,38.90,9.24,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Warriors|r
    .complete 11235,1 --Gjalerbron Warrior slain (15)
    .mob Gjalerbron Warrior
    .isOnQuest 11235
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop11237x1
    .goto 117,39.97,8.58
    >>Kill |cRXP_ENEMY_Putrid Wights|r
    .complete 11239,3 --Putrid Wight slain (2)
    .mob Putrid Wight
    .isOnQuest 11239
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,61.10,2.00
    >>Kill |cRXP_ENEMY_Your Inner Turmoil|r
    .complete 11322,1 --Your Inner Turmoil slain (1)
    .mob Your Inner Turmoil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.18,15.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Colbey|r
    .accept 11284 >>Accept The Yeti Next Door
    .target Foreman Colbey
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.27,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher Sloan|r
    .accept 11329 >>Accept I'll Try Anything!
    .target Christopher Sloan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along26
    >>As you go: Kill |cRXP_ENEMY_Northern Barbfishes|r. Loot them for |cRXP_LOOT_Northern Barbfish|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11329,1 --Northern Barbfish (5)
    .mob Northern Barbfish
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along26
    .goto 117,62.60,16.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gil Grisert|r
    .accept 11269 >>Accept Down to the Wire
    .target Gil Grisert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along29
    >>As you go: Pick up |cRXP_PICK_Spotted Hippogryph Down|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11269,1 --Spotted Hippogryph Down (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,63.74,19.36,0
    .goto 117,63.74,19.36,40,0
    .goto 117,61.10,19.25,40,0
    .goto 117,66.67,20.45,40,0
    >>Kill |cRXP_ENEMY_Northern Barbfishes|r. Loot them for |cRXP_LOOT_Northern Barbfish|r
    .complete 11329,1 --Northern Barbfish (5)
    .mob Northern Barbfish
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.27,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher Sloan|r
    .turnin 11329 >>Turn in I'll Try Anything!
    .accept 11410 >>Accept The One That Got Away
    .target Christopher Sloan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along29
    #loop
    .goto 117,57.07,17.46,0
    .goto 117,57.07,17.46,40,0
    .goto 117,57.71,13.20,40,0
    .goto 117,55.22,12.93,40,0
    >>Kill |cRXP_ENEMY_Frosthorn Ram|r and loot |cRXP_LOOT_Tough Ram Meat|r
    .collect 33352,1,11284,1 --Tough Ram Meat (1)
    .mob Frosthorn Ram
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.53,11.86
    >>Kill |cRXP_ENEMY_Shatterhorn|r
    .complete 11284,1 --Shatterhorn slain (1)
    .mob Shatterhorn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,60.68,21.90,0
    .goto 117,60.68,21.90,40,0
    .goto 117,63.09,22.97,40,0
    >>Pick up |cRXP_PICK_Spotted Hippogryph Down|r from the ground
    .complete 11269,1 --Spotted Hippogryph Down (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.80,58.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lagras|r
    .accept 11443 >>Accept Daggercap Divin'
    .target Harold Lagras
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,62.06,57.10,0
    .goto 117,62.06,57.10,40,0
    .goto 117,62.81,60.55,40,0
    >>Pick up |cRXP_PICK_Valgarde Supply Crate|r from the ground
    .complete 11443,1 --Valgarde Supply Crate (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.80,58.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lagras|r
    .turnin 11443 >>Turn in Daggercap Divin'
    .target Harold Lagras
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,61.05,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Macalroy|r
    .accept 11228 >>Accept Hell Has Frozen Over...
    .target Macalroy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.79,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pricilla Winterwind|r
    .accept 29608 >>Accept Allies in Dalaran
    .target Pricilla Winterwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.54,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vice Admiral Keller|r
    .turnin 11228 >>Turn in Hell Has Frozen Over...
    .accept 11243 >>Accept If Valgarde Falls...
    .target Vice Admiral Keller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,57.94,57.48
    >>Kill |cRXP_ENEMY_Dragonflayer Worgs|r, |cRXP_ENEMY_Dragonflayer Worg Corpses|r, |cRXP_ENEMY_Wild Worgs|r and |cRXP_ENEMY_Cavedweller Worgs|r
    .complete 11243,1 --Dragonflayer Worg (8)
    .mob Dragonflayer Worg
    .mob Dragonflayer Worg Corpse
    .mob Wild Worg
    .mob Cavedweller Worg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.54,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vice Admiral Keller|r
    .turnin 11243 >>Turn in If Valgarde Falls...
    .accept 11244 >>Accept Rescuing the Rescuers
    .target Vice Admiral Keller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,58.81,56.57,0
    .goto 117,58.81,56.57,40,0
    .goto 117,56.73,56.18,40,0
    >>Click the |cRXP_PICK_Ceremonial Dragonflayer Harpoon|r
    .complete 11244,1 --Ceremonial Dragonflayer Harpoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.54,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vice Admiral Keller|r
    .turnin 11244 >>Turn in Rescuing the Rescuers
    .accept 11255 >>Accept Prisoners of Wyrmskull
    .target Vice Admiral Keller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.12,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Zorek|r
    .accept 11420 >>Accept The Path to Payback
    .target Guard Captain Zorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.80,61.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thoralius the Wise|r
    .accept 11333 >>Accept Into the World of Spirits
    .target Thoralius the Wise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.17,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beltrand McSorf|r
    .accept 11273 >>Accept The Human League
    .target Beltrand McSorf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Dragonflayer Tribesmans|r, |cRXP_ENEMY_Dragonflayer Death Weavers|r, |cRXP_ENEMY_Dragonflayer Thanes|r and |cRXP_ENEMY_Dragonflayer Harpooners|r. Loot them for |cRXP_LOOT_Dragonflayer Cage Key|r. |cRXP_WARN_Anything left is finished later|r
    .collect 33308,1,11255,1 --Dragonflayer Cage Key (1)
    .mob Dragonflayer Tribesman
    .mob Dragonflayer Death Weaver
    .mob Dragonflayer Thane
    .mob Dragonflayer Harpooner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along46
    >>As you go: Pick up |cRXP_PICK_Harpoon Operation Manual|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11420,1 --Harpoon Operation Manual (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.34,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ares the Oathbound|r
    .accept 11288 >>Accept The Shining Light
    .target Ares the Oathbound
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along46
    .goto 117,59.19,54.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pulroy the Archaeologist|r
    .turnin 11273 >>Turn in The Human League
    .accept 11274 >>Accept Zedd's Probably Dead
    .target Pulroy the Archaeologist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along49
    >>As you go: Pick up |cRXP_PICK_Sacred Artifact|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11288,1 --Sacred Artifact (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,59.56,52.63,0
    .goto 117,59.56,52.63,40,0
    .goto 117,57.57,52.72,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Tribesmans|r, |cRXP_ENEMY_Dragonflayer Death Weavers|r, |cRXP_ENEMY_Dragonflayer Thanes|r and |cRXP_ENEMY_Dragonflayer Harpooners|r. Loot them for |cRXP_LOOT_Dragonflayer Cage Key|r
    .collect 33308,1,11255,1 --Dragonflayer Cage Key (1)
    .mob Dragonflayer Tribesman
    .mob Dragonflayer Death Weaver
    .mob Dragonflayer Thane
    .mob Dragonflayer Harpooner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,56.63,52.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zedd|r
    .turnin 11274 >>Turn in Zedd's Probably Dead while you are here
    .isQuestComplete 11274
    .target Zedd
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,58.69,52.68,0
    .goto 117,58.69,52.68,40,0
    .goto 117,57.36,51.57,40,0
    >>Kill |cRXP_ENEMY_Captured Valgarde Priests|r, |cRXP_ENEMY_Captured Valgarde Mages|r, |cRXP_ENEMY_Captured Valgarde Warriors|r and |cRXP_ENEMY_Captured Valgarde Paladins|r
    .complete 11255,1 --Captured Valgarde Priest (8)
    .mob Captured Valgarde Priest
    .mob Captured Valgarde Mage
    .mob Captured Valgarde Warrior
    .mob Captured Valgarde Paladin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along49
    .goto 117,56.63,52.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zedd|r
    .turnin 11274 >>Turn in Zedd's Probably Dead
    .accept 11276 >>Accept And Then There Were Two...
    .target Zedd
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,56.94,53.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorenfeld|r
    .turnin 11276 >>Turn in And Then There Were Two... while you are here
    .isQuestComplete 11276
    .target Glorenfeld
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,56.64,53.44
    >>Pick up |cRXP_PICK_Sacred Artifact|r from the ground
    .complete 11288,1 --Sacred Artifact (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,56.94,53.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorenfeld|r
    .turnin 11276 >>Turn in And Then There Were Two...
    .accept 11277 >>Accept The Depths of Depravity
    .target Glorenfeld
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.54,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vice Admiral Keller|r
    .turnin 11255 >>Turn in Prisoners of Wyrmskull
    .accept 11290 >>Accept Dragonflayer Battle Plans
    .target Vice Admiral Keller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.12,51.70
    >>Pick up |cRXP_PICK_Reagent Pouch|r from the ground
    .complete 11333,1 --Reagent Pouch (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along54
    >>As you go: Pick up |cRXP_PICK_Wyrmskull Tablet|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11277,1 --Wyrmskull Tablet (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along54
    >>As you go: Pick up |cRXP_PICK_Harpoon Operation Manual|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11420,1 --Harpoon Operation Manual (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along54
    .goto 117,59.34,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ares the Oathbound|r
    .turnin 11288 >>Turn in The Shining Light
    .accept 11289 >>Accept Guided by Honor
    .target Ares the Oathbound
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,57.41,55.71,0
    .goto 117,57.41,55.71,40,0
    .goto 117,56.02,57.54,40,0
    >>Pick up |cRXP_PICK_Wyrmskull Tablet|r from the ground
    .complete 11277,1 --Wyrmskull Tablet (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along56
    >>As you go: Pick up |cRXP_PICK_Dragonflayer Battle Plans|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11290,1 --Dragonflayer Battle Plans (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along56
    .goto 117,56.94,53.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorenfeld|r
    .turnin 11277 >>Turn in The Depths of Depravity
    .accept 11299 >>Accept The Ring of Judgement
    .target Glorenfeld
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,55.72,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daegarn|r
    .turnin 11299 >>Turn in The Ring of Judgement
    .accept 11300 >>Accept Stunning Defeat at the Ring
    .target Daegarn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,54.93,57.47
    >>Pick up |cRXP_PICK_Ancient Cipher|r from the ground
    >>Pick up |cRXP_PICK_Dragonflayer Battle Plans|r from the ground
    .complete 11300,1 --Ancient Cipher (1)
    .complete 11290,1 --Dragonflayer Battle Plans (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,56.94,53.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorenfeld|r
    .turnin 11300 >>Turn in Stunning Defeat at the Ring
    .accept 11278 >>Accept Return to Valgarde
    .target Glorenfeld
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.74,62.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Irulon Trueblade|r
    .turnin 11289 >>Turn in Guided by Honor
    .target Lord Irulon Trueblade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.80,61.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thoralius the Wise|r
    .turnin 11333 >>Turn in Into the World of Spirits
    .accept 11343 >>Accept The Echo of Ymiron
    .target Thoralius the Wise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.17,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beltrand McSorf|r
    .turnin 11278 >>Turn in Return to Valgarde
    .accept 11448 >>Accept The Explorers' League Outpost
    .target Beltrand McSorf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.54,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vice Admiral Keller|r
    .turnin 11290 >>Turn in Dragonflayer Battle Plans
    .accept 11291 >>Accept To Westguard Keep!
    .target Vice Admiral Keller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.13,50.80
    >>Secrets of Wyrmskull Uncovered
    .complete 11343,1 --Secrets of Wyrmskull Uncovered
step
    #loop
    .goto 117,37.09,47.75,0
    .goto 117,37.09,47.75,40,0
    .goto 117,37.59,51.90,40,0
    .goto 117,41.22,49.28,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ember Clutch Ancient|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11182 >>Accept Root Causes
    .unitscan Ember Clutch Ancient
step
    #loop
    .goto 117,41.06,51.10,0
    .goto 117,41.06,51.10,40,0
    .goto 117,41.48,53.05,40,0
    >>Kill |cRXP_ENEMY_Skeld Drakeson|r
    >>Kill |cRXP_ENEMY_Dragonflayer Handlers|r
    .complete 11182,2 --Skeld Drakeson slain (1)
    .complete 11182,1 --Dragonflayer Handler slain (5)
    .mob Skeld Drakeson
    .mob Dragonflayer Handler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,32.28,46.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk-tusk|r
    .accept 11573 >>Accept Orfus of Kamagua
    .target Lunk-tusk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11291 >>Turn in To Westguard Keep!
    .accept 11157 >>Accept The Clutches of Evil
    .target Captain Adams
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11235 >>Turn in Dealing With Gjalerbron
    .target Captain Adams
    .isOnQuest 11235
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .accept 11236 >>Accept Necro Overlord Mezhen
    .target Captain Adams
    .isQuestTurnedIn 11235 --any of: Dealing With Gjalerbron
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .turnin 11237 >>Turn in Gjalerbron Attack Plans
    .target Mage-Lieutenant Malister
    .isOnQuest 11237
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .turnin 11432 >>Turn in Sleeping Giants
    .target Mage-Lieutenant Malister
    .isOnQuest 11432
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .accept 11238 >>Accept The Frost Wyrm and its Master
    .target Mage-Lieutenant Malister
    .isQuestTurnedIn 11237 --any of: Gjalerbron Attack Plans
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.86,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Levariol|r
    .turnin 11231 >>Turn in Of Keys and Cages
    .target Father Levariol
    .isOnQuest 11231
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.86,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Levariol|r
    .turnin 11239 >>Turn in In Service to the Light
    .target Father Levariol
    .isOnQuest 11239
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,31.17,40.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Kettleblack|r
    .accept 11155 >>Accept Shoveltusk Soup Again?
    .target Chef Kettleblack
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,36.38,40.38,0
    .goto 117,36.38,40.38,40,0
    .goto 117,40.36,40.05,40,0
    .goto 117,39.89,46.92,40,0
    .goto 117,38.29,51.42,40,0
    >>Kill |cRXP_ENEMY_Shoveltusks|r, |cRXP_ENEMY_Shoveltusk Stags|r and |cRXP_ENEMY_Shoveltusk Calfs|r. Loot them for |cRXP_LOOT_Shoveltusk Meat|r
    >>Kill |cRXP_ENEMY_Proto-Whelps|r and |cRXP_ENEMY_Proto-Whelp Hatchlings|r
    .complete 11155,1 --Shoveltusk Meat (6)
    .complete 11157,2 --Proto-Whelp (15)
    .mob Shoveltusk
    .mob Shoveltusk Stag
    .mob Shoveltusk Calf
    .mob Proto-Whelp
    .mob Proto-Whelp Hatchling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,40.10,49.55,0
    .goto 117,40.10,49.55,40,0
    .goto 117,40.68,52.18,40,0
    .goto 117,37.93,50.25,40,0
    >>Interact with |cRXP_FRIENDLY_Proto-Drake Eggs|r
    .complete 11157,1 --Proto-Drake Egg (15)
    .target Proto-Drake Egg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,33.97,43.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Ely|r
    .accept 11190 >>Accept One Size Does Not Fit All
    .target Cannoneer Ely
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,31.17,40.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Kettleblack|r
    .turnin 11155 >>Turn in Shoveltusk Soup Again?
    .target Chef Kettleblack
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11157 >>Turn in The Clutches of Evil
    .accept 11187 >>Accept Mage-Lieutenant Malister
    .target Captain Adams
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .turnin 11187 >>Turn in Mage-Lieutenant Malister
    .accept 11188 >>Accept Two Wrongs...
    .target Mage-Lieutenant Malister
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,35.60,47.00,0
    .goto 117,35.60,47.00,40,0
    .goto 117,34.54,50.46,40,0
    .goto 117,39.27,50.98,40,0
    >>Pick up |cRXP_PICK_Westguard Cannonball|r from the ground
    >>Kill |cRXP_ENEMY_Proto-Drakes|r
    .complete 11190,1 --Westguard Cannonball (10)
    .complete 11188,1 --Proto-Drake slain (3)
    .mob Proto-Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,33.97,43.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Ely|r
    .turnin 11190 >>Turn in One Size Does Not Fit All
    .target Cannoneer Ely
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .turnin 11188 >>Turn in Two Wrongs...
    .target Mage-Lieutenant Malister
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .accept 11199 >>Accept Report to Scout Knowles
    .target Captain Adams
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.11,41.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapper Steelring|r
    .accept 11218 >>Accept Danger! Explosives!
    .target Sapper Steelring
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along88
    >>As you go: Pick up |cRXP_PICK_Whisper Gulch Ore Fragment|r from the ground. Pick up |cRXP_PICK_Whisper Gulch Gem|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11218,1 --Whisper Gulch Ore Fragment (6)
    .complete 11218,2 --Whisper Gulch Gem (18)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along88
    .goto 117,31.62,41.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Explorer Abigail|r
    .accept 11224 >>Accept Send Them Packing
    .target Explorer Abigail
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,30.85,39.98,0
    .goto 117,30.85,39.98,40,0
    .goto 117,31.86,36.44,40,0
    .goto 117,34.28,39.31,40,0
    >>Kill |cRXP_ENEMY_Abandoned Pack Mules|r
    >>Pick up |cRXP_PICK_Whisper Gulch Ore Fragment|r from the ground
    >>Pick up |cRXP_PICK_Whisper Gulch Gem|r from the ground
    .complete 11224,1 --Abandoned Pack Mule slain (10)
    .complete 11218,1 --Whisper Gulch Ore Fragment (6)
    .complete 11218,2 --Whisper Gulch Gem (18)
    .mob Abandoned Pack Mule
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,31.62,41.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Explorer Abigail|r
    .turnin 11224 >>Turn in Send Them Packing
    .target Explorer Abigail
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.11,41.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapper Steelring|r
    .turnin 11218 >>Turn in Danger! Explosives!
    .accept 11240 >>Accept Leader of the Deranged
    .target Sapper Steelring
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,32.01,34.57
    >>Kill |cRXP_ENEMY_Squeeg Idolhunter|r
    .complete 11240,1 --Squeeg Idolhunter slain (1)
    .mob Squeeg Idolhunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.11,41.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapper Steelring|r
    .turnin 11240 >>Turn in Leader of the Deranged
    .target Sapper Steelring
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,31.78,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Stonemantle|r
    .accept 11175 >>Accept My Daughter
    .target Old Man Stonemantle
step
    #loop
    .goto 117,41.22,49.28,0
    .goto 117,41.22,49.28,40,0
    .goto 117,37.59,51.90,40,0
    .goto 117,37.09,47.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ember Clutch Ancient|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11182 >>Turn in Root Causes
    .unitscan Ember Clutch Ancient
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,44.47,57.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Knowles|r
    .turnin 11199 >>Turn in Report to Scout Knowles
    .accept 11202 >>Accept Mission: Eternal Flame
    .target Scout Knowles
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,48.11,52.77
    >>Kill |cRXP_ENEMY_Northwest Plague Tanks|r
    .complete 11202,2 --Northwest Plague Tank slain (4)
    .mob Northwest Plague Tank
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,51.19,50.24
    >>Kill |cRXP_ENEMY_Southwest Plague Tanks|r
    .complete 11202,3 --Southwest Plague Tank slain (4)
    .mob Southwest Plague Tank
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,51.43,57.62
    >>Kill |cRXP_ENEMY_Southeast Plague Tanks|r
    >>Kill |cRXP_ENEMY_Northeast Plague Tanks|r
    .complete 11202,4 --Southeast Plague Tank slain (4)
    .complete 11202,1 --Northeast Plague Tank slain (4)
    .mob Southeast Plague Tank
    .mob Northeast Plague Tank
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,44.47,57.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Knowles|r
    .turnin 11202 >>Turn in Mission: Eternal Flame
    .accept 11327 >>Accept Mission: Package Retrieval
    .target Scout Knowles
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,50.75,53.89
    >>Pick up |cRXP_PICK_Apothecary's Package|r from the ground
    .complete 11327,1 --Apothecary's Package (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,44.47,57.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Knowles|r
    .turnin 11327 >>Turn in Mission: Package Retrieval
    .accept 11328 >>Accept Mission: Forsaken Intel
    .target Scout Knowles
step
    .goto 117,51.63,65.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennifer Owings|r
    .target Jennifer Owings
    .home >>Set your Hearthstone to Jennifer Owings's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.80,61.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thoralius the Wise|r
    .turnin 11343 >>Turn in The Echo of Ymiron
    .accept 11344 >>Accept Anguish of Nifflevar
    .target Thoralius the Wise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.26,55.38
    >>Pick up |cRXP_PICK_Harpoon Operation Manual|r from the ground
    .complete 11420,1 --Harpoon Operation Manual (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,69.04,54.79
    >>Secrets of Nifflevar Uncovered
    .complete 11344,1 --Secrets of Nifflevar Uncovered
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.12,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Zorek|r
    .turnin 11420 >>Turn in The Path to Payback
    .accept 11426 >>Accept Locating the Mechanism
    .target Guard Captain Zorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,59.80,61.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thoralius the Wise|r
    .turnin 11344 >>Turn in Anguish of Nifflevar
    .target Thoralius the Wise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.29,52.91
    >>Kill |cRXP_ENEMY_Dragonflayer Harpooner|r and loot |cRXP_LOOT_Harpoon Control Mechanism|r
    .complete 11426,1 --Harpoon Control Mechanism (1)
    .mob Dragonflayer Harpooner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.12,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Zorek|r
    .turnin 11426 >>Turn in Locating the Mechanism
    .accept 11427 >>Accept Meet Lieutenant Icehammer...
    .target Guard Captain Zorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.43,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Icehammer|r
    .turnin 11427 >>Turn in Meet Lieutenant Icehammer...
    .accept 11429 >>Accept Drop It then Rock It!
    .target Lieutenant Icehammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.18,15.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Colbey|r
    .turnin 11284 >>Turn in The Yeti Next Door
    .target Foreman Colbey
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,61.83,17.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Maeve|r
    .accept 11302 >>Accept The Enigmatic Frost Nymphs
    .target Lieutenant Maeve
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .accept 11346 >>Accept The Book of Runes
    .target Prospector Belvar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.60,16.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gil Grisert|r
    .turnin 11269 >>Turn in Down to the Wire
    .accept 11418 >>Accept We Call Him Steelfeather
    .target Gil Grisert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,63.30,13.48
    >>Kill |cRXP_ENEMY_Spotted Hippogryph Hatchling|r
    .complete 11418,1 --Spotted Hippogryph Hatchling slain (1)
    .mob Spotted Hippogryph Hatchling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.58,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Aderan|r
    .accept 11355 >>Accept March of the Giants
    .target Researcher Aderan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.60,16.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gil Grisert|r
    .turnin 11418 >>Turn in We Call Him Steelfeather
    .target Gil Grisert
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11302 >>Turn in The Enigmatic Frost Nymphs << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 11313 >>Accept Spirits of the Ice
    .target Lurielle
step
    #loop
    .goto 117,62.53,23.89,0
    .goto 117,62.53,23.89,40,0
    .goto 117,60.23,23.47,40,0
    >>Kill |cRXP_ENEMY_Ice Elementals|r. Loot them for |cRXP_LOOT_Icy Core|r
    .complete 11313,1 --Icy Core (15)
    .mob Ice Elemental
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11313 >>Turn in Spirits of the Ice
    .accept 11315 >>Accept Wild Vines
    .accept 11314 >>Accept The Fallen Sisters
    .target Lurielle
step
    #loop
    .goto 117,51.80,27.60,0
    .goto 117,51.80,27.60,40,0
    .goto 117,51.20,28.80,40,0
    >>Kill |cRXP_ENEMY_Scarlet Ivies|r
    .complete 11315,1 --Scarlet Ivy slain (8)
    .mob Scarlet Ivy
step
    #loop
    .goto 117,51.68,27.61,0
    .goto 117,51.68,27.61,40,0
    .goto 117,52.03,26.05,40,0
    >>Interact with |cRXP_FRIENDLY_Chill Nymphs|r
    .complete 11314,1 --Chill Nymph (7)
    .target Chill Nymph
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.80,39.94
    >>Click the |cRXP_PICK_Baleheim Bonfire|r
    >>Kill |cRXP_ENEMY_Alliance Banner|r
    .complete 11429,1 --Baleheim Bonfire
    .complete 11429,2 --Alliance Banner (1)
    .mob Alliance Banner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 2|r
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 1|r
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 3|r
    .collect 33779,1,11346,1 --Book of Runes - Chapter 2 (1)
    .collect 33778,1,11346,1 --Book of Runes - Chapter 1 (1)
    .collect 33780,1,11346,1 --Book of Runes - Chapter 3 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11315 >>Turn in Wild Vines
    .turnin 11314 >>Turn in The Fallen Sisters
    .accept 11316 >>Accept Spawn of the Twisted Glade
    .accept 11319 >>Accept Seeds of the Blacksouled Keepers
    .target Lurielle
step
    #loop
    .goto 117,54.73,17.19,0
    .goto 117,54.73,17.19,40,0
    .goto 117,52.53,16.78,40,0
    >>Kill |cRXP_ENEMY_Thornvine Creepers|r
    .complete 11316,1 --Thornvine Creeper slain (10)
    .mob Thornvine Creeper
step
    #loop
    .goto 117,54.40,17.97,0
    .goto 117,54.40,17.97,40,0
    .goto 117,53.37,16.72,40,0
    >>Interact with |cRXP_FRIENDLY_Spores|r
    .complete 11319,1 --Spore (8)
    .target Spore
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.28,28.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Irena Stonemantle|r
    .turnin 11175 >>Turn in My Daughter
    .target Overseer Irena Stonemantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.20,28.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Feknut|r
    .turnin 11154 >>Turn in Scare the Guano Out of Them!
    .target Engineer Feknut
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.05,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonleaf|r
    .turnin 11322 >>Turn in The Cleansing
    .accept 11325 >>Accept In Worg's Clothing
    .target Watcher Moonleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.69,5.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfang|r
    .turnin 11325 >>Turn in In Worg's Clothing
    .accept 11414 >>Accept Brother Betrayers
    .target Ulfang
step
    .goto 117,19.78,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Icefin|r
    .accept 11422 >>Accept Trident of the Son
    .target Old Icefin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,24.25,32.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Explorer Jaren|r
    .turnin 11395 >>Turn in It's a Scourge Device
    .target Explorer Jaren
    .isOnQuest 11395
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,24.25,32.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Explorer Jaren|r
    .accept 11396 >>Accept Bring Down Those Shields
    .target Explorer Jaren
    .isQuestTurnedIn 11395 --any of: It's a Scourge Device
    .xp <69,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,24.25,32.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Explorer Jaren|r
    .turnin 11393 >>Turn in Where is Explorer Jaren?
    .target Explorer Jaren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,21.91,28.74,0
    .goto 117,21.91,28.74,40,0
    .goto 117,21.51,24.60,40,0
    >>Kill |cRXP_ENEMY_Scourging Crystals|r
    .complete 11396,1 --Scourging Crystal slain (3)
    .mob Scourging Crystal
    .isOnQuest 11396
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,24.25,32.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Explorer Jaren|r
    .turnin 11396 >>Turn in Bring Down Those Shields
    .target Explorer Jaren
    .isOnQuest 11396
step
    .goto 117,23.40,34.62
    >>Kill |cRXP_ENEMY_Rotgill|r and loot |cRXP_LOOT_Rotgill's Trident|r
    .complete 11422,1 --Rotgill's Trident (1)
    .mob Rotgill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.77,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peppy Wrongnozzle|r
    .turnin 11328 >>Turn in Mission: Forsaken Intel
    .accept 11330 >>Accept Absholutely... Thish Will Work!
    .target Peppy Wrongnozzle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.46,43.39
    >>Kill |cRXP_ENEMY_Dragonflayer Vrykul Prisoner|r
    .complete 11330,1 --Dragonflayer Vrykul Prisoner slain (1)
    .mob Dragonflayer Vrykul Prisoner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.77,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peppy Wrongnozzle|r
    .turnin 11330 >>Turn in Absholutely... Thish Will Work!
    .accept 11331 >>Accept You Tell Him ...Hic!
    .target Peppy Wrongnozzle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11331 >>Turn in You Tell Him ...Hic!
    .accept 11332 >>Accept Mission: Plague This!
    .target Captain Adams
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,34.04,28.94
    >>Kill |cRXP_ENEMY_Varg|r
    .complete 11414,2 --Varg slain (1)
    .mob Varg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,27.63,21.14
    >>Kill |cRXP_ENEMY_Bjomolf|r
    .complete 11414,1 --Bjomolf slain (1)
    .mob Bjomolf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.69,5.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfang|r
    .turnin 11414 >>Turn in Brother Betrayers
    .accept 11416 >>Accept Eyes of the Eagle
    .target Ulfang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Jennifer Owings's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,53.07,66.72
    >>Kill |cRXP_ENEMY_New Agamand Plague Tanks|r
    .complete 11332,1 --New Agamand Plague Tank slain (8)
    .mob New Agamand Plague Tank
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11332 >>Turn in Mission: Plague This!
    .accept 11248 >>Accept Operation: Skornful Wrath
    .target Captain Adams
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.64,42.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Brevin|r
    .accept 11406 >>Accept Everything Must Be Ready
    .target Quartermaster Brevin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,41.29,35.88
    >>Kill |cRXP_ENEMY_Talonshrike|r and loot |cRXP_LOOT_Eyes of the Eagle|r
    .complete 11416,1 --Eyes of the Eagle (1)
    .mob Talonshrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,45.20,27.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Westguard Sergeant|r
    .turnin 11248 >>Turn in Operation: Skornful Wrath
    .accept 11247 >>Accept Burn Skorn, Burn!
    .accept 11245 >>Accept Towers of Certain Doom
    .accept 11246 >>Accept Gruesome, But Necessary
    .target Westguard Sergeant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along154
    >>As you go: Kill |cRXP_ENEMY_Winterskorn Tribesmans|r, |cRXP_ENEMY_Winterskorn Woodsmans|r, |cRXP_ENEMY_Winterskorn Shield-Maidens|r and |cRXP_ENEMY_Winterskorn Warriors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11246,1 --Winterskorn Tribesman (8)
    .mob Winterskorn Tribesman
    .mob Winterskorn Woodsman
    .mob Winterskorn Shield-Maiden
    .mob Winterskorn Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,43.65,28.65
    >>Kill |cRXP_ENEMY_Skorn Longhouse NW Bunny|r
    >>Kill |cRXP_ENEMY_Skorn Tower NW Bunny|r
    .complete 11247,1 --Skorn Longhouse NW Bunny slain (1)
    .complete 11245,1 --Skorn Tower NW Bunny slain (1)
    .mob Skorn Longhouse NW Bunny
    .mob Skorn Tower NW Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,43.16,36.14
    >>Kill |cRXP_ENEMY_Skorn Tower SW Bunny|r
    .complete 11245,3 --Skorn Tower SW Bunny slain (1)
    .mob Skorn Tower SW Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along154
    .goto 117,47.10,36.80
    >>Kill |cRXP_ENEMY_Skorn Tower SE Bunny|r
    >>Kill |cRXP_ENEMY_Skorn Tower E Bunny|r
    .complete 11245,4 --Skorn Tower SE Bunny slain (1)
    .complete 11245,2 --Skorn Tower E Bunny slain (1)
    .mob Skorn Tower SE Bunny
    .mob Skorn Tower E Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop11249x1
    >>|cRXP_LOOT_Vrykul Scroll of Ascension|r can drop from |cRXP_ENEMY_Winterskorn Tribesman|r, |cRXP_ENEMY_Winterskorn Woodsman|r, |cRXP_ENEMY_Winterskorn Shield-Maiden|r. Use it to start the quest if you get one
    .collect 33314,1,11249 --Vrykul Scroll of Ascension (1)
    .accept 11249 >>Accept Stop the Ascension!
    .use 33314
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop11249x1
    #loop
    .goto 117,46.11,28.45,0
    .goto 117,46.11,28.45,40,0
    .goto 117,44.10,29.02,40,0
    >>Kill |cRXP_ENEMY_Skorn Barracks Bunny|r
    >>Kill |cRXP_ENEMY_Winterskorn Tribesmans|r, |cRXP_ENEMY_Winterskorn Woodsmans|r, |cRXP_ENEMY_Winterskorn Shield-Maidens|r and |cRXP_ENEMY_Winterskorn Warriors|r
    >>Kill |cRXP_ENEMY_Skorn Longhouse NE Bunny|r
    .complete 11247,3 --Skorn Barracks Bunny slain (1)
    .complete 11246,1 --Winterskorn Tribesman (8)
    .complete 11247,2 --Skorn Longhouse NE Bunny slain (1)
    .mob Skorn Barracks Bunny
    .mob Winterskorn Tribesman
    .mob Winterskorn Woodsman
    .mob Winterskorn Shield-Maiden
    .mob Winterskorn Warrior
    .mob Skorn Longhouse NE Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,45.20,27.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Westguard Sergeant|r
    .turnin 11247 >>Turn in Burn Skorn, Burn!
    .turnin 11245 >>Turn in Towers of Certain Doom
    .turnin 11246 >>Turn in Gruesome, But Necessary
    .accept 11250 >>Accept All Hail the Conqueror of Skorn!
    .target Westguard Sergeant
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11316 >>Turn in Spawn of the Twisted Glade
    .turnin 11319 >>Turn in Seeds of the Blacksouled Keepers
    .accept 11428 >>Accept Keeper Witherleaf
    .target Lurielle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.60,16.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gil Grisert|r
    .turnin 11406 >>Turn in Everything Must Be Ready
    .target Gil Grisert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.66,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trapper Jethan|r
    .accept 11292 >>Accept Preying Upon the Weak
    .target Trapper Jethan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,63.47,22.12,0
    .goto 117,63.47,22.12,40,0
    .goto 117,61.91,23.28,40,0
    .goto 117,57.99,20.86,40,0
    >>Kill |cRXP_ENEMY_Prowling Worg|r and loot |cRXP_LOOT_Trapped Prey|r. It can also be picked up from |cRXP_PICK_Sprung Trap|r on the ground
    >>Kill |cRXP_ENEMY_Frostfin|r
    .complete 11292,1 --Trapped Prey (1)
    .complete 11410,1 --Frostfin slain (1)
    .mob Prowling Worg
    .mob Frostfin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.27,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher Sloan|r
    .turnin 11410 >>Turn in The One That Got Away while you are here
    .isQuestComplete 11410
    .target Christopher Sloan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.66,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trapper Jethan|r
    .turnin 11292 >>Turn in Preying Upon the Weak
    .target Trapper Jethan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.27,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher Sloan|r
    .turnin 11410 >>Turn in The One That Got Away
    .target Christopher Sloan
step
    .goto 117,53.82,17.97
    >>Kill |cRXP_ENEMY_Keeper Witherleaf|r
    .complete 11428,1 --Keeper Witherleaf slain (1)
    .mob Keeper Witherleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,38.79,13.08
    >>Kill |cRXP_ENEMY_Necro Overlord Mezhen|r
    .complete 11236,1 --Necro Overlord Mezhen slain (1)
    .mob Necro Overlord Mezhen
    .isOnQuest 11236
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,29.69,5.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfang|r
    .turnin 11416 >>Turn in Eyes of the Eagle
    .accept 11326 >>Accept Alpha Worg
    .target Ulfang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.29,9.19
    >>Kill |cRXP_ENEMY_Garwal|r
    .complete 11326,1 --Garwal slain (1)
    .mob Garwal
step
    .goto 117,19.78,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Icefin|r
    .turnin 11422 >>Turn in Trident of the Son
    .target Old Icefin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11236 >>Turn in Necro Overlord Mezhen
    .target Captain Adams
    .isOnQuest 11236
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .accept 11456 >>Accept Feeding the Survivors
    .target Elder Atuik
step
    #loop
    .goto 117,27.02,60.93,0
    .goto 117,27.02,60.93,40,0
    .goto 117,28.66,65.00,40,0
    >>Kill |cRXP_ENEMY_Island Shoveltusk|r and loot |cRXP_LOOT_Island Shoveltusk Meat|r
    .complete 11456,1 --Island Shoveltusk Meat (1)
    .mob Island Shoveltusk
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11456 >>Turn in Feeding the Survivors
    .accept 11457 >>Accept Arming Kamagua
    .target Elder Atuik
step
    #loop
    .goto 117,26.01,53.02,0
    .goto 117,26.01,53.02,40,0
    .goto 117,27.84,54.39,40,0
    >>Kill |cRXP_ENEMY_Frostwing Chimaeras|r. Loot them for |cRXP_LOOT_Chimaera Horn|r
    .complete 11457,1 --Chimaera Horn (3)
    .mob Frostwing Chimaera
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11457 >>Turn in Arming Kamagua
    .accept 11458 >>Accept Avenge Iskaal
    .target Elder Atuik
step
    .goto 117,34.54,63.79
    >>Kill |cRXP_ENEMY_Crazed Northsea Slavers|r
    .complete 11458,1 --Crazed Northsea Slaver slain (8)
    .mob Crazed Northsea Slaver
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11573 >>Turn in Orfus of Kamagua << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 11504 >>Accept The Dead Rise!
    .target Orfus of Kamagua
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.43,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Icehammer|r
    .turnin 11429 >>Turn in Drop It then Rock It!
    .accept 11430 >>Accept Harpoon Master Yavus
    .target Lieutenant Icehammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,65.14,56.58
    >>Kill |cRXP_ENEMY_Harpoon Master Yavus|r
    .complete 11430,1 --Harpoon Master Yavus slain (1)
    .mob Harpoon Master Yavus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,74.95,65.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanwad|r
    .turnin 11448 >>Turn in The Explorers' League Outpost
    .accept 11474 >>Accept Problems on the High Bluff
    .target Stanwad
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11474 >>Turn in Problems on the High Bluff
    .accept 11475 >>Accept Tools to Get the Job Done
    .target Walt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.27,64.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidalgo the Master Falconer|r
    .accept 11460 >>Accept Trust is Earned
    .target Hidalgo the Master Falconer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,70.93,64.87,0
    .goto 117,70.93,64.87,40,0
    .goto 117,68.94,62.49,40,0
    .goto 117,73.44,57.46,40,0
    >>Open the |cRXP_PICK_Loose Rock|r. Loot it for |cRXP_LOOT_Fjord Grub|r
    .collect 34102,1,11460,1 --Fjord Grub (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.26,64.92
    >>Interact with |cRXP_FRIENDLY_Rock Falcon|r
    .complete 11460,1 --Rock Falcon
    .target Rock Falcon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.27,64.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidalgo the Master Falconer|r
    .turnin 11460 >>Turn in Trust is Earned
    .accept 11465 >>Accept The Ransacked Caravan
    .target Hidalgo the Master Falconer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,70.93,64.87,0
    .goto 117,70.93,64.87,40,0
    .goto 117,68.94,62.49,40,0
    .goto 117,73.44,57.46,40,0
    >>Open the |cRXP_PICK_Loose Rock|r. Loot it for |cRXP_LOOT_Fjord Grub|r
    .collect 34102,1,11465,1 --Fjord Grub (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,69.19,65.15,0
    .goto 117,69.19,65.15,40,0
    .goto 117,69.71,68.44,40,0
    >>Kill |cRXP_ENEMY_Fjord Turkeys|r. Loot them for |cRXP_LOOT_Fjord Turkey|r
    .complete 11465,1 --Fjord Turkey (5)
    .mob Fjord Turkey
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.27,64.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidalgo the Master Falconer|r
    .turnin 11465 >>Turn in The Ransacked Caravan
    .accept 11468 >>Accept Falcon Versus Hawk
    .target Hidalgo the Master Falconer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,70.93,64.87,0
    .goto 117,70.93,64.87,40,0
    .goto 117,68.94,62.49,40,0
    .goto 117,73.44,57.46,40,0
    >>Open the |cRXP_PICK_Loose Rock|r. Loot it for |cRXP_LOOT_Fjord Grub|r
    .collect 34102,1,11468,1 --Fjord Grub (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,71.95,60.71,0
    .goto 117,71.95,60.71,40,0
    .goto 117,72.02,63.57,40,0
    >>Kill |cRXP_ENEMY_Fjord Hawks|r. Loot them for |cRXP_LOOT_Fjord Hawk|r
    .complete 11468,1 --Fjord Hawk (10)
    .mob Fjord Hawk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.27,64.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidalgo the Master Falconer|r
    .turnin 11468 >>Turn in Falcon Versus Hawk
    .accept 11470 >>Accept There Exists No Honor Among Birds
    .target Hidalgo the Master Falconer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along190
    >>As you go: Pick up |cRXP_PICK_Building Tools|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11475,1 --Building Tools (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along190
    .goto 117,78.81,48.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donny|r
    .accept 11477 >>Accept Out of My Element?
    .target Donny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,78.22,47.99,0
    .goto 117,78.22,47.99,40,0
    .goto 117,79.44,46.86,40,0
    >>Kill |cRXP_ENEMY_Iron Rune Destroyers|r
    >>Kill |cRXP_ENEMY_Iron Rune Sages|r
    >>Kill |cRXP_ENEMY_Iron Rune Laborers|r
    >>Pick up |cRXP_PICK_Building Tools|r from the ground
    .complete 11477,1 --Iron Rune Destroyer slain (10)
    .complete 11477,3 --Iron Rune Sage slain (2)
    .complete 11477,2 --Iron Rune Laborer slain (5)
    .complete 11475,1 --Building Tools (1)
    .mob Iron Rune Destroyer
    .mob Iron Rune Sage
    .mob Iron Rune Laborer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,78.81,48.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donny|r
    .turnin 11477 >>Turn in Out of My Element?
    .accept 11478 >>Accept Outpost Over Yonder...
    .target Donny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,78.31,64.07,0
    .goto 117,78.31,64.07,40,0
    .goto 117,77.51,67.35,40,0
    >>Pick up |cRXP_PICK_Fjord Hawk Egg|r from the ground
    .complete 11470,1 --Fjord Hawk Egg (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.27,64.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidalgo the Master Falconer|r
    .turnin 11470 >>Turn in There Exists No Honor Among Birds
    .target Hidalgo the Master Falconer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11475 >>Turn in Tools to Get the Job Done
    .accept 11483 >>Accept We Can Rebuild It
    .accept 11484 >>Accept We Have the Technology
    .target Walt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,74.95,65.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanwad|r
    .turnin 11478 >>Turn in Outpost Over Yonder...
    .target Stanwad
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along198
    >>As you go: Kill |cRXP_ENEMY_Winterskorn Spearmans|r, |cRXP_ENEMY_Dragonflayer Warriors|r, |cRXP_ENEMY_Winterskorn Bonegrinders|r and |cRXP_ENEMY_Dragonflayer Rune-Seers|r. Loot them for |cRXP_LOOT_Steel Ribbing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11484,2 --Steel Ribbing (1)
    .mob Winterskorn Spearman
    .mob Dragonflayer Warrior
    .mob Winterskorn Bonegrinder
    .mob Dragonflayer Rune-Seer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,67.37,56.39,0
    .goto 117,67.37,56.39,40,0
    .goto 117,67.58,52.25,40,0
    >>Pick up |cRXP_PICK_Large Barrel|r from the ground
    .complete 11483,1 --Large Barrel (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along198
    .goto 117,64.43,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Icehammer|r
    .turnin 11430 >>Turn in Harpoon Master Yavus
    .accept 11421 >>Accept It Goes to 11...
    .target Lieutenant Icehammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,60.20,50.73,0
    .goto 117,60.20,50.73,40,0
    .goto 117,59.21,54.59,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Installation I|r
    >>Kill |cRXP_ENEMY_Dragonflayer Installation II|r
    >>Kill |cRXP_ENEMY_Dragonflayer Installation III|r
    .complete 11421,2 --Dragonflayer Installation I slain (1)
    .complete 11421,3 --Dragonflayer Installation II slain (1)
    .complete 11421,4 --Dragonflayer Installation III slain (1)
    .mob Dragonflayer Installation I
    .mob Dragonflayer Installation II
    .mob Dragonflayer Installation III
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,62.10,53.03,0
    .goto 117,62.10,53.03,40,0
    .goto 117,61.26,58.79,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Defenders|r
    .complete 11421,1 --Dragonflayer Defender slain (8)
    .mob Dragonflayer Defender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along201
    >>As you go: Kill |cRXP_ENEMY_Winterskorn Spearmans|r, |cRXP_ENEMY_Dragonflayer Warriors|r, |cRXP_ENEMY_Winterskorn Bonegrinders|r and |cRXP_ENEMY_Dragonflayer Rune-Seers|r. Loot them for |cRXP_LOOT_Steel Ribbing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11484,2 --Steel Ribbing (1)
    .mob Winterskorn Spearman
    .mob Dragonflayer Warrior
    .mob Winterskorn Bonegrinder
    .mob Dragonflayer Rune-Seer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along201
    .goto 117,64.43,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Icehammer|r
    .turnin 11421 >>Turn in It Goes to 11...
    .accept 11436 >>Accept Let's Go Surfing Now
    .target Lieutenant Icehammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,63.77,41.58,0
    .goto 117,63.77,41.58,40,0
    .goto 117,63.94,39.08,40,0
    >>Pick up |cRXP_PICK_Industrial Strength Rope|r from the ground
    >>Kill |cRXP_ENEMY_Winterskorn Spearmans|r, |cRXP_ENEMY_Dragonflayer Warriors|r, |cRXP_ENEMY_Winterskorn Bonegrinders|r and |cRXP_ENEMY_Dragonflayer Rune-Seers|r. Loot them for |cRXP_LOOT_Steel Ribbing|r
    .complete 11483,2 --Industrial Strength Rope (1)
    .complete 11484,2 --Steel Ribbing (1)
    .mob Winterskorn Spearman
    .mob Dragonflayer Warrior
    .mob Winterskorn Bonegrinder
    .mob Dragonflayer Rune-Seer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Jennifer Owings's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,49.89,61.98,0
    .goto 117,49.89,61.98,40,0
    .goto 117,54.01,60.61,40,0
    .goto 117,55.41,65.30,40,0
    >>Kill |cRXP_ENEMY_Shoveltusks|r, |cRXP_ENEMY_Shoveltusk Stags|r and |cRXP_ENEMY_Shoveltusk Calfs|r. Loot them for |cRXP_LOOT_Pristine Shoveltusk Hide|r
    .complete 11484,1 --Pristine Shoveltusk Hide (1)
    .mob Shoveltusk
    .mob Shoveltusk Stag
    .mob Shoveltusk Calf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along205
    >>As you go: Kill |cRXP_ENEMY_McGoyver|r and loot |cRXP_LOOT_Dark Iron Ingots|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11483,3 --Dark Iron Ingots (1)
    .mob McGoyver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.08,62.06
    >>Go Harpoon Surfing
    .complete 11436,1 --Go Harpoon Surfing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along205
    .goto 117,60.12,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Zorek|r
    .turnin 11436 >>Turn in Let's Go Surfing Now
    .target Guard Captain Zorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,60.84,61.59
    >>Kill |cRXP_ENEMY_McGoyver|r and loot |cRXP_LOOT_Dark Iron Ingots|r
    .complete 11483,3 --Dark Iron Ingots (1)
    .mob McGoyver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11483 >>Turn in We Can Rebuild It
    .turnin 11484 >>Turn in We Have the Technology
    .accept 11485 >>Accept Iron Rune Constructs and You: Rocket Jumping
    .target Walt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.08,64.55
    >>Rocket Jump Mastered
    .complete 11485,1 --Rocket Jump Mastered
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11485 >>Turn in Iron Rune Constructs and You: Rocket Jumping
    .accept 11489 >>Accept Iron Rune Constructs and You: Collecting Data
    .target Walt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,74.82,65.73
    >>Kill |cRXP_ENEMY_Iron Dwarf Relic|r
    .complete 11489,1 --Iron Dwarf Relic slain (1)
    .mob Iron Dwarf Relic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11489 >>Turn in Iron Rune Constructs and You: Collecting Data
    .accept 11491 >>Accept Iron Rune Constructs and You: The Bluff
    .target Walt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,74.79,65.20
    >>Interact with |cRXP_FRIENDLY_Lebronski|r
    .complete 11491,1 --Lebronski
    .target Lebronski
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11491 >>Turn in Iron Rune Constructs and You: The Bluff
    .accept 11494 >>Accept Lightning Infused Relics
    .accept 11495 >>Accept The Delicate Sound of Thunder
    .target Walt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along214
    >>As you go: Kill |cRXP_ENEMY_Iron Dwarf Relics|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11494,1 --Iron Dwarf Relic slain (8)
    .mob Iron Dwarf Relic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along214
    .goto 117,71.54,69.51
    >>Walt at the Explorers' League Outpost in the Howling Fjord wants you to use the Iron Rune Construct to explore the thundering cave at Baelgun's Excavation Site.
    .complete 11495,1 --Loken
    .target Loken
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,71.76,71.80,0
    .goto 117,71.76,71.80,40,0
    .goto 117,74.16,71.01,40,0
    >>Kill |cRXP_ENEMY_Iron Dwarf Relics|r
    .complete 11494,1 --Iron Dwarf Relic slain (8)
    .mob Iron Dwarf Relic
step
    #loop
    .goto 117,59.23,76.97,0
    .goto 117,59.23,76.97,40,0
    .goto 117,61.98,80.04,40,0
    >>Open the |cRXP_PICK_Cannonball|r. Loot it for |cRXP_LOOT_Windan's Clue|r
    >>Open the |cRXP_PICK_Long Tail Feather|r. Loot it for |cRXP_LOOT_Isuldof's Clue|r
    >>Open the |cRXP_PICK_Unlocked Chest|r. Loot it for |cRXP_LOOT_Rodin's Clue|r
    .complete 11504,4 --Windan's Clue (1)
    .complete 11504,3 --Isuldof's Clue (1)
    .complete 11504,2 --Rodin's Clue (1)
step
    .goto 117,57.69,77.52
    >>Open the |cRXP_PICK_Mound of Debris|r. Loot it for |cRXP_LOOT_Fengir's Clue|r
    .complete 11504,1 --Fengir's Clue (1)
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11504 >>Turn in The Dead Rise!
    .accept 11507 >>Accept Elder Atuik and Kamagua
    .target Orfus of Kamagua
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11507 >>Turn in Elder Atuik and Kamagua
    .turnin 11458 >>Turn in Avenge Iskaal
    .accept 11508 >>Accept Grezzix Spindlesnap
    .target Elder Atuik
step
    .goto 117,24.59,58.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anuniaq|r
    .accept 12118 >>Accept Travel to Moa'ki Harbor
    .target Anuniaq
step
    .goto 117,23.08,62.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezzix Spindlesnap|r
    .turnin 11508 >>Turn in Grezzix Spindlesnap
    .accept 11509 >>Accept Street "Cred"
    .target Grezzix Spindlesnap
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .turnin 11509 >>Turn in Street "Cred"
    .accept 11510 >>Accept "Scoodles"
    .target "Silvermoon" Harry
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .accept 11434 >>Accept Forgotten Treasure
    .target Handsome Terry
step
    .goto 117,37.75,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle Frostprow|r
    .accept 11469 >>Accept Swabbin' Soap
    .target Scuttle Frostprow
step
    .goto 117,37.76,84.63
    >>Pick up |cRXP_PICK_Eagle Figurine|r from the ground
    >>Kill |cRXP_ENEMY_"Scoodles"|r and loot |cRXP_LOOT_Sin'dorei Scrying Crystal|r
    >>Pick up |cRXP_PICK_Amani Vase|r from the ground
    .complete 11434,2 --Eagle Figurine (1)
    .complete 11510,1 --Sin'dorei Scrying Crystal (1)
    .complete 11434,1 --Amani Vase (1)
    .mob "Scoodles"
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11434 >>Turn in Forgotten Treasure
    .accept 11455 >>Accept The Fragrance of Money
    .target Handsome Terry
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .turnin 11510 >>Turn in "Scoodles" while you are here
    .isQuestComplete 11510
    .target "Silvermoon" Harry
step
    #loop
    .goto 117,34.96,78.25,0
    .goto 117,34.96,78.25,40,0
    .goto 117,32.31,76.75,40,0
    >>Kill |cRXP_ENEMY_Rabid Brown Bears|r. Loot them for |cRXP_LOOT_Bear Musk|r
    .complete 11455,1 --Bear Musk (4)
    .mob Rabid Brown Bear
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11455 >>Turn in The Fragrance of Money
    .accept 11473 >>Accept A Traitor Among Us
    .target Handsome Terry
step
    .goto 117,35.56,80.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeh'gehn|r
    .turnin 11473 >>Turn in A Traitor Among Us
    .accept 11459 >>Accept Zeh'gehn Sez
    .target Zeh'gehn
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11459 >>Turn in Zeh'gehn Sez
    .accept 11476 >>Accept A Carver and a Croaker
    .target Handsome Terry
step
    #completewith Along231
    >>As you go: Kill |cRXP_ENEMY_Scalawag Frog|r and loot |cRXP_LOOT_Scalawag Frog|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11476,1 --Scalawag Frog (1)
    .mob Scalawag Frog
step
    #label Along231
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .accept 11464 >>Accept Gambling Debt
    .target Taruk
step
    .goto 117,35.82,80.57
    >>Kill |cRXP_ENEMY_Scalawag Frog|r and loot |cRXP_LOOT_Scalawag Frog|r
    >>Kill |cRXP_ENEMY_"Silvermoon" Harry|r and loot |cRXP_LOOT_"Silvermoon" Harry's Debt|r
    .complete 11476,1 --Scalawag Frog (1)
    .complete 11464,1 --"Silvermoon" Harry's Debt (1)
    .mob Scalawag Frog
    .mob "Silvermoon" Harry
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11464 >>Turn in Gambling Debt while you are here
    .isQuestComplete 11464
    .target Taruk
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Shiny Knife|r from |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .complete 11476,2 --Shiny Knife (1)
    .target "Silvermoon" Harry
step
    .goto 117,35.56,80.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeh'gehn|r
    .turnin 11476 >>Turn in A Carver and a Croaker while you are here
    .isQuestComplete 11476
    .target Zeh'gehn
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .turnin 11510 >>Turn in "Scoodles"
    .accept 11519 >>Accept The Lost Shield of the Aesirites
    .target "Silvermoon" Harry
step
    .goto 117,35.56,80.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeh'gehn|r
    .turnin 11476 >>Turn in A Carver and a Croaker
    .accept 11479 >>Accept "Crowleg" Dan
    .target Zeh'gehn
step
    .goto 117,35.95,83.60
    >>Kill |cRXP_ENEMY_"Crowleg" Dan|r
    .complete 11479,1 --"Crowleg" Dan slain (1)
    .mob "Crowleg" Dan
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11464 >>Turn in Gambling Debt
    .accept 11466 >>Accept Jack Likes His Drink
    .target Taruk
step
    #completewith Along239
    >>As you go: Kill |cRXP_ENEMY_Jack Adams|r and loot |cRXP_LOOT_Jack Adams' Debt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11466,1 --Jack Adams' Debt (1)
    .mob Jack Adams
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11479 >>Turn in "Crowleg" Dan
    .accept 11480 >>Accept Meet Number Two
    .target Handsome Terry
step
    #label Along239
    .goto 117,35.41,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Annie Bonn|r
    .turnin 11480 >>Turn in Meet Number Two
    .accept 11471 >>Accept The Jig is Up
    .target Annie Bonn
step
    .goto 117,35.49,79.38
    >>Kill |cRXP_ENEMY_Jack Adams|r and loot |cRXP_LOOT_Jack Adams' Debt|r
    .complete 11466,1 --Jack Adams' Debt (1)
    .mob Jack Adams
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11466 >>Turn in Jack Likes His Drink
    .accept 11467 >>Accept Dead Man's Debt
    .target Taruk
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .accept 11511 >>Accept The Staff of Storm's Fury
    .accept 11512 >>Accept The Frozen Heart of Isuldof
    .accept 11567 >>Accept The Ancient Armor of the Kvaldir
    .target "Silvermoon" Harry
step
    #completewith Along243
    >>As you go: Kill |cRXP_ENEMY_Hozzer|r and loot |cRXP_LOOT_Jonah Sterling's Spyglass|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11471,1 --Jonah Sterling's Spyglass (1)
    .mob Hozzer
step
    #label Along243
    .goto 117,32.33,78.67
    >>Pick up |cRXP_PICK_The Frozen Heart of Isuldof|r from the ground
    >>Kill |cRXP_ENEMY_Big Roy|r and loot |cRXP_LOOT_Big Roy's Blubber|r
    .complete 11512,1 --The Frozen Heart of Isuldof (1)
    .complete 11469,1 --Big Roy's Blubber (1)
    .mob Big Roy
step
    .goto 117,32.50,60.10
    >>Kill |cRXP_ENEMY_Black Conrad's Ghost|r and loot |cRXP_LOOT_Black Conrad's Treasure|r
    .complete 11467,1 --Black Conrad's Treasure (1)
    .mob Black Conrad's Ghost
step
    .goto 117,35.26,64.84
    >>Pick up |cRXP_PICK_The Staff of Storm's Fury|r from the ground
    .complete 11511,1 --The Staff of Storm's Fury (1)
step
    .goto 117,33.01,78.55
    >>Kill |cRXP_ENEMY_Hozzer|r and loot |cRXP_LOOT_Jonah Sterling's Spyglass|r
    .complete 11471,1 --Jonah Sterling's Spyglass (1)
    .mob Hozzer
step
    .goto 117,35.41,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Annie Bonn|r
    .turnin 11471 >>Turn in The Jig is Up
    .target Annie Bonn
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11467 >>Turn in Dead Man's Debt
    .target Taruk
step
    .goto 117,37.75,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle Frostprow|r
    .turnin 11469 >>Turn in Swabbin' Soap
    .target Scuttle Frostprow
step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11519 >>Turn in The Lost Shield of the Aesirites
    .accept 11527 >>Accept Mutiny on the Mercy
    .unitscan Captain Ellis
step
    .goto 117,40.50,75.50
    >>Kill |cRXP_ENEMY_Mutinous Sea Dog|r and loot |cRXP_LOOT_Barrel of Blasting Powder|r
    .complete 11527,1 --Barrel of Blasting Powder (1)
    .mob Mutinous Sea Dog
step
    #loop
    .goto 117,45.95,82.35,0
    .goto 117,45.95,82.35,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,33.64,69.96,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11527 >>Turn in Mutiny on the Mercy
    .unitscan Captain Ellis
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,75.05,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walt|r
    .turnin 11494 >>Turn in Lightning Infused Relics
    .turnin 11495 >>Turn in The Delicate Sound of Thunder
    .accept 11501 >>Accept News From the East
    .target Walt
step
    .goto 117,81.77,73.91
    >>Pick up |cRXP_PICK_The Ancient Armor of the Kvaldir|r from the ground
    .complete 11567,1 --The Ancient Armor of the Kvaldir (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 117,69.77,29.82,0
    .goto 117,69.77,29.82,40,0
    .goto 117,68.18,30.54,40,0
    .goto 117,70.41,23.92,40,0
    >>Interact with |cRXP_FRIENDLY_Stone Giants|r
    .complete 11355,1 --Stone Giant (4)
    .target Stone Giant
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11428 >>Turn in Keeper Witherleaf
    .target Lurielle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.58,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Aderan|r
    .turnin 11355 >>Turn in March of the Giants
    .accept 11358 >>Accept The Lodestone
    .target Researcher Aderan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,71.70,17.60
    >>Kill |cRXP_ENEMY_Image of Megalith|r
    .complete 11358,1 --Image of Megalith slain (1)
    .mob Image of Megalith
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.58,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Aderan|r
    .turnin 11358 >>Turn in The Lodestone
    .accept 11359 >>Accept Demolishing Megalith
    .target Researcher Aderan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,66.54,9.54
    >>Kill |cRXP_ENEMY_Megalith|r
    .complete 11359,1 --Megalith slain (1)
    .mob Megalith
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.58,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Aderan|r
    .turnin 11359 >>Turn in Demolishing Megalith
    .target Researcher Aderan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .turnin 11346 >>Turn in The Book of Runes
    .target Prospector Belvar
    .isQuestComplete 11346
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .accept 11349 >>Accept Mastering the Runes
    .target Prospector Belvar
    .isQuestTurnedIn 11346 --any of: The Book of Runes
    .xp <69,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,71.14,28.76
    >>Pick up |cRXP_PICK_Iron Rune Carving Tools|r from the ground
    .complete 11349,1 --Iron Rune Carving Tools (1)
    .isOnQuest 11349
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .turnin 11349 >>Turn in Mastering the Runes
    .target Prospector Belvar
    .isOnQuest 11349
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .accept 11348 >>Accept The Rune of Command
    .target Prospector Belvar
    .isQuestTurnedIn 11349 --any of: Mastering the Runes
    .xp <69,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,71.95,23.22
    >>Interact with |cRXP_FRIENDLY_Stone Giant|r
    .complete 11348,1 --Stone Giant
    .target Stone Giant
    .isOnQuest 11348
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,71.85,24.56
    >>Kill |cRXP_ENEMY_Binder Murdis|r
    .complete 11348,2 --Binder Murdis slain (1)
    .mob Binder Murdis
    .isOnQuest 11348
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .turnin 11348 >>Turn in The Rune of Command
    .target Prospector Belvar
    .isOnQuest 11348
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,44.90,34.90
    >>Kill |cRXP_ENEMY_Halfdan the Ice-Hearted|r
    .complete 11249,1 --Halfdan the Ice-Hearted slain (1)
    .mob Halfdan the Ice-Hearted
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.86,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Levariol|r
    .turnin 11249 >>Turn in Stop the Ascension!
    .target Father Levariol
    .isOnQuest 11249
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11501 >>Turn in News From the East
    .target Captain Adams
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11250 >>Turn in All Hail the Conqueror of Skorn!
    .target Captain Adams
    .isQuestComplete 11250
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .accept 12297 >>Accept Of Traitors and Treason
    .target Captain Adams
    .isQuestTurnedIn 11250 --any of: All Hail the Conqueror of Skorn!
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,31.26,43.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greer Orehammer|r
    .turnin 12297 >>Turn in Of Traitors and Treason
    .target Greer Orehammer
    .isOnQuest 12297
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,31.26,43.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greer Orehammer|r
    .accept 12298 >>Accept High Commander Halford Wyrmbane
    .target Greer Orehammer
    .isQuestTurnedIn 12297 --any of: Of Traitors and Treason
    .xp <71,1
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11567 >>Turn in The Ancient Armor of the Kvaldir
    .turnin 11511 >>Turn in The Staff of Storm's Fury
    .turnin 11512 >>Turn in The Frozen Heart of Isuldof
    .target Orfus of Kamagua
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,38.79,13.08
    >>Kill |cRXP_ENEMY_Necro Overlord Mezhen|r and loot |cRXP_LOOT_Mezhen's Writings|r. Use it to start the quest
    .collect 34090,1,11452 --Mezhen's Writings (1)
    .accept 11452 >>Accept The Slumbering King
    .use 34090
    .mob Necro Overlord Mezhen
    .isQuestTurnedIn 11235 --any of: Dealing With Gjalerbron
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,40.88,6.48
    >>Kill |cRXP_ENEMY_Queen Angerboda|r
    .complete 11452,1 --Queen Angerboda slain (1)
    .mob Queen Angerboda
    .isOnQuest 11452
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,36.45,7.20
    >>Kill |cRXP_ENEMY_Wyrmcaller Vile|r
    .complete 11238,1 --Wyrmcaller Vile slain (1)
    .mob Wyrmcaller Vile
    .isOnQuest 11238
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,36.45,7.20
    >>Kill |cRXP_ENEMY_Wyrmcaller Vile|r and loot |cRXP_LOOT_Wyrmcaller's Horn|r
    .complete 11238,3 --Wyrmcaller's Horn (1)
    .mob Wyrmcaller Vile
    .isOnQuest 11238
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,35.68,7.81
    >>Kill |cRXP_ENEMY_Glacion|r
    .complete 11238,2 --Glacion slain (1)
    .mob Glacion
    .isOnQuest 11238
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.05,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonleaf|r
    .turnin 11326 >>Turn in Alpha Worg
    .target Watcher Moonleaf
    .isQuestComplete 11326
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.94,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Lieutenant Malister|r
    .turnin 11238 >>Turn in The Frost Wyrm and its Master
    .target Mage-Lieutenant Malister
    .isOnQuest 11238
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11452 >>Turn in The Slumbering King
    .target Captain Adams
    .isOnQuest 11452
step
    +|cRXP_WARN_That is all of Howling Fjord for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: Allies in Dalaran << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dragonblight|r: Travel to Moa'ki Harbor
    >>|cRXP_FRIENDLY_Dragonblight|r: High Commander Halford Wyrmbane << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Ironforge|r: Portents of Uldum << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Alpha Worg, The Book of Runes, All Hail the Conqueror of Skorn! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 72|r: |cRXP_FRIENDLY_Borean Tundra|r (about 0.9 levels of quests, starting around Elder Atkanok), |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza; 1 quest from here hands in there), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Borean Tundra --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Howling Fjord is planned from level 78.|r Load its guide for level 78 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 70 - 79 Howling Fjord
#subweight -70
#name 78-79 Howling Fjord
--RouteBuilder:next
#next Zone Routes (Alliance)\76-78 Sholazar Basin;Zone Routes (Alliance)\78-80 The Storm Peaks;Zone Routes (Alliance)\79-81 Icecrown: around Highlord Tirion Fordring

step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11529 >>Accept Sorlof's Booty
    .unitscan Captain Ellis
    .isQuestTurnedIn 11527 --any of: Mutiny on the Mercy
step
    .goto 117,40.74,68.83
    >>Kill |cRXP_ENEMY_Sorlof|r and loot |cRXP_LOOT_Sorlof's Booty|r. It can also be picked up from |cRXP_PICK_Sorlof's Booty|r on the ground
    .complete 11529,1 --Sorlof's Booty (1)
    .mob Sorlof
    .isOnQuest 11529
step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11529 >>Turn in Sorlof's Booty
    .unitscan Captain Ellis
    .isOnQuest 11529
step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11530 >>Accept The Shield of the Aesirites
    .unitscan Captain Ellis
    .isQuestTurnedIn 11529 --any of: Sorlof's Booty
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11530 >>Turn in The Shield of the Aesirites
    .target Orfus of Kamagua
    .isOnQuest 11530
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .accept 11568 >>Accept A Return to Resting
    .target Orfus of Kamagua
    .isQuestTurnedIn 11511 --The Staff of Storm's Fury
    .isQuestTurnedIn 11512 --The Frozen Heart of Isuldof
    .isQuestTurnedIn 11530 --The Shield of the Aesirites
    .isQuestTurnedIn 11567 --The Ancient Armor of the Kvaldir
step
    .goto 117,57.65,77.75
    >>Kill |cRXP_ENEMY_Fengir the Disgraced|r
    .complete 11568,1 --Fengir the Disgraced slain (1)
    .mob Fengir the Disgraced
    .isOnQuest 11568
step
    .goto 117,59.71,79.39
    >>Kill |cRXP_ENEMY_Isuldof Iceheart|r
    .complete 11568,3 --Isuldof Iceheart slain (1)
    .mob Isuldof Iceheart
    .isOnQuest 11568
step
    .goto 117,61.95,80.04
    >>Kill |cRXP_ENEMY_Windan of the Kvaldir|r
    .complete 11568,4 --Windan of the Kvaldir slain (1)
    .mob Windan of the Kvaldir
    .isOnQuest 11568
step
    .goto 117,59.28,76.87
    >>Kill |cRXP_ENEMY_Rodin the Reckless|r
    .complete 11568,2 --Rodin the Reckless slain (1)
    .mob Rodin the Reckless
    .isOnQuest 11568
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11568 >>Turn in A Return to Resting
    .target Orfus of Kamagua
    .isOnQuest 11568
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .accept 11572 >>Accept Return to Atuik
    .target Orfus of Kamagua
    .isQuestTurnedIn 11568 --any of: A Return to Resting
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11572 >>Turn in Return to Atuik
    .target Elder Atuik
    .isOnQuest 11572
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.87,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Adams|r
    .turnin 11250 >>Turn in All Hail the Conqueror of Skorn!
    .target Captain Adams
    .isQuestComplete 11250
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,28.29,9.19
    >>Kill |cRXP_ENEMY_Garwal|r
    .complete 11326,1 --Garwal slain (1)
    .mob Garwal
    .isOnQuest 11326
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,30.05,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonleaf|r
    .turnin 11326 >>Turn in Alpha Worg
    .target Watcher Moonleaf
    .isQuestComplete 11326
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 3|r
    .collect 33780,1,11346,1 --Book of Runes - Chapter 3 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
    .isOnQuest 11346
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 2|r
    .collect 33779,1,11346,1 --Book of Runes - Chapter 2 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
    .isOnQuest 11346
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 1|r
    .collect 33778,1,11346,1 --Book of Runes - Chapter 1 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
    .isOnQuest 11346
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 117,62.28,17.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Belvar|r
    .turnin 11346 >>Turn in The Book of Runes
    .target Prospector Belvar
    .isQuestComplete 11346
step
    +|cRXP_WARN_End of the Howling Fjord route.|r
step
    +|cRXP_WARN_Suggested next zones at level 78|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 1.1 levels of quests, starting around Debaar), |cRXP_FRIENDLY_The Storm Peaks|r (about 0.9 levels of quests, starting around Ricket), |cRXP_FRIENDLY_Icecrown|r (about 0.8 levels of quests, starting around Highlord Tirion Fordring). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
]])
