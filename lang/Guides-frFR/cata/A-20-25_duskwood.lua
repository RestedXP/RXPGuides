if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 20-25 Bois de la Pénombre
#displayname 21-26 Bois de la Pénombre
#next 25-30 Strangleronce septentrionale


<<Alliance


step
    .goto 47,93.30,12.00
    .zone 47 >> Voyagez au Bois de la Pénombre
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.09,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tobias|r à l'intérieur de la maison
    .accept 26666 >>Acceptez la quête La légende de Stalvan
	.target Tobias Mistmantle
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .accept 26653 >>Acceptez la quête Les denrées de Sombre-Comté
	.target Abercrombie
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia|r
    .fp Darkshire >>Prenez le chemin de vol de Sombre-Comté
	.target Felicia Maline
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'intérieur de la maison
    .turnin 26653 >>Acceptez la quête Les denrées de Sombre-Comté
    .accept 26652 >>Acceptez la quête Mèche de cheveux fantômes
	.target Madame Eva
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entrez dans l'auberge
step
    #completewith Daltry1
    .goto 47,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trelayne|r
    .home >>Liez votre Pierre de foyer à la Taverne du Corbeau écarlate
	.target Innkeeper Trelayne
step
	#label Kabobs
    .goto 47,73.74,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grual|r
    .accept 26620 >>Acceptez la quête Kébab de loup assaisonné
    .accept 26623 >>Acceptez la quête Les tourtes au crabe de la Pénombre
	.target Chef Grual
step
	#completewith Daltry1
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8>>Quittez l'auberge
step
	#label Daltry1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daltry|r à l'intérieur et à |cRXP_FRIENDLY_Althea|r à l'extérieur
    .turnin 26666 >>Rendez la quête La légende de Stalvan
    .accept 26667 >>Acceptez la quête Les lettres volées
    .goto 47,72.448,46.909
	.target +Clerk Daltry
    .turnin -26728 >>Rendez la quête L'appel du héros : le bois de la Pénombre !
    .accept 26618 >>Acceptez la quête Des loups aux trousses
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .accept 26688 >>Acceptez la quête Worgens dans les bois
	.target Calor

step
    #optional
    #completewith Letters
    >>Tuez des |cRXP_ENEMY_Venom Rets Araignées|r. Fouillez-les pour récupérer leurs |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#completewith next
#optional
    .goto 47,64.12,51.62,0,0
    >>Tuez |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#label Letters
    .goto 47,61.24,40.50
    >>Ramassez la |cRXP_PICK_Pile of Loque|r sur le sol pour |cRXP_LOOT_A Slashed Bundle of Lettres|r
    .complete 26667,1 --1/1 A Slashed Bundle of Letters
step
#loop
    .goto 47,64.12,51.62,40,0
    .goto 47,60.883,40.830,40,0
    .goto 47,65.304,44.317,40,0
    .goto 47,64.12,51.62,0
    .goto 47,60.883,40.830,0
    .goto 47,65.304,44.317,0
    >>Tuez les |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Dire Wolves|r. Ramassez-les pour leurs |cRXP_LOOT_Steaks|r
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
    >>Tuez les |cRXP_ENEMY_Venom Rets Araignées|r. Ramassez-les pour leurs |cRXP_LOOT_Lumps|r
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
    >>Tuez des |cRXP_ENEMY_Dire Wolves|r. Fouillez-les pour récupérer leurs |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
    .isOnQuest 26620,26618,26623,26688,26667
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Sombre-Comté
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daltry|r à l'intérieur et |cRXP_FRIENDLY_Althea|r à l'extérieur
    .turnin 26667 >>Rendez la quête Les lettres volées
    .accept 26669 >>Acceptez la quête Dans un coin sombre
    .target +Clerk Daltry
    .goto 47,72.448,46.909
    .turnin 26618 >>Rendez la quête Des loups aux trousses
    .accept 26645 >>Acceptez la quête Les Veilleurs
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 26688 >>Rendez la quête Worgens dans les bois
    .accept 26689 >>Acceptez la quête Le verger Pourrissant
	.target Calor
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori|r
    .accept 26683 >>Acceptez la quête Un œil dans les étoiles
	.target Viktori Prism'Antras
step
	#completewith next
    >>Tuez des |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    .goto 47,81.66,59.16,8,0
    .goto 47,81.92,58.98,5,0
    .goto 47,82.05,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r à l'intérieur de la maison
    .turnin 26652 >>Rendez la quête Mèche de cheveux fantômes
    .accept 26654 >>Acceptez la quête Le retour du peigne
    .turnin 26683 >>Rendez la quête Un œil dans les étoiles
    .accept 26684 >>Acceptez la quête Le reflet de la goule
	.target Blind Mary
step
#loop
	.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
	.goto 47,82.30,61.22,30,0
	.goto 47,82.45,56.25,30,0
	.goto 47,80.91,56.65,30,0
	.goto 47,79.48,60.41,30,0
	.goto 47,82.30,61.22,30,0
    >>Tuez les |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    #completewith next
    .subzone 42 >> Rendez la quête à Sombre-Comté
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'intérieur de la maison
    .turnin 26654 >>Rendez la quête Le retour du peigne
    .accept 26655 >>Acceptez la quête Apporter la mèche
	.target Madame Eva
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26655 >>Rendez la quête Apporter la mèche
    .accept 26660 >>Acceptez la quête Le suc de zombie
	.target Abercrombie
step << skip
    #completewith next
    .goto 47,87.98,33.16,20,0
    .goto 47,88.1,31.33,20,0
    .goto 47,90.98,30.53,30 >>Cherchez le |cRXP_ENEMY_Soldat inconnu|r (Rare). Tuez-le s'il est là
	.unitscan Unknown Soldier
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entrez dans l'auberge
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smitts|r
    .turnin 26660 >>Rendez la quête Le suc de zombie
    .accept 26661 >>Acceptez la quête Cueillette de racines pourries
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Quittez l'auberge
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Althea|r
    .turnin 26645 >>Rendez la quête Les Veilleurs
    .accept 26686 >>Acceptez la quête Les os qui marchent
	.target Commander Althea Ebonlocke
step
    #optional
    .maxlevel 25,endOfTheGuide
step
#optional
	#completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Warriors|r et les |cRXP_ENEMY_Skeletal Mages|r
	>>Ramassez les |cRXP_LOOT_Rot Blossoms|r sur le sol
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
    .goto 47,80.31,71.10,15,0
    .goto 47,80.88,71.58
    >>Tuez la |cRXP_ENEMY_Goule folle|r dans le cimetière. Fouillez-la pour |cRXP_LOOT_Mary's Regarde Verre|r
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
    >>Tuez les |cRXP_ENEMY_Skeletal Warriors|r et les |cRXP_ENEMY_Skeletal Mages|r
	>>Ramassez les |cRXP_LOOT_Rot Blossoms|r sur le sol
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
#optional
    #completewith journal1
    >>Tuez les |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
	#completewith next
    .goto 47,66.03,75.79,8,0
    .goto 47,65.98,76.42,8 >> Entrez dans la grange
step
#label journal1
    .goto 47,66.59,76.44
    >>Ramassez le |cRXP_LOOT_A Torn Entités de MoP|r sur le sol
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
    >>Tuez les |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Althea|r à l'extérieur et |cRXP_FRIENDLY_Daltry|r à l'intérieur
    .turnin 26686 >>Rendez la quête Les os qui marchent
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
    .turnin 26669 >>Rendez la quête Dans un coin sombre
    .accept 26670 >>Acceptez la quête Au Destin de Roland
    .goto 47,72.448,46.909
	.target +Clerk Daltry
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entrez dans l'auberge
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smitts|r
    .turnin 26661 >>Rendez la quête Cueillette de racines pourries
    .accept 26676 >>Acceptez la quête La livraison de suc
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Quittez l'auberge
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 26689,1 >>Rendez la quête Le verger Pourrissant
    .accept 26690 >>Acceptez la quête Infects crocs
	.target Calor
step
	#label Insane
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori|r
    .turnin 26684 >>Rendez la quête Le reflet de la goule
    .accept 26685 >>Acceptez la quête De la verrerie de luxe
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26676 >>Rendez la quête La livraison de suc
    .accept 26680 >>Acceptez la quête Les ogres voleurs
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith JPages
    >>Tuez les |cRXP_ENEMY_Nightbane Vile Fangs|r et les |cRXP_ENEMY_Nightbane Tainted Ones|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
	#label JPages
    .goto 47,73.44,76.86,20,0
    .goto 47,74.26,77.92,20,0
    .goto 47,73.62,79.21
    >>Ramassez les |cRXP_LOOT_Muddy Entités de MoP Pages|r sur le sol
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
    >>Tuez les |cRXP_ENEMY_Nightbane Vile Fangs|r et les |cRXP_ENEMY_Nightbane Tainted Ones|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto 47,72.448,46.909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daltry|r à l'intérieur
    .turnin 26670 >>Rendez la quête Au Destin de Roland
    .accept 26671 >>Acceptez la quête Le destin de Stalvan Mantebrume
	.target Clerk Daltry
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r, puis à |cRXP_FRIENDLY_Jonathan|r à l'intérieur
    .turnin 26690 >>Rendez la quête Infects crocs
    .accept 26691 >>Acceptez la quête Worgens dans les bois
    .goto 47,75.33,48.02
	.target +Calor
    .turnin 26691 >>Rendez la quête Worgens dans les bois
    .goto 47,75.24,48.23,5,0
    .goto 47,75.39,49.00
	.target +Jonathan Carevin
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tobias|r à l'intérieur de la maison
    .turnin 26671 >>Rendez la quête Le destin de Stalvan Mantebrume
    .accept 26672 >>Acceptez la quête Il n'y a que la vérité qui blesse
    .target Tobias Mistmantle
step
	#label Clawing
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eva|r dans la maison
    .turnin 26672 >>Rendez la quête Il n'y a que la vérité qui blesse
    .accept 26674 >>Acceptez la quête La revanche de Mantebrume
	.target Madame Eva
step
    #completewith next
	.cast 82029 >> |cRXP_WARN_Utilisez le|r |T133343:0|t[Mistmantle Family Anneau] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Stalvan Mantebrume|r
	.timer 33,RP de La revanche de Mantebrume
step
    .goto 47,77.42,35.85,10,0
    .goto 47,77.33,36.18
    .use 59363 >>Tuez |cRXP_ENEMY_Stalvan Mantebrume|r
    .complete 26674,1 --1/1 Stalvan Mistmantle slain
	.mob Stalvan Mistmantle
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tobias|r à l'intérieur de la maison
    .turnin 26674 >>Rendez la quête La revanche de Mantebrume
    .accept 26785 >>Acceptez la quête Un membre de la meute
	.target Tobias Mistmantle
step
	#completewith next
    .goto 47,69.51,48.83,30 >> Prenez le sentier derrière l'Hôtel de ville vers Bosquet de Clairbois
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dodds|r et à |cRXP_FRIENDLY_Fess|r
    .accept 25235 >>Acceptez la quête Les vulgaires Vul'Gol
	.target +Watcher Dodds
    .goto 47,45.12,67.02
    .turnin 26785 >>Rendez la quête Un membre de la meute
    .accept 26707 >>Acceptez la quête Une funeste vigne
    .accept 26717 >>Acceptez la quête Le worgen de Yorgen
    .goto 47,44.92,67.43
	.target +Apprentice Fess
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Corpseweeds|r. Ramassez-les pour leurs |cRXP_LOOT_Charognelle|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    .goto 47,49.86,77.69
    >>Cliquez sur |cRXP_PICK_Mound of Loose Dirt|r sur le sol
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
    >>Tuez |cRXP_ENEMY_Corpseweeds|r. Ramassez-les pour leurs |cRXP_LOOT_Charognelle|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    #completewith Zzarc
	>>Tuez les |cRXP_ENEMY_Splinter Fist Ogres|r, les |cRXP_ENEMY_Splinter Fist Firemongers|r et les |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    .goto 47,33.52,75.33
    >>Ouvrez le |cRXP_LOOT_Abercrombie's Crate|r sur le sol
    .complete 26680,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto 47,34.23,77.47,15 >> Entrez dans la Caverne Ogre Brisepoing
step
	#label Zzarc
    .goto 47,37.87,84.33
    >>Tuez |cRXP_ENEMY_Zzarc' Vul|r. Dépouillez-le pour son |cRXP_LOOT_Monocle|r
    .complete 26685,1 --1/1 Ogre's Monocle
	.unitscan Zzarc' Vul
step
	#completewith next
    .goto 47,34.20,77.47,15 >>Quittez la Caverne Ogre Brisepoing
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
	>>Tuez les |cRXP_ENEMY_Splinter Fist Ogres|r, les |cRXP_ENEMY_Splinter Fist Firemongers|r et les |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fess|r et à |cRXP_FRIENDLY_Dodds|r
    .turnin 26707 >>Rendez la quête Une funeste vigne
    .turnin 26717 >>Rendez la quête Le worgen de Yorgen
    .accept 26719 >>Acceptez la quête Une livraison pour maître Harris
    .goto 47,44.92,67.43
	.target +Apprentice Fess
    .turnin 25235 >>Rendez la quête Les vulgaires Vul'Gol
    .goto 47,45.12,67.02
	.target +Watcher Dodds
step
    .goto 47,20.015,57.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Elsington|r
    .target Sister Elsington
    .accept 26777 >>Acceptez la quête Apaisons les esprits
step
    .goto 47,18.628,58.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_La Tremblote|r
    .accept 26721 >>Acceptez la quête Les bestioles de La Tremblote
    .target Jitters
step
    .goto 47,18.310,57.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver Harris|r
    .target Oliver Harris
    .turnin 26719 >>Rendez la quête Une livraison pour maître Harris
    .accept 26720 >>Acceptez la quête L'immuable malédiction
step
#optional
    #completewith LurkingW
    .use 60225 >>|cRXP_WARN_Utilisez le|r |T134547:0|t[(Sacré) Censer] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Forlorn Esprits|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
step
#optional
	#completewith next
    .goto 47,21.65,72.34,8,0
    .goto 47,21.29,72.73,8 >>|cRXP_WARN_Allez à l'intérieur de l'Étable de la Grange|r
step
    #label LurkingW
    .goto 47,21.61,73.15
	>>|cRXP_WARN_Infligez des dégâts au |cRXP_ENEMY_Worgen en maraude|r qui apparaît à 20 % ou moins de santé, puis utilisez|r |T134825:0|t[Ampoule de Harris] |cRXP_WARN_sur celui-ci|r
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
    .use 60225 >>|cRXP_WARN_Utilisez le|r |T134547:0|t[(Sacré) Censer] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Forlorn Esprits|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
    .use 60225
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver Harris|r et à |cRXP_FRIENDLY_Sœur Elsington|r
    .turnin 26720 >>Rendez la quête L'immuable malédiction
    .accept 26760 >>Acceptez la quête Hurler à la lune
	.timer 58,RP de Hurler à la lune
    .goto 47,18.32,57.67
    .turnin 26777 >>Rendez la quête Apaisons les esprits
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sister Elsington
step
    >>Attendez le temps du RP
    >>|cRXP_WARN_Si vous n'avez pas reçu de crédit après l'expiration du minuteur, abandonnez "Hurler à la lune" et acceptez la quête à nouveau|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver Harris|r, à |cRXP_FRIENDLY_Sven Yorgen|r et à |cRXP_FRIENDLY_Sœur Elsington|r
    .complete 26760,1 --1/1 Worgen cured
    .turnin 26760 >>Rendez la quête Hurler à la lune
    .goto 47,18.32,57.67
    .accept 26723 >>Acceptez la quête Le destin de Morbent Lagangrène
    .goto 47,18.34,58.06
    .accept 26778 >>Acceptez la quête Les hurlements des morts
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sven Yorgen
	.target Sister Elsington
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto Duskwood,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Shelby|r
    .target John Shelby
    .fp Raven Hill>>Apprenez le trajet aérien de Colline-aux-Corbeaux
step
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14,50,0
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14
    >>Tuez les |cRXP_ENEMY_Black Widows|r. Ramassez-les pour leurs |cRXP_LOOT_Widow Toxine Sacs|r
	>>|cRXP_WARN_Ils disparaissent parfois pendant 1-2s en combat|r
    .complete 26721,1 --8/8 Widow Venom Sac
	.mob Black Widow
step
    .goto 47,17.72,29.05
    >>Cliquez sur le |cRXP_PICK_A Weathered Grave|r
    .accept 26793 >>Acceptez la quête La tombe effritée
step
    .goto 47,17.49,33.40,8,0
    .goto 47,17.44,34.17,5,0
    .goto 47,16.97,33.42
    >>Cliquez sur |cRXP_PICK_Bloodsoaked Chapeau|r à l'étage sur le sol
    .complete 26723,1 --1/1 Remains of Morbent Fel
step
    .isOnQuest 26793,26685,26680
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Sombre-Comté
    .cooldown item,6948,>2
step
    .goto 47,72.43,46.80,15,0
    .goto 47,72.605,47.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 26793 >>Rendez la quête La tombe effritée
    .accept 26794 >>Acceptez la quête Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 26794 >>Rendez la quête Morgan Ladimore
    .accept 26795 >>Acceptez la quête Mor'Ladim
    .target Commander Althea Ebonlocke
step
	#sticky
    .destroy 2154 >> Détruisez [L'histoire de Morgan Ladimore]
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 26685 >>Rendez la quête De la verrerie de luxe
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Rendez la quête Les Ogres sont de sales voleurs
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Rendez la quête Les Ogres sont de sales voleurs
    .accept 26677 >>Acceptez la quête L'épouvantail à goules
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
    >>Tuez |cRXP_ENEMY_Fetid Cadavres|r. Ramassez-les pour leurs |cRXP_LOOT_Ghoul Ribs|r
	>>|cRXP_WARN_Vérifiez s'il y a un |cRXP_PICK_Chest|r dans et autour de la maison|r
    .complete 26677,1 --7/7 Ghoul Rib
	.mob Fetid Corpse
    .maxlevel 28
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26677 >>Rendez la quête L'épouvantail à goules
    .accept 26681 >>Acceptez la quête La lettre au maire
	.target Abercrombie
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Entrez dans l'Hôtel de ville|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .turnin 26681 >>Rendez la quête La lettre au maire
    .accept 26727 >>Acceptez la quête La vengeance de l'embaumeur
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
	.goto 47,72.35,47.75,8,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.86,46.82,10 >>|cRXP_WARN_Sortez de l'hôtel de ville|r
    .maxlevel 28
step
    .goto 47,74.17,46.47
    >>Tuez |cRXP_ENEMY_Stiches|r.
    .complete 26727,1 --1/1 Stitches slain
	.mob Stitches
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Entrez dans l'hôtel de ville|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Ello Bouclenoire|r.
    .turnin 26727 >>Rendez la quête La vengeance de l'embaumeur
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r.
    .fly Raven Hill >>Envolez-vous vers Colline-aux-Corbeaux
	.target Felicia Maline
    .subzoneskip 94
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r et |cRXP_FRIENDLY_La Tremblote|r
    .turnin 26723 >>Rendez la quête Le destin de Morbent Lagangrène
    .accept 26724 >>Acceptez la quête Le jeu de cache-liche
    .goto 47,18.34,58.06
	.target +Sven Yorgen
    .turnin 26721 >>Rendez la quête Les bestioles de La Tremblote
    .accept 26787 >>Acceptez la quête Il ne faut pas vendre la cervelle de l'ours…
	.target +Jitters
    .goto 47,18.62,58.36
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Elsington|r.
    .turnin 26778 >>Rendez la quête Les hurlements des morts
    .isQuestComplete 26778
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Elsington|r.
    .turnin 26724 >>Rendez la quête Le jeu de cache-liche
    .accept 26725 >>Acceptez la quête Le sentier lumineux
    .goto 47,20.03,57.82
	.target Sister Elsington
step
#optional
    #completewith LightforgedRod
    >>Tuez |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, et |cRXP_ENEMY_Bone Chewers.|r
    .complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#optional
    #completewith LightforgedRod
    >>Tuez |cRXP_ENEMY_Mor'Ladim|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_fait une patrouille au Cimetière de Colline-aux-Corbeaux|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .unitscan Mor'Ladim
    .isOnQuest 26795
step
    #label LightforgedRod
    .goto 47,23.45,35.41
    >>Cliquez sur le |cRXP_PICK_Lightforged Rod|r sur le sol
    .turnin 26725 >>Rendez la quête Le sentier lumineux
    .accept 26753 >>Acceptez la quête Les salles des morts
step
	#label CatacombsX
	#completewith next
    .goto 47,23.94,34.80,10,0
    .goto 47,25.68,33.76,15,0
    .goto 47,25.46,31.50,15,0
    .goto 47,23.47,27.99,15,0
    .goto 47,20.37,27.46,20 >>|cRXP_WARN_Descendez dans les Catacombes. Évitez de marcher sur les tombes car cela va faire apparaître|r |cRXP_ENEMY_Buried Cadavres|r
step
    .goto 47,20.37,27.46
    >>Cliquez sur le |cRXP_PICK_Lightforged Arch|r sur le sol
    .turnin 26753 >>Rendez la quête Les salles des morts
    .accept 26722 >>Acceptez la quête Les profondeurs de la terre
step
	#completewith next
    .goto 47,20.33,26.81,10,0
    .goto 47,19.47,26.81,10,0
    .goto 47,18.53,24.94,10,0
    .goto 47,18.01,25.37,10 >>|cRXP_WARN_Passez par le trou dans le mur|r
step
    .goto 47,18.01,25.37
    >>Cliquez sur le |cRXP_FRIENDLY_Lightforged Crest|r sur le sol
    .turnin 26722 >>Rendez la quête Les profondeurs de la terre
    .accept 26754 >>Acceptez la quête Le fléau de Morbent
step
	#completewith next
    .goto 47,16.53,31.06
    .cast 82130 >>Utilisez le [Fléau de Morbent] sur |cRXP_ENEMY_Morbent Fel|r pour l'affaiblir
	.use 60212
    .mob Morbent Fel
step
    .goto 47,16.53,31.06
    .use 60212 >>Tuez |cRXP_ENEMY_Morbent Fel|r
    .complete 26754,1 --1/1 Morbent Fel slain
	.mob Morbent Fel
step
	#completewith CoalB
    .goto 47,16.18,33.19,15,0
    .goto 47,15.31,38.48,15,0
    .goto 47,16.09,38.78,15,0
    .subzone 2098,1 >>|cRXP_WARN_Sortez des Catacombes|r
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
    >>Tuez |cRXP_ENEMY_Mor'Ladim|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrols the Cimetière de Colline-aux-Corbeaux|r
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
    >>Tuez |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, et |cRXP_ENEMY_Bone Chewers.|r
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
    >>Tuez |cRXP_ENEMY_Coalpelt Ours|r. Ramassez-les pour leurs |cRXP_LOOT_Black Ours Brains|r
    .complete 26787,1 --8/8 Black Bear Brain
	.mob Coalpelt Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r et |cRXP_FRIENDLY_La Tremblote|r
    .turnin 26754 >>Rendez la quête Le fléau de Morbent
	.target +Sven Yorgen
    .goto 47,18.34,58.06
    .turnin 26787 >>Rendez la quête Il ne faut pas vendre la cervelle de l'ours…
    .goto 47,18.62,58.36
	.target +Jitters
step
    .goto 47,19.929,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Elsington|r
    .target Sister Elsington
    .turnin 26778 >>Rendez la quête Les hurlements des morts
    .accept 26838 >>Acceptez la quête Les rebelles de la forêt
step
    #optional
    #label endOfTheGuide
step
    .goto 50,51.88,12.10
    .zone 50 >> Voyage vers Strangleronce septentrionale
]])
