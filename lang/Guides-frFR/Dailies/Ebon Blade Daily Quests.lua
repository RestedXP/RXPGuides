if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Ebon Blade Quêtes journalières Route

step
	+Pour déverrouiller les quêtes journalières des Chevaliers de la Lame d'ébène, vous devez d'abord terminer leur chaîne de quêtes dans La Couronne de glace. Utilisez le guide Ebon Blade Déverrouiller Quêtes journalières pour déverrouiller les quêtes journalières
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>Du Caveau des Ombres, acceptez les 3 quêtes journalières
    >>Parlez à Argent
	.daily 12995 >>Acceptez la quête Laisser notre marque
	.goto Icecrown,42.84,24.92
	>>Parlez au Bondisseur. Il se promène autour de la tente
	.daily 13069 >>Acceptez la quête Tir'Em Up
	.goto IcecrownGlacier,43.5,25.0
	>>Parlez à Vil, c'est une abomination qui patrouille sur le chemin entre l'entrée et le bâtiment principal
    .daily 13071 >>Acceptez la quête Vil aime feu !
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Tuez les Vrykuls dans la zone. Utilisez la Bannière de la Lame d'ébène dans vos sacs sur leurs cadavres
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>À l'intérieur du Harpon, utilisez en continu "Harpon à tir rapide" (3) pour abattre les Dragons
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >> Faites un clic droit sur un Proto-dragon Njorndar pour le chevaucher
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Utilisez "Pointe de vitesse" (1) dès qu'elle est disponible pour vous déplacer plus rapidement. Utilisez "Mitrailler un bâtiment de Jotunheim" (3) pour enflammer les bâtiments
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Retournez au Caveau des Ombres. Parlez à Argent, au Bondisseur et à Vil
	.turnin 12995 >>Rendez la quête Laisser notre marque
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Rendez la quête Tir'Em Up
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Rendez la quête Vil aime feu !
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>De la Cime de la Mort, acceptez les 3 quêtes journalières
	>>Parlez à Setaal
	.daily 12813 >>Acceptez la quête Réanimez leurs cadavres !
	.goto Icecrown,19.67,48.39
	>>Parlez à Aurochs. Il patrouille autour du feu central
    .daily 12838 >>Acceptez la quête Trouver des informations
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Parlez à Uzo
    .daily 12815 >>Acceptez la quête Région d'exclusion aérienne
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Tuez les Cavaliers des Griffons dans la zone. Tirez-les du ciel avec des capacités à distance ou regroupez plusieurs d'entre eux en l'air, puis descendez pour les tuer
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Tuez les mobs Assaut dans la zone. Utilisez la Teinture du sombre réparateur dans vos sacs sur leurs cadavres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Tuez les mobs Assaut, puis dépouillez-les pour récupérer leurs clés. Utilisez-les pour ouvrir les coffres partout autour du Port de l'Assaut pour obtenir les Documents
	>>Les coffres n'ont pas 100% de chance de donner les documents
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Tuez les mobs Assaut dans la zone. Utilisez la Teinture du sombre réparateur dans vos sacs sur leurs cadavres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Retournez à la Cime de la Mort. Parlez à Uzo, à Setaal et à Aurochs
    .turnin 12815 >>Rendez la quête Région d'exclusion aérienne
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Rendez la quête Réanimez leurs cadavres !
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Rendez la quête Trouver des informations
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
step
	+Vous avez terminé toutes les quêtes journalières des Chevaliers de la Lame d'ébène pour aujourd'hui :) N'oubliez pas que vous pouvez porter leur Tabard en faisant les donjons WotLK pour obtenir une réputation supplémentaire!
]])
