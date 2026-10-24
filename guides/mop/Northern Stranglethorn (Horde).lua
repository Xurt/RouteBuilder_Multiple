-- 25-30 Northern Stranglethorn: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Northern Stranglethorn.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 25-30 Northern Stranglethorn
--RouteBuilder:next
#next Zone Routes (Horde)\30-32 Desolace: around Sorrem;Zone Routes (Horde)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Horde)\26-31 Arathi Highlands

step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 27278 >>Accept Grimshot's Call
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Aldrae
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9811 >>Turn in Friend of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9811
step << Orc/Undead/Tauren/Troll/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9812 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9811 --any of: Friend of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <5,1
step
    #completewith next
    .zone 50 >>Leave Silvermoon City for Northern Stranglethorn
    .zoneskip 50
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 26417 >>Turn in Northern Stranglethorn: The Fallen Empire
    .target Commander Aggro'gosh
    .isOnQuest 26417
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 28688 >>Turn in Warchief's Command: Northern Stranglethorn Vale!
    .accept 26278 >>Accept The Defense of Grom'gol: Raptor Risk
    .target Commander Aggro'gosh
step
    .goto 50,39.01,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
    .fp >>Get the Grom'gol Base Camp Flight Path
    .target Thysta
    .subzoneskip 117,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 224,41.58,27.79
    >>Kill |cRXP_ENEMY_Lashtail Eggs|r
    .complete 26278,1 --Lashtail Egg slain (12)
    .mob Lashtail Egg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
    .accept 26317 >>Accept A Lashtail Hatchling
    .turnin 26317 >>Turn in A Lashtail Hatchling
    .accept 26321 >>Accept I Think She's Hungry
    .target Far Seer Mok'thardin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 26278 >>Turn in The Defense of Grom'gol: Raptor Risk
    .accept 26279 >>Accept The Defense of Grom'gol: Ogre Oppression
    .accept 26280 >>Accept The Defense of Grom'gol: Murloc Menace
    .target Commander Aggro'gosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop26407x1
    >>|cRXP_LOOT_Disfigured Mosh'Ogg Hand|r can drop from |cRXP_ENEMY_Mosh'Ogg Brute|r, |cRXP_ENEMY_Mosh'Ogg Witch Doctor|r. Use it to start the quest if you get one
    .collect 58491,1,26407 --Disfigured Mosh'Ogg Hand (1)
    .accept 26407 >>Accept Mosh'Ogg Handiwork
    .use 58491
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop26407x1
    #loop
    .goto 50,45.61,50.88,0
    .goto 50,45.61,50.88,40,0
    .goto 50,46.14,53.88,40,0
    >>Kill |cRXP_ENEMY_Mosh'Ogg Witch Doctors|r
    >>Kill |cRXP_ENEMY_Mosh'Ogg Brutes|r
    .complete 26279,2 --Mosh'Ogg Witch Doctor slain (4)
    .complete 26279,1 --Mosh'Ogg Brute slain (4)
    .mob Mosh'Ogg Witch Doctor
    .mob Mosh'Ogg Brute
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,42.71,41.65,0
    .goto 50,42.71,41.65,40,0
    .goto 50,41.23,39.03,40,0
    .goto 50,40.94,35.09,40,0
    >>Kill |cRXP_ENEMY_Murkgill Foragers|r, |cRXP_ENEMY_Murkgill Hunters|r, |cRXP_ENEMY_Murkgill Oracles|r and |cRXP_ENEMY_Murkgill Coldbringers|r
    .complete 26280,1 --Murkgill Forager (8)
    .mob Murkgill Forager
    .mob Murkgill Hunter
    .mob Murkgill Oracle
    .mob Murkgill Coldbringer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>Kill Murkgill murlocs in Northern Stranglethorn, and let your Lashtail Raptor eat 40 bites of their meat.
    .complete 26321,1 --Lashtail Raptor Feeding Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
    .turnin 26321 >>Turn in I Think She's Hungry while you are here
    .isQuestComplete 26321
    .target Far Seer Mok'thardin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 26279 >>Turn in The Defense of Grom'gol: Ogre Oppression
    .turnin 26280 >>Turn in The Defense of Grom'gol: Murloc Menace
    .accept 26281 >>Accept The Defense of Grom'gol: Trollish Thievery
    .target Commander Aggro'gosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
    .turnin 26321 >>Turn in I Think She's Hungry
    .target Far Seer Mok'thardin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
    .turnin 26407 >>Turn in Mosh'Ogg Handiwork
    .target Far Seer Mok'thardin
    .isOnQuest 26407
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.12,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nemeth Hawkeye|r
    .accept 9436 >>Accept Bloodscalp Insight
    .target Nemeth Hawkeye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,48.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .accept 26298 >>Accept Hunt for Yenniku
    .target Nimboya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along30
    >>As you go: Kill |cRXP_ENEMY_Bloodscalp Warriors|r, |cRXP_ENEMY_Bloodscalp Scouts|r, |cRXP_ENEMY_Bloodscalp Hunters|r and |cRXP_ENEMY_Bloodscalp Berserkers|r. Loot them for |cRXP_LOOT_Bloodscalp Tusk|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26298,1 --Bloodscalp Tusk (6)
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Berserker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along29
    >>As you go: Open the |cRXP_PICK_Grom'gol Rations Crate|r. Loot it for |cRXP_LOOT_Grom'gol Rations|r. Kill |cRXP_ENEMY_Bloodscalp Shaman|r and loot |cRXP_LOOT_Bloodscalp Totem|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26281,1 --Grom'gol Rations (1)
    .complete 9436,1 --Bloodscalp Totem (1)
    .mob Bloodscalp Shaman
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along29
    .goto 50,33.73,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lashtail Hatchling|r
    .accept 26323 >>Accept Favored Skull
    .target Lashtail Hatchling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along30
    #loop
    .goto 50,34.54,35.32,0
    .goto 50,34.54,35.32,40,0
    .goto 50,35.67,37.85,40,0
    >>Open the |cRXP_PICK_Grom'gol Rations Crate|r. Loot it for |cRXP_LOOT_Grom'gol Rations|r
    >>Kill |cRXP_ENEMY_Bloodscalp Shaman|r and loot |cRXP_LOOT_Bloodscalp Totem|r
    .complete 26281,1 --Grom'gol Rations (1)
    .complete 9436,1 --Bloodscalp Totem (1)
    .mob Bloodscalp Shaman
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,28.69,25.28,0
    .goto 50,28.69,25.28,40,0
    .goto 50,28.24,19.75,40,0
    >>Kill |cRXP_ENEMY_Bloodscalp Warriors|r, |cRXP_ENEMY_Bloodscalp Scouts|r, |cRXP_ENEMY_Bloodscalp Hunters|r and |cRXP_ENEMY_Bloodscalp Berserkers|r. Loot them for |cRXP_LOOT_Bloodscalp Tusk|r
    .complete 26298,1 --Bloodscalp Tusk (6)
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Berserker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,48.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 26298 >>Turn in Hunt for Yenniku
    .turnin 26323 >>Turn in Favored Skull
    .accept 26299 >>Accept Headhunting
    .target Nimboya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.50,48.52
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .accept 26325 >>Accept A Nose for This Sort of Thing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.50,48.52
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 26325 >>Turn in A Nose for This Sort of Thing while you are here
    .isQuestComplete 26325
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.12,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nemeth Hawkeye|r
    .turnin 9436 >>Turn in Bloodscalp Insight
    .accept 9457 >>Accept An Unusual Patron
    .target Nemeth Hawkeye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 26281 >>Turn in The Defense of Grom'gol: Trollish Thievery
    .target Commander Aggro'gosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,19.25,40.74
    >>Kill |cRXP_ENEMY_Naias|r and loot |cRXP_LOOT_Heart of Naias|r
    .complete 9457,1 --Heart of Naias (1)
    .mob Naias
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,21.64,28.33,0
    .goto 50,21.64,28.33,40,0
    .goto 50,21.74,24.72,40,0
    .goto 50,19.29,24.45,40,0
    >>Kill |cRXP_ENEMY_Bloodscalp Berserkers|r, |cRXP_ENEMY_Bloodscalp Witch Doctors|r and |cRXP_ENEMY_Bloodscalp Headhunters|r. Loot them for |cRXP_LOOT_Shrunken Head|r
    .complete 26299,1 --Shrunken Head (25)
    .mob Bloodscalp Berserker
    .mob Bloodscalp Witch Doctor
    .mob Bloodscalp Headhunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.50,48.52
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 26325 >>Turn in A Nose for This Sort of Thing
    .accept 26330 >>Accept Who's a Big Troll?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,48.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 26299 >>Turn in Headhunting
    .accept 26300 >>Accept Nezzliok Will Know
    .target Nimboya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.12,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nemeth Hawkeye|r
    .turnin 9457 >>Turn in An Unusual Patron
    .accept 26340 >>Accept The Hunt
    .target Nemeth Hawkeye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
    .accept 26338 >>Accept Population Con-Troll
    .target Far Seer Mok'thardin
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 26340 >>Turn in The Hunt << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 583 >>Accept Welcome to the Jungle
    .target Barnil Stonepot
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 583 >>Turn in Welcome to the Jungle
    .accept 194 >>Accept Raptor Hunting
    .target Hemet Nesingwary Jr.
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 185 >>Accept Tiger Hunting
    .target Ajeck Rouack
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 26269 >>Accept The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 190 >>Accept Panther Hunting
    .target Sir S. J. Erlgadin
step
    #completewith Along48
    >>As you go: Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 185,1 --Young Stranglethorn Tiger slain (10)
    .mob Young Stranglethorn Tiger
step
    .goto 50,43.69,23.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaquilina Dramet|r
    .target Jaquilina Dramet
    .home >>Set your Hearthstone to Jaquilina Dramet's inn
step
    #label Along48
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 26343 >>Accept Supply and Demand
    .target Drizzlik
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    .goto 224,58.69,16.82
    >>Kill |cRXP_ENEMY_Vale Howler|r and loot |cRXP_LOOT_Green Hills of Stranglethorn - Page 14|r
    .complete 26269,1 --Green Hills of Stranglethorn - Page 14 (1)
    .mob Vale Howler
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    #completewith next
    .hs >>Hearth to Jaquilina Dramet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #loop
    .goto 50,44.15,25.98,0
    .goto 50,44.15,25.98,40,0
    .goto 50,45.50,24.40,40,0
    .goto 50,41.35,23.20,40,0
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --Young Stranglethorn Tiger slain (10)
    .mob Young Stranglethorn Tiger
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 26269 >>Turn in The Green Hills of Stranglethorn while you are here
    .isQuestComplete 26269
    .target Barnil Stonepot
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >>Turn in Tiger Hunting
    .accept 186 >>Accept Tiger Stalking
    .target Ajeck Rouack
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,47.70,14.10,0
    .goto 224,47.70,14.10,40,0
    .goto 224,45.16,12.59,40,0
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for |cRXP_LOOT_Large River Crocolisk Skin|r
    .complete 26343,1 --Large River Crocolisk Skin (2)
    .mob River Crocolisk
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26343 >>Turn in Supply and Demand
    .accept 26344 >>Accept Some Assembly Required
    .target Drizzlik
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 26269 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,49.95,12.74,0
    .goto 224,49.95,12.74,40,0
    .goto 224,52.29,14.95,40,0
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --Young Panther slain (10)
    .mob Young Panther
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 190 >>Turn in Panther Hunting
    .accept 191 >>Accept Panther Stalking
    .target Sir S. J. Erlgadin
step
    #loop
    .goto 50,56.32,28.45,0
    .goto 50,56.32,28.45,40,0
    .goto 50,60.30,27.71,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 --Stranglethorn Tiger slain (10)
    .mob Stranglethorn Tiger
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 186 >>Turn in Tiger Stalking
    .accept 187 >>Accept Tiger Prowess
    .target Ajeck Rouack
step
    #loop
    .goto 50,50.32,30.40,0
    .goto 50,50.32,30.40,40,0
    .goto 50,53.56,32.73,40,0
    .goto 50,52.74,39.25,40,0
    >>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r. Loot them for |cRXP_LOOT_Snapjaw Crocolisk Skin|r
    .complete 26344,1 --Snapjaw Crocolisk Skin (5)
    .mob Snapjaw Crocolisk
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26344 >>Turn in Some Assembly Required
    .accept 26345 >>Accept Excelsior
    .target Drizzlik
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,38.09,19.37,0
    .goto 224,38.09,19.37,40,0
    .goto 224,35.81,20.17,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 --Stranglethorn Raptor slain (10)
    .mob Stranglethorn Raptor
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    #completewith next
    .hs >>Hearth to Jaquilina Dramet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 194 >>Turn in Raptor Hunting
    .accept 195 >>Accept Raptor Stalking
    .target Hemet Nesingwary Jr.
step
    #loop
    .goto 50,36.57,23.31,0
    .goto 50,36.57,23.31,40,0
    .goto 50,33.76,20.08,40,0
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 --Panther slain (10)
    .mob Panther
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 191 >>Turn in Panther Stalking
    .accept 192 >>Accept Panther Prowess
    .target Sir S. J. Erlgadin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along65
    >>As you go: Kill |cRXP_ENEMY_Bloodscalp Mystics|r. Kill |cRXP_ENEMY_Bloodscalp Scouts|r. Kill |cRXP_ENEMY_Bloodscalp Hunters|r. Kill |cRXP_ENEMY_Bloodscalp Beastmaster|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26338,1 --Bloodscalp Mystic slain (7)
    .complete 26338,2 --Bloodscalp Scout slain (7)
    .complete 26338,3 --Bloodscalp Hunter slain (7)
    .complete 26338,4 --Bloodscalp Beastmaster slain (1)
    .mob Bloodscalp Mystic
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along65
    .goto 50,24.85,18.21
    >>Kill |cRXP_ENEMY_Nezzliok the Dire|r and loot |cRXP_LOOT_Nezzliok's Head|r
    >>Kill |cRXP_ENEMY_Gan'zulah|r and loot |cRXP_LOOT_Gan'zulah's Body|r
    .complete 26300,1 --Nezzliok's Head (1)
    .complete 26330,1 --Gan'zulah's Body (1)
    .mob Nezzliok the Dire
    .mob Gan'zulah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,27.98,20.53,0
    .goto 50,27.98,20.53,40,0
    .goto 50,28.69,25.28,40,0
    .goto 50,24.71,24.52,40,0
    >>Kill |cRXP_ENEMY_Bloodscalp Mystics|r
    >>Kill |cRXP_ENEMY_Bloodscalp Scouts|r
    >>Kill |cRXP_ENEMY_Bloodscalp Hunters|r
    >>Kill |cRXP_ENEMY_Bloodscalp Beastmaster|r
    .complete 26338,1 --Bloodscalp Mystic slain (7)
    .complete 26338,2 --Bloodscalp Scout slain (7)
    .complete 26338,3 --Bloodscalp Hunter slain (7)
    .complete 26338,4 --Bloodscalp Beastmaster slain (1)
    .mob Bloodscalp Mystic
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    .goto 224,42.68,23.32
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 --Elder Stranglethorn Tiger slain (5)
    .mob Elder Stranglethorn Tiger
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 187 >>Turn in Tiger Prowess
    .accept 188 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto 50,38.52,32.54
    >>Kill |cRXP_ENEMY_Sin'Dall|r and loot |cRXP_LOOT_Paw of Sin'Dall|r
    .complete 188,1 --Paw of Sin'Dall (1)
    .mob Sin'Dall
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,45.60,30.81,0
    .goto 224,45.60,30.81,40,0
    .goto 224,46.67,29.45,40,0
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    .complete 195,1 --Lashtail Raptor slain (10)
    .mob Lashtail Raptor
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 195 >>Turn in Raptor Stalking
    .accept 196 >>Accept Raptor Prowess
    .target Hemet Nesingwary Jr.
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 188 >>Turn in Tiger Mastery while you are here
    .isQuestComplete 188
    .target Ajeck Rouack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.35,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
    .turnin 26338 >>Turn in Population Con-Troll
    .target Far Seer Mok'thardin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.50,48.52
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 26300 >>Turn in Nezzliok Will Know
    .turnin 26330 >>Turn in Who's a Big Troll?
    .accept 26332 >>Accept Skullsplitter Mojo
    .accept 26301 >>Accept Speaking with Nezzliok
step
    #completewith Along74
    >>As you go: Kill |cRXP_ENEMY_Shadowmaw Panthers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 192,1 --Shadowmaw Panther slain (5)
    .mob Shadowmaw Panther
step
    #label Along74
    #loop
    .goto 50,50.82,49.58,0
    .goto 50,50.82,49.58,40,0
    .goto 50,49.29,55.17,40,0
    >>Kill |cRXP_ENEMY_Elder Snapjaw Crocolisk|r and loot |cRXP_LOOT_Elder Crocolisk Skin|r
    .complete 26345,1 --Elder Crocolisk Skin (1)
    .mob Elder Snapjaw Crocolisk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Skullsplitter Warriors|r, |cRXP_ENEMY_Skullsplitter Axe Throwers|r and |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for |cRXP_LOOT_Skullsplitter Mojo|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26332,1 --Skullsplitter Mojo (6)
    .mob Skullsplitter Warrior
    .mob Skullsplitter Axe Thrower
    .mob Skullsplitter Mystic
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,54.06,61.77
    >>Open the |cRXP_PICK_Ziata'jai Trophy Skulls|r. Loot it for |cRXP_LOOT_Ziata'jai Trophy|r
    .complete 26301,2 --Ziata'jai Trophy (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along76
    .goto 50,60.17,55.88
    >>Open the |cRXP_PICK_Balia'mah Trophy Skulls|r. Loot it for |cRXP_LOOT_Balia'mah Trophy|r
    .complete 26301,1 --Balia'mah Trophy (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,59.96,55.88,0
    .goto 50,59.96,55.88,40,0
    .goto 50,56.08,59.84,40,0
    .goto 50,54.02,61.22,40,0
    >>Kill |cRXP_ENEMY_Skullsplitter Warriors|r, |cRXP_ENEMY_Skullsplitter Axe Throwers|r and |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for |cRXP_LOOT_Skullsplitter Mojo|r
    .complete 26332,1 --Skullsplitter Mojo (6)
    .mob Skullsplitter Warrior
    .mob Skullsplitter Axe Thrower
    .mob Skullsplitter Mystic
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.16,40.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeezy Whillzap|r
    .accept 26399 >>Accept The Mosh'Ogg Bounty
    .target Skeezy Whillzap
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.50,48.52
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 26301 >>Turn in Speaking with Nezzliok
    .turnin 26332 >>Turn in Skullsplitter Mojo
    .accept 26302 >>Accept Chasing Yenniku's Fate
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.47,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodlord Mandokir|r
    .accept 26334 >>Accept Bloodlord Mandokir
    .turnin 26334 >>Turn in Bloodlord Mandokir
    .target Bloodlord Mandokir
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,48.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .accept 26350 >>Accept Priestess Hu'rala
    .target Nimboya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.47,39.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Hu'rala|r
    .turnin 26350 >>Turn in Priestess Hu'rala
    .accept 26351 >>Accept Mind Vision
    .target Priestess Hu'rala
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.08,41.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 26302 >>Turn in Chasing Yenniku's Fate
    .accept 26303 >>Accept The Mind's Eye
    .target Kin'weelay
step
    #loop
    .goto 50,59.23,47.44,0
    .goto 50,59.23,47.44,40,0
    .goto 50,60.72,49.89,40,0
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
    .complete 192,1 --Shadowmaw Panther slain (5)
    .mob Shadowmaw Panther
step
    #completewith next
    .hs >>Hearth to Jaquilina Dramet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 192 >>Turn in Panther Prowess
    .accept 193 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26345 >>Turn in Excelsior while you are here
    .isQuestComplete 26345
    .target Drizzlik
step
    .goto 50,66.70,43.37
    >>Kill |cRXP_ENEMY_Bhag'thera|r and loot |cRXP_LOOT_Fang of Bhag'thera|r
    .complete 193,1 --Fang of Bhag'thera (1)
    .mob Bhag'thera
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,70.77,48.48
    >>Kill |cRXP_ENEMY_Mai'Zoth|r and loot |cRXP_LOOT_Mind's Eye|r
    .complete 26303,1 --Mind's Eye (1)
    .mob Mai'Zoth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,67.21,54.15
    >>Pick up |cRXP_PICK_Mosh'Ogg Bounty|r from the ground
    .complete 26399,1 --Mosh'Ogg Bounty (1)
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,53.34,34.86,0
    .goto 224,53.34,34.86,40,0
    .goto 224,53.32,31.43,40,0
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r. Loot them for |cRXP_LOOT_Jungle Stalker Feather|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 196,1 --Jungle Stalker slain (10)
    .complete 26351,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Jungle Stalker Feather (5)
    .mob Jungle Stalker
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 196 >>Turn in Raptor Prowess
    .accept 197 >>Accept Raptor Mastery
    .target Hemet Nesingwary Jr.
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 193 >>Turn in Panther Mastery while you are here
    .isQuestComplete 193
    .target Sir S. J. Erlgadin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 29 >>Grind to level 29 (Warchief's Command: The Hinterlands! needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 50 >>Leave Silvermoon City for Northern Stranglethorn
    .zoneskip 50
step
    #loop
    .goto 50,62.84,61.32,0
    .goto 50,62.84,61.32,40,0
    .goto 50,64.84,64.91,40,0
    >>Kill |cRXP_ENEMY_Tethis|r and loot |cRXP_LOOT_Talon of Tethis|r
    .complete 197,1 --Talon of Tethis (1)
    .mob Tethis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.08,41.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 26303 >>Turn in The Mind's Eye
    .accept 26305 >>Accept Saving Yenniku
    .target Kin'weelay
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.16,40.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeezy Whillzap|r
    .turnin 26399 >>Turn in The Mosh'Ogg Bounty
    .accept 26400 >>Accept The Universal Key
    .accept 26403 >>Accept Venture Company Mining
    .target Skeezy Whillzap
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.47,39.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Hu'rala|r
    .turnin 26351 >>Turn in Mind Vision
    .accept 26359 >>Accept See Raptor
    .target Priestess Hu'rala
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,89.42,45.16
    >>Mind Vision complete
    .complete 26359,1 --Mind Vision complete
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.47,39.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Hu'rala|r
    .turnin 26359 >>Turn in See Raptor
    .accept 26360 >>Accept Mind Control
    .target Priestess Hu'rala
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.25,38.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surkhan|r
    .accept 26405 >>Accept Zul'Mamwe Mambo
    .target Surkhan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.29,39.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'karil|r
    .accept 26352 >>Accept Cozzle's Plan
    .accept 26304 >>Accept Nighttime in the Jungle
    .target Kil'karil
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,58.84,37.23,0
    .goto 50,58.84,37.23,40,0
    .goto 50,58.98,32.93,40,0
    .goto 50,55.41,35.92,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Sawblade|r and loot |cRXP_LOOT_Opened Mosh'Ogg Bounty|r
    >>Open the |cRXP_PICK_Cozzle's Footlocker|r. Loot it for |cRXP_LOOT_Fuel Regulator Blueprints|r
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r and |cRXP_ENEMY_Venture Co. Shredders|r. Loot them for |cRXP_LOOT_Tumbled Crystal|r
    .complete 26400,1 --Opened Mosh'Ogg Bounty (1)
    .complete 26352,1 --Fuel Regulator Blueprints (1)
    .complete 26403,1 --Tumbled Crystal (5)
    .mob Venture Co. Sawblade
    .mob Venture Co. Geologist
    .mob Venture Co. Shredder
step
    #completewith next
    .hs >>Hearth to Jaquilina Dramet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 188 >>Turn in Tiger Mastery
    .target Ajeck Rouack
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 193 >>Turn in Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 197 >>Turn in Raptor Mastery
    .accept 208 >>Accept Big Game Hunter
    .target Hemet Nesingwary Jr.
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26345 >>Turn in Excelsior
    .target Drizzlik
step
    .goto 50,47.77,59.54
    >>Kill |cRXP_ENEMY_King Bangalash|r and loot |cRXP_LOOT_Head of Bangalash|r
    .complete 208,1 --Head of Bangalash (1)
    .mob King Bangalash
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along107
    >>As you go: Click the |cRXP_PICK_Zul'Mamwe Brazier|r. Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Skullsplitter Witch Doctors|r, |cRXP_ENEMY_Skullsplitter Spiritchasers|r and |cRXP_ENEMY_Skullsplitter Headhunters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26304,1 --Zul'Mamwe Brazier
    .complete 26405,1 --Skullsplitter Hunter (8)
    .mob Skullsplitter Hunter
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Spiritchaser
    .mob Skullsplitter Headhunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,62.22,74.58
    >>Kill |cRXP_ENEMY_Braddok|r and loot |cRXP_LOOT_Braddok's Big Brain|r
    .complete 26360,1 --Braddok's Big Brain (1)
    .mob Braddok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along107
    .goto 50,57.27,75.36
    >>Kill |cRXP_ENEMY_Yenniku|r and loot |cRXP_LOOT_Filled Soul Gem|r
    .complete 26305,1 --Filled Soul Gem (1)
    .mob Yenniku
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 50,59.25,71.27,0
    .goto 50,59.25,71.27,40,0
    .goto 50,56.98,67.93,40,0
    .goto 50,62.46,73.30,40,0
    >>Click the |cRXP_PICK_Zul'Mamwe Brazier|r
    >>Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Skullsplitter Witch Doctors|r, |cRXP_ENEMY_Skullsplitter Spiritchasers|r and |cRXP_ENEMY_Skullsplitter Headhunters|r
    .complete 26304,1 --Zul'Mamwe Brazier
    .complete 26405,1 --Skullsplitter Hunter (8)
    .mob Skullsplitter Hunter
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Spiritchaser
    .mob Skullsplitter Headhunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,38.42,48.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 26305 >>Turn in Saving Yenniku
    .target Nimboya
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 208 >>Turn in Big Game Hunter
    .target Hemet Nesingwary Jr.
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.16,40.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeezy Whillzap|r
    .turnin 26400 >>Turn in The Universal Key
    .turnin 26403 >>Turn in Venture Company Mining
    .accept 26404 >>Accept Above My Pay Grade
    .target Skeezy Whillzap
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.29,39.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'karil|r
    .turnin 26304 >>Turn in Nighttime in the Jungle
    .turnin 26352 >>Turn in Cozzle's Plan
    .target Kil'karil
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.47,39.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Hu'rala|r
    .turnin 26360 >>Turn in Mind Control
    .accept 26362 >>Accept Be Raptor
    .target Priestess Hu'rala
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.25,38.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surkhan|r
    .turnin 26405 >>Turn in Zul'Mamwe Mambo
    .target Surkhan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,89.09,46.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tan'shang|r
    .complete 26362,1 --Tan'shang
    .target Tan'shang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,86.92,44.66
    >>Speak with Priestess Hu'rala, then help the Captured Lashtail Hatchling escape from Zul'Gurub.
    .complete 26362,2 --Tenjiyu
    .target Tenjiyu
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,82.82,37.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chiyu|r
    .complete 26362,3 --Chiyu
    .target Chiyu
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,73.35,32.92
    >>Speak with Priestess Hu'rala, then help the Captured Lashtail Hatchling escape from Zul'Gurub.
    .complete 26362,4 --Shade of the Hexxer
    .target Shade of the Hexxer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.47,39.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Hu'rala|r
    .turnin 26362 >>Turn in Be Raptor
    .accept 26386 >>Accept Surkhan
    .target Priestess Hu'rala
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 50,63.25,38.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surkhan|r
    .turnin 26386 >>Turn in Surkhan
    .target Surkhan
step
    +|cRXP_WARN_End of the Northern Stranglethorn route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Above My Pay Grade, Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 30|r: |cRXP_FRIENDLY_Desolace|r (about 2.1 levels of quests, starting around Sorrem), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.3 levels of quests, starting around Captain Hecklebury Smotts), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.9 levels of quests, starting around Galen Trollbane). Completing this step loads the guide for Desolace --RouteBuilder:next
]])
