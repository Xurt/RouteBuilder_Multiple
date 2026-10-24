-- 11-20 Loch Modan: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "11 - 19 Loch Modan" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Loch Modan.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 11 - 19 Loch Modan
#subweight -11
#name 11-15 Loch Modan: around Captain Rugelfuss
#next Zone Routes (Alliance)\15-19 Loch Modan: around Mountaineer Kadrell

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 302 >>Turn in Powder to Ironband
    .target Jern Hornhelm
    .isOnQuest 302
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,14.01,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 28567 >>Turn in Hero's Call: Loch Modan!
    .target Pilot Hammerfoot
    .isOnQuest 28567
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,14.01,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 26131 >>Turn in Reinforcements for Loch Modan
    .target Pilot Hammerfoot
    .isOnQuest 26131
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,14.01,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 26854 >>Accept The Lost Pilot
    .target Pilot Hammerfoot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,14.01,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 26855 >>Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
    .isQuestComplete 26855
step
    .goto 48,14.01,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 13635 >>Accept South Gate Status Report
    .target Pilot Hammerfoot
    .isQuestTurnedIn 26855 --any of: A Pilot's Revenge
    .xp <10,1
step
    .goto 48,23.38,75.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 13635 >>Turn in South Gate Status Report
    .target Captain Rugelfuss
    .isOnQuest 13635
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,23.38,75.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 26146 >>Accept In Defense of the King's Lands
    .target Captain Rugelfuss
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,23.33,74.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 26145 >>Accept The Trogg Threat
    .target Mountaineer Cobbleflint
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,29.08,81.00,0
    .goto 48,29.08,81.00,40,0
    .goto 48,28.24,86.83,40,0
    >>Kill |cRXP_ENEMY_Stonesplinter Scouts|r and |cRXP_ENEMY_Stonesplinter Troggs|r
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r, |cRXP_ENEMY_Stonesplinter Scouts|r, |cRXP_ENEMY_Stonesplinter Bonesnappers|r and |cRXP_ENEMY_Stonesplinter Geomancers|r. Loot them for |cRXP_LOOT_Trogg Stone Tooth|r
    .complete 26146,1 --Stonesplinter Scout (8)
    .complete 26145,1 --Trogg Stone Tooth (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .mob Stonesplinter Bonesnapper
    .mob Stonesplinter Geomancer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,23.38,75.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 26146 >>Turn in In Defense of the King's Lands
    .accept 26148 >>Accept A Decisive Strike
    .target Captain Rugelfuss
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,23.33,74.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 26145 >>Turn in The Trogg Threat
    .target Mountaineer Cobbleflint
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,23.30,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r
    .accept 26147 >>Accept Bigger and Uglier
    .target Mountaineer Wallbang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,35.27,65.04,0
    .goto 48,35.27,65.04,40,0
    .goto 48,35.25,61.66,40,0
    .goto 48,35.65,61.02,40,0
    >>Kill |cRXP_ENEMY_Stonesplinter Shamans|r
    >>Kill |cRXP_ENEMY_Stonesplinter Bonesnappers|r
    >>Kill |cRXP_ENEMY_Grawmug|r
    .complete 26147,1 --Stonesplinter Shaman slain (8)
    .complete 26147,2 --Stonesplinter Bonesnapper slain (8)
    .complete 26148,1 --Grawmug slain (1)
    .mob Stonesplinter Shaman
    .mob Stonesplinter Bonesnapper
    .mob Grawmug
step
    .goto 48,23.38,75.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 26148 >>Turn in A Decisive Strike << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26176 >>Accept Onward to Thelsamar
    .target Captain Rugelfuss
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,23.30,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r
    .turnin 26147 >>Turn in Bigger and Uglier
    .target Mountaineer Wallbang
step
    .goto 48,33.940,50.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .target Thorgrum Borrelson
step
    .goto 48,35.06,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 26176 >>Turn in Onward to Thelsamar
    .accept 26842 >>Accept Out of Gnoll-where << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 13636 >>Accept Stormpike's Orders
    .target Mountaineer Kadrell
step
    .goto 48,40.28,39.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khara Deepwater|r
    .target Khara Deepwater
    .home >>Set your Hearthstone to Khara Deepwater's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,34.83,49.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 26860 >>Accept Thelsamar Blood Sausages
    .target Vidra Hearthstove
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Train your class spells
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Train your class spells
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gindle the Green|r
    .trainer >> Train your class spells
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Train your class spells
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Train your class spells
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Train your class spells
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Train your class spells
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Train your class spells
    .target Priestess Baerla
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,37.30,46.52
    >>Click the |cRXP_PICK_Wanted!|r
    .accept 13648 >>Accept WANTED: The Dark Iron Spy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,35.43,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dakk Blunderblast|r
    .accept 25118 >>Accept Looking for Lurkers
    .target Dakk Blunderblast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,27.34,41.79,0
    .goto 48,27.34,41.79,40,0
    .goto 48,25.73,42.78,40,0
    >>Kill |cRXP_ENEMY_Mosshide Scouts|r, |cRXP_ENEMY_Mosshide Bashers|r and |cRXP_ENEMY_Sagepaws|r. Loot them for |cRXP_LOOT_Mosshide Ear|r
    .complete 26842,1 --Mosshide Ear (12)
    .mob Mosshide Scout
    .mob Mosshide Basher
    .mob Sagepaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >>Turn in Stormpike's Delivery
    .target Mountaineer Stormpike
    .isOnQuest 353
step
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 13636 >>Turn in Stormpike's Orders
    .accept 26843 >>Accept A Tiny, Clever Commander << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Mountaineer Stormpike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,26.15,31.66
    >>Kill |cRXP_ENEMY_"Commander" Nazrim|r
    .complete 26843,1 --"Commander" Nazrim slain (1)
    .mob "Commander" Nazrim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 26843 >>Turn in A Tiny, Clever Commander
    .accept 26844 >>Accept Kobold and Kobolder
    .target Mountaineer Stormpike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,33.00,18.15,0
    .goto 48,33.00,18.15,40,0
    .goto 48,35.57,14.60,40,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Surveyors|r
    .complete 26844,1 --Tunnel Rat Surveyor slain (5)
    .mob Tunnel Rat Surveyor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along27
    >>As you go: Kill |cRXP_ENEMY_Forest Lurkers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25118,1 --Forest Lurker slain (8)
    .mob Forest Lurker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along27
    #loop
    .goto 48,38.67,16.48,0
    .goto 48,38.67,16.48,40,0
    .goto 48,39.15,12.95,40,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Foragers|r
    .complete 26844,2 --Tunnel Rat Forager slain (5)
    .mob Tunnel Rat Forager
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 26844 >>Turn in Kobold and Kobolder
    .accept 26845 >>Accept Who's In Charge Here?
    .accept 26863 >>Accept Filthy Paws
    .target Mountaineer Stormpike
step
    .goto 48,25.40,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Dorli|r
    .accept 26846 >>Accept A Nasty Exploit
    .target Scout Dorli
step
    #loop
    .goto 48,35.73,19.42,0
    .goto 48,35.73,19.42,40,0
    .goto 48,35.51,24.10,40,0
    .goto 48,34.80,26.73,40,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Geomancers|r
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot it for |cRXP_LOOT_Miners' Gear|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Foreman Sharpsneer|r and loot |cRXP_LOOT_Foreman Sharpsneer's Head|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 26846,1 --Tunnel Rat Geomancer slain (5)
    .complete 26863,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Miners' Gear (1)
    .complete 26845,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Foreman Sharpsneer's Head (1)
    .mob Tunnel Rat Geomancer
    .mob Foreman Sharpsneer << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 26845 >>Turn in Who's In Charge Here?
    .turnin 26863 >>Turn in Filthy Paws
    .accept 26864 >>Accept The Bearer of Gnoll-edge
    .target Mountaineer Stormpike
step
    .goto 48,25.40,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Dorli|r
    .turnin 26846 >>Turn in A Nasty Exploit
    .target Scout Dorli
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,29.61,24.97,0
    .goto 48,29.61,24.97,40,0
    .goto 48,33.83,30.48,40,0
    .goto 48,36.92,36.31,40,0
    .goto 48,38.37,31.06,40,0
    >>Kill |cRXP_ENEMY_Black Bears|r. Loot them for |cRXP_LOOT_Bear Rump|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r
    .complete 26860,1 --Bear Rump (8)
    .complete 25118,1 --Forest Lurker slain (8)
    .mob Black Bear
    .mob Forest Lurker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,35.43,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dakk Blunderblast|r
    .turnin 25118 >>Turn in Looking for Lurkers
    .target Dakk Blunderblast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,35.06,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 26842 >>Turn in Out of Gnoll-where
    .turnin 26864 >>Turn in The Bearer of Gnoll-edge
    .accept 26927 >>Accept Suddenly, Murlocs!
    .target Mountaineer Kadrell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,34.79,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26927 >>Turn in Suddenly, Murlocs!
    .accept 26928 >>Accept Smells Like A Plan
    .accept 26929 >>Accept A Load of Croc
    .target Cannary Caskshot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,34.83,49.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 26860 >>Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,35.06,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .accept 26932 >>Accept Buzz Off
    .target Mountaineer Kadrell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,36.71,61.14
    >>Kill |cRXP_ENEMY_Gorick Guzzledraught|r
    .complete 13648,1 --Gorick Guzzledraught slain (1)
    .mob Gorick Guzzledraught
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,36.75,61.11
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r
    .accept 13656 >>Accept Explorers' League Document (1 of 6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,52.78,63.15,0
    .goto 48,52.78,63.15,40,0
    .goto 48,55.26,61.12,40,0
    .goto 48,56.69,49.26,40,0
    .goto 48,52.85,58.43,40,0
    >>Kill |cRXP_ENEMY_Loch Crocolisks|r. Loot them for |cRXP_LOOT_Intact Crocolisk Jaw|r
    >>Kill |cRXP_ENEMY_Loch Buzzards|r
    .complete 26929,1 --Intact Crocolisk Jaw (6)
    .complete 26932,1 --Loch Buzzard slain (8)
    .mob Loch Crocolisk
    .mob Loch Buzzard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Khara Deepwater's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along42
    >>As you go: Kill |cRXP_ENEMY_Bluegill Wanderers|r, |cRXP_ENEMY_Bluegill Mudskippers|r and |cRXP_ENEMY_Whitefins|r. Loot them for |cRXP_LOOT_Murloc Scent Gland|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26928,1 --Murloc Scent Gland (7)
    .mob Bluegill Wanderer
    .mob Bluegill Mudskipper
    .mob Whitefin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along42
    .goto 48,41.38,38.97
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r
    .accept 13655 >>Accept Explorers' League Document (2 of 6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,42.99,41.66,0
    .goto 48,42.99,41.66,40,0
    .goto 48,42.89,47.97,40,0
    .goto 48,45.88,54.76,40,0
    .goto 48,44.81,49.94,40,0
    >>Kill |cRXP_ENEMY_Bluegill Wanderers|r, |cRXP_ENEMY_Bluegill Mudskippers|r and |cRXP_ENEMY_Whitefins|r. Loot them for |cRXP_LOOT_Murloc Scent Gland|r
    .complete 26928,1 --Murloc Scent Gland (7)
    .mob Bluegill Wanderer
    .mob Bluegill Mudskipper
    .mob Whitefin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,34.60,44.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .turnin 13648 >>Turn in WANTED: The Dark Iron Spy
    .target Magistrate Bluntnose
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,35.06,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 26932 >>Turn in Buzz Off
    .target Mountaineer Kadrell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,34.79,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26929 >>Turn in A Load of Croc
    .turnin 26928 >>Turn in Smells Like A Plan
    .accept 26868 >>Accept Axis of Awful
    .target Cannary Caskshot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,37.27,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .turnin 13656 >>Turn in Explorers' League Document (1 of 6)
    .turnin 13655 >>Turn in Explorers' League Document (2 of 6)
    .target Torren Squarejaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,50.58,56.04
    >>Use the Clever Plant Disguise Kit to sneak up on the Mosshide Representative and use the Potent Murloc Pheromones on him.
    .complete 26868,1 --Mosshide Representative
    .target Mosshide Representative
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,34.79,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26868 >>Turn in Axis of Awful
    .target Cannary Caskshot
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 11 - 19 Loch Modan
#subweight -11
#name 15-19 Loch Modan: around Mountaineer Kadrell
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 48,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 13639 >>Accept Resupplying the Excavation
    .target Jern Hornhelm
    .isQuestTurnedIn 26868 --any of: Axis of Awful
step
    .goto 48,56.36,65.98
    >>Locate Huldar, Miran, and Saean.
    .complete 13639,1 --Huldar
    .target Huldar
    .isOnQuest 13639
step
    .goto 48,56.36,65.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huldar|r
    .turnin 13639 >>Turn in Resupplying the Excavation
    .target Huldar
    .isOnQuest 13639
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,56.36,65.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huldar|r
    .accept 309 >>Accept Protecting the Shipment
    .target Huldar
    .isQuestTurnedIn 13639 --any of: Resupplying the Excavation
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,56.51,65.94
    >>Kill |cRXP_ENEMY_Saean|r
    .complete 309,1 --Saean slain (1)
    .mob Saean
    .isOnQuest 309
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,61.70,73.18
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r
    .accept 13657 >>Accept Explorers' League Document (3 of 6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,64.90,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    .accept 26961 >>Accept Gathering Idols
    .target Magmar Fellhew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,65.12,65.77
    >>Escort Miran to the excavation site
    .complete 309,2 --Escort Miran to the excavation site
    .isOnQuest 309
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,65.34,65.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 309 >>Turn in Protecting the Shipment
    .target Prospector Ironband
    .isOnQuest 309
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,65.34,65.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 13650 >>Accept Keep Your Hands Off The Goods!
    .target Prospector Ironband
    .isQuestTurnedIn 309 --any of: Protecting the Shipment
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Stonesplinter Geomancers|r and |cRXP_ENEMY_Stonesplinter Diggers|r. Loot them for |cRXP_LOOT_Carved Stone Idol|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26961,1 --Carved Stone Idol (8)
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,68.11,66.14
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r
    .accept 13658 >>Accept Explorers' League Document (4 of 6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,70.72,67.55
    >>Inspect the Upturned Giant Artifact, the Overdressed Woman Artifact, and the Broken Tablet Artifact.
    .complete 13650,1 --Ironband Tablet Artifact Bunny
    .target Ironband Tablet Artifact Bunny
    .isOnQuest 13650
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,72.73,65.43
    >>Inspect the Upturned Giant Artifact, the Overdressed Woman Artifact, and the Broken Tablet Artifact.
    .complete 13650,3 --Ironband Liberty Artifact Bunny
    .target Ironband Liberty Artifact Bunny
    .isOnQuest 13650
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along63
    .goto 48,70.07,59.92
    >>Inspect the Upturned Giant Artifact, the Overdressed Woman Artifact, and the Broken Tablet Artifact.
    .complete 13650,2 --Ironband Sandal Artifact Bunny
    .target Ironband Sandal Artifact Bunny
    .isOnQuest 13650
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,72.62,64.95,0
    .goto 48,72.62,64.95,40,0
    .goto 48,71.85,68.81,40,0
    >>Kill |cRXP_ENEMY_Stonesplinter Geomancers|r and |cRXP_ENEMY_Stonesplinter Diggers|r. Loot them for |cRXP_LOOT_Carved Stone Idol|r
    .complete 26961,1 --Carved Stone Idol (8)
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,65.34,65.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 13650 >>Turn in Keep Your Hands Off The Goods!
    .target Prospector Ironband
    .isOnQuest 13650
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,64.90,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    .turnin 26961 >>Turn in Gathering Idols
    .target Magmar Fellhew
step
    .goto 48,64.90,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    .accept 13647 >>Accept Joining the Hunt
    .target Magmar Fellhew
    .isQuestTurnedIn 309 --Protecting the Shipment
    .isQuestTurnedIn 13650 --Keep Your Hands Off The Goods!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,82.79,63.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r
    .accept 27025 >>Accept Thistle While You Work
    .target Safety Warden Pipsy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,83.49,65.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .accept 27016 >>Accept The Joy of Boar Hunting
    .target Daryl the Youngling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.65,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .turnin 2039 >>Turn in Find Bingles
    .target Bingles Blastenheimer
    .isOnQuest 2039
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.65,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .accept 27031 >>Accept Wing Nut
    .target Bingles Blastenheimer
step
    .goto 48,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 13647 >>Turn in Joining the Hunt
    .target Marek Ironheart
    .isOnQuest 13647
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .accept 27028 >>Accept Hornet Hunting
    .accept 27030 >>Accept Foxtails By The Handful
    .target Marek Ironheart
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,71.83,71.05,0
    .goto 48,71.83,71.05,40,0
    .goto 48,70.97,76.20,40,0
    >>Kill |cRXP_ENEMY_Golden Eagles|r. Loot them for |cRXP_LOOT_Pristine Flight Feather|r
    .complete 27031,1 --Pristine Flight Feather (3)
    .mob Golden Eagle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along75
    >>As you go: Pick up |cRXP_PICK_Stabthistle Seed|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 27025,1 --Stabthistle Seed (6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along75
    .goto 48,73.17,35.85
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r
    .accept 13659 >>Accept Explorers' League Document (6 of 6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,72.42,36.59,0
    .goto 48,72.42,36.59,40,0
    .goto 48,70.62,39.59,40,0
    .goto 48,68.98,49.52,40,0
    .goto 48,66.45,40.16,40,0
    >>Kill |cRXP_ENEMY_Hill Foxes|r and |cRXP_ENEMY_Ashtails|r. Loot them for |cRXP_LOOT_Fluffy Fox Tail|r
    >>Pick up |cRXP_PICK_Stabthistle Seed|r from the ground
    .complete 27030,1 --Fluffy Fox Tail (7)
    .complete 27025,1 --Stabthistle Seed (6)
    .mob Hill Fox
    .mob Ashtail
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along77
    >>As you go: Kill |cRXP_ENEMY_Marsh Hornets|r and |cRXP_ENEMY_Nixes|r. Loot them for |cRXP_LOOT_Glassy Hornet Wing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27028,1 --Glassy Hornet Wing (6)
    .mob Marsh Hornet
    .mob Nix
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along77
    .goto 48,53.71,38.11
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r
    .accept 13660 >>Accept Explorers' League Document (5 of 6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,56.17,39.31,0
    .goto 48,56.17,39.31,40,0
    .goto 48,57.06,41.13,40,0
    .goto 48,56.28,36.17,40,0
    >>Kill |cRXP_ENEMY_Marsh Hornets|r and |cRXP_ENEMY_Nixes|r. Loot them for |cRXP_LOOT_Glassy Hornet Wing|r
    >>Kill |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27028,1 --Glassy Hornet Wing (6)
    .complete 27016,1 --Mudbelly Boar slain (10)
    .mob Marsh Hornet
    .mob Nix
    .mob Mudbelly Boar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,82.79,63.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r
    .turnin 27025 >>Turn in Thistle While You Work
    .accept 27026 >>Accept Defcon: Bobcat
    .target Safety Warden Pipsy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,83.49,65.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 27016 >>Turn in The Joy of Boar Hunting
    .target Daryl the Youngling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 27028 >>Turn in Hornet Hunting
    .turnin 27030 >>Turn in Foxtails By The Handful
    .target Marek Ironheart
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.91,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .accept 27036 >>Accept Vyrin's Revenge
    .target Vyrin Swiftwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.65,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .turnin 27031 >>Turn in Wing Nut
    .accept 27032 >>Accept Bird is the Word
    .target Bingles Blastenheimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,78.57,76.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rusted Skystrider|r
    .turnin 27032 >>Turn in Bird is the Word
    .accept 27033 >>Accept Skystrider's Heart
    .target Rusted Skystrider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,80.38,52.23
    >>Kill |cRXP_ENEMY_Ol' Sooty|r and loot |cRXP_LOOT_Ol' Sooty's Head|r
    .complete 27036,1 --Ol' Sooty's Head (1)
    .mob Ol' Sooty
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,76.65,64.29,0
    .goto 48,76.65,64.29,40,0
    .goto 48,74.70,65.10,40,0
    >>Kill |cRXP_ENEMY_Bobcats|r
    .complete 27026,1 --Bobcat slain (8)
    .mob Bobcat
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,82.79,63.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r
    .turnin 27026 >>Turn in Defcon: Bobcat
    .target Safety Warden Pipsy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,83.49,65.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 27036 >>Turn in Vyrin's Revenge
    .accept 27037 >>Accept Vyrin's Revenge
    .target Daryl the Youngling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.91,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .turnin 27037 >>Turn in Vyrin's Revenge
    .target Vyrin Swiftwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,81.65,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .turnin 27033 >>Turn in Skystrider's Heart
    .accept 27034 >>Accept He's That Age
    .target Bingles Blastenheimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,37.27,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .turnin 13657 >>Turn in Explorers' League Document (3 of 6)
    .turnin 13658 >>Turn in Explorers' League Document (4 of 6)
    .turnin 13660 >>Turn in Explorers' League Document (5 of 6)
    .turnin 13659 >>Turn in Explorers' League Document (6 of 6)
    .target Torren Squarejaw
step
    .goto 48,37.27,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .accept 13661 >>Accept Heartfelt Appreciation
    .target Torren Squarejaw
    .isQuestTurnedIn 13655 --Explorers' League Document (2 of 6)
    .isQuestTurnedIn 13656 --Explorers' League Document (1 of 6)
step
    .goto 48,37.27,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .turnin 13661 >>Turn in Heartfelt Appreciation
    .target Torren Squarejaw
    .isOnQuest 13661
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,58.52,29.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ando Blastenheimer|r
    .turnin 27034 >>Turn in He's That Age
    .accept 27035 >>Accept Standing Up
    .target Ando Blastenheimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,50.51,23.79
    >>Kill |cRXP_ENEMY_Twilight Landshaper|r
    .complete 27035,1 --Twilight Landshaper slain (1)
    .mob Twilight Landshaper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,58.52,29.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ando Blastenheimer|r
    .turnin 27035 >>Turn in Standing Up
    .accept 27074 >>Accept Fight the Hammer
    .target Ando Blastenheimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,64.13,26.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .turnin 27074 >>Turn in Fight the Hammer
    .accept 27075 >>Accept Servants of Cho'gall
    .accept 27077 >>Accept Clutching at Chaos
    .target Ashlan Stonesmirk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 48,69.82,22.53,0
    .goto 48,69.82,22.53,40,0
    .goto 48,70.95,25.70,40,0
    .goto 48,73.42,19.35,40,0
    >>Kill |cRXP_ENEMY_Emogg the Crushers|r, |cRXP_ENEMY_Mo'grosh Earthbenders|r and |cRXP_ENEMY_Mo'grosh Darkmaulers|r
    >>Loot the |cRXP_PICK_Nascent Elementiums|r for |cRXP_LOOT_Nascent Elementium Spike|r
    .complete 27075,1 --Emogg the Crusher (8)
    .complete 27077,1 --Nascent Elementium Spike (10)
    .mob Emogg the Crusher
    .mob Mo'grosh Earthbender
    .mob Mo'grosh Darkmauler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,64.13,26.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .turnin 27075 >>Turn in Servants of Cho'gall
    .turnin 27077 >>Turn in Clutching at Chaos
    .accept 27078 >>Accept Gor'kresh
    .target Ashlan Stonesmirk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,79.68,14.82
    >>Kill |cRXP_ENEMY_Gor'kresh|r
    .complete 27078,1 --Gor'kresh slain (1)
    .mob Gor'kresh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,64.13,26.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .turnin 27078 >>Turn in Gor'kresh
    .accept 27115 >>Accept Ando's Call
    .target Ashlan Stonesmirk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 48,58.52,29.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ando Blastenheimer|r
    .turnin 27115 >>Turn in Ando's Call
    .accept 27116 >>Accept The Winds of Loch Modan
    .target Ando Blastenheimer
step
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 27116 >>Turn in The Winds of Loch Modan << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26137 >>Accept Checking on the Boys
    .target Mountaineer Stormpike
step
    +|cRXP_WARN_End of the Loch Modan route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dun Morogh|r: The Lost Pilot << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Wetlands|r: Checking on the Boys
step
    +|cRXP_WARN_Suggested next zones at level 19|r: |cRXP_FRIENDLY_Darkshore|r (about 0.6 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
