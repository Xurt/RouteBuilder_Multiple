-- 46-51 Felwood: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 46, 52).
-- Split into 3 guides, listed under "46 - 53 Felwood" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Felwood.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 46 - 53 Felwood
#subweight -46
#name 46-48 Felwood: around Totem of Ruumbo
#next Zone Routes (Alliance)\48-50 Felwood: around Feronas Sindweller

step
    .goto 77,51.41,80.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
    .accept 28100 >>Accept A Talking Totem
    .target Grazle
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28472 >>Turn in Words of the High Chief
    .target Kelek Skykeeper
    .isOnQuest 28472
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28536 >>Turn in The Curse of Zin-Malor
    .target Kelek Skykeeper
    .isOnQuest 28536
step
    .goto 77,50.91,80.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .accept 28148 >>Accept Culling the Corrupted
    .target Taronn Redfeather
step
    #completewith Along5
    >>As you go: Kill |cRXP_ENEMY_Angerclaw Bears|r and |cRXP_ENEMY_Felpaw Wolfs|r. Loot them for |cRXP_LOOT_Corrupted Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28148,1 --Corrupted Pelt (10)
    .mob Angerclaw Bear
    .mob Felpaw Wolf
step
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .accept 27997 >>Accept The Corruption of the Jadefire
    .target Tenell Leafrunner
step
    #label Along5
    .goto 77,51.49,83.76
    >>Click the |cRXP_PICK_Totem of Ruumbo|r
    .turnin 28100 >>Turn in A Talking Totem
    .accept 27994 >>Accept Ruumbo Demands Justice
    .accept 27989 >>Accept Ruumbo Demands Honey
step
    #loop
    .goto 77,48.94,86.44,0
    .goto 77,48.94,86.44,40,0
    .goto 77,48.95,90.24,40,0
    .goto 77,46.54,88.64,40,0
    >>Loot the |cRXP_PICK_Felwood Bee Hives|r for |cRXP_LOOT_Deadwood Honey Glob|r
    >>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Gardeners|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Kill Credits|r
    .complete 27989,1 --Deadwood Honey Glob (10)
    .complete 27994,1 --Deadwood Warrior (8)
    .mob Deadwood Warrior
    .mob Deadwood Gardener
    .mob Deadwood Pathfinder
    .mob Deadwood Kill Credit
step
    #loop
    .goto 77,43.52,85.91,0
    .goto 77,43.52,85.91,40,0
    .goto 77,42.45,83.24,40,0
    >>Kill |cRXP_ENEMY_Jadefire Felsworns|r and |cRXP_ENEMY_Jadefire Satyrs|r
    .complete 27997,1 --Jadefire Felsworn (8)
    .mob Jadefire Felsworn
    .mob Jadefire Satyr
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .accept 28000 >>Accept Do the Imp-Possible
    .target Arcanist Delaris
step
    #loop
    .goto 77,47.62,75.76,0
    .goto 77,47.62,75.76,40,0
    .goto 77,48.88,80.50,40,0
    .goto 77,52.00,81.67,40,0
    >>Kill |cRXP_ENEMY_Angerclaw Bears|r and |cRXP_ENEMY_Felpaw Wolfs|r. Loot them for |cRXP_LOOT_Corrupted Pelt|r
    .complete 28148,1 --Corrupted Pelt (10)
    .mob Angerclaw Bear
    .mob Felpaw Wolf
step
    .goto 77,48.00,73.05
    >>Interact with |cRXP_FRIENDLY_Impsy|r
    .complete 28000,1 --Impsy
    .target Impsy
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28000 >>Turn in Do the Imp-Possible
    .target Arcanist Delaris
step
    .goto 77,41.88,71.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .accept 28049 >>Accept See the Invisible
    .target Impsy
step
    #loop
    .goto 77,43.54,75.47,0
    .goto 77,43.54,75.47,40,0
    .goto 77,45.34,70.63,40,0
    >>Kill |cRXP_ENEMY_Cursed Ooze|r and loot |cRXP_LOOT_Cursed Ooze|r
    .complete 28049,1 --Cursed Ooze (1)
    .mob Cursed Ooze
step
    .goto 77,41.88,71.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .turnin 28049 >>Turn in See the Invisible
    .accept 28044 >>Accept Touch the Untouchable
    .target Impsy
step
    .goto 77,44.01,30.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moahi|r
    .target Moahi
    .home >>Set your Hearthstone to Moahi's inn
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28360 >>Accept Running Their Course
    .target Tender Puregrove
    .xp <46,1
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28361 >>Accept Squirrely Clean
    .target Tender Puregrove
    .xp <46,1
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28341 >>Accept Collecting Corruption
    .target Elessa Starbreeze
    .xp <46,1
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28342 >>Accept Fel To Pieces
    .target Elessa Starbreeze
    .xp <46,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28358 >>Accept Hunting the Damned
    .target Hurak Wildhorn
    .xp <46,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28359 >>Accept The Core of Kroshius
    .target Hurak Wildhorn
    .xp <46,1
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28543 >>Accept Hero's Call: Felwood!
    .accept 28507 >>Accept Hero's Call: Tanaris!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
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
step
    #completewith next
    .zone 77 >>Leave Darnassus for Felwood
    .zoneskip 77
step
    #completewith next
    .hs >>Hearth to Moahi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .xp 46 >>Grind to level 46 (Hunting the Damned needs it)
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28358 >>Accept Hunting the Damned
    .accept 28359 >>Accept The Core of Kroshius
    .target Hurak Wildhorn
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28342 >>Accept Fel To Pieces
    .accept 28341 >>Accept Collecting Corruption
    .target Elessa Starbreeze
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28361 >>Accept Squirrely Clean
    .accept 28360 >>Accept Running Their Course
    .target Tender Puregrove
step
    #loop
    .goto 77,42.03,37.88,0
    .goto 77,42.03,37.88,40,0
    .goto 77,41.38,42.53,40,0
    >>Kill |cRXP_ENEMY_Infernal Sentries|r
    >>Kill |cRXP_ENEMY_Infernal Sentry|r and loot |cRXP_LOOT_Infernal Debris|r. It can also be picked up from |cRXP_PICK_Infernal Debris|r on the ground
    >>Kill |cRXP_ENEMY_Entropic Horrors|r. Loot them for |cRXP_LOOT_Entropic Essence|r
    .complete 28358,1 --Infernal Sentry slain (6)
    .complete 28342,1 --Infernal Debris (1)
    .complete 28341,1 --Entropic Essence (8)
    .mob Infernal Sentry
    .mob Entropic Horror
step
    .goto 77,43.97,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 28116 >>Accept Crying Violet
    .target Greta Mosshoof
step
    .goto 77,44.10,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .accept 28121 >>Accept Forces of Jaedenar
    .target Jessir Moonbow
step
    .goto 77,50.91,80.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .turnin 28148 >>Turn in Culling the Corrupted
    .target Taronn Redfeather
step
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .turnin 27997 >>Turn in The Corruption of the Jadefire
    .turnin 28543 >>Turn in Hero's Call: Felwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Tenell Leafrunner
step
    .goto 77,51.49,83.76
    >>Click the |cRXP_PICK_Totem of Ruumbo|r
    .turnin 27989 >>Turn in Ruumbo Demands Honey
    .turnin 27994 >>Turn in Ruumbo Demands Justice
    .accept 27995 >>Accept Dance for Ruumbo!
step
    .goto 77,51.50,83.70
    >>Ruumbo's Secret Discovered
    .complete 27995,1 --Ruumbo's Secret Discovered
step
    .goto 77,51.41,80.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
    .turnin 27995 >>Turn in Dance for Ruumbo!
    .target Grazle
step
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .accept 28150 >>Accept An Arcane Ally
    .target Tenell Leafrunner
step
    .goto 77,42.26,79.95
    >>Kill |cRXP_ENEMY_Vorlus|r and loot |cRXP_LOOT_Claw of Tichondrius|r
    .complete 28044,1 --Claw of Tichondrius (1)
    .mob Vorlus
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28044 >>Turn in Touch the Untouchable
    .turnin 28150 >>Turn in An Arcane Ally
    .accept 28113 >>Accept Break the Unbreakable
    .target Arcanist Delaris
step
    .goto 77,42.02,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .accept 28102 >>Accept Fight the Power
    .target Eridan Bluewind
step
    .goto 77,38.19,66.69
    >>Kill |cRXP_ENEMY_Jadefire Shadowstalkers|r and |cRXP_ENEMY_Jadefire Rogues|r
    .complete 28102,1 --Jadefire Shadowstalker (8)
    .mob Jadefire Shadowstalker
    .mob Jadefire Rogue
step
    #loop
    .goto 77,36.74,60.30,0
    .goto 77,36.74,60.30,40,0
    .goto 77,39.52,58.80,40,0
    .goto 77,38.39,53.92,40,0
    >>Kill |cRXP_ENEMY_Jaedenar Cultists|r, |cRXP_ENEMY_Jaedenar Guardians|r, |cRXP_ENEMY_Jaedenar Adepts|r and |cRXP_ENEMY_Jaedenar Hounds|r
    >>Pick up |cRXP_PICK_Crying Violet|r from the ground
    .complete 28121,1 --Jaedenar Cultist (8)
    .complete 28116,1 --Crying Violet (8)
    .mob Jaedenar Cultist
    .mob Jaedenar Guardian
    .mob Jaedenar Adept
    .mob Jaedenar Hound
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28116 >>Turn in Crying Violet
    .turnin 28121 >>Turn in Forces of Jaedenar
    .accept 28119 >>Accept Purity From Corruption
    .target Andalar Shadevale
step
    .goto 77,35.94,59.29
    >>Open the |cRXP_PICK_Corrupt Jaedenar Moonwell|r. Loot it for |cRXP_LOOT_Corrupt Moonwell Water|r
    .complete 28119,1 --Corrupt Moonwell Water (1)
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28119 >>Turn in Purity From Corruption
    .accept 28126 >>Accept Dousing the Flames of Protection
    .accept 28129 >>Accept The Demon Prince
    .target Andalar Shadevale
step
    .goto 77,37.15,54.88
    >>Click the |cRXP_PICK_Brazier of Pain|r
    >>Click the |cRXP_PICK_Brazier of Hatred|r
    >>Click the |cRXP_PICK_Brazier of Suffering|r
    >>Click the |cRXP_PICK_Brazier of Malice|r
    >>Kill |cRXP_ENEMY_Prince Xavalis|r
    .complete 28126,1 --Brazier of Pain
    .complete 28126,4 --Brazier of Hatred
    .complete 28126,3 --Brazier of Suffering
    .complete 28126,2 --Brazier of Malice
    .complete 28129,1 --Prince Xavalis slain (1)
    .mob Prince Xavalis
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28129 >>Turn in The Demon Prince
    .accept 28131 >>Accept Twin Temptresses
    .target Andalar Shadevale
step
    .goto 77,44.10,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .accept 28128 >>Accept The Inner Circle
    .target Jessir Moonbow
step
    .goto 77,43.97,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 28126 >>Turn in Dousing the Flames of Protection
    .target Greta Mosshoof
step
    #loop
    .goto 77,38.32,52.57,0
    .goto 77,38.32,52.57,40,0
    .goto 77,40.59,48.14,40,0
    >>Kill |cRXP_ENEMY_Salia|r
    >>Kill |cRXP_ENEMY_Moora|r
    >>Kill |cRXP_ENEMY_Jaedenar Enforcers|r, |cRXP_ENEMY_Jaedenar Darkweavers|r, |cRXP_ENEMY_Jaedenar Hunters|r and |cRXP_ENEMY_Jaedenar Legionnaires|r
    .complete 28131,2 --Salia slain (1)
    .complete 28131,1 --Moora slain (1)
    .complete 28128,1 --Jaedenar Enforcer (8)
    .mob Salia
    .mob Moora
    .mob Jaedenar Enforcer
    .mob Jaedenar Darkweaver
    .mob Jaedenar Hunter
    .mob Jaedenar Legionnaire
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28131 >>Turn in Twin Temptresses
    .accept 28153 >>Accept Shadow Lord Fel'dan
    .target Andalar Shadevale
step
    .goto 77,33.42,65.72
    >>Kill |cRXP_ENEMY_Xavathras|r
    .complete 28113,1 --Xavathras slain (1)
    .mob Xavathras
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28113 >>Turn in Break the Unbreakable
    .accept 28288 >>Accept Open Their Eyes
    .target Arcanist Delaris
step
    .goto 77,42.02,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 28102 >>Turn in Fight the Power
    .accept 28152 >>Accept Jaedenar Awaits
    .target Eridan Bluewind
step
    #loop
    .goto 77,41.59,77.68,0
    .goto 77,41.59,77.68,40,0
    .goto 77,42.42,79.74,40,0
    >>Interact with |cRXP_FRIENDLY_Jadefire Imps|r
    .complete 28288,1 --Jadefire Imp (20)
    .target Jadefire Imp
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28288 >>Turn in Open Their Eyes
    .target Arcanist Delaris
step
    #completewith next
    .hs >>Hearth to Moahi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #completewith Along62
    >>As you go: Kill |cRXP_ENEMY_Felrot Coursers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28360,1 --Felrot Courser slain (8)
    .mob Felrot Courser
step
    #label Along62
    #loop
    .goto 77,44.30,33.62,0
    .goto 77,44.30,33.62,40,0
    .goto 77,41.38,34.92,40,0
    >>Interact with |cRXP_FRIENDLY_Tainted Squirrels|r
    .complete 28361,1 --Tainted Squirrel (6)
    .target Tainted Squirrel
step
    .goto 77,47.89,39.83
    >>Kill |cRXP_ENEMY_Kroshius|r and loot |cRXP_LOOT_Kroshius' Infernal Core|r
    .complete 28359,1 --Kroshius' Infernal Core (1)
    .mob Kroshius
step
    .goto 77,39.47,46.95
    >>Kill |cRXP_ENEMY_Shadow Lord Fel'dan|r
    .complete 28153,1 --Shadow Lord Fel'dan slain (1)
    .mob Shadow Lord Fel'dan
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28153 >>Turn in Shadow Lord Fel'dan
    .accept 28155 >>Accept Lord Banehollow
    .target Andalar Shadevale
step
    .goto 77,38.40,47.91
    >>Kill |cRXP_ENEMY_Lord Banehollow|r
    .complete 28155,1 --Lord Banehollow slain (1)
    .mob Lord Banehollow
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .accept 28190 >>Accept The Tainted Ooze
    .target Altsoba Ragetotem
step
    #completewith Along68
    >>As you go: Kill |cRXP_ENEMY_Tainted Oozes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28190,1 --Tainted Ooze slain (8)
    .mob Tainted Ooze
step
    #label Along68
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .accept 28207 >>Accept A Slimy Situation
    .target Kelnir Leafsong
step
    #loop
    .goto 77,42.33,49.20,0
    .goto 77,42.33,49.20,40,0
    .goto 77,43.91,48.39,40,0
    .goto 77,39.87,48.48,40,0
    >>Kill |cRXP_ENEMY_Tainted Oozes|r
    >>Pick up |cRXP_PICK_Emerald Shimmercap|r from the ground
    .complete 28190,1 --Tainted Ooze slain (8)
    .complete 28207,1 --Emerald Shimmercap (7)
    .mob Tainted Ooze
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28207 >>Turn in A Slimy Situation while you are here
    .isQuestComplete 28207
    .target Kelnir Leafsong
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .turnin 28190 >>Turn in The Tainted Ooze
    .target Altsoba Ragetotem
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28207 >>Turn in A Slimy Situation
    .accept 28208 >>Accept Winna's Kitten
    .target Kelnir Leafsong
step
    .goto 77,43.97,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 28152 >>Turn in Jaedenar Awaits
    .target Greta Mosshoof
step
    .goto 77,44.10,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 28128 >>Turn in The Inner Circle
    .target Jessir Moonbow
step
    .goto 77,44.11,61.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farlus Wildheart|r
    .turnin 28155 >>Turn in Lord Banehollow
    .accept 28305 >>Accept The Fate of Bloodvenom Post
    .target Farlus Wildheart
step
    .goto 77,38.69,53.82
    >>Kill |cRXP_ENEMY_Winna's Kitten|r and loot |cRXP_LOOT_Kitty's Eartag|r
    .complete 28208,1 --Kitty's Eartag (1)
    .mob Winna's Kitten
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28208 >>Turn in Winna's Kitten
    .turnin 28305 >>Turn in The Fate of Bloodvenom Post
    .accept 28213 >>Accept Hazzard Disposal
    .target Kelnir Leafsong
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .accept 28214 >>Accept Cleanup at Bloodvenom Post
    .target Altsoba Ragetotem
step
    #loop
    .goto 77,39.75,50.70,0
    .goto 77,39.75,50.70,40,0
    .goto 77,35.84,50.61,40,0
    >>Kill |cRXP_ENEMY_Winna Hazzard|r
    >>Kill |cRXP_ENEMY_Bloodvenom Slimeslaves|r
    .complete 28213,1 --Winna Hazzard slain (1)
    .complete 28214,1 --Bloodvenom Slimeslave slain (6)
    .mob Winna Hazzard
    .mob Bloodvenom Slimeslave
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .turnin 28214 >>Turn in Cleanup at Bloodvenom Post
    .target Altsoba Ragetotem
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28213 >>Turn in Hazzard Disposal
    .accept 28306 >>Accept Whisperwind Grove
    .target Kelnir Leafsong
step
    #loop
    .goto 77,40.90,35.04,0
    .goto 77,40.90,35.04,40,0
    .goto 77,39.86,32.53,40,0
    >>Kill |cRXP_ENEMY_Felrot Coursers|r
    .complete 28360,1 --Felrot Courser slain (8)
    .mob Felrot Courser
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .turnin 28360 >>Turn in Running Their Course
    .turnin 28361 >>Turn in Squirrely Clean
    .turnin 28306 >>Turn in Whisperwind Grove
    .accept 28374 >>Accept Weeding the Lawn
    .target Tender Puregrove
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .turnin 28341 >>Turn in Collecting Corruption while you are here
    .isQuestComplete 28341
    .target Elessa Starbreeze
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .turnin 28342 >>Turn in Fel To Pieces while you are here
    .isQuestComplete 28342
    .target Elessa Starbreeze
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .turnin 28358 >>Turn in Hunting the Damned while you are here
    .isQuestComplete 28358
    .target Hurak Wildhorn
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .turnin 28359 >>Turn in The Core of Kroshius while you are here
    .isQuestComplete 28359
    .target Hurak Wildhorn
step
    #loop
    .goto 77,44.73,31.10,0
    .goto 77,44.73,31.10,40,0
    .goto 77,44.20,26.01,40,0
    >>Interact with |cRXP_FRIENDLY_Whisperwind Lashers|r
    .complete 28374,1 --Whisperwind Lasher (7)
    .target Whisperwind Lasher
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .turnin 28374 >>Turn in Weeding the Lawn
    .target Tender Puregrove
step
    .goto 77,43.45,28.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Selura|r
    .accept 28217 >>Accept Wanted: The Demon Hunter
    .target Huntress Selura
step
    .goto 77,43.93,28.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isural Forestsworn|r
    .accept 28229 >>Accept Nature and Nurture
    .target Isural Forestsworn
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .turnin 28342 >>Turn in Fel To Pieces
    .turnin 28341 >>Turn in Collecting Corruption
    .target Elessa Starbreeze
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .turnin 28358 >>Turn in Hunting the Damned
    .turnin 28359 >>Turn in The Core of Kroshius
    .target Hurak Wildhorn
step
    .goto 77,48.66,25.16
    >>Fill the vial at the moonwell in Whisperwind Grove and pour it on the ground between the dead ancient protectors in Irontree Woods.
    .complete 28229,1 --Irontree Woods Island
    .target Irontree Woods Island
step
    .goto 77,48.66,25.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28229 >>Turn in Nature and Nurture
    .target ?
step
    .goto 77,48.70,25.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seedling Protector|r
    .accept 28219 >>Accept Buzzers for Baby
    .accept 28220 >>Accept Seeking Soil
    .target Seedling Protector
step
    #loop
    .goto 77,48.29,29.18,0
    .goto 77,48.29,29.18,40,0
    .goto 77,50.00,30.20,40,0
    >>Kill |cRXP_ENEMY_Ironwood Buzzers|r
    >>Click the |cRXP_PICK_Felwood Rich Soil|r
    .complete 28219,1 --Ironwood Buzzer slain (10)
    .complete 28220,1 --Felwood Rich Soil
    .mob Ironwood Buzzer
step
    .goto 77,48.70,25.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seedling Protector|r
    .turnin 28220 >>Turn in Seeking Soil
    .turnin 28219 >>Turn in Buzzers for Baby
    .target Seedling Protector
step
    .goto 77,48.34,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapling Protector|r
    .accept 28222 >>Accept Singin' in the Sun
    .accept 28221 >>Accept These Roots Were Made For Stompin'
    .target Sapling Protector
step
    .goto 77,49.80,22.06
    >>Kill |cRXP_ENEMY_Irontree Stompers|r
    .complete 28221,1 --Irontree Stomper slain (10)
    .mob Irontree Stomper
step
    #loop
    .goto 77,51.24,20.31,0
    .goto 77,51.24,20.31,40,0
    .goto 77,51.59,21.49,40,0
    .goto 77,52.25,23.49,40,0
    .goto 77,52.16,24.86,40,0
    .goto 77,50.98,25.39,40,0
    .goto 77,52.30,26.30,40,0
    >>Guide the Sapling Protector to 5 shafts of sunlight in Irontree Woods.
    .complete 28222,1 --Sunbeam Credit
    .target Sunbeam Credit
step
    .goto 77,48.34,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapling Protector|r
    .turnin 28221 >>Turn in These Roots Were Made For Stompin'
    .turnin 28222 >>Turn in Singin' in the Sun
    .target Sapling Protector
step
    .goto 77,45.57,20.13
    >>Kill |cRXP_ENEMY_Feronas Sindweller|r
    .complete 28217,1 --Feronas Sindweller slain (1)
    .mob Feronas Sindweller
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 46 - 53 Felwood
#subweight -46
#name 48-50 Felwood: around Feronas Sindweller
--RouteBuilder:next
#next Zone Routes (Alliance)\50-52 Winterspring: around Donova Snowden;Zone Routes (Alliance)\45-48 Tanaris: around Mazoga;Zone Routes (Alliance)\47-49 Searing Gorge: around Jack Rockleg

step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28217 >>Turn in Wanted: The Demon Hunter
    .target Feronas Sindweller
    .isOnQuest 28217
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28218 >>Accept A Destiny of Flame and Sorrow
    .target Feronas Sindweller
    .isQuestTurnedIn 28217 --any of: Wanted: The Demon Hunter
step
    .goto 77,45.27,19.63
    >>Kill |cRXP_ENEMY_Arthas|r
    .complete 28218,1 --Arthas slain (1)
    .mob Arthas
    .isOnQuest 28218
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28218 >>Turn in A Destiny of Flame and Sorrow
    .target Feronas Sindweller
    .isOnQuest 28218
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28256 >>Accept The Skull of Gul'dan
    .target Feronas Sindweller
    .isQuestTurnedIn 28218 --any of: A Destiny of Flame and Sorrow
step
    .goto 77,45.07,19.60
    >>Relive Illidan's battle for the Skull of Gul'dan.
    .complete 28256,1 --Skull of Gul'dan
    .target Skull of Gul'dan
    .isOnQuest 28256
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28256 >>Turn in The Skull of Gul'dan
    .target Feronas Sindweller
    .isOnQuest 28256
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28257 >>Accept The Fall of Tichondrius
    .target Feronas Sindweller
    .isQuestTurnedIn 28256 --any of: The Skull of Gul'dan
step
    .goto 77,45.13,19.70
    >>Kill |cRXP_ENEMY_Tichondrius|r
    .complete 28257,1 --Tichondrius slain (1)
    .mob Tichondrius
    .isOnQuest 28257
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28257 >>Turn in The Fall of Tichondrius
    .target Feronas Sindweller
    .isOnQuest 28257
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28261 >>Accept Deceivers In Our Midst
    .target Feronas Sindweller
    .isQuestTurnedIn 28257 --any of: The Fall of Tichondrius
step
    #loop
    .goto 77,42.43,20.22,0
    .goto 77,42.43,20.22,40,0
    .goto 77,43.24,16.89,40,0
    >>Kill |cRXP_ENEMY_Jadefire Shifters|r
    .complete 28261,1 --Jadefire Shifter slain (12)
    .mob Jadefire Shifter
    .isOnQuest 28261
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28261 >>Turn in Deceivers In Our Midst
    .target Feronas Sindweller
    .isOnQuest 28261
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28264 >>Accept Navarax's Gambit
    .target Feronas Sindweller
    .isQuestTurnedIn 28261 --any of: Deceivers In Our Midst
step
    .goto 77,49.48,21.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flourishing Protector|r
    .accept 28224 >>Accept The Last Protector
    .target Flourishing Protector
    .isQuestTurnedIn 28221 --These Roots Were Made For Stompin'
    .isQuestTurnedIn 28222 --Singin' in the Sun
step
    .goto 77,53.19,24.04
    >>Kill |cRXP_ENEMY_Withered Protector|r
    .complete 28224,1 --Withered Protector slain (1)
    .mob Withered Protector
    .isOnQuest 28224
step
    .goto 77,49.48,21.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flourishing Protector|r
    .turnin 28224 >>Turn in The Last Protector
    .target Flourishing Protector
    .isOnQuest 28224
step
    .goto 77,49.48,21.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flourishing Protector|r
    .accept 28228 >>Accept Rejoining the Forest
    .target Flourishing Protector
    .isQuestTurnedIn 28224 --any of: The Last Protector
step
    .goto 77,48.70,25.20
    >>Protector brought to hill
    .complete 28228,1 --Protector brought to hill
    .isOnQuest 28228
step
    .goto 77,48.66,25.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28228 >>Turn in Rejoining the Forest
    .target ?
    .isOnQuest 28228
step
    .goto 77,44.76,29.18
    >>Kill |cRXP_ENEMY_Arch Druid Navarax|r
    .complete 28264,1 --Arch Druid Navarax slain (1)
    .mob Arch Druid Navarax
    .isOnQuest 28264
step
    .goto 77,43.45,28.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Selura|r
    .turnin 28264 >>Turn in Navarax's Gambit
    .target Huntress Selura
    .isOnQuest 28264
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,44.33,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Hallow|r
    .accept 28381 >>Accept The Denmother
    .target James Hallow
    .isQuestTurnedIn 28228 --Rejoining the Forest
    .isQuestTurnedIn 28264 --Navarax's Gambit
step
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .accept 28373 >>Accept Timbermaw Hold
    .target Darla Drilldozer
    .isQuestTurnedIn 28368 --any of: Fire in the Hole!
    .xp <47,1
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28373 >>Turn in Timbermaw Hold
    .target Nafien
    .isOnQuest 28373
step
    .goto 77,64.09,10.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ferli|r
    .accept 28362 >>Accept Stupid Drizle!
    .target Ferli
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .accept 28366 >>Accept Disarming Bears
    .accept 28338 >>Accept Deadwood of the North
    .target Nafien
step
    #loop
    .goto 77,62.24,9.93,0
    .goto 77,62.24,9.93,40,0
    .goto 77,61.92,13.83,40,0
    >>Kill |cRXP_ENEMY_Deadwood Avengers|r, |cRXP_ENEMY_Deadwood Shamans|r and |cRXP_ENEMY_Deadwood Den Watchers|r
    >>Loot the |cRXP_PICK_Deadwood Weapon Piles|r for |cRXP_LOOT_Deadwood Weapons|r
    .complete 28338,1 --Deadwood Avenger (8)
    .complete 28366,1 --Deadwood Weapons (7)
    .mob Deadwood Avenger
    .mob Deadwood Shaman
    .mob Deadwood Den Watcher
step
    .goto 77,60.57,9.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizle|r
    .turnin 28362 >>Turn in Stupid Drizle!
    .accept 28364 >>Accept The Chieftain's Key
    .target Drizle
step
    .goto 77,59.73,8.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winterfall Runner|r
    .accept 28656 >>Accept Strange Life Forces
    .target Winterfall Runner
    .xp <49,1
step
    .goto 77,62.09,9.92
    >>Kill |cRXP_ENEMY_Chieftain Bloodmaw|r and loot |cRXP_LOOT_Drizle's Key|r
    .complete 28364,1 --Drizle's Key (1)
    .mob Chieftain Bloodmaw
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28338 >>Turn in Deadwood of the North while you are here
    .isQuestComplete 28338
    .target Nafien
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28366 >>Turn in Disarming Bears while you are here
    .isQuestComplete 28366
    .target Nafien
step
    .goto 77,60.57,9.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizle|r
    .turnin 28364 >>Turn in The Chieftain's Key
    .target Drizle
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28366 >>Turn in Disarming Bears
    .turnin 28338 >>Turn in Deadwood of the North
    .target Nafien
step
    .xp 49 >>Grind to level 49 (Speak to Salfa needs it)
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .accept 28521 >>Accept Speak to Salfa
    .target Nafien
step
    .goto 77,59.73,8.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winterfall Runner|r
    .accept 28656 >>Accept Strange Life Forces
    .target Winterfall Runner
step
    .goto 77,59.68,8.12
    >>Click the |cRXP_PICK_Deadwood Cauldron|r
    .accept 28467 >>Accept Mystery Goo
    .isQuestTurnedIn 28464 --any of: Falling to Corruption
    .xp <49,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,61.84,26.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denmother Ulrica|r
    .turnin 28381 >>Turn in The Denmother
    .target Denmother Ulrica
    .isOnQuest 28381
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,61.84,26.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denmother Ulrica|r
    .accept 28382 >>Accept Enemy at our Roots
    .target Denmother Ulrica
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,61.91,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyros Swiftwind|r
    .accept 28383 >>Accept Wisps of the Woods
    .target Lyros Swiftwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 77,63.21,22.98,0
    .goto 77,63.21,22.98,40,0
    .goto 77,62.89,20.17,40,0
    >>Kill |cRXP_ENEMY_Irontree Choppers|r
    .complete 28382,1 --Irontree Chopper slain (8)
    .mob Irontree Chopper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 77,61.89,20.93,0
    .goto 77,61.89,20.93,40,0
    .goto 77,64.24,20.88,40,0
    >>Interact with |cRXP_FRIENDLY_Talonbranch Wisps|r
    .complete 28383,1 --Talonbranch Wisp (5)
    .target Talonbranch Wisp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,61.91,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyros Swiftwind|r
    .turnin 28383 >>Turn in Wisps of the Woods
    .target Lyros Swiftwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,61.84,26.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denmother Ulrica|r
    .turnin 28382 >>Turn in Enemy at our Roots
    .accept 28384 >>Accept Into the Clearing
    .target Denmother Ulrica
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,56.76,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alton Redding|r
    .turnin 28384 >>Turn in Into the Clearing
    .accept 28337 >>Accept The Shredders of Irontree
    .target Alton Redding
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 77,55.90,15.40,0
    .goto 77,55.90,15.40,40,0
    .goto 77,54.13,19.23,40,0
    >>Kill |cRXP_ENEMY_Irontree Shredders|r
    .complete 28337,1 --Irontree Shredder slain (9)
    .mob Irontree Shredder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,56.76,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alton Redding|r
    .turnin 28337 >>Turn in The Shredders of Irontree
    .accept 28386 >>Accept Borrowed Bombs
    .accept 28385 >>Accept Oil and Irony
    .target Alton Redding
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along143
    >>As you go: Loot the |cRXP_PICK_Irontree Explosives|r for |cRXP_LOOT_Irontree Explosives|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28386,1 --Irontree Explosives (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along143
    .goto 77,60.49,22.38
    >>Click the |cRXP_PICK_Master Control Pump|r
    .turnin 28385 >>Turn in Oil and Irony
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 77,59.58,21.34,0
    .goto 77,59.58,21.34,40,0
    .goto 77,57.61,22.07,40,0
    >>Loot the |cRXP_PICK_Irontree Explosives|r for |cRXP_LOOT_Irontree Explosives|r
    .complete 28386,1 --Irontree Explosives (8)
step
    .goto 77,56.76,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alton Redding|r
    .turnin 28386 >>Turn in Borrowed Bombs << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 28387 >>Accept Burnout
    .accept 28388 >>Accept Bloody Wages << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Alton Redding
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 77,54.17,18.02,0
    .goto 77,54.17,18.02,40,0
    .goto 77,55.25,13.77,40,0
    >>Kill |cRXP_ENEMY_Panicking Workers|r
    .complete 28388,1 --Panicking Worker slain (7)
    .mob Panicking Worker
step
    #loop
    .goto 77,54.73,17.81,0
    .goto 77,54.73,17.81,40,0
    .goto 77,55.84,16.33,40,0
    .goto 77,54.64,15.46,40,0
    .goto 77,52.80,14.58,40,0
    .goto 77,56.17,13.92,40,0
    .goto 77,53.93,13.49,40,0
    .goto 77,55.43,11.98,40,0
    >>Use the Stolen Irontree Explosives to ignite 7 Oil Geysers in Irontree Clearing.
    .complete 28387,1 --Oil Gusher
    .target Oil Gusher
step
    .goto 77,56.76,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alton Redding|r
    .turnin 28387 >>Turn in Burnout
    .turnin 28388 >>Turn in Bloody Wages << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 28389 >>Accept Report to the Denmother << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Alton Redding
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 77,61.84,26.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denmother Ulrica|r
    .turnin 28389 >>Turn in Report to the Denmother
    .target Denmother Ulrica
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
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
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
step
    #completewith next
    .zone 77 >>Leave The Exodar for Felwood
    .zoneskip 77
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 28479 >>Accept The Ruins of Kel'Theril
    .target Kelek Skykeeper
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 28848 >>Accept Trailing the Spiritspeaker
    .target Kelek Skykeeper
    .isQuestTurnedIn 28537 --any of: In Pursuit of Shades
    .xp <49,1
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 28537 >>Accept In Pursuit of Shades
    .target Kelek Skykeeper
    .isQuestTurnedIn 28536 --any of: The Curse of Zin-Malor
    .xp <49,1
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28537 >>Turn in In Pursuit of Shades
    .target Kelek Skykeeper
    .isQuestComplete 28537
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28525 >>Accept Hero's Call: Un'Goro Crater!
    .accept 28544 >>Accept Hero's Call: Winterspring!
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
    +|cRXP_WARN_That is all of Felwood for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas!, Hero's Call: Thousand Needles! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7 << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Tanaris|r: Hero's Call: Tanaris! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Hero's Call: Un'Goro Crater! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Winterspring|r: Mystery Goo, Speak to Salfa, The Ruins of Kel'Theril, Strange Life Forces, Trailing the Spiritspeaker
    >>|cRXP_FRIENDLY_Winterspring|r: Hero's Call: Winterspring! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 49|r: |cRXP_FRIENDLY_Winterspring|r (about 1.8 levels of quests, starting around Donova Snowden; 2 quests from here hand in there), |cRXP_FRIENDLY_Tanaris|r (about 0.9 levels of quests, starting around Mazoga), |cRXP_FRIENDLY_Searing Gorge|r (about 0.8 levels of quests, starting around Jack Rockleg). Completing this step loads the guide for Winterspring --RouteBuilder:next
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/Dwarf Paladin/Draenei Paladin/Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest/Dwarf Shaman/Draenei Shaman/Druid
    +|cRXP_WARN_The rest of Felwood is planned from level 52.|r Load its guide for level 52 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/Dwarf Paladin/Draenei Paladin/Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest/Dwarf Shaman/Draenei Shaman/Druid
#version 1
#group Zone Routes (Alliance)
#subgroup 46 - 53 Felwood
#subweight -46
#name 52-53 Felwood
--RouteBuilder:next
#next Zone Routes (Alliance)\51-53 Un'Goro Crater: around Garl Stormclaw;Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 28258 >>Accept Meet with Ander Germaine
    .target Arias'ta Bladesinger
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 28263 >>Accept Meet with Maginor Dumas
    .target Edirah
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 28260 >>Accept Meet with Wulf Hansreim
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 28262 >>Accept Meet with Lord Tony Romano
    .target Erion Shadewhisper
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 28268 >>Accept Meet with Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 28287 >>Accept Meet with Farseer Umbrua
    .target Hobahken
step << Druid
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 28289 >>Accept Moonglade Calls
    .target Mathrengyl Bearwalker
step
    +|cRXP_WARN_End of the Felwood route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Wulf Hansreim << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Lord Tony Romano << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Maginor Dumas << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with High Priestess Laurena << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Farseer Umbrua << Dwarf Shaman/Draenei Shaman
step
    +|cRXP_WARN_Suggested next zones at level 52|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 1.8 levels of quests, starting around Garl Stormclaw), |cRXP_FRIENDLY_Winterspring|r (about 1.4 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 1.0 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
]])
