-- 1-2 New Tinkertown: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/New Tinkertown.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 1-2 New Tinkertown

step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,34.08,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r
    .accept 27670 >>Accept Pinned Down
    .target Nevin Twistwrench
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,42.95,32.27
    >>Kill |cRXP_ENEMY_Crazed Leper Gnomes|r
    .complete 27670,1 --Crazed Leper Gnome (6)
    .mob Crazed Leper Gnome
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,34.08,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r
    .turnin 27670 >>Turn in Pinned Down
    .accept 28167 >>Accept Report to Carvo Blastbolt
    .target Nevin Twistwrench
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,50.95,31.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt|r
    .turnin 28167 >>Turn in Report to Carvo Blastbolt
    .accept 27671 >>Accept See to the Survivors
    .target Carvo Blastbolt
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    #loop
    .goto 30,53.17,29.39,0
    .goto 30,53.17,29.39,40,0
    .goto 30,54.89,35.91,40,0
    .goto 30,54.95,45.13,40,0
    .goto 30,53.87,43.43,40,0
    >>Interact with |cRXP_FRIENDLY_Survivors|r
    .complete 27671,1 --Survivor (6)
    .target Survivor
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,50.95,31.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt|r
    .turnin 27671 >>Turn in See to the Survivors
    .accept 28169 >>Accept Withdraw to the Loading Room!
    .target Carvo Blastbolt
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,53.08,82.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaffer Coilspring|r
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
    .target Gaffer Coilspring
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,58.79,81.74
    >>Kill |cRXP_ENEMY_Sanitron 500|r
    .complete 27635,1 --Sanitron 500 slain (1)
    .mob Sanitron 500
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,66.42,81.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Braggle|r
    .turnin 27635 >>Turn in Decontamination
    .accept 27674 >>Accept To the Surface
    .target Technician Braggle
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 30,67.28,84.11
    >>Kill |cRXP_ENEMY_Torben Zapblast|r
    .complete 27674,1 --Torben Zapblast slain (1)
    .mob Torben Zapblast
step
    +|cRXP_WARN_End of the New Tinkertown route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_New Tinkertown|r: To the Surface << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
]])
