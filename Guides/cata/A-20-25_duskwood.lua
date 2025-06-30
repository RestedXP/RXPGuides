local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 20-25 Duskwood
#displayname 21-26 Duskwood
#next 25-30 Northern Stranglethorn


<<Alliance


step
    .goto 47,93.30,12.00
    .zone 47 >> Travel to Duskwood
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.09,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias|r inside the house
    .accept 26666 >>Accept The Legend of Stalvan
	.target Tobias Mistmantle
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 26653 >>Accept Supplies from Darkshire
	.target Abercrombie
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia|r
    .fp Darkshire >>Get the Darkshire Flight Path
	.target Felicia Maline
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to inside the house
    .turnin 26653 >>Turn in Supplies from Darkshire
    .accept 26652 >>Accept Ghost Hair Thread
	.target Madame Eva
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Go inside the Inn
step
    #completewith Daltry1
    .goto 47,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trelayne|r
    .home >>Set your Hearthstone to Scarlet Raven Tavern
	.target Innkeeper Trelayne
step
	#label Kabobs
    .goto 47,73.74,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grual|r
    .accept 26620 >>Accept Seasoned Wolf Kabobs
    .accept 26623 >>Accept Dusky Crab Cakes
	.target Chef Grual
step
	#completewith Daltry1
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8>>Exit the Inn
step
	#label Daltry1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daltry|r inside and |cRXP_FRIENDLY_Althea|r outside
    .turnin 26666 >>Turn in The Legend of Stalvan
    .accept 26667 >>Accept The Stolen Letters
    .goto 47,72.448,46.909
	.target +Clerk Daltry
    .turnin -26728 >>Turn in Hero's Call: Duskwood!
    .accept 26618 >>Accept Wolves at Our Heels
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 26688 >>Accept Worgen in the Woods
	.target Calor

step
    #optional
    #completewith Letters
    >>Kill |cRXP_ENEMY_Venom Web Spiders|r. Loot them for their |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#completewith next
#optional
    .goto 47,64.12,51.62,0,0
    >>Kill |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#label Letters
    .goto 47,61.24,40.50
    >>Loot the |cRXP_PICK_Pile of Scraps|r on the ground for |cRXP_LOOT_A Slashed Bundle of Letters|r
    .complete 26667,1 --1/1 A Slashed Bundle of Letters
step
#loop
    .goto 47,64.12,51.62,40,0
    .goto 47,60.883,40.830,40,0
    .goto 47,65.304,44.317,40,0
    .goto 47,64.12,51.62,0
    .goto 47,60.883,40.830,0
    .goto 47,65.304,44.317,0
    >>Kill |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#completewith next
    >>Kill |cRXP_ENEMY_Dire Wolves|r. Loot them for their |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
#loop
    .goto 47,65.54,30.32,70,0
    .goto 47,73.29,20.23,70,0
    .goto 47,63.90,19.41,70,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,0
    >>Kill |cRXP_ENEMY_Venom Web Spiders|r. Loot them for their |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#loop
    .goto 47,59.00,20.72,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,0
    >>Kill |cRXP_ENEMY_Dire Wolves|r. Loot them for their |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
    .isOnQuest 26620,26618,26623,26688,26667
    .hs >> Hearthstone to Darkshire
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daltry|r inside and |cRXP_FRIENDLY_Althea|r outside
    .turnin 26667 >>Turn in The Stolen Letters
    .accept 26669 >>Accept In A Dark Corner
    .target +Clerk Daltry
    .goto 47,72.448,46.909
    .turnin 26618 >>Turn in Wolves at Our Heels
    .accept 26645 >>Accept The Night Watch
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 26688 >>Turn in Worgen in the Woods
    .accept 26689 >>Accept The Rotting Orchard
	.target Calor
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori|r
    .accept 26683 >>Accept Look To The Stars
	.target Viktori Prism'Antras
step
	#completewith next
    >>Kill |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    .goto 47,81.66,59.16,8,0
    .goto 47,81.92,58.98,5,0
    .goto 47,82.05,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mary|r inside the house
    .turnin 26652 >>Turn in Ghost Hair Thread
    .accept 26654 >>Accept Return the Comb
    .turnin 26683 >>Turn in Turn in Look To The Stars
    .accept 26684 >>Accept The Insane Ghoul
	.target Blind Mary
step
#loop
	.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
	.goto 47,82.30,61.22,30,0
	.goto 47,82.45,56.25,30,0
	.goto 47,80.91,56.65,30,0
	.goto 47,79.48,60.41,30,0
	.goto 47,82.30,61.22,30,0
    >>Kill |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    #completewith next
    .subzone 42 >> Return to Darkshire
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to inside the house
    .turnin 26654 >>Turn in Return the Comb
    .accept 26655 >>Accept Deliver the Thread
	.target Madame Eva
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26655 >>Turn in Deliver the Thread
    .accept 26660 >>Accept Zombie Juice
	.target Abercrombie
step << skip
    #completewith next
    .goto 47,87.98,33.16,20,0
    .goto 47,88.1,31.33,20,0
    .goto 47,90.98,30.53,30 >>Check for the |cRXP_ENEMY_Unknown Soldier|r (Rare). Kill him if he's up
	.unitscan Unknown Soldier
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Go inside the Inn
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smitts|r
    .turnin 26660 >>Turn in Zombie Juice
    .accept 26661 >>Accept Gather Rot Blossoms
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Exit the Inn
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althea|r
    .turnin 26645 >>Turn in The Night Watch
    .accept 26686 >>Accept Bones That Walk
	.target Commander Althea Ebonlocke
step
    #optional
    .maxlevel 25,endOfTheGuide
step
#optional
	#completewith next
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
	>>Loot the |cRXP_LOOT_Rot Blossoms|r on the ground
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
    .goto 47,80.31,71.10,15,0
    .goto 47,80.88,71.58
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r inside the Cemetery. Loot it for |cRXP_LOOT_Mary's Looking Glass|r
    .complete 26684,1 --1/1 Mary's Looking Glass
	.mob Insane Ghoul
step
	.line 47,81.85,68.34,78.33,66.13,77.02,69.85,80.89,74.21,81.85,68.34
    #loop
    .goto 47,81.85,68.34,30,0
    .goto 47,78.33,66.13,30,0
    .goto 47,77.02,69.85,30,0
    .goto 47,80.89,74.21,30,0
    .goto 47,81.85,68.34,30,0
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
	>>Loot the |cRXP_LOOT_Rot Blossoms|r on the ground
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
#optional
    #completewith journal1
    >>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
	#completewith next
    .goto 47,66.03,75.79,8,0
    .goto 47,65.98,76.42,8 >> Go inside the barn
step
#label journal1
    .goto 47,66.59,76.44
    >>Loot the |cRXP_LOOT_A Torn Journal|r on the ground
    .complete 26669,1 --1/1 A Torn Journal
step
#loop
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,0
    >>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althea|r outside and |cRXP_FRIENDLY_Daltry|r inside
    .turnin 26686 >>Turn in Bones That Walk
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
    .turnin 26669 >>Turn in In A Dark Corner
    .accept 26670 >>Accept Roland's Doom
    .goto 47,72.448,46.909
	.target +Clerk Daltry
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Go inside the Inn
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smitts|r
    .turnin 26661 >>Turn in Gather Rot Blossoms
    .accept 26676 >>Accept Juice Delivery
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Exit the Inn
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 26689,1 >>Turn in The Rotting Orchard
    .accept 26690 >>Accept Vile and Tainted
	.target Calor
step
	#label Insane
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori|r
    .turnin 26684 >>Turn in The Insane Ghoul
    .accept 26685 >>Accept Classy Glass
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26676 >>Turn in Juice Delivery
    .accept 26680 >>Accept Ogre Thieves
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith JPages
    >>Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
	#label JPages
    .goto 47,73.44,76.86,20,0
    .goto 47,74.26,77.92,20,0
    .goto 47,73.62,79.21
    >>Loot the |cRXP_LOOT_Muddy Journal Pages|r on the ground
    .complete 26670,1 --1/1 Muddy Journal Pages
step
#loop
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,40,0
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,0
    >>Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto 47,72.448,46.909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daltry|r inside
    .turnin 26670 >>Turn in Roland's Doom
    .accept 26671 >>Accept The Fate of Stalvan Mistmantle
	.target Clerk Daltry
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r, then |cRXP_FRIENDLY_Jonathan|r inside
    .turnin 26690 >>Turn in Vile and Tainted
    .accept 26691 >>Accept Worgen in the Woods
    .goto 47,75.33,48.02
	.target +Calor
    .turnin 26691 >>Turn in Worgen in the Woods
    .goto 47,75.24,48.23,5,0
    .goto 47,75.39,49.00
	.target +Jonathan Carevin
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias|r inside the house
    .turnin 26671 >>Turn in The Fate of Stalvan Mistmantle
    .accept 26672 >>Accept Clawing at the Truth
    .target Tobias Mistmantle
step
	#label Clawing
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eva|r inside the house
    .turnin 26672 >>Turn in Clawing at the Truth
    .accept 26674 >>Accept Mistmantle's Revenge
	.target Madame Eva
step
    #completewith next
	.cast 82029 >> |cRXP_WARN_Use the|r |T133343:0|t[Mistmantle Family Ring] |cRXP_WARN_to summon|r |cRXP_ENEMY_Stalvan Mistmantle|r
	.timer 33,Mistmantle's Revenge RP
step
    .goto 47,77.42,35.85,10,0
    .goto 47,77.33,36.18
    .use 59363 >>Kill |cRXP_ENEMY_Stalvan Mistmantle|r
    .complete 26674,1 --1/1 Stalvan Mistmantle slain
	.mob Stalvan Mistmantle
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias|r inside the house
    .turnin 26674 >>Turn in Mistmantle's Revenge
    .accept 26785 >>Accept Part of the Pack
	.target Tobias Mistmantle
step
	#completewith next
    .goto 47,69.51,48.83,30 >> Take the path behind the Town Hall to Brightwood Grove
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dodds|r and |cRXP_FRIENDLY_Fess|r
    .accept 25235 >>Accept Vulgar Vul'Gol
	.target +Watcher Dodds
    .goto 47,45.12,67.02
    .turnin 26785 >>Turn in Part of the Pack
    .accept 26707 >>Accept A Deadly Vine
    .accept 26717 >>Accept The Yorgen Worgen
    .goto 47,44.92,67.43
	.target +Apprentice Fess
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith next
    >>Kill |cRXP_ENEMY_Corpseweeds|r. Loot them for their |cRXP_LOOT_Corpseweed|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    .goto 47,49.86,77.69
    >>Click the |cRXP_PICK_Mound of Loose Dirt|r on the ground
    .complete 26717,1 --1/1 Mound of Loose Dirt
step
    #loop
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    .goto 47,49.28,76.56,60,0
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    >>Kill |cRXP_ENEMY_Corpseweeds|r. Loot them for their |cRXP_LOOT_Corpseweed|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    #completewith Zzarc
	>>Kill |cRXP_ENEMY_Splinter Fist Ogres|r, |cRXP_ENEMY_Splinter Fist Firemongers|r, and |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    .goto 47,33.52,75.33
    >>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
    .complete 26680,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto 47,34.23,77.47,15 >> Enter the Splinter Fist Ogre Cave
step
	#label Zzarc
    .goto 47,37.87,84.33
    >>Kill |cRXP_ENEMY_Zzarc' Vul|r. Loot him for his |cRXP_LOOT_Monocle|r
    .complete 26685,1 --1/1 Ogre's Monocle
	.unitscan Zzarc' Vul
step
	#completewith next
    .goto 47,34.20,77.47,15 >>Exit the Splinter Fist Ogre Cave
	.isOnQuest 25235,26685
step
    #loop
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,34.261,73.014,0
	>>Kill |cRXP_ENEMY_Splinter Fist Ogres|r, |cRXP_ENEMY_Splinter Fist Firemongers|r, and |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fess|r and |cRXP_FRIENDLY_Dodds|r
    .turnin 26707 >>Turn in A Deadly Vine
    .turnin 26717 >>Turn in The Yorgen Worgen
    .accept 26719 >>Accept Delivery to Master Harris
    .goto 47,44.92,67.43
	.target +Apprentice Fess
    .turnin 25235 >>Turn in Vulgar Vul'Gol
    .goto 47,45.12,67.02
	.target +Watcher Dodds
step
    .goto 47,20.015,57.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .target Sister Elsington
    .accept 26777 >>Accept Soothing Spirits
step
    .goto 47,18.628,58.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .accept 26721 >>Accept The Jitters-Bugs
    .target Jitters
step
    .goto 47,18.310,57.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver Harris|r
    .target Oliver Harris
    .turnin 26719 >>Turn in Delivery to Master Harris
    .accept 26720 >>Accept A Curse We Cannot Lift
step
#optional
    #completewith LurkingW
    .use 60225 >>|cRXP_WARN_Use the|r |T134547:0|t[Holy Censer] |cRXP_WARN_on|r |cRXP_FRIENDLY_Forlorn Spirits|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
step
#optional
	#completewith next
    .goto 47,21.65,72.34,8,0
    .goto 47,21.29,72.73,8 >>|cRXP_WARN_Head inside of the Barn Stable|r
step
    #label LurkingW
    .goto 47,21.61,73.15
	>>|cRXP_WARN_Damage the |cRXP_ENEMY_Lurking Worgen|r that spawns to 20% or less health, then use|r |T134825:0|t[Harris's Ampule] |cRXP_WARN_on it|r
    .complete 26720,1 --1/1 Lurking Worgen captured
	.mob Lurking Worgen
    .use 60206
step
    #loop
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,21.695,68.981,0
    .use 60225 >>|cRXP_WARN_Use the|r |T134547:0|t[Holy Censer] |cRXP_WARN_on|r |cRXP_FRIENDLY_Forlorn Spirits|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
    .use 60225
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver Harris|r and |cRXP_FRIENDLY_Sister Elsington|r
    .turnin 26720 >>Turn in A Curse We Cannot Lift
    .accept 26760 >>Accept Cry For The Moon
	.timer 58,Cry For The Moon RP
    .goto 47,18.32,57.67
    .turnin 26777 >>Turn in Soothing Spirits
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sister Elsington
step
    >>|cRXP_WARN_Wait out the RP|r
    >>|cRXP_WARN_If you didn't get credit after the timer expires, abandon "Cry For The Moon" and accept the quest again|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver Harris|r, |cRXP_FRIENDLY_Sven Yorgen|r, and |cRXP_FRIENDLY_Sister Elsington|r
    .complete 26760,1 --1/1 Worgen cured
    .turnin 26760 >>Turn in Cry For The Moon
    .goto 47,18.32,57.67
    .accept 26723 >>Accept The Fate of Morbent Fel
    .goto 47,18.34,58.06
    .accept 26778 >>Accept The Cries of the Dead
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sven Yorgen
	.target Sister Elsington
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto Duskwood,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Shelby|r
    .target John Shelby
    .fp Raven Hill>>Get the Raven Hill Flight Path
step
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14,50,0
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14
    >>Kill |cRXP_ENEMY_Black Widows|r. Loot them for their |cRXP_LOOT_Widow Venom Sacs|r
	>>|cRXP_WARN_They sometimes vanish for 1-2s in combat|r
    .complete 26721,1 --8/8 Widow Venom Sac
	.mob Black Widow
step
    .goto 47,17.72,29.05
    >>Click |cRXP_PICK_A Weathered Grave|r
    .accept 26793 >>Accept The Weathered Grave
step
    .goto 47,17.49,33.40,8,0
    .goto 47,17.44,34.17,5,0
    .goto 47,16.97,33.42
    >>Click the |cRXP_PICK_Bloodsoaked Hat|r upstairs on the ground
    .complete 26723,1 --1/1 Remains of Morbent Fel
step
    .isOnQuest 26793,26685,26680
    .hs >> Hearthstone to Darkshire
    .cooldown item,6948,>2
step
    .goto 47,72.43,46.80,15,0
    .goto 47,72.605,47.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 26793 >>Turn in The Weathered Grave
    .accept 26794 >>Accept Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26794 >>Turn in Morgan Ladimore
    .accept 26795 >>Accept Mor'Ladim
    .target Commander Althea Ebonlocke
step
	#sticky
    .destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 26685 >>Turn in Classy Glass
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Turn in Ogre Thieves
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Turn in Ogre Thieves
    .accept 26677 >>Accept Ghoulish Effigy
	.target Abercrombie
    .maxlevel 28
step
    .goto 47,77.34,36.27,15,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,77.760,33.889
    >>Kill |cRXP_ENEMY_Fetid Corpses|r. Loot them for their |cRXP_LOOT_Ghoul Ribs|r
	>>|cRXP_WARN_Check for a |cRXP_PICK_Chest|r in and around the House|r
    .complete 26677,1 --7/7 Ghoul Rib
	.mob Fetid Corpse
    .maxlevel 28
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26677 >>Turn in Ghoulish Effigy
    .accept 26681 >>Accept Note to the Mayor
	.target Abercrombie
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Enter the Town Hall|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 26681 >>Turn in Note to the Mayor
    .accept 26727 >>Accept The Embalmer's Revenge
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
	.goto 47,72.35,47.75,8,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.86,46.82,10 >>|cRXP_WARN_Exit the Town Hall|r
    .maxlevel 28
step
    .goto 47,74.17,46.47
    >>Kill |cRXP_ENEMY_Stiches.|r
    .complete 26727,1 --1/1 Stitches slain
	.mob Stitches
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Enter the Town Hall|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke.|r
    .turnin 26727 >>Turn in The Embalmer's Revenge
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline.|r
    .fly Raven Hill >>Fly to Raven Hill
	.target Felicia Maline
    .subzoneskip 94
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r and |cRXP_FRIENDLY_Jitters|r
    .turnin 26723 >>Turn in The Fate of Morbent Fel
    .accept 26724 >>Accept The Lurking Lich
    .goto 47,18.34,58.06
	.target +Sven Yorgen
    .turnin 26721 >>Turn in The Jitters-Bugs
    .accept 26787 >>Accept Bear In Mind
	.target +Jitters
    .goto 47,18.62,58.36
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington.|r
    .turnin 26778 >>Turn in The Cries of the Dead
    .isQuestComplete 26778
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington.|r
    .turnin 26724 >>Turn in The Lurking Lich
    .accept 26725 >>Accept Guided by the Light
    .goto 47,20.03,57.82
	.target Sister Elsington
step
#optional
    #completewith LightforgedRod
    >>Kill |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, and |cRXP_ENEMY_Bone Chewers.|r
    .complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#optional
    #completewith LightforgedRod
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrols the Raven Hill Cemetery|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .unitscan Mor'Ladim
    .isOnQuest 26795
step
    #label LightforgedRod
    .goto 47,23.45,35.41
    >>Click the |cRXP_PICK_Lightforged Rod|r on the ground
    .turnin 26725 >>Turn in Guided by the Light
    .accept 26753 >>Accept The Halls of the Dead
step
	#label CatacombsX
	#completewith next
    .goto 47,23.94,34.80,10,0
    .goto 47,25.68,33.76,15,0
    .goto 47,25.46,31.50,15,0
    .goto 47,23.47,27.99,15,0
    .goto 47,20.37,27.46,20 >>|cRXP_WARN_Travel down into the Catacombs. Avoid running over any graves as it will spawn|r |cRXP_ENEMY_Buried Corpses|r
step
    .goto 47,20.37,27.46
    >>Click the |cRXP_PICK_Lightforged Arch|r on the ground
    .turnin 26753 >>Turn in The Halls of the Dead
    .accept 26722 >>Accept Buried Below
step
	#completewith next
    .goto 47,20.33,26.81,10,0
    .goto 47,19.47,26.81,10,0
    .goto 47,18.53,24.94,10,0
    .goto 47,18.01,25.37,10 >>|cRXP_WARN_Travel through the hole in the wall|r
step
    .goto 47,18.01,25.37
    >>Click the |cRXP_FRIENDLY_Lightforged Crest|r on the ground
    .turnin 26722 >>Turn in Buried Below
    .accept 26754 >>Accept Morbent's Bane
step
	#completewith next
    .goto 47,16.53,31.06
    .cast 82130 >>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
	.use 60212
    .mob Morbent Fel
step
    .goto 47,16.53,31.06
    .use 60212 >>Kill |cRXP_ENEMY_Morbent Fel|r
    .complete 26754,1 --1/1 Morbent Fel slain
	.mob Morbent Fel
step
	#completewith CoalB
    .goto 47,16.18,33.19,15,0
    .goto 47,15.31,38.48,15,0
    .goto 47,16.09,38.78,15,0
    .subzone 2098,1 >>|cRXP_WARN_Exit the Catacombs|r
step
#sticky
#label morladim
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrols the Raven Hill Cemetery|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
	.unitscan Mor'Ladim
    .isOnQuest 26795
step
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Kill |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, and |cRXP_ENEMY_Bone Chewers.|r
	.complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#requires morladim
	#label CoalB
    #loop
    .goto 47,10.144,41.314,80,0
    .goto 47,11.636,54.060,80,0
    .goto 47,13.663,69.726,80,0
    .goto 47,10.144,41.314,0
    .goto 47,11.636,54.060,0
    .goto 47,13.663,69.726,0
    >>Kill |cRXP_ENEMY_Coalpelt Bears|r. Loot them for their |cRXP_LOOT_Black Bear Brains|r
    .complete 26787,1 --8/8 Black Bear Brain
	.mob Coalpelt Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r and |cRXP_FRIENDLY_Jitters|r
    .turnin 26754 >>Turn in Morbent's Bane
	.target +Sven Yorgen
    .goto 47,18.34,58.06
    .turnin 26787 >>Turn in Bear In Mind
    .goto 47,18.62,58.36
	.target +Jitters
step
    .goto 47,19.929,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .target Sister Elsington
    .turnin 26778 >>Turn in The Cries of the Dead
    .accept 26838 >>Accept Rebels Without a Clue
step
    #optional
    #label endOfTheGuide
step
    .goto 50,51.88,12.10
    .zone 50 >> Travel to Northern Stranglethorn
]])
