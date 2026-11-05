-- 20-31 Duskwood: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 20, 24, 27, 30).
-- Split into 4 guides, listed under "20 - 31 Duskwood" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Duskwood.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 31 Duskwood
#subweight -20
#name 20-22 Duskwood: around Elaine Carevin

step
    .goto 1431/0,625.16,-10314.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    .accept 226 >>Accept Wolves at Our Heels
    .target Lars
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 145 >>Turn in Messenger to Darkshire
    .target Lord Ello Ebonlocke
    .isOnQuest 145
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 146 >>Accept Messenger to Darkshire
    .target Lord Ello Ebonlocke
    .isQuestTurnedIn 145 --any of: Messenger to Darkshire
    .xp <18,1
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 1041 >>Turn in The Caravan Road
    .target Clerk Daltry
    .isOnQuest 1041
step
    .goto 1431/0,-1161.16,-10516.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .target Innkeeper Trelayne
    .home >>Set your Hearthstone to Innkeeper Trelayne's inn
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
step << Mage
    .goto 1431/0,-1375.81,-10072.53
    .vendor >> Talk to Kzixx. Buy one of the green BoE belts (lower level = better). Buy potions too if any of these are available
step << Mage
    >>Follow the road down into Darkshire.
    .goto 1431/0,-1258.63,-10513.89
    .fp Darkshire >> Get the Darkshire flight path
step
    .goto 1431/0,-1200.85,-10594.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >>Accept Raven Hill
    .accept 165 >>Accept The Hermit
    .accept 164 >>Accept Deliveries to Sven
    .target Elaine Carevin
step
    .goto 1431/0,-1258.79,-10513.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Get the Duskwood Flight Path
    .target Felicia Maline
step
    .goto 1431/0,-1272.45,-10586.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
    .target Herble Baubbletump
step << Mage
    .goto 1431/0,-1272.67,-10586.61
    >>Talk to |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Herble Baubbletump
step << Mage
    .goto 1431/0,-1258.63,-10513.89
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Get the Duskwood flight path
    .target Felicia Mane
step << Mage
    .goto 1431/0,-1375.81,-10072.35
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Kzixx
step << Mage
    .goto 1431/0,-1375.81,-10072.35
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from him (if they're up, and if needed)|r
    .target Kzixx
step << Mage
    >>Go behind Eva
    .goto 1431/0,-1226.50,-10531.71
    .vendor >> Buy 2 Runes of Teleportation from Alyssa
    .collect 17031,2
step
    #completewith Drop337x1
    >>|cRXP_LOOT_An Old History Book|r can drop from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Skeletal Warrior|r, |cRXP_ENEMY_Skeletal Horror|r. Use it to start the quest if you get one
    .collect 2794,1,337 --An Old History Book (1)
    .accept 337 >>Accept An Old History Book
    .use 2794
step
    #label Drop337x1
    #loop
    .goto 1431/0,-1320.73,-10954.17,0
    .goto 1431/0,-1320.73,-10954.17,40,0
    .goto 1431/0,-1288.60,-11030.85,40,0
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r
    >>Kill |cRXP_ENEMY_Skeletal Mages|r
    .complete 56,1 --Skeletal Warrior slain (8)
    .complete 56,2 --Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto 1431/0,-384.91,-10923.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
    .accept 245 >>Accept Eight-Legged Menaces
    .target Watcher Dodds
step
    .goto 1431/0,337.07,-10731.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >>Turn in Raven Hill
    .accept 5 >>Accept Jitters' Growling Gut
    .target Jitters
step
    #loop
    .goto 1431/0,542.00,-10670.67,0
    .goto 1431/0,542.00,-10670.67,40,0
    .goto 1431/0,552.53,-10779.75,40,0
    >>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r
    .complete 245,1 --Pygmy Venom Web Spider slain (15)
    .mob Pygmy Venom Web Spider
step
    #loop
    .goto 1431/0,-72.79,-10198.17,0
    .goto 1431/0,-72.79,-10198.17,40,0
    .goto 1431/0,-128.68,-10158.03,40,0
    .goto 1431/0,-219.13,-10145.43,40,0
    >>Kill |cRXP_ENEMY_Starving Dire Wolfs|r
    >>Kill |cRXP_ENEMY_Rabid Dire Wolfs|r
    .complete 226,1 --Starving Dire Wolf slain (8)
    .complete 226,2 --Rabid Dire Wolf slain (8)
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
step
    .goto 1431/0,625.16,-10314.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    .turnin 226 >>Turn in Wolves at Our Heels
    .target Lars
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >>Turn in Deliveries to Sven
    .accept 95 >>Accept Sven's Revenge
    .target Sven Yorgen
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >>Turn in The Hermit
    .accept 148 >>Accept Supplies from Darkshire
    .target Abercrombie
step
    #completewith next
    .hs >>Hearth to Innkeeper Trelayne's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1431/0,-1157.92,-10499.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >>Turn in Jitters' Growling Gut
    .accept 93 >>Accept Dusky Crab Cakes
    .target Chef Grual
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >>Turn in The Night Watch while you are here
    .isQuestComplete 56
    .target Commander Althea Ebonlocke
step
    .goto 1431/0,-1213.00,-10532.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >>Turn in Supplies from Darkshire while you are here
    .isQuestComplete 148
    .target Madame Eva
step
    #loop
    .goto 1431/0,-965.14,-10054.71,0
    .goto 1431/0,-965.14,-10054.71,40,0
    .goto 1431/0,-853.90,-10049.13,40,0
    .goto 1431/0,-836.62,-10134.45,40,0
    >>Kill |cRXP_ENEMY_Venom Web Spiders|r, |cRXP_ENEMY_Pygmy Venom Web Spiders|r, |cRXP_ENEMY_Green Recluses|r and |cRXP_ENEMY_Naraxis|r. Loot them for |cRXP_LOOT_Gooey Spider Leg|r
    .complete 93,1 --Gooey Spider Leg (6)
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Green Recluse
    .mob Naraxis
step
    .goto 1431/0,-1157.92,-10499.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 93 >>Turn in Dusky Crab Cakes
    .target Chef Grual
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >>Turn in The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 68 >>Turn in The Legend of Stalvan
    .target Clerk Daltry
    .isOnQuest 68
step
    .goto 1431/0,-1213.00,-10532.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >>Turn in Supplies from Darkshire
    .accept 149 >>Accept Ghost Hair Thread
    .target Madame Eva
step
    .goto 1431/0,-1380.40,-10780.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 149 >>Turn in Ghost Hair Thread
    .accept 154 >>Accept Return the Comb
    .target Blind Mary
step
    .goto 1431/0,-1213.00,-10532.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >>Turn in Return the Comb
    .accept 157 >>Accept Deliver the Thread
    .target Madame Eva
step
    .goto 1431/0,-512.62,-11115.45
    >>Click the |cRXP_PICK_Mound of loose dirt|r
    .turnin 95 >>Turn in Sven's Revenge
    .accept 230 >>Accept Sven's Camp
step
    .goto 1431/0,-384.91,-10923.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
    .turnin 245 >>Turn in Eight-Legged Menaces
    .target Watcher Dodds
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >>Turn in Deliver the Thread
    .accept 158 >>Accept Zombie Juice
    .target Abercrombie
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >>Turn in Sven's Camp
    .accept 262 >>Accept The Shadowy Figure
    .target Sven Yorgen
step
    .goto 1431/0,256.88,-10559.07
    .xp 25+29845 >> Grind to 29845+/34000xp
step
    .goto 1431/0,-1213.00,-10532.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >>Turn in The Shadowy Figure
    .accept 265 >>Accept The Shadowy Search Continues
    .target Madame Eva
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 265 >>Turn in The Shadowy Search Continues
    .accept 266 >>Accept Inquire at the Inn
    .target Clerk Daltry
step
    .goto 1431/0,-1158.73,-10517.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >>Turn in Zombie Juice
    .turnin 266 >>Turn in Inquire at the Inn
    .accept 156 >>Accept Gather Rot Blossoms
    .accept 453 >>Accept Finding the Shadowy Figure
    .target Tavernkeep Smitts
step
    .goto 1431/0,-1157.92,-10499.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 240 >>Accept Return to Jitters
    .target Chef Grual
step
    .goto 1431/0,337.07,-10731.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >>Turn in Finding the Shadowy Figure
    .turnin 240 >>Turn in Return to Jitters
    .accept 268 >>Accept Return to Sven
    .target Jitters
step
    #completewith Drop337x2
    >>|cRXP_LOOT_An Old History Book|r can drop from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Skeletal Warrior|r, |cRXP_ENEMY_Skeletal Horror|r. Use it to start the quest if you get one
    .collect 2794,1,337 --An Old History Book (1)
    .accept 337 >>Accept An Old History Book
    .use 2794
step
    #label Drop337x2
    #loop
    .goto 1431/0,379.46,-10564.47,0
    .goto 1431/0,379.46,-10564.47,40,0
    .goto 1431/0,244.46,-10570.23,40,0
    .goto 1431/0,203.15,-10484.37,40,0
    >>Kill |cRXP_ENEMY_Skeletal Horrors|r and |cRXP_ENEMY_Skeletal Fiends|r. Loot them for |cRXP_LOOT_Rot Blossom|r
    .complete 156,1 --Rot Blossom (8)
    .mob Skeletal Horror
    .mob Skeletal Fiend
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >>Turn in Return to Sven
    .target Sven Yorgen
step
    .goto 1431/0,-1158.73,-10517.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >>Turn in Gather Rot Blossoms
    .accept 159 >>Accept Juice Delivery
    .target Tavernkeep Smitts
step
    #loop
    .goto 1431/0,-1186.54,-10513.89,0
    .goto 1431/0,-1186.54,-10513.89,40,0
    .goto 1431/0,-1160.35,-10428.75,40,0
    .goto 1431/0,-1115.53,-10386.63,40,0
    .goto 1431/0,-1109.59,-10359.45,40,0
    .goto 1431/0,-1122.55,-10330.83,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 1243 >>Turn in The Missing Diplomat
    .unitscan Watcher Backus
    .isOnQuest 1243
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >>Turn in Juice Delivery
    .target Abercrombie
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >>Turn in Armed and Ready
    .target Sven Yorgen
    .isOnQuest 325
step
    .goto 1431/0,-1158.73,-10517.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >>Turn in The Legend of Stalvan
    .target Tavernkeep Smitts
    .isOnQuest 78
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r
    .goto 1431/0,-1145.23,-10522.35
    .vendor 228 >>|cRXP_BUY_Stock up on|r |T132382:0|t[Razor Arrows] |cRXP_WARN_Don't forget this, there is a grinding session ahead!|r
    .target Avette Fellwood
step
    +|cRXP_WARN_That is all of Duskwood for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Redridge Mountains|r: Messenger to Darkshire
    >>|cRXP_FRIENDLY_Stormwind City|r: An Old History Book
step
    +|cRXP_WARN_The rest of Duskwood is planned from level 24.|r Load its guide for level 24 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 31 Duskwood
#subweight -20
#name 24-25 Duskwood: around Clerk Daltry

step
    .goto 1431/0,-1213.00,-10532.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >>Accept The Legend of Stalvan
    .accept 101 >>Accept The Totem of Infliction
    .target Madame Eva
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 66 >>Turn in The Legend of Stalvan
    .accept 67 >>Accept The Legend of Stalvan
    .target Clerk Daltry
step
    .goto 1431/0,-1321.27,-10581.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >>Accept Look To The Stars
    .target Viktori Prism'Antras
step
    .goto 1431/0,-1272.40,-10586.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Bronze Tube|r from |cRXP_FRIENDLY_Herble Baubbletump|r
    .complete 174,1 --Bronze Tube (1)
    .target Herble Baubbletump
step
    .goto 1431/0,-1321.27,-10581.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 174 >>Turn in Look To The Stars
    .accept 175 >>Accept Look To The Stars
    .target Viktori Prism'Antras
step
    #completewith Along6
    >>As you go: Kill |cRXP_ENEMY_Skeletal Warriors|r, |cRXP_ENEMY_Skeletal Horrors|r, |cRXP_ENEMY_Skeletal Mages|r and |cRXP_ENEMY_Skeletal Fiends|r. Loot them for |cRXP_LOOT_Skeleton Finger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 101,3 --Skeleton Finger (10)
    .mob Skeletal Warrior
    .mob Skeletal Horror
    .mob Skeletal Mage
    .mob Skeletal Fiend
step
    .goto 1431/0,-1380.40,-10780.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >>Turn in Look To The Stars
    .accept 177 >>Accept Look To The Stars
    .target Blind Mary
step
    #label Along6
    .goto 1431/0,-1350.97,-11011.95
    >>Kill |cRXP_ENEMY_Insane Ghoul|r and loot |cRXP_LOOT_Mary's Looking Glass|r
    .complete 177,1 --Mary's Looking Glass (1)
    .mob Insane Ghoul
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 57 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
    .isQuestTurnedIn 56 --any of: The Night Watch
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .accept 69 >>Accept The Legend of Stalvan
    .target Clerk Daltry
    .isQuestTurnedIn 68 --any of: The Legend of Stalvan
    .xp <22,1
step
    .goto 1431/0,-1321.27,-10581.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >>Turn in Look To The Stars
    .target Viktori Prism'Antras
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Skeletal Warriors|r, |cRXP_ENEMY_Skeletal Horrors|r, |cRXP_ENEMY_Skeletal Mages|r and |cRXP_ENEMY_Skeletal Fiends|r. Loot them for |cRXP_LOOT_Skeleton Finger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 101,3 --Skeleton Finger (10)
    .mob Skeletal Warrior
    .mob Skeletal Horror
    .mob Skeletal Mage
    .mob Skeletal Fiend
step
    .goto 1431/0,203.15,-10484.37
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r
    .complete 57,1 --Skeletal Fiend slain (15)
    .mob Skeletal Fiend
    .isOnQuest 57
step
    #label Along11
    #loop
    .goto 1431/0,251.48,-10586.07,0
    .goto 1431/0,251.48,-10586.07,40,0
    .goto 1431/0,391.88,-10586.61,40,0
    .goto 1431/0,453.71,-10476.27,40,0
    >>Kill |cRXP_ENEMY_Skeletal Horrors|r
    .complete 57,2 --Skeletal Horror slain (15)
    .mob Skeletal Horror
    .isOnQuest 57
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >>Turn in The Night Watch
    .target Commander Althea Ebonlocke
    .isOnQuest 57
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 133 >>Accept Ghoulish Effigy
    .target Abercrombie
    .isQuestTurnedIn 159 --any of: Juice Delivery
step
    #loop
    .goto 1431/0,173.72,-10239.93,0
    .goto 1431/0,173.72,-10239.93,40,0
    .goto 1431/0,248.24,-10226.25,40,0
    .goto 1431/0,173.18,-10342.17,40,0
    >>Kill |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Bone Chewers|r, |cRXP_ENEMY_Brain Eaters|r and |cRXP_ENEMY_Plague Spreaders|r. Loot them for |cRXP_LOOT_Ghoul Rib|r
    .complete 133,1 --Ghoul Rib (7)
    .mob Flesh Eater
    .mob Bone Chewer
    .mob Brain Eater
    .mob Plague Spreader
    .isOnQuest 133
step
    #loop
    .goto 1431/0,173.18,-10342.17,0
    .goto 1431/0,173.18,-10342.17,40,0
    .goto 1431/0,173.72,-10239.93,40,0
    .goto 1431/0,248.24,-10226.25,40,0
    >>Kill |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Bone Chewers|r, |cRXP_ENEMY_Brain Eaters|r and |cRXP_ENEMY_Plague Spreaders|r. Loot them for |cRXP_LOOT_Ghoul Fang|r
    .complete 101,1 --Ghoul Fang (10)
    .mob Flesh Eater
    .mob Bone Chewer
    .mob Brain Eater
    .mob Plague Spreader
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >>Turn in Ghoulish Effigy
    .target Abercrombie
    .isOnQuest 133
step
    #loop
    .goto 1431/0,203.15,-10484.37,0
    .goto 1431/0,203.15,-10484.37,40,0
    .goto 1431/0,244.46,-10570.23,40,0
    .goto 1431/0,379.46,-10564.47,40,0
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r, |cRXP_ENEMY_Skeletal Horrors|r, |cRXP_ENEMY_Skeletal Mages|r and |cRXP_ENEMY_Skeletal Fiends|r. Loot them for |cRXP_LOOT_Skeleton Finger|r
    .complete 101,3 --Skeleton Finger (10)
    .mob Skeletal Warrior
    .mob Skeletal Horror
    .mob Skeletal Mage
    .mob Skeletal Fiend
step
    #loop
    .goto 1431/0,-39.04,-10424.97,0
    .goto 1431/0,-39.04,-10424.97,40,0
    .goto 1431/0,-28.78,-10333.53,40,0
    >>Kill |cRXP_ENEMY_Venom Web Spiders|r, |cRXP_ENEMY_Pygmy Venom Web Spiders|r, |cRXP_ENEMY_Green Recluses|r and |cRXP_ENEMY_Naraxis|r. Loot them for |cRXP_LOOT_Vial of Spider Venom|r
    .complete 101,2 --Vial of Spider Venom (1)
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Green Recluse
    .mob Naraxis
step
    .goto 1431/0,-1158.73,-10517.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .accept 79 >>Accept The Legend of Stalvan
    .target Tavernkeep Smitts
    .isQuestTurnedIn 78 --any of: The Legend of Stalvan
    .xp <22,1
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 79 >>Turn in The Legend of Stalvan
    .target Commander Althea Ebonlocke
    .isOnQuest 79
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 80 >>Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
    .isQuestTurnedIn 79 --any of: The Legend of Stalvan
    .xp <22,1
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >>Turn in The Legend of Stalvan
    .target Clerk Daltry
    .isOnQuest 80
step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .accept 97 >>Accept The Legend of Stalvan
    .target Clerk Daltry
    .isQuestTurnedIn 80 --any of: The Legend of Stalvan
    .xp <22,1
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >>Turn in The Legend of Stalvan
    .target Commander Althea Ebonlocke
    .isOnQuest 97
step
    .goto 1431/0,-1213.00,-10532.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >>Turn in The Totem of Infliction
    .target Madame Eva
step
    .goto 1431/0,-849.58,-11188.53,0
    .goto 1431/0,-821.77,-11055.15,0
    .goto 1431/0,-924.37,-11047.05,0
    .goto 1431/0,-898.45,-10949.49,0
    .xp 31+38100 >> Grind until 38100/50800 xp into level 31 << !Druid
    .xp 31+43180 >> Grind until 43180/50800 xp into level 31 << Druid
    >>Kill |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
    >>|cRXP_WARN_If you know that you will be leveling in one session or generally not getting a lot of rested experience up to level 38, consider grinding to level 32 instead. This will help you reach a level 38 xp gate that is required later on|r
step
    +|cRXP_WARN_That is all of Duskwood for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elwynn Forest|r: The Legend of Stalvan
    >>|cRXP_FRIENDLY_Westfall|r: The Legend of Stalvan
step
    +|cRXP_WARN_The rest of Duskwood is planned from level 27.|r Load its guide for level 27 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 31 Duskwood
#subweight -20
#name 27-28 Duskwood: around Calor

step
    .goto 1431/0,-1125.25,-10560.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .accept 1042 >>Accept The Carevin Family
    .target Clerk Daltry
    .isQuestTurnedIn 1041 --any of: The Caravan Road
    .xp <25,1
step
    .goto 1431/0,-1161.16,-10516.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .target Innkeeper Trelayne
    .home >>Set your Hearthstone to Innkeeper Trelayne's inn
step << Mage
    .goto 1431/0,-1138.48,-10516.05
    >>Talk to |cRXP_FRIENDLY_Avette|r
    .vendor 228 >> Vendor Trash. Repair
    .target Avette Fellwood
step
    .goto 1431/0,-1211.92,-10572.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 173 >>Accept Worgen in the Woods
    .target Calor
step
    .goto 1431/0,-1200.31,-10599.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 1042 >>Turn in The Carevin Family
    .target Jonathan Carevin
    .isOnQuest 1042
step
    .goto 1431/0,-1200.31,-10599.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .accept 1043 >>Accept The Scythe of Elune
    .target Jonathan Carevin
    .isQuestTurnedIn 1042 --any of: The Carevin Family
    .xp <25,1
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 323 >>Accept Proving Your Worth
    .target Sven Yorgen
    .isQuestTurnedIn 268 --any of: Return to Sven
step
    #loop
    .goto 1431/0,445.34,-10368.45,0
    .goto 1431/0,445.34,-10368.45,40,0
    .goto 1431/0,391.34,-10410.57,40,0
    >>Kill |cRXP_ENEMY_Skeletal Raiders|r
    .complete 323,1 --Skeletal Raider slain (15)
    .mob Skeletal Raider
    .isOnQuest 323
step
    #loop
    .goto 1431/0,374.06,-10422.09,0
    .goto 1431/0,374.06,-10422.09,40,0
    .goto 1431/0,378.65,-10238.49,40,0
    >>Kill |cRXP_ENEMY_Skeletal Healers|r
    .complete 323,2 --Skeletal Healer slain (3)
    .mob Skeletal Healer
    .isOnQuest 323
step
    #loop
    .goto 1431/0,366.23,-10389.69,0
    .goto 1431/0,366.23,-10389.69,40,0
    .goto 1431/0,379.73,-10258.83,40,0
    >>Kill |cRXP_ENEMY_Skeletal Warders|r
    .complete 323,3 --Skeletal Warder slain (3)
    .mob Skeletal Warder
    .isOnQuest 323
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >>Turn in Proving Your Worth
    .target Sven Yorgen
    .isOnQuest 323
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 269 >>Accept Seeking Wisdom
    .target Sven Yorgen
    .isQuestTurnedIn 323 --any of: Proving Your Worth
step
    #completewith next
    .hs >>Hearth to Innkeeper Trelayne's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 58 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
    .isQuestTurnedIn 57 --any of: The Night Watch
step
    #loop
    .goto 1431/0,-924.64,-10412.19,0
    .goto 1431/0,-924.64,-10412.19,40,0
    .goto 1431/0,-878.20,-10512.45,40,0
    >>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 173,1 --Nightbane Shadow Weaver slain (6)
    .mob Nightbane Shadow Weaver
step
    .goto 1431/0,-1211.92,-10572.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >>Turn in Worgen in the Woods
    .accept 221 >>Accept Worgen in the Woods
    .target Calor
step
    #loop
    .goto 1431/0,-818.26,-10459.35,0
    .goto 1431/0,-818.26,-10459.35,40,0
    .goto 1431/0,-786.67,-10530.99,40,0
    >>Kill |cRXP_ENEMY_Nightbane Dark Runners|r
    .complete 221,1 --Nightbane Dark Runner slain (12)
    .mob Nightbane Dark Runner
step
    #loop
    .goto 1431/0,172.64,-10341.63,0
    .goto 1431/0,172.64,-10341.63,40,0
    .goto 1431/0,214.76,-10224.63,40,0
    >>Kill |cRXP_ENEMY_Plague Spreaders|r
    .complete 58,1 --Plague Spreader slain (20)
    .mob Plague Spreader
    .isOnQuest 58
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 134 >>Accept Ogre Thieves
    .target Abercrombie
    .isQuestTurnedIn 133 --any of: Ghoulish Effigy
step
    .goto 1431/0,-69.01,-11090.97
    >>Pick up |cRXP_PICK_Abercrombie's Crate|r from the ground
    .complete 134,1 --Abercrombie's Crate (1)
    .isOnQuest 134
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >>Turn in Ogre Thieves
    .target Abercrombie
    .isOnQuest 134
step
    .goto 1431/0,74.36,-10282.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 160 >>Accept Note to the Mayor
    .target Abercrombie
    .isQuestTurnedIn 134 --any of: Ogre Thieves
step
    .goto 1431/0,-1152.25,-10559.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 58 >>Turn in The Night Watch
    .target Commander Althea Ebonlocke
    .isOnQuest 58
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >>Turn in Note to the Mayor
    .target Lord Ello Ebonlocke
    .isOnQuest 160
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 251 >>Accept Translate Abercrombie's Note
    .target Lord Ello Ebonlocke
    .isQuestTurnedIn 160 --any of: Note to the Mayor
step
    .goto 1431/0,-1127.41,-10573.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >>Turn in Translate Abercrombie's Note
    .target Sirra Von'Indi
    .isOnQuest 251
step
    .goto 1431/0,-1127.41,-10573.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .accept 401 >>Accept Wait for Sirra to Finish
    .target Sirra Von'Indi
    .isQuestTurnedIn 251 --any of: Translate Abercrombie's Note
step
    .goto 1431/0,-1127.41,-10573.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 401 >>Turn in Wait for Sirra to Finish
    .target Sirra Von'Indi
    .isOnQuest 401
step
    .goto 1431/0,-1127.41,-10573.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .accept 252 >>Accept Translation to Ello
    .target Sirra Von'Indi
    .isQuestTurnedIn 401 --any of: Wait for Sirra to Finish
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >>Turn in Translation to Ello
    .target Lord Ello Ebonlocke
    .isOnQuest 252
step
    .goto 1431/0,-1211.92,-10572.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 221 >>Turn in Worgen in the Woods
    .target Calor
step << Mage
    .goto 1431/0,-1156.03,-10590.57,10,0
    .goto 1431/0,-1163.05,-10596.33
    >>Talk to |cRXP_FRIENDLY_Morg|r or |cRXP_FRIENDLY_Gavin|r
    .vendor >> Vendor Trash. Repair
    >>|cRXP_WARN_Do NOT sell your|r |T132917:0|t[Light Feathers]
    .target Morg Gnarltree
    .target Gavin Gnarltree
step
    .goto 1431/0,-1151.98,-11141.19
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .complete 1043,1 --Find evidence of the Scythe of Elune
    .isOnQuest 1043
step
    .goto 1431/0,-1200.31,-10599.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 1043 >>Turn in The Scythe of Elune
    .target Jonathan Carevin
    .isOnQuest 1043
step
    .goto 1431/0,-1200.31,-10599.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .accept 1044 >>Accept Answered Questions
    .target Jonathan Carevin
    .isQuestTurnedIn 1043 --any of: The Scythe of Elune
    .xp <25,1
step
    +|cRXP_WARN_That is all of Duskwood for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: Answered Questions
    >>|cRXP_FRIENDLY_Stormwind City|r: Seeking Wisdom
step
    +|cRXP_WARN_The rest of Duskwood is planned from level 30.|r Load its guide for level 30 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 31 Duskwood
#subweight -20
#name 30-31 Duskwood

step
    .goto 1431/0,-1321.27,-10581.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >>Accept Look To The Stars
    .target Viktori Prism'Antras
    .isQuestTurnedIn 177 --any of: Look To The Stars
step
    #loop
    .goto 1431/0,-1186.54,-10513.89,0
    .goto 1431/0,-1186.54,-10513.89,40,0
    .goto 1431/0,-1160.35,-10428.75,40,0
    .goto 1431/0,-1115.53,-10386.63,40,0
    .goto 1431/0,-1109.59,-10359.45,40,0
    .goto 1431/0,-1122.55,-10330.83,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 1244 >>Accept The Missing Diplomat
    .unitscan Watcher Backus
    .isQuestTurnedIn 1243 --any of: The Missing Diplomat
    .xp <28,1
step
    .goto 1431/0,187.49,-11013.93
    >>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for |cRXP_LOOT_Defias Docket|r
    .complete 1244,1 --Defias Docket (1)
    .isOnQuest 1244
step
    .goto 1431/0,-160.54,-11224.89
    >>Kill |cRXP_ENEMY_Zzarc' Vul|r and loot |cRXP_LOOT_Ogre's Monocle|r
    .complete 181,1 --Ogre's Monocle (1)
    .mob Zzarc' Vul
    .isOnQuest 181
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 55 >>Accept Morbent Fel
    .target Sven Yorgen
    .isQuestTurnedIn 325 --any of: Armed and Ready
    .xp <20,1
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 253 >>Accept Bride of the Embalmer
    .target Lord Ello Ebonlocke
    .isQuestTurnedIn 252 --any of: Translation to Ello
step
    .goto 1431/0,-1211.92,-10572.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 222 >>Accept Worgen in the Woods
    .target Calor
    .isQuestTurnedIn 221 --any of: Worgen in the Woods
step
    #loop
    .goto 1431/0,-1186.54,-10513.89,0
    .goto 1431/0,-1186.54,-10513.89,40,0
    .goto 1431/0,-1160.35,-10428.75,40,0
    .goto 1431/0,-1115.53,-10386.63,40,0
    .goto 1431/0,-1109.59,-10359.45,40,0
    .goto 1431/0,-1122.55,-10330.83,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 1244 >>Turn in The Missing Diplomat
    .unitscan Watcher Backus
    .isOnQuest 1244
step
    #loop
    .goto 1431/0,-1122.55,-10330.83,0
    .goto 1431/0,-1122.55,-10330.83,40,0
    .goto 1431/0,-1109.59,-10359.45,40,0
    .goto 1431/0,-1115.53,-10386.63,40,0
    .goto 1431/0,-1160.35,-10428.75,40,0
    .goto 1431/0,-1186.54,-10513.89,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 1245 >>Accept The Missing Diplomat
    .unitscan Watcher Backus
    .isQuestTurnedIn 1244 --any of: The Missing Diplomat
    .xp <28,1
step
    .goto 1431/0,-1321.27,-10581.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >>Turn in Look To The Stars
    .target Viktori Prism'Antras
    .isOnQuest 181
step
    #loop
    .goto 1431/0,-1122.82,-10969.11,0
    .goto 1431/0,-1122.82,-10969.11,40,0
    .goto 1431/0,-1109.05,-11018.25,40,0
    >>Kill |cRXP_ENEMY_Nightbane Vile Fangs|r
    .complete 222,1 --Nightbane Vile Fang slain (8)
    .mob Nightbane Vile Fang
    .isOnQuest 222
step
    .goto 1431/0,-1161.97,-11106.63
    >>Kill |cRXP_ENEMY_Nightbane Tainted Ones|r
    .complete 222,2 --Nightbane Tainted One slain (8)
    .mob Nightbane Tainted One
    .isOnQuest 222
step
    .goto 1431/0,55.19,-10273.05
    >>Kill |cRXP_ENEMY_Eliza|r and loot |cRXP_LOOT_The Embalmer's Heart|r
    .complete 253,1 --The Embalmer's Heart (1)
    .mob Eliza
    .isOnQuest 253
step
    .goto 1431/0,377.03,-10317.87
    >>Kill |cRXP_ENEMY_Morbent Fel|r
    .complete 55,1 --Morbent Fel slain (1)
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto 1431/0,623.27,-10329.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >>Turn in Morbent Fel
    .target Sven Yorgen
    .isOnQuest 55
step
    .goto 1431/0,-1108.78,-10552.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 253 >>Turn in Bride of the Embalmer
    .target Lord Ello Ebonlocke
    .isOnQuest 253
step
    .goto 1431/0,-1211.92,-10572.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 222 >>Turn in Worgen in the Woods
    .target Calor
    .isOnQuest 222
step
    .goto 1431/0,-1211.92,-10572.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 223 >>Accept Worgen in the Woods
    .target Calor
    .isQuestTurnedIn 222 --any of: Worgen in the Woods
step
    .goto 1431/0,-1200.31,-10599.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >>Turn in Worgen in the Woods
    .target Jonathan Carevin
    .isOnQuest 223
step
    +|cRXP_WARN_End of the Duskwood route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: The Missing Diplomat
]])
