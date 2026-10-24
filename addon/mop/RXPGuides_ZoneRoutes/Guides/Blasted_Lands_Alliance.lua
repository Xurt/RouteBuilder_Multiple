-- 55-58 Blasted Lands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Blasted Lands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 55-58 Blasted Lands
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus

step
    .goto 17,61.47,18.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
    .turnin 27919 >>Turn in Onward to the Blasted Lands
    .target Enohar Thunderbrew
    .isOnQuest 27919
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,61.47,18.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
    .accept 25715 >>Accept A Closer Look
    .target Enohar Thunderbrew
step
    .goto 17,55.52,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Apone|r
    .target Quartermaster Apone
    .home >>Set your Hearthstone to Quartermaster Apone's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 28857 >>Turn in Blasted Lands: The Other Side of the World
    .target Quartermaster Lungertz
    .isOnQuest 28857
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 28673 >>Turn in Hero's Call: Blasted Lands!
    .target Quartermaster Lungertz
    .isOnQuest 28673
step
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 28867 >>Turn in Nethergarde Needs You!
    .target Quartermaster Lungertz
    .isOnQuest 28867
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .accept 25710 >>Accept Minor Distractions
    .target Quartermaster Lungertz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,57.94,15.19,0
    .goto 17,57.94,15.19,40,0
    .goto 17,57.26,19.46,40,0
    >>Kill |cRXP_ENEMY_Okril'lon Scouts|r
    .complete 25710,1 --Okril'lon Scout slain (8)
    .mob Okril'lon Scout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 25710 >>Turn in Minor Distractions
    .accept 25711 >>Accept Eliminate the Okril'lon
    .target Quartermaster Lungertz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.20,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leyan Steelson|r
    .accept 25712 >>Accept Nethergarde Reigns
    .target Leyan Steelson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.47,13.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buttonwillow McKittrick|r
    .accept 25713 >>Accept Remove Their Arms
    .target Buttonwillow McKittrick
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,53.95,13.98,0
    .goto 17,53.95,13.98,40,0
    .goto 17,53.48,18.65,40,0
    .goto 17,50.87,11.46,40,0
    >>Click the |cRXP_PICK_Okril'lon Weapons Crate|r
    >>Kill |cRXP_ENEMY_Captain Metlek|r
    >>Kill |cRXP_ENEMY_Okril'lon Infantries|r
    .complete 25713,1 --Okril'lon Weapons Crate
    .complete 25712,1 --Captain Metlek slain (1)
    .complete 25711,1 --Okril'lon Infantry slain (9)
    .mob Captain Metlek
    .mob Okril'lon Infantry
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 25711 >>Turn in Eliminate the Okril'lon
    .target Quartermaster Lungertz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.20,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leyan Steelson|r
    .turnin 25712 >>Turn in Nethergarde Reigns
    .target Leyan Steelson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.47,13.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buttonwillow McKittrick|r
    .turnin 25713 >>Turn in Remove Their Arms
    .target Buttonwillow McKittrick
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,69.00,32.70
    >>Scout the ships on the Shattershore
    .complete 25715,1 --Scout the ships on the Shattershore
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,61.47,18.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
    .turnin 25715 >>Turn in A Closer Look
    .accept 25708 >>Accept Our Fallen Friends
    .accept 25709 >>Accept Curtail the Darktail
    .target Enohar Thunderbrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,67.14,36.69,0
    .goto 17,67.14,36.69,40,0
    .goto 17,69.26,38.25,40,0
    .goto 17,66.81,40.95,40,0
    >>Kill |cRXP_ENEMY_Darktail Bonepickers|r
    >>Kill |cRXP_ENEMY_Drowned Gilnean Merchants|r, |cRXP_ENEMY_Drowned Gilnean Sailors|r, |cRXP_ENEMY_Drowned Gilnean Settlers|r and |cRXP_ENEMY_Drowned Gilnean Spirits|r
    .complete 25709,1 --Darktail Bonepicker slain (20)
    .complete 25708,1 --Drowned Gilnean Merchant (8)
    .mob Darktail Bonepicker
    .mob Drowned Gilnean Merchant
    .mob Drowned Gilnean Sailor
    .mob Drowned Gilnean Settler
    .mob Drowned Gilnean Spirit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,61.47,18.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
    .turnin 25708 >>Turn in Our Fallen Friends
    .turnin 25709 >>Turn in Curtail the Darktail
    .target Enohar Thunderbrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,60.10,13.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .accept 25714 >>Accept Watcher Mahar Ba
    .target Quartermaster Lungertz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,63.18,16.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r
    .turnin 25714 >>Turn in Watcher Mahar Ba
    .accept 25716 >>Accept Cultists at our Doorstep
    .target Watcher Mahar Ba
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,60.24,27.95,0
    .goto 17,60.24,27.95,40,0
    .goto 17,58.36,31.30,40,0
    >>Kill |cRXP_ENEMY_Shadowsworn Spellblades|r and |cRXP_ENEMY_Shadowsworn Occultists|r. Loot them for |cRXP_LOOT_Intact Shadowsworn Spell Focus|r
    .complete 25716,1 --Intact Shadowsworn Spell Focus (1)
    .mob Shadowsworn Spellblade
    .mob Shadowsworn Occultist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,63.18,16.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r
    .turnin 25716 >>Turn in Cultists at our Doorstep
    .accept 26157 >>Accept Kasim Sharim
    .target Watcher Mahar Ba
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26157 >>Turn in Kasim Sharim
    .accept 26158 >>Accept Attune the Bloodstone
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,61.42,29.87
    >>Click the |cRXP_PICK_Bloodstone Teleporter|r
    .complete 26158,1 --Bloodstone Teleporter
    .complete 26158,2 --Bloodstone Teleporter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26158 >>Turn in Attune the Bloodstone
    .accept 26159 >>Accept The First Step
    .accept 26172 >>Accept A Bloodmage's Gotta Eat Too
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,50.61,32.44,0
    .goto 17,50.61,32.44,40,0
    .goto 17,51.67,37.86,40,0
    .goto 17,46.26,32.32,40,0
    >>Kill |cRXP_ENEMY_Snickerfang Hyena|r and loot |cRXP_LOOT_Snickerfang Hyena Blood|r
    .complete 26159,1 --Snickerfang Hyena Blood (1)
    .mob Snickerfang Hyena
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,53.33,28.89,0
    .goto 17,53.33,28.89,40,0
    .goto 17,51.97,26.44,40,0
    >>Kill |cRXP_ENEMY_Redstone Basilisk|r and loot |cRXP_LOOT_Redstone Basilisk Blood|r
    .complete 26159,2 --Redstone Basilisk Blood (1)
    .mob Redstone Basilisk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,51.51,29.44,0
    .goto 17,51.51,29.44,40,0
    .goto 17,53.17,32.63,40,0
    .goto 17,57.13,35.60,40,0
    >>Kill |cRXP_ENEMY_Ashmane Boars|r. Loot them for |cRXP_LOOT_Ashmane Steak|r
    .complete 26172,1 --Ashmane Steak (5)
    .mob Ashmane Boar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26159 >>Turn in The First Step
    .turnin 26172 >>Turn in A Bloodmage's Gotta Eat Too
    .accept 26160 >>Accept Blood Ritual
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .complete 26160,1 --Kasim Sharim
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26160 >>Turn in Blood Ritual
    .accept 26167 >>Accept The Amulet of Allistarj
    .accept 26168 >>Accept The Amulet of Sevine
    .accept 26169 >>Accept The Amulet of Grol
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,61.58,26.78
    >>Open the |cRXP_PICK_Allistarjian Vault|r. Loot it for |cRXP_LOOT_Amulet of Allistarj|r
    .complete 26167,1 --Amulet of Allistarj (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26167 >>Turn in The Amulet of Allistarj
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,71.18,35.30
    >>Kill |cRXP_ENEMY_Spirit of Grol|r and loot |cRXP_LOOT_Amulet of Grol|r
    .complete 26169,1 --Amulet of Grol (1)
    .mob Spirit of Grol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,73.18,47.43
    >>Kill |cRXP_ENEMY_Salt-Flop|r and loot |cRXP_LOOT_Amulet of Sevine|r
    .complete 26168,1 --Amulet of Sevine (1)
    .mob Salt-Flop
step
    .goto 17,73.18,47.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salt-Flop|r
    .accept 25702 >>Accept Home... Gone... Naga...
    .target Salt-Flop
step
    .goto 17,71.05,60.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptool|r
    .turnin 25702 >>Turn in Home... Gone... Naga...
    .accept 25703 >>Accept Atrocities
    .target Neptool
step
    #loop
    .goto 17,67.83,68.03,0
    .goto 17,67.83,68.03,40,0
    .goto 17,68.79,72.85,40,0
    >>Kill |cRXP_ENEMY_Bloodwash Barbarians|r
    .complete 25703,1 --Bloodwash Barbarian slain (10)
    .mob Bloodwash Barbarian
step
    #loop
    .goto 17,68.42,63.91,0
    .goto 17,68.42,63.91,40,0
    .goto 17,72.59,61.62,40,0
    >>Kill |cRXP_ENEMY_Bloodwash Enchantress|r
    .complete 25703,2 --Bloodwash Enchantress slain (10)
    .mob Bloodwash Enchantress
step
    .goto 17,71.05,60.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptool|r
    .turnin 25703 >>Turn in Atrocities
    .accept 25705 >>Accept False Idols
    .accept 25706 >>Accept Neptool's Revenge
    .target Neptool
step
    #loop
    .goto 17,65.38,69.23,0
    .goto 17,65.38,69.23,40,0
    .goto 17,66.18,73.87,40,0
    >>Kill |cRXP_ENEMY_Bloodwash Gamblers|r
    .complete 25706,3 --Bloodwash Gambler slain (4)
    .mob Bloodwash Gambler
step
    #completewith Along43
    >>As you go: Click the |cRXP_PICK_Azsh'ir Idol|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25705,1 --Azsh'ir Idol
step
    #loop
    .goto 17,61.15,74.85,0
    .goto 17,61.15,74.85,40,0
    .goto 17,59.69,71.80,40,0
    .goto 17,59.92,78.94,40,0
    >>Kill |cRXP_ENEMY_Bloodwash Idolaters|r
    .complete 25706,4 --Bloodwash Idolater slain (4)
    .mob Bloodwash Idolater
step
    #label Along43
    .goto 17,61.55,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abandoned Bloodwash Crate|r
    .accept 25707 >>Accept The Future of the Rockpool
    .target Abandoned Bloodwash Crate
step
    #loop
    .goto 17,61.75,60.23,0
    .goto 17,61.75,60.23,40,0
    .goto 17,59.88,58.73,40,0
    .goto 17,62.09,56.79,40,0
    >>Kill |cRXP_ENEMY_Bloodwash Acolytes|r
    >>Kill |cRXP_ENEMY_Bloodwash Zealots|r
    >>Click the |cRXP_PICK_Azsh'ir Idol|r
    .complete 25706,2 --Bloodwash Acolyte slain (8)
    .complete 25706,1 --Bloodwash Zealot slain (8)
    .complete 25705,1 --Azsh'ir Idol
    .mob Bloodwash Acolyte
    .mob Bloodwash Zealot
step
    .goto 17,72.60,63.10
    >>Rockpool Tadpoles returned to the Forbidding Sea
    .complete 25707,1 --Rockpool Tadpoles returned to the Forbidding Sea
step
    #loop
    .goto 17,72.60,63.10,0
    .goto 17,72.60,63.10,40,0
    .goto 17,73.10,71.00,40,0
    .goto 17,70.70,78.90,40,0
    .goto 17,65.20,85.30,40,0
    .goto 17,56.90,85.30,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25707 >>Turn in The Future of the Rockpool
    .unitscan ?
step
    .goto 17,71.05,60.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptool|r
    .turnin 25705 >>Turn in False Idols
    .turnin 25706 >>Turn in Neptool's Revenge
    .target Neptool
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26168 >>Turn in The Amulet of Sevine
    .turnin 26169 >>Turn in The Amulet of Grol
    .accept 26163 >>Accept Time is Short
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Quartermaster Apone's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,55.11,49.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Grimeo|r
    .turnin 26163 >>Turn in Time is Short
    .accept 26164 >>Accept The Charred Granite of the Dark Portal
    .accept 26165 >>Accept The Vile Blood of Demons
    .target Watcher Grimeo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,54.66,50.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
    .accept 26173 >>Accept Protecting Our Rear
    .target Watch Commander Relthorn Netherwane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,57.91,49.03,0
    .goto 17,57.91,49.03,40,0
    .goto 17,56.98,44.91,40,0
    .goto 17,55.85,42.74,40,0
    .goto 17,51.33,39.66,40,0
    >>Loot the |cRXP_PICK_Charred Granite Outcroppings|r for |cRXP_LOOT_Charred Granite Chips|r
    >>Kill |cRXP_ENEMY_Felhounds|r, |cRXP_ENEMY_Felguard Sentries|r, |cRXP_ENEMY_Jarroc Torn-Wings|r and |cRXP_ENEMY_Shahandanas|r. Loot them for |cRXP_LOOT_Vile Demonic Blood|r
    .complete 26164,1 --Charred Granite Chips (24)
    .complete 26165,1 --Vile Demonic Blood (1)
    .mob Felhound
    .mob Felguard Sentry
    .mob Jarroc Torn-Wing
    .mob Shahandana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,59.96,43.19
    >>Kill |cRXP_ENEMY_Shahandana|r
    .complete 26173,2 --Shahandana slain (1)
    .mob Shahandana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,51.09,43.05
    >>Kill |cRXP_ENEMY_Gomegaz|r
    .complete 26173,3 --Gomegaz slain (1)
    .mob Gomegaz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,43.90,47.84
    >>Kill |cRXP_ENEMY_Jarroc Torn-Wing|r
    .complete 26173,1 --Jarroc Torn-Wing slain (1)
    .mob Jarroc Torn-Wing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,55.11,49.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Grimeo|r
    .turnin 26164 >>Turn in The Charred Granite of the Dark Portal
    .turnin 26165 >>Turn in The Vile Blood of Demons
    .accept 26166 >>Accept Enhancing the Stone
    .target Watcher Grimeo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,54.66,50.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
    .turnin 26173 >>Turn in Protecting Our Rear
    .accept 26174 >>Accept Watching Our Back
    .target Watch Commander Relthorn Netherwane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,53.93,50.03
    >>Click the |cRXP_PICK_Horde Plans|r
    .complete 26174,1 --Horde Plans
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,54.66,50.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
    .turnin 26174 >>Turn in Watching Our Back
    .accept 26175 >>Accept Surwich
    .target Watch Commander Relthorn Netherwane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26166 >>Turn in Enhancing the Stone
    .accept 26161 >>Accept Not Just Any Body
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,46.99,39.46
    >>Open the |cRXP_PICK_Dreadmaul Cache|r. Loot it for |cRXP_LOOT_Loramus' Legs|r
    .complete 26161,3 --Loramus' Legs (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,40.02,37.18
    >>Open the |cRXP_PICK_Dreadmaul Cache|r. Loot it for |cRXP_LOOT_Loramus' Torso|r
    .complete 26161,2 --Loramus' Torso (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,46.72,26.94
    >>Open the |cRXP_PICK_Dreadmaul Cache|r. Loot it for |cRXP_LOOT_Loramus' Head|r
    .complete 26161,1 --Loramus' Head (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .turnin 26161 >>Turn in Not Just Any Body
    .accept 26162 >>Accept The Altar of Storms
    .target Kasim Sharim
step
    .goto 17,40.46,11.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okrilla|r
    .turnin 28865 >>Turn in Call of the Warmatron
    .target Okrilla
    .isOnQuest 28865
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,36.97,28.42
    >>Bring Loramus' Body to the Altar of Storms, then protect it while the ritual completes.
    .complete 26162,1 --Loramus' Body
    .target Loramus' Body
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,39.36,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 26162 >>Turn in The Altar of Storms
    .target Loramus Thalipedes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .accept 26170 >>Accept The Final Ritual
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,62.53,26.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
    .complete 26170,1 --Kasim Sharim
    .target Kasim Sharim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,39.36,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 26170 >>Turn in The Final Ritual
    .accept 26171 >>Accept You Are Rakh'likh, Demon
    .target Loramus Thalipedes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,45.02,26.67
    >>Kill |cRXP_ENEMY_Razelikh the Defiler|r
    >>Kill |cRXP_ENEMY_Loramus Thalipedes|r
    .complete 26171,1 --Razelikh the Defiler slain (1)
    .complete 26171,2 --Loramus Thalipedes slain (1)
    .mob Razelikh the Defiler
    .mob Loramus Thalipedes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,46.36,87.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
    .turnin 26175 >>Turn in Surwich
    .accept 26184 >>Accept Wormthorn's Dream
    .target Mayor Charlton Connisport
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,41.27,70.72,0
    .goto 17,41.27,70.72,40,0
    .goto 17,39.42,65.92,40,0
    >>Kill |cRXP_ENEMY_Corrupted Darkwood Treants|r
    .complete 26184,3 --Corrupted Darkwood Treant slain (5)
    .mob Corrupted Darkwood Treant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,37.47,68.24,0
    .goto 17,37.47,68.24,40,0
    .goto 17,34.88,68.38,40,0
    .goto 17,34.47,65.20,40,0
    >>Kill |cRXP_ENEMY_Doomguard Destroyers|r
    >>Kill |cRXP_ENEMY_Dreadlord Defilers|r
    .complete 26184,1 --Doomguard Destroyer slain (5)
    .complete 26184,2 --Dreadlord Defiler slain (5)
    .mob Doomguard Destroyer
    .mob Dreadlord Defiler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,33.21,78.26,0
    .goto 17,33.21,78.26,40,0
    .goto 17,33.27,79.50,40,0
    >>Kill |cRXP_ENEMY_Felspore Bog Lords|r
    .complete 26184,4 --Felspore Bog Lord slain (3)
    .mob Felspore Bog Lord
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,46.36,87.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
    .turnin 26184 >>Turn in Wormthorn's Dream
    .accept 26185 >>Accept Advice from the Cenarion Circle
    .target Mayor Charlton Connisport
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,47.13,87.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Observer Shayana|r
    .turnin 26185 >>Turn in Advice from the Cenarion Circle
    .accept 26186 >>Accept Demoniac Vessel
    .target Cenarion Observer Shayana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,46.36,87.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
    .turnin 26186 >>Turn in Demoniac Vessel
    .target Mayor Charlton Connisport
    .isQuestComplete 26186
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Quartermaster Apone's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 17,55.11,49.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Grimeo|r
    .turnin 26171 >>Turn in You Are Rakh'likh, Demon
    .target Watcher Grimeo
step
    .xp 58 >> Grind to 58 or considering running dungeons
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 17,40.79,55.81,0
    .goto 17,40.79,55.81,40,0
    .goto 17,37.30,58.64,40,0
    .goto 17,36.03,51.88,40,0
    >>Kill |cRXP_ENEMY_Tainted Nightstalker|r and loot |cRXP_LOOT_Nightstalker Leg|r
    >>Kill |cRXP_ENEMY_Tainted Screecher|r and loot |cRXP_LOOT_Screecher Brain|r
    >>Kill |cRXP_ENEMY_Tainted Black Bear|r and loot |cRXP_LOOT_Tainted Hide|r
    .collect 57178,1,26186,1 --Nightstalker Leg (1)
    .collect 57179,1,26186,1 --Screecher Brain (1)
    .collect 57177,1,26186,1 --Tainted Hide (1)
    .mob Tainted Nightstalker
    .mob Tainted Screecher
    .mob Tainted Black Bear
step
    +|cRXP_WARN_End of the Blasted Lands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Demoniac Vessel << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 57|r: |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
