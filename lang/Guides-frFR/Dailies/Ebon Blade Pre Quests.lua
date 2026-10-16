if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Débloquer les quêtes journalières de la Lame d'ébène

step
    +Vous avez terminé la chaîne de prérequis des Chevaliers de la Lame d'ébène. Veuillez utiliser le guide de parcours des quêtes journalières de la Lame d'ébène pour terminer les quêtes journalières.
	.isQuestTurnedIn 12814

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Envolez-vous vers Le Brise-ciel, le grand navire Alliance qui vole haut dans les airs
	>>Parlez à Thassarian au coin arrière gauche du navire
    .accept 12887 >>Acceptez la quête Qu'est-ce qu'on se marre
step << Horde
	.goto Icecrown,62.58,45.04
	>>Envolez-vous vers Le Marteau d'Orgrim, le grand navire Horde qui vole haut dans les airs
	>>Parlez à Koltira Tissemort dans la pièce avant du navire
    .accept 12892 >>Acceptez la quête Qu'est-ce qu'on se marre
step
    .goto IcecrownGlacier,44.5,21.6
	.use 41265 >> Envolez-vous au sommet de la tour. Utilisez la Pétoire pandan'leil dans vos sacs sur l'Ocular jusqu'à ce qu'il meurt
    .complete 12887,1 << Alliance --The Ocular has been destroyed (1)
    .complete 12892,1 << Horde --The Ocular has been destroyed (1)
step
    .goto IcecrownGlacier,44.1,24.7
	>>Envolez-vous jusqu'à Baron Argent au sol. Parlez à lui
    .turnin 12887 >>Rendez la quête Qu'est-ce qu'on se marre << Alliance
    .turnin 12892 >>Rendez la quête Qu'est-ce qu'on se marre << Horde
    .accept 12891 >>Acceptez la quête J'ai une idée mais d'abord…
step
	>>Tuez les Géistes et ramassez leur Corde, tuez les Abominations et ramassez leur Hameçon, tuez les Cultistes et ramassez leur Bâtonnet, et tuez les ennemis Mort-vivants et ramassez leur Essence.
    .complete 12891,1 --Cultist Rod (1)
    .goto IcecrownGlacier,43.8,24.2,40,0
    .goto IcecrownGlacier,43.6,25.1,40,0
    .goto IcecrownGlacier,43.7,25.4,40,0
    .goto IcecrownGlacier,42.5,25.1,40,0
    .goto IcecrownGlacier,42.3,26.1
    .complete 12891,3 --Geist Rope (1)
    .goto IcecrownGlacier,43.4,25.6,40,0
    .goto IcecrownGlacier,43.3,26.6,40,0
    .goto IcecrownGlacier,42.5,26.4,40,0
    .goto IcecrownGlacier,42.9,24.5
    .complete 12891,2 --Abomination Hook (1)
    .goto IcecrownGlacier,43.3,24.1,40,0
    .goto IcecrownGlacier,43.5,26.2,40,0
    .goto IcecrownGlacier,42.5,28.1,40,0
    .goto IcecrownGlacier,42.7,25.7
   .complete 12891,4 --Scourge Essence (5)
    .goto IcecrownGlacier,43.6,24.1,40,0
    .goto IcecrownGlacier,42.6,27.2,40,0
    .goto IcecrownGlacier,42.3,26.1
step
    .goto IcecrownGlacier,44.2,24.6
	>>Rendez-vous au baron d'Argent.
    .turnin 12891 >>Rendez la quête J'ai une idée mais d'abord…
    .accept 12893 >>Acceptez la quête Libérez votre esprit
step
    .goto IcecrownGlacier,44.4,27.0
	.use 41366 >> Tuez Vil. Utilisez le Bâtonnet souverain sur son cadavre
    .complete 12893,1 --Vile turned (1)
step
    .goto IcecrownGlacier,41.8,24.5
	.use 41366 >> Tuez Dame Bois-de-nuit. Utilisez le Bâtonnet souverain sur son cadavre
    .complete 12893,2 --Lady Nightswood turned (1)
step
    .goto IcecrownGlacier,43.0,23.5,70,0
    .goto IcecrownGlacier,44.8,24.3,70,0
    .goto IcecrownGlacier,46.2,21.9,70,0
    .goto IcecrownGlacier,45.7,19.7,70,0
    .goto IcecrownGlacier,43.7,19.0,70,0
    .goto IcecrownGlacier,42.6,21.1
	.use 41366 >> Tuez Le Bondisseur. Utilisez le Bâtonnet souverain sur son cadavre. Il marche autour À L'EXTÉRIEUR du bâtiment principal à l'étage supérieur.
    .complete 12893,3 --The Leaper turned (1)
	.unitscan The Leaper
step
	#label Freemind
    .goto IcecrownGlacier,44.2,24.7
	>>Rendez-vous au baron d'Argent.
    .turnin 12893 >>Rendez la quête Libérez votre esprit
    .accept 12896 >>Acceptez la quête S'il ne peut pas être détourné… << Alliance
    .accept 12897 >>Acceptez la quête S'il ne peut pas être détourné… << Horde
step
    .goto IcecrownGlacier,44.7,19.8
	>> Entrez dans le bâtiment et cliquez sur le Râtelier d'armes du général. Soyez prudent car cela invoque un élite. Tuez Général Plaie-de-lumière
    .complete 12896,1 << Alliance --General Lightsbane (1)
    .complete 12897,1 << Horde --General Lightsbane (1)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Envolez-vous de retour vers Le Brise-ciel. Parlez à Thassarian au coin arrière gauche du navire
    .turnin 12896 >>Retournez au lieu de remise de la quête S'il ne peut pas être détourné…
    .accept 12898 >>Acceptez la quête Le caveau des Ombres
step << Horde
	>>Envolez-vous de retour vers Le Marteau d'Orgrim. Parlez à Koltira Tissemort dans la pièce avant du navire
    .turnin 12897 >>Rendez la quête S'il ne peut pas être détourné…
    .accept 12899 >>Acceptez la quête Le caveau des Ombres
step
    .goto IcecrownGlacier,42.8,24.9
	>>Rendez-vous à Baron Argent
	.turnin 12898 >>Rendez la quête Le caveau des Ombres << Alliance
    .turnin 12899 >>Rendez la quête Le caveau des Ombres << Horde
    .accept 12938 >>Acceptez la quête Le duc
step
	#completewith next
    .goto IcecrownGlacier,43.7,24.4
    .fp The Shadow Vault >> Apprenez le trajet de Vol vers Le caveau des Ombres
step
    .goto IcecrownGlacier,44.7,20.3
	>>Entrez dans le bâtiment. Parlez à Lankral
    .turnin 12938 >>Rendez la quête Le duc
    .accept 12939 >>Acceptez la quête Un défi pour l'honneur
step
    .goto Icecrown,43.60,25.13
	>>Parlez à Le Bondisseur, il marche autour de la tente
    .accept 12955 >>Acceptez la quête Éliminez la concurrence
step
    .goto IcecrownGlacier,37.5,24.7,0,0
	#sticky
	#label mjordincombat
	.use 41372 >> Utilisez le Drapeau de défi sur le Combattant de Mjordin de loin. Vous pouvez défier plusieurs Combattants à la fois tant que vous restez hors du combat (mais seulement 1 mob par duo de 2)
    .complete 12939,1 --Mjordin Combatants challenged and defeated (6)
step
	>>Envolez-vous vers L'escarpement Sauvage
	>>Parlez à Tinky, Sigrid, Onu'zun et Efrem à L'escarpement Sauvage. Défaites-les
    .complete 12955,4 --Tinky Wickwhistle defeated (1)
    .goto IcecrownGlacier,36.1,23.6
    .complete 12955,1 --Sigrid Iceborn defeated (1)
    .goto IcecrownGlacier,37.1,22.4
    .complete 12955,3 --Onu'zun defeated (1)
    .goto IcecrownGlacier,37.9,22.9
    .complete 12955,2 --Efrem the Faithful defeated (1)
    .goto IcecrownGlacier,37.9,25.1
	.skipgossip
step
    .goto IcecrownGlacier,43.5,25.0
	>>Rendez-vous à Le Bondisseur
    .turnin 12955 >>Rendez la quête Éliminez la concurrence
step
    .goto IcecrownGlacier,44.7,20.3
	>>Entrez dans le bâtiment. Parlez à Lankral
    .turnin 12939 >>Rendez la quête Un défi pour l'honneur
    .accept 12943 >>Acceptez la quête Le décret du caveau des Ombres
step
	#completewith next
    .goto IcecrownGlacier,39.01,23.99,25 >> Le chemin vers la salle d'Ufrang commence ici
step
    .goto IcecrownGlacier,41.0,23.9
	>> Retournez à L'escarpement Sauvage, puis entrez dans la Salle d'Ufrang. Parlez à Vaelen qui est enchaîné à l'intérieur
    .accept 12949 >>Acceptez la quête Récupérer la clé
step
    .goto IcecrownGlacier,40.3,23.9
	.use 41776 >> Utilisez le Décret du caveau des Ombres dans vos sacs devant Thane. Tuez-le.
    .complete 12943,1 --Thane Ufrang the Mighty (1)
step
    .goto IcecrownGlacier,37.7,23.9,70,0
    .goto IcecrownGlacier,36.7,23.7
	>>Sortez à L'escarpement Sauvage. Tuez l'Instructeur Hroegar qui patrouille dans les environs. Ramassez-le pour sa clé.
    .complete 12949,1 --Key to Vaelen's Chains (1)
	.unitscan Instructor Hroegar
step
    .goto IcecrownGlacier,41.0,23.9
	>>Retournez à l'intérieur de la Salle d'Ufrang. Parlez à Vaelen
    .turnin 12949 >>Rendez la quête Récupérer la clé
    .accept 12951 >>Acceptez la quête Informer le baron
step
    .goto IcecrownGlacier,39.01,23.99,25,0
    .goto IcecrownGlacier,42.9,24.9
	>>Quittez la Salle. Parlez au Baron Argent
    .turnin 12951 >>Rendez la quête Informer le baron
    .daily 12995 >>Acceptez la quête Laisser notre marque
    .accept 13085 >>Acceptez la quête Vaelen est de retour
step
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
	>>Parlez à Vil qui patrouille le long de la route principale
    .accept 12992 >>Acceptez la quête Écrasez les vrykuls !
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Entrez dans le bâtiment. Parlez à Vaelen à l'intérieur sur la gauche
    .turnin 13085 >>Rendez la quête Vaelen est de retour
    .accept 12982 >>Acceptez la quête Les prisonniers de la Lame d'ébène
step
    .goto IcecrownGlacier,44.7,20.4
	>>Parlez à Lankral
    .turnin 12943 >>Rendre la quête Le décret du caveau des Ombres
    .accept 13084 >>Acceptez la quête Jouer les vandales à Jotunheim
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Tuez les Vrykuls dans la zone et ramassez-les pour leurs clés de cage. Utilisez la Bannière de la Lame d'ébène dans vos sacs sur leurs cadavres. Cliquez sur les Clés récupérées sur les cages trouvées partout dans Jotenheim
	>>Brûlez les Bannières trouvées partout dans Jotenheim
	.collect 42422,8,12982,1,-1 --Jotunheim Cage Key (8)
    .complete 12982,1 --Ebon Blade Prisoners set free (8)
    .complete -12995,1 --Ebon Blade Banner planted near Vrykul corpse (0/15)
    .complete 12992,1 --Jotunheim Vrykul slain (0/15)
    .complete 13084,1 --Vrykul banners burned (10)
step
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
	>>Retournez au Caveau des Ombres. Parlez à Vil qui patrouille le long de la route principale
    .turnin 12992 >>Rendez la quête Écrasez les vrykuls !
    .daily 13071 >>Acceptez la quête Vil aime feu !
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Entrez dans le bâtiment. Parlez à Vaelen à l'intérieur sur la gauche
    .turnin 12982 >>Rendez la quête Les prisonniers de la Lame d'ébène
step
    .goto IcecrownGlacier,44.7,20.4
	>>Parlez à Lankral
    .turnin 13084 >>Rendez la quête Jouer les vandales à Jotunheim
step
    .goto IcecrownGlacier,42.9,24.9
    >>Retournez à Argent
	.turnin 12995 >>Rendez la quête Laisser notre marque
	.isQuestComplete 12995
step
    .goto IcecrownGlacier,42.9,24.9
	>>Parlez à Argent
    .accept 12806 >>Acceptez la quête Se lever en toute hâte !
step
    .goto IcecrownGlacier,43.5,25.0
	>>Parlez au Bondisseur, il marche autour de la tente
    .daily 13069 >>Acceptez la quête Descendez-les tous !
step
    .goto IcecrownGlacier,27.9,33.2
	>> Montez dans l'un des Harpons Tir rapide de Jotunheim situés au centre
	>> À l'intérieur du Harpon, utilisez en continu "Harpon à tir rapide" (3) pour abattre les Dragons
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
    .goto IcecrownGlacier,19.5,48.1
	>>Descendez le dragon, puis allez à Cime de la Mort. C'est une petite plate-forme située à mi-chemin entre le niveau de la mer et le sommet de la montagne. Parlez à Arete
    .turnin 12806 >>Rendez la quête Se lever en toute hâte !
    .accept 12807 >>Acceptez la quête Résumé des épisodes précédents…
step
    .goto IcecrownGlacier,19.5,48.1
	>>Parlez à Seigneur-commandant Arete à nouveau
    .complete 12807,1 --Lord-Commander Arete's tale listened to. (1)
    .turnin 12807 >>Rendez la quête Résumé des épisodes précédents…
    .accept 12810 >>Acceptez la quête Du sang dans l'eau
	.skipgossip
step
	#sticky
	#label DeathRise
    .goto IcecrownGlacier,19.3,47.8
    .fp Death's Rise >> Apprenez le Vol vers Cime de la Mort
step
	>>Parlez à Setaal
    .daily 12813 >>Acceptez la quête Réanimez leurs cadavres !
    .goto Icecrown,19.67,48.39
	>>Parlez à Aurochs. Il patrouille autour du feu central
    .daily 12838 >>Acceptez la quête Trouver des informations
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Optionnel. Vous pouvez ignorer ou terminer ces 2 quêtes journalières
step
	#requires DeathRise
    #sticky
	#label transformedcorpse
    .goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Tuez les mobs Assaut dans la zone. Utilisez la Teinture du sombre réparateur dans vos sacs sur leurs cadavres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires DeathRise
	>>Tuez les mobs Assaut, puis dépouillez-les pour récupérer leurs clés. Utilisez-les pour ouvrir les coffres partout autour du Port de l'Assaut pour obtenir les Documents
	>>Les coffres ne contiennent pas toujours les Documents
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
	#requires transformedcorpse
	.use 40551 >> Allez dans la mer à environ 30-90 mètres du rivage et tuez les Dents voraces de la mer. Utilisez la Vessie de sang dans vos sacs sur leurs cadavres
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5,90,0
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5
    .complete 12810,1 --Blood collected from Ravenous Jaws (10)
step
	>>Retournez à Cime de la Mort. Parlez à Arete
    .turnin 12810 >>Rendez la quête Du sang dans l'eau
    .accept 12814 >>Acceptez la quête Vous aurez besoin d'un griffon
    .goto IcecrownGlacier,19.6,48.1
step
	>>Parlez à Aurochs. Il patrouille autour du feu central
    .turnin -12838 >>Rendez la quête Trouver des informations
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Parlez à Setaal
    .turnin -12813 >>Rendez la quête Réanimez leurs cadavres !
    .goto IcecrownGlacier,19.7,48.4
step
    .goto IcecrownGlacier,10.4,44.1
	>> Tuez les Cavaliers de Griffon de l'Assaut dans la zone. Ramassez-les pour leurs Rênes de griffon de l'Assaut
	.collect 40970,1,12814,1 --Onslaught Grpyhon Reins (1)
step
    .goto IcecrownGlacier,19.6,47.8
	>>Retournez à Cime de la Mort sur votre monture normale. Quand vous arrivez au donneur de quête, utilisez les Rênes de griffon et activez « Livrer le griffon » (1) pour le livrer
    .complete 12814,1 --Onslaught Gryphon delivered to Uzo Deathcaller (1)
	.use 40970
step
    .goto Icecrown,19.64,47.80
	>>Parlez à Uzo Mandemort
    .turnin 12814 >>Rendez la quête Vous aurez besoin d'un griffon
    .daily 12815 >>Acceptez la quête Région d'exclusion aérienne
step
    .goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>> Tuez les Cavaliers de Griffon dans la zone. Tirez-les vers le bas avec des capacités à distance ou regroupez-en plusieurs en l'air puis descendez et tuez-les. Si vous en regroupez plusieurs, ne les laissez pas vous frapper par derrière ou vous serez démonté
    .complete 12815,1 --Onslaught Gryphon Rider (10)
step
	.goto Icecrown,19.64,47.80
	>>Retournez à Cime de la Mort. Parlez à Uzo
    .turnin 12815 >>Rendez la quête Région d'exclusion aérienne
step
    >>Rendez-vous au Caveau des Ombres. Parlez au Bondisseur et Vil
    .turnin -13069 >>Rendez la quête Descendez-les tous !
	.goto IcecrownGlacier,43.5,25.0
    .turnin -13071 >>Rendez la quête Vil aime feu !
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
step
    +Vous avez terminé la chaîne de pré-quêtes des Chevaliers de la Lame d'ébène. Utilisez le guide Route des Quêtes journalières de la Lame d'ébène pour terminer les quêtes journalières. Remarque : certaines peuvent ne pas être disponibles aujourd'hui car elles ont déjà été complétées auparavant.
	.isQuestTurnedIn 12814
]])
