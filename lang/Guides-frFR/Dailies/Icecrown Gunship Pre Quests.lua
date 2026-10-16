if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Déverrouillage des quêtes journalières du navire de guerre de la Couronne de glace

step
	+Remarque : Plusieurs quêtes journalières ont des quêtes de groupe de 5 joueurs comme prérequis dans La Couronne de glace. Vous devez les terminer afin de déverrouiller les quêtes journalières suivantes. Terminez TOUTES les quêtes de groupe selon les instructions du guide.
	>>Si vous ne pouvez pas les terminer, revenez-y plus tard.
step
    .goto IcecrownGlacier,87.8,78.1
    .fp The Argent Vanguard >> Apprenez le Vol vers L'avant-garde d'Argent.
step
    .goto IcecrownGlacier,87.5,75.8
	>>Envolez-vous vers L'avant-garde d'Argent. Parlez à Tirion.
    .accept 13036 >>Acceptez la quête L'honneur avant tout.
step
    .goto IcecrownGlacier,87.1,75.8
	>>Parlez à Entari au-dessous de vous.
    .turnin 13036 >>Rendez la quête L'honneur avant tout.
    .accept 13008 >>Acceptez la quête Les tactiques du Fléau.
step
    .goto IcecrownGlacier,86.8,76.6
	>>Parlez à Gustav.
    .accept 13040 >>Acceptez la quête Soigner l'insoignable.
step
    .goto IcecrownGlacier,86.1,75.8
	>>Parlez à Dalfors.
    .accept 13039 >>Acceptez la quête Défendre l'avant-garde.
step
	#sticky
	#label webbedfreed
    .goto IcecrownGlacier,83.5,75.1,0,0
	>>Tuez les Cocons de Croisé entoilé dans la zone pour les libérer. Ils vous bufferont aussi et vous soigneront. << !Paladin
	>>Tuez les Cocons de Croisé entoilé dans la zone pour les libérer. Assurez-vous de ne pas vous buffer avec Kings, car les PNJ vous le bufferont aussi (et vous soigneront). << Paladin
    .complete 13008,1 --Webbed Crusader Freed (8)
step
    .goto IcecrownGlacier,84.7,78.8,80,0
    .goto IcecrownGlacier,83.5,75.1,80,0
    .goto IcecrownGlacier,83.1,72.6,80,0
    .goto IcecrownGlacier,84.8,73.0,80,0
    .goto IcecrownGlacier,83.5,75.1
	>>Tuez les Nerubians et les Araignées dans la zone. Ramassez-les pour leurs Sacs de Toxine.
    .complete 13039,1 --Forgotten Depths Nerubians (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
step
	#requires webbedfreed
    .goto IcecrownGlacier,86.1,75.8
	>>Allez à Dalfors.
    .turnin 13039 >>Rendez la quête Défendre l'avant-garde.
step
    .goto IcecrownGlacier,86.8,76.6
	>>Allez à Gustav.
    .turnin 13040 >>Rendez la quête Soigner l'insoignable.
step
    .goto IcecrownGlacier,87.1,75.8
	>>Allez à Entari.
    .turnin 13008 >>Rendez la quête Les tactiques du Fléau.
    .accept 13044 >>Acceptez la quête S'il reste des survivants...
step
    .goto IcecrownGlacier,87.0,79.0
	>>Parlez à Penumbrius.
    .turnin 13044 >>Rendez la quête S'il reste des survivants...
    .accept 13045 >>Acceptez la quête Ça va tanguer dans la verdure !
step
	#completewith next
    .goto IcecrownGlacier,87.1,79.2
	.vehicle 30228 >> Cliquez-droit sur le Serre-du-ciel argent pour le monter.
step
	>>Envolez-vous vers Fléaulme. Utilisez « Saisir un Croisé capturé » (1) pour sauver les Croisés (vous ne pouvez en saisir qu'un à la fois), puis envolez-vous vers Gustav à L'avant-garde d'Argent et utilisez « Déposer le Croisé capturé » (2) pour les laisser. Utilisez « Envol » (3) à chaque recharge pour aller plus vite.
	.pin Icecrown,78.7,67.0
    .waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
	.goto Icecrown,86.68,76.83
    .complete 13045,1 --Captured Crusader Rescued (3)
step
    .goto IcecrownGlacier,87.5,75.8
	>>Envolez-vous vers Tirion.
    .turnin 13045 >>Rendez la quête Ça va tanguer dans la verdure !
    .accept 13070 >>Acceptez la quête Un front froid se rapproche.
step
    .goto IcecrownGlacier,85.6,76.0
	>>Parlez à Fezzik à l'intérieur de la petite maison.
    .turnin 13070 >>Rendez la quête Un front froid se rapproche.
    .accept 13086 >>Acceptez la quête La dernière ligne de défense.
step
	#completewith next
    .goto IcecrownGlacier,85.3,75.8
	.vehicle >>Envolez-vous vers l'une des Tourelles situées en haut des murs et entrez dedans.
step
    .goto IcecrownGlacier,84.8,75.8
	--vehicle id 30236
	>>Utilisez « Canon d'Argent » (1) pour tuer des mobs en une petite zone et générer du mana. Utilisez « Bombe de la rétribution » (2) pour tuer des mobs en une grande zone au coût du mana.
    .complete 13086,1 --Scourge Attackers (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
step
    .goto IcecrownGlacier,85.6,76.0
	>>Quittez le canon. Allez à Fezzik.
    .turnin 13086 >>Rendez la quête La dernière ligne de défense.
step
    .goto IcecrownGlacier,86.0,75.8
	>>Parlez à Tirion derrière vous.
    .accept 13104 >>Acceptez la quête Encore une fois sur la Brèche, héros. << !DK
    .accept 13105 >>Acceptez la quête Encore une fois sur la Brèche, héros. << DK
step
	>>Voyagez vers le nord-ouest. Parlez au Gardien d'ébène, à Silas, à Spitzpatrick, et à Gustav à l'intérieur de la maison.
    .turnin 13104 >>Rendez la quête Encore une fois sur la Brèche, héros. << !DK
    .turnin 13105 >>Rendez la quête Encore une fois sur la Brèche, héros. << DK
    .accept 13118 >>Acceptez la quête La purification de Fléaulme.
    .accept 13122 >>Acceptez la quête La pierre du Fléau.
    .goto IcecrownGlacier,83.0,73.0
    .accept 13130 >>Acceptez la quête La pierre qui lança une révolution.
    .accept 13135 >>Acceptez la quête Elle pourrait nous tuer tous.
    .goto IcecrownGlacier,83.0,73.1
    .accept 13110 >>Acceptez la quête Les morts sans repos
    .goto IcecrownGlacier,82.9,72.8
step
	#completewith Crusaders
	>>Tuez les membres du Fléau à Fléaulme. Ramassez-les pour leurs Pierres du Fléau.
    .complete 13122,1 --Scourgestone (15)
step
	#completewith Kings
	.use 43153 >> Tuez les Crusaders Réanimés dans Fléaulme. Utilisez l'Eau Sacrée dans vos sacs sur leurs cadavres pour libérer leurs âmes.
    .goto IcecrownGlacier,78.6,69.7,0
    .goto IcecrownGlacier,77.9,66.2,0
    .goto IcecrownGlacier,78.5,64.6,0
    .goto IcecrownGlacier,80.2,65.7,0
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
	#completewith next
    .goto IcecrownGlacier,79.5,68.6,0
    .goto IcecrownGlacier,80.8,64.5,0
    .goto IcecrownGlacier,77.7,63.2,0
    .goto IcecrownGlacier,78.4,65.7,0
	>>Tuez les Underkings Oubliés dans Fléaulme.
    .complete 13118,2 --Forgotten Depths Underking (3)
step
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7,15,0
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7
	>>Tuez les Prêtres Élevés Oubliés principalement situés à l'intérieur des Ziggurats de la zone.
    .complete 13118,1 --Forgotten Depths High Priest (3)
step
	#label Kings
    .goto IcecrownGlacier,79.5,68.6,80,0
    .goto IcecrownGlacier,80.8,64.5,80,0
    .goto IcecrownGlacier,77.7,63.2,80,0
    .goto IcecrownGlacier,78.4,65.7
	>>Tuez les Underkings Oubliés dans la zone.
    .complete 13118,2 --Forgotten Depths Underking (3)
step
	#label Crusaders
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	.use 43153 >> Tuez les Crusaders Réanimés dans Fléaulme. Utilisez l'Eau Sacrée dans vos sacs sur leurs cadavres pour libérer leurs âmes.
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	>>Tuez le Flageller dans Fléaulme. Ramassez le Butin pour la Pierre du Fléau.
    .complete 13122,1 --Scourgestone (15)
step
	#completewith next
    .goto CrystalsongForest,61.1,52.4,0
    .goto CrystalsongForest,58.9,62.8,0
    .goto CrystalsongForest,81.1,72.4,0
    .goto CrystalsongForest,89.2,55.7,0
    .goto CrystalsongForest,61.1,52.4,0
	>>Tuez les créatures Humanoïdes/Morts-vivants/Élémentaires dans la zone. Ramassez le Butin pour leur Energie.
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Ramassez le Butin des souches d'arbres violets sur le sol dans la zone.
    .complete 13130,1 --Crystalline Heartwood (10)
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0,80,0
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0
    .complete 13130,2 --Ancient Elven Masonry (10)
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9,80,0
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9
	>>Ramassez le Butin des petits morceaux de marbre bleu autour des bâtiments elfiques détruits.
step
    .goto CrystalsongForest,61.1,52.4,80,0
    .goto CrystalsongForest,58.9,62.8,80,0
    .goto CrystalsongForest,81.1,72.4,80,0
    .goto CrystalsongForest,89.2,55.7,80,0
    .goto CrystalsongForest,61.1,52.4
	>>Tuez les créatures Humanoïdes/Morts-vivants/Élémentaires dans la zone. Ramassez le Butin pour leur Energie.
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Rendez-vous auprès du gardien d'ébène.
    .turnin 13130 >>Rendre la quête La pierre qui lança une révolution
    .turnin 13135 >>Rendre la quête Elle pourrait nous tuer tous
    .goto IcecrownGlacier,83.0,73.1
    .turnin 13118 >>Rendre la quête La purification de Fléaulme
    .turnin 13122 >>Rendre la quête La pierre du Fléau
    .accept 13125 >>Accepter L'air est immobile
    .goto IcecrownGlacier,83.1,73.0
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entrez dans la hutte.
    .turnin 13110 >>Rendez la quête Les morts sans repos
step
    .goto IcecrownGlacier,77.3,61.9
	.use 43206 >>Entrez dans le bâtiment. Utilisez le Cor de guerre d'Achérus pour invoquer un PNJ pour vous assister dans l'élimination de Salranax.
    .complete 13125,1 --Salranax the Flesh Render (1)
step
    .goto IcecrownGlacier,80.1,61.2
	.use 43206 >>Entrez dans le bâtiment. Utilisez le Cor de guerre d'Achérus pour invoquer un PNJ pour vous assister dans l'élimination de Yath'amon.
    .complete 13125,3 --High Priest Yath'amon (1)
step
    .goto IcecrownGlacier,76.5,53.2
	.use 43206 >>Utilisez le Cor de guerre d'Achérus pour invoquer un PNJ pour vous assister dans l'élimination de Talonox.
    .complete 13125,2 --Underking Talonox (1)
step
    .goto IcecrownGlacier,83.0,72.9
	>>Rendez-vous auprès du gardien d'ébène.
    .turnin 13125 >>Rendre la quête L'air est immobile
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entrez dans la hutte.
    .accept 13139 >>Accepter Dans le cœur gelé du Norfendre
step
    .goto IcecrownGlacier,86.0,75.8
	>>Rendez-vous à Tirion.
    .turnin 13139 >>Rendre la quête Dans le cœur gelé du Norfendre
    .accept 13141 >>Accepter La bataille pour la cime des Croisés
step
    .goto IcecrownGlacier,80.04,71.94
	.use 43243 >>Utilisez la Bannière bénie de la Croisade dans vos sacs au tas de crânes et défendez-la contre les vagues arrivantes. Concentrez-vous sur l'élimination de Halof le Porte-mort quand il apparaît.
    .complete 13141,1 --Battle for Crusaders' Pinnacle (1)
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entrez dans la hutte.
    .turnin 13141 >>Rendre la quête La bataille pour la cime des Croisés
    .accept 13157 >>Accepter La cime des Croisés
step
    .goto IcecrownGlacier,79.8,71.8
	>>Remontez là où vous avez défendu la Bannière. Parlez à Tirion.
    .turnin 13157 >>Rendre la quête La cime des Croisés
    .accept 13068 >>Accepter Une histoire de bravoure
step
    .goto IcecrownGlacier,79.4,72.3
    .fp Crusaders' Pinnacle >> Apprenez le trajet de Vol vers la Cime des Croisés.
step << Horde
    .goto IcecrownGlacier,79.5,72.7
	>>Entrez dans la tour. Parlez à Strongbrow au rez-de-chaussée sur le lit.
    .accept 13224 >>Accepter Le Marteau d'Orgrim
step << Alliance
    .goto Icecrown,79.44,72.84
	>>Entrez dans la tour. Parlez à Ivalius au rez-de-chaussée sur le lit.
    .accept 13225 >>Accepter Le Brise-ciel
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2
	>>Envolez-vous vers Le Brise-ciel, le grand navire de l'Alliance qui vole haut dans les airs. Entrez dans la grande salle à laquelle Maraad fait face à l'arrière et parlez à Justin.
    .turnin 13225 >>Rendre la quête Le Brise-ciel
    .accept 13231 >>Accepter Le front Brisé
step << Alliance
	#label slaves1
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Trouvez Absalan le Pieux. Il marche autour de l'arrière du navire, montant et descendant les escaliers à gauche et à droite.
    .daily 13300 >>Acceptez la quête Esclaves de la saronite.
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Montez les escaliers à l'arrière du navire et parlez à Chevalier-capitaine Drosche.
    .daily 13336 >>Acceptez la quête Le sang des Élus.
    .accept 13341 >>Accepter Des troupes pour l'assaut
step << Alliance
	#requires slaves1
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Prenez les escaliers au milieu du navire (derrière Maraad), puis les escaliers de chaque côté du premier escalier pour descendre à la salle des machines. Parlez à Ingénieur en chef Vrilleboulon.
    .accept 13296 >>Accepter Rendons-nous à Ymirheim !
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Entrez dans la grande salle à l'avant. Parlez à Saccageur-des-cieux Korm Noire-balafre.
    .turnin 13224 >>Rendre la quête Le Marteau d'Orgrim
    .accept 13228 >>Acceptez la quête Le front Brisé
step << Horde
	>> Acceptez les quêtes de Porteguerre Davos Rioht et Frère Keltan. Ils se promènent près des escaliers et du pont inférieur
    .daily 13302 >>Acceptez la quête Esclaves de la saronite.
    .daily 13330 >>Acceptez la quête Le sang des Élus.
    .accept 13340 >>Acceptez la quête Des troupes pour l'assaut
step << Horde
	>> Rendez-vous au pont inférieur du navire. Parlez à l'Ingénieur en chef Cuivregrif
    .accept 13293 >>Acceptez la quête Rendons-nous à Ymirheim !
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Envolez-vous vers Commandant Koup (sur le sol)
    .turnin 13341 >>Rendez la quête Des troupes pour l'assaut
    .daily 13309 >>Acceptez la quête Attaque aérienne.
	>>Vous pouvez sauter la quête quotidienne si vous le souhaitez
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Faites un clic droit sur la tourelle au sommet de la Machine volante pour lancer la quête.
	.isOnQuest 13309
step << Alliance
	-- completionist
	>>Tirez sur tous les Lance Armes à feu sur les bâtiments en volant
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Retournez à Koup
    .turnin 13309 >>Rendez la quête Attaque aérienne.
	.isQuestComplete 13309
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Parlez au Chef d'escouade. Il n'est peut-être pas ici si quelqu'un d'autre a commencé la quête; il a un temps de réapparition d'environ 6 minutes et réapparaît à environ 10 mètres à droite de Koup
	>>Vous pouvez sauter cette quête. C'est juste une quête quotidienne qui s'intègre bien avec les autres
    .daily 13284 >>Acceptez la quête Assaut terrestre.
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tuez les Vrykul partout dans Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
step << Alliance
    .goto Icecrown,59.89,53.50
	>> Escortez les troupes. Laissez certaines troupes retenir les monstres si nécessaire.
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Pénétrez dans la Saronite Mine. Parlez aux esclaves pour les sauver (parfois ils peuvent vous attaquer).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Tuez les Vrykul partout dans Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
	#completewith next
    .goto Icecrown,57.01,62.53
	>>Envolez-vous vers Frazzle (sur le sol)
    .turnin 13296 >>Rendez la quête Rendons-nous à Ymirheim !
step << Alliance
    .goto Icecrown,57.01,62.53
	>>REMARQUE : Cette quête vous signale pour le PVP. Cependant, c'est TRÈS facile.
    .daily 13280 >>Acceptez la quête Le roi de la montagne
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Clic droit sur le robot ressemblant à un gnome
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Utilisez "Réacteurs de saut" (3) pour escalader rapidement la falaise (il n'y a pas de temps de recharge). Une fois que vous arrivez au sommet de la montagne, utilisez "Planter l'Étendard de bataille de l'Alliance" (1) pour planter l'étendard. Ensuite, quittez le véhicule.
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
	>>Cliquez sur le bouton Sortir du véhicule
    .turnin 13280 >>Rendez la quête Le roi de la montagne
	.isQuestComplete 13280
step << Horde
	>>Envolez-vous vers Commandant Xutjja (il est sur le sol - pas sur le navire)
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13340 >>Rendez la quête Des troupes pour l'assaut
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Acceptez la quête Attaque aérienne.
	>>Vous pouvez sauter la quête quotidienne si vous le souhaitez
step << Horde
	#completewith next
	.vehicle >>Courez vers la Tourelle de suppression Kor'kron et cliquez dessus.
    .goto IcecrownGlacier,59.5,45.94
	.isOnQuest 13310
step << Horde
	>>Tirez sur tous les Lance Armes à feu sur les bâtiments pendant que vous volez. Les infiltrateurs tomberont à mesure que vous le ferez
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Rendez la quête Attaque aérienne.
	.isQuestComplete 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Parlez au Chef d'escouade. Il ne sera peut-être pas ici si quelqu'un d'autre a commencé la quête avec un temps de réapparition d'environ 6 minutes
    .daily 13301 >>Acceptez la quête Assaut terrestre.
	>>Vous pouvez sauter cette quête. C'est juste une quête quotidienne qui s'intègre bien avec les autres
step << Horde
	#sticky
	#label ymirheimslain
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tuez les Vrykul partout dans Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>> Escortez les troupes
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Pénétrez dans la Saronite Mine. Parlez aux esclaves pour les sauver (parfois ils peuvent vous attaquer).
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
	#requires ymirheimslain
    .goto IcecrownGlacier,51.9,57.6
    .turnin 13293 >>Rendez la quête Rendons-nous à Ymirheim !
    .daily 13283 >>Acceptez la quête Le roi de la montagne
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Clic droit sur le robot ressemblant à un gnome
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Utilisez les "Réacteurs de saut" (3) pour escalader rapidement la falaise (il n'a pas de temps de recharge). Une fois au sommet de la montagne, utilisez "Planter l'Étendard de bataille de la Horde" (1) pour planter le drapeau. Puis, quittez le véhicule.
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
	>>Cliquez sur le bouton Sortir du véhicule
    .turnin 13283 >>Rendez la quête Le roi de la montagne
	.isQuestComplete 13283
step << Alliance
    .goto IcecrownGlacier,66.4,66.5
	>>Trouvez et parlez à un soldat mourant près du front brisé
    .complete 13231,1 --Dying Soldier Questioned (1)
    .accept 13232 >>Acceptez la quête Achevez-moi !
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,69.1,62.1
	>>Trouvez plus de Soldats mourants dans la région et terminez-les.
	.complete 13232,1
	.skipgossip
step << Horde
    .goto IcecrownGlacier,67.7,68.4
	>>Trouvez et parlez à un Berserker mourant près du front Brisé
    .complete 13228,1 --Dying Berserker Questioned (1)
    .accept 13230 >>Acceptez la quête Vengez-moi !
step << Horde
    .goto IcecrownGlacier,68.7,64.2
	>>Trouvez plus de Soldats mourants dans la région et terminez-les.
	.complete 13230,1 --Dying Alliance Soldiers Slain (5)
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand navire Alliance qui vole haut dans les airs (vous pouvez le voir sur votre carte). Allez dans la grande pièce vers laquelle Maraad est orienté à l'arrière et parlez à Justin
    .turnin 13231 >>Rendez la quête Le front Brisé
    .turnin 13232 >>Rendez la quête Achevez-moi !
    .accept 13286 >>Acceptez la quête … Toute l'aide qu'on peut obtenir
    .accept 13290 >>Acceptez la quête Votre attention, s'il vous plaît
step << Alliance
	#label slaves2
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Trouvez Absalan le Pieux. Il se promène à l'arrière du navire, montant et descendant les escaliers à gauche et à droite
    .turnin 13300 >>Rendez la quête Esclaves de la saronite
	.isQuestComplete 13300
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Montez les escaliers à l'arrière du navire et parlez au Chevalier-capitaine Drosche
    .turnin 13336 >>Rendez la quête Le sang des Élus
	.isQuestComplete 13336
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Parlez à Thassarian au coin arrière gauche du navire
    .turnin 13286 >>Rendez la quête … Toute l'aide qu'on peut obtenir
    .accept 13287 >>Acceptez la quête Titiller l'ennemi
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Prenez les escaliers au milieu du navire (derrière Maraad), puis les escaliers de chaque côté du premier escalier pour descendre à la salle des machines. Parlez à l'Ingénieur en chef Vrilleboulon
    .turnin 13290 >>Rendez la quête Votre attention, s'il vous plaît
    .accept 13291 >>Acceptez la quête Technologie empruntée
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Parlez à Saccageur-des-cieux Korm Noire-balafre dans la pièce avant
    .turnin 13228 >>Rendez la quête Le front Brisé
    .turnin 13230 >>Rendez la quête Vengez-moi !
    .accept 13238 >>Acceptez la quête Bon à quelque chose ?
    .accept 13260 >>Acceptez la quête Les ennemis de mes ennemis…
step << Horde
	>>Parlez à Koltira à côté de vous
    .turnin 13260 >>Rendez la quête Les ennemis de mes ennemis…
    .accept 13237 >>Acceptez la quête Titiller l'ennemi
step << Horde
	>>Parlez à Frère Keltan se promenant près des escaliers
    .turnin 13302 >>Rendez la quête Esclaves de la saronite
	.isQuestComplete 13302
step
	>>Parlez à Porteguerre Davos Rioht. Il patrouille également le pont inférieur
    .turnin 13330 >>Rendez la quête Le sang des Élus
	.isQuestComplete 13330
step << Horde
	>> Rendez-vous au pont inférieur du navire. Parlez à l'Ingénieur en chef Cuivregrif
    .turnin 13238 >>Rendez la quête Bon à quelque chose ?
    .accept 13239 >>Acceptez la quête Volatilité
step << Alliance
	>>Retournez auprès de Commandant Koup.
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Rendez la quête Assaut terrestre
	.isQuestComplete 13284
step << Horde
	>>Retournez au Commandant Xutjja
    .goto IcecrownGlacier,58.3,46.2
    .turnin 13301 >>Rendez la quête Assaut terrestre
	.isQuestComplete 13301
step << Alliance
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Ramassez les pièces d'équipement abandonné éparpillées sur le sol autour du Front Brisé. Utilisez la Solution contrebandée dans vos sacs quand vous avez une de chaque pièce d'équipement (vous n'avez pas besoin d'attendre le RP)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Ramassez les pièces d'équipement abandonné éparpillées sur le sol autour du Front Brisé. Utilisez l'Huile volatile de Copperclaw dans vos sacs quand vous avez une de chaque pièce d'équipement (vous n'avez pas besoin d'attendre le RP)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Tuez les Abominations, les Adeptes et les Nécromanciens dans la zone
    .complete 13287,1 --Hulking Abominations Slain (5)
    .complete 13287,3 --Shadow Adepts Slain (5)
    .complete 13287,2 --Malefic Necromancers Slain (5)
step << Horde
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Tuez les Abominations, les Adeptes et les Nécromanciens dans la zone
    .complete 13237,1 --Hulking Abominations Slain (5)
    .complete 13237,3 --Shadow Adepts Slain (5)
    .complete 13237,2 --Malefic Necromancers Slain (5)
step << Alliance
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Ramassez les pièces d'équipement abandonné éparpillées sur le sol autour du Front Brisé. Utilisez la Solution contrebandée dans vos sacs quand vous avez une de chaque pièce d'équipement (vous n'avez pas besoin d'attendre le RP)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Ramassez les pièces d'équipement abandonné éparpillées sur le sol autour du Front Brisé. Utilisez l'Huile volatile de Copperclaw dans vos sacs quand vous avez une de chaque pièce d'équipement (vous n'avez pas besoin d'attendre le RP)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand navire de l'Alliance qui vole haut dans les airs. Parlez à Thassarian au coin arrière gauche du navire
    .turnin 13287 >>Rendez la quête Titiller l'ennemi
    .accept 13288 >>Acceptez la quête C'est abominable !
    .accept 13294 >>Acceptez la quête Contre les géants
step << Alliance
	#requires notdead
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Prenez les escaliers au milieu du navire (derrière Maraad), puis les escaliers de chaque côté du premier escalier pour descendre à la salle des moteurs. Parlez à l'Ingénieur en chef Vrilleboulon
    .turnin 13291 >>Rendez la quête Technologie empruntée
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Parlez à Koltira dans la salle avant du navire
    .turnin 13237 >>Rendez la quête Titiller l'ennemi
    .accept 13264 >>Acceptez la quête C'est abominable !
	.accept 13277 >>Acceptez la quête Contre les géants
step << Horde
	>> Rendez-vous au pont inférieur du navire. Parlez à l'Ingénieur en chef Cuivregrif
    .turnin 13239 >>Rendre la quête Volatilité
step
    .goto IcecrownGlacier,68.3,61.5
	>>Tuez les Abominations monstrueuses dans la zone et ramassez-les pour leurs Viscères d'abomination Transi
	.use 43968 >> Utilisez le Kit de réanimation d'abominations avec quelques Viscères dans vos sacs pour convoquer une Abomination que vous pouvez contrôler. Collectez autant de mobs que possible en faisant attaquer les Abominations par eux et en attirant l'aggro, puis utilisez "Plein à craquer" pour tuer tous les mobs près de votre Abomination (les mobs doivent être en combat pour obtenir leur crédit)
	>>Si vous n'avez plus de Viscères, allez tuer d'autres Abominations monstrueuses. Vous ne pouvez avoir qu'un viscère à la fois.
	.collect 43966,1,13288,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13288,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13288,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13288,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13264,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13264,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13264,2 << Horde --Vicious Geists Exploded (15)
    .complete 13264,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13288 << Alliance
	.isOnQuest 13264 << Horde
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Rendez-vous au Marteau d'Orgrim. Parlez à Koltira
    .turnin 13264 >>Rendre la quête C'est abominable !
    .accept 13351 >>Acceptez la quête Avant-première
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Rendez-vous au Brise-ciel. Parlez à Thassarian
    .turnin 13288 >>Rendre la quête C'est abominable !
    .accept 13315 >>Acceptez la quête Avant-première
step << Alliance
	>>Volez au-dessus des points de passage sur la plateforme au-dessus du grand mur
    .complete 13315,1 --1/1 Aldur'thar South Visited
    .goto Icecrown,55.64,46.73
    .complete 13315,2 --1/1 Aldur'thar Central Visited
    .goto Icecrown,54.10,43.43
    .complete 13315,3 --1/1 Aldur'thar North Visited
    .goto Icecrown,54.09,35.33
    .complete 13315,4 --1/1 Aldur'thar Northwest Visited
    .goto Icecrown,52.06,34.21
step << Horde
	>>Volez au-dessus des points de passage sur la plateforme au-dessus du grand mur
    .complete 13351,1 --Aldur'thar South Visited (1)
    .goto IcecrownGlacier,55.3,43.9
    .complete 13351,2 --Aldur'thar Central Visited (1)
    .goto IcecrownGlacier,55.1,41.6
    .complete 13351,3 --Aldur'thar North Visited (1)
    .goto IcecrownGlacier,53.7,35.5
    .complete 13351,4 --Aldur'thar Northwest Visited (1)
    .goto IcecrownGlacier,51.9,34.8
step << Alliance
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Tuez les Horreurs suppurantes dans la zone. Ramassez-les pour leurs Aiguillons. Cette quête est TRÈS difficile, groupez-vous si nécessaire.
    .complete 13294,1 --Pustulant Spine (5)
step << Horde
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Tuez les Horreurs suppurantes dans la zone. Ramassez-les pour leurs Aiguillons. Cette quête est TRÈS difficile, groupez-vous si nécessaire.
    .complete 13277,1 --Pustulant Spine (5)
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Parlez à Koltira dans la salle avant du navire
    .turnin 13351 >>Rendez la quête Avant-première
	.turnin 13277 >>Rendez la quête Contre les géants
    .accept 13355 >>Acceptez la quête Impossible à reproduire
    .accept 13354 >>Acceptez la quête La chaîne de commandement
    .accept 13352 >>Acceptez la quête Attraper et lâcher.
	.accept 13279 >>Acceptez la quête La chimie amusante
    .accept 13278 >>Acceptez la quête Coprous le Profané
step << Horde
	>> Rendez-vous au pont inférieur du navire. Parlez à l'Ingénieur en chef Cuivregrif
    .accept 13379 >>Acceptez la quête Technologie verte
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand navire de l'Alliance qui vole haut dans les airs. Parlez à Thassarian au coin arrière gauche du navire
    .turnin 13315 >>Rendez la quête Avant-première
    .turnin 13294 >>Rendez la quête Contre les géants
    .accept 13318 >>Acceptez la quête Attraper et lâcher.
    .accept 13319 >>Acceptez la quête La chaîne de commandement
    .accept 13320 >>Acceptez la quête Impossible à reproduire
    .accept 13295 >>Acceptez la quête La chimie amusante
    .accept 13298 >>Acceptez la quête Coprous le Profané
step << Alliance
	>>Prenez les escaliers au milieu du navire (derrière Maraad), puis les escaliers de chaque côté du premier escalier pour descendre à la salle des moteurs. Parlez à l'Ingénieur en chef Vrilleboulon
    .accept 13383 >>Acceptez la quête Technologie empruntée
step
	#completewith next
    .goto IcecrownGlacier,63.3,62.1,25 >> Entrez par la porte vers l'intérieur de Mord'rethar. Elle se trouve au deuxième niveau gardée par les Pestiférés
	.isOnQuest 13295 << Alliance
	.isOnQuest 13279 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Utilisez le Fluide spinal pustulant dans vos sacs sur les chaudrons verts bouillonnants. Tuez les créatures qui apparaissent, et utilisez le Fluide spinal à nouveau quand vous êtes invité à « Ajouter du fluide bientôt ». Cette quête est TRÈS difficile, groupez-vous si nécessaire.
    .complete 13295,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13279,1 << Horde --Batch of Plague Neutralized (1)
step
    .goto IcecrownGlacier,60.8,62.2
	>>Tuez Coprous le Profané à l'intérieur de Mord'rethar. Cette quête est TRÈS difficile, groupez-vous si nécessaire.
    .complete 13298,1 << Alliance --Coprous the Defiler Slain (1)
    .complete 13278,1 << Horde --Coprous the Defiler Slain (1)
step
	#sticky
	#label darksub
	>>Rendez-vous à la plateforme au-dessus du mur et tuez les Initiés amers dans la zone. Ramassez-les pour leurs Orbes d'illusion
	.use 44246 >>Utilisez l'Orbe d'illusion sur les Asservisseurs Sombres dans la zone lorsque vous êtes hors de combat.
	.collect 44246,3,13352,1,-1 << Horde --Orb of Illusion (3 -1)
	.collect 44246,3,13318,1,-1 << Alliance --Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13352,1 << Horde --Dark Subjugator dragged and dropped (3)
    .complete 13318,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
--	.unitscan Dark Subjugator
--X too many in the area, unitscan would be awkward
step
    .goto IcecrownGlacier,53.9,46.1
	>>Tuez Surveillant Faedris dans la grande tente
    .complete 13354,1 << Horde --Overseer Faedris Killed (1)
	.complete 13319,1 << Alliance --Overseer Faedris Killed (1)
step
	#requires darksub
	.use 44251 >> Utilisez le Flacon de séparation sur les chaudrons à l'extérieur à Aldur'thar
    .complete 13355,3 << Horde --Dark Sample Collected (1)
	.complete 13320,3 << Alliance --Dark Sample Collected (1)
    .goto IcecrownGlacier,49.7,34.4
    .complete 13355,2 << Horde --Green Sample Collected (1)
	.complete 13320,2 << Alliance --Green Sample Collected (1)
    .goto IcecrownGlacier,49.1,34.2
    .complete 13355,1 << Horde --Blue Sample Collected (1)
    .complete 13320,1 << Alliance --Blue Sample Collected (1)
    .goto IcecrownGlacier,48.9,33.2
step
	>>Tuez Surveillant Savryn et Jhaeqon sous les grandes tentes. Ensuite montez d'un niveau vers Veraj (sous la grande tente) et tuez-le
    .complete 13354,4 << Horde --Overseer Savryn Killed (1)
	.complete 13319,4 << Alliance --Overseer Savryn Killed (1)
    .goto IcecrownGlacier,49.4,31.2
    .complete 13354,2 << Horde --Overseer Jhaeqon Killed (1)
	.complete 13319,2 << Alliance --Overseer Jhaeqon Killed (1)
    .goto IcecrownGlacier,54.7,32.6
    .complete 13354,3 << Horde --Overseer Veraj Killed (1)
	.complete 13319,3 << Alliance --Overseer Veraj Killed (1)
    .goto IcecrownGlacier,53.7,29.2
step << Alliance
	>>Envolez-vous vers la petite plateforme dans l'air. Parlez à Killohertz
	.goto IcecrownGlacier,53.96,42.93
	.turnin 13383 >>Rendez la quête Killohertz
	.accept 13380 >>Acceptez la quête Mener la charge
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Parlez à Karen pour monter dans un bombardier. Utilisez Charger le bouclier (1) pour obtenir 100 boucliers puis basculez vers Soute à bombe (5) et commencez à bombarder les Fléau en dessous jusqu'à ce que tous les Fantassins et les Capitaines soient tués. Basculez vers Tourelle antiaérienne (4) et commencez à utiliser Roquettes anti-aériennes (1) pour tirer sur les Gargouilles dans l'air. Une fois terminé, appuyez sur le bouton Sortir du véhicule et vous serez renvoyé sur la plateforme
	.complete 13380,1 -- Bombardment Infantry slain (40)
	.complete 13380,2 -- Bombardment Captain slain (8)
	.complete 13380,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Alliance
	>>Parlez à Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13380 >>Rendez la quête Mener la charge
step << Horde
	>>Envolez-vous vers la petite plateforme dans l'air. Parlez à Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .turnin 13379 >>Rendez la quête Technologie verte
    .accept 13373 >>Acceptez la quête Les avantages de la science marginale
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Parlez à Rizzy pour monter dans un bombardier. Utilisez Charger le bouclier (1) pour obtenir 100 boucliers puis basculez vers Soute à bombe (5) et commencez à bombarder les Fléau en dessous jusqu'à ce que tous les Fantassins et les Capitaines soient tués. Basculez vers Tourelle antiaérienne (4) et commencez à utiliser Roquettes anti-aériennes (1) pour tirer sur les Gargouilles dans l'air. Une fois terminé, appuyez sur le bouton Sortir du véhicule et vous serez renvoyé sur la plateforme
	.complete 13373,1 -- Bombardment Infantry slain (40)
	.complete 13373,2 -- Bombardment Captain slain (8)
	.complete 13373,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Horde
	>>Parlez à Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13373 >>Rendez la quête Les avantages de la science marginale
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand vaisseau Alliance qui vole haut dans les airs. Parlez à Thassarian au coin arrière gauche du vaisseau
    .turnin 13318 >>Rendez la quête Attraper et lâcher
    .turnin 13319 >>Rendez la quête La chaîne de commandement
    .turnin 13295 >>Rendez la quête La chimie de base
    .turnin 13298 >>Rendez la quête Coprous le Profané
    .accept 13342 >>Acceptez la quête Il n'est pas nuisible.
    .accept 13345 >>Acceptez la quête Besoin d'infos supplémentaires
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Montez les escaliers au milieu du vaisseau (derrière Maraad), puis les escaliers de chaque côté du premier escalier pour descendre dans la salle des moteurs. Parlez à l'Ingénieur en chef Vrilleboulon
    .turnin 13320 >>Rendez la quête Impossible à reproduire
    .accept 13321 >>Acceptez la quête Testez-le à nouveau.
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Entrez dans la grande salle à l'avant. Parlez à Kolitra
	.turnin 13352 >>Rendez la quête Attraper et lâcher
    .turnin 13354 >>Rendez la quête La chaîne de commandement
    .turnin 13279 >>Rendez la quête La chimie de base
    .turnin 13278 >>Rendez la quête Coprous le Profané
    .accept 13358 >>Acceptez la quête Il n'est pas nuisible.
    .accept 13366 >>Acceptez la quête Besoin d'infos supplémentaires
step << Horde
	>> Rendez-vous au pont inférieur du vaisseau. Parlez à l'Ingénieur en chef Cuivregrif
    .turnin 13355 >>Rendez la quête Impossible à reproduire
    .accept 13356 >>Acceptez la quête Testez-le à nouveau.
step
	#label taintedessence
	#sticky
    .goto IcecrownGlacier,49.7,34.4,0,0
	.use 44307 >>Utilisez le Tonique du culte dilué dans vos sacs pour obtenir le Bonus "Sombre discernement". Cela vous permet de ramasser les Essences Altérées de tous les humanoïdes que vous tuez dans la zone.
	.collect 44301,10,13356,1 << Horde
	.collect 44301,10,13321,1 << Alliance
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Tuez 5 Serviteurs Asservis (Marcheurs du Vide). Utilisez le Bâtonnet de siphonnage sur leurs cadavres pour leur Matière Noire.
	.collect 44434,5,13342,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13358,1 << Horde --Dark Matter (5)
step
    .goto IcecrownGlacier,53.8,33.6
	>>Cliquez sur la Pierre d'invocation.
	.complete 13342,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13358,1 << Horde --Dark Messenger Summoned (1)
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Entrez à l'intérieur d'Aldur'thar
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
    .goto IcecrownGlacier,53.1,31.1,60,0
    .goto IcecrownGlacier,53.1,29.2,60,0
    .goto IcecrownGlacier,50.9,29.0,60,0
    .goto IcecrownGlacier,50.9,30.4,60,0
    .goto IcecrownGlacier,53.1,31.1
	>>Tuez les Chercheurs Sectateurs dans la région. Récupérez le Butin de leurs Pages de recherche
	.collect 44459,1 --Cult of the Damned Research - Page 1 (1)
	.collect 44460,1 --Cult of the Damned Research - Page 2 (1)
	.collect 44461,1 --Cult of the Damned Research - Page 3 (1)
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
	#sticky
	#label Thesis
    .goto IcecrownGlacier,49.7,34.4
	.use 44459 >> Cliquez sur l'une des pages de recherche dans vos sacs pour les combiner en Thèse
    .complete 13366,1 << Horde --Cult of the Damned Thesis (1)
	.complete 13345,1 << Alliance --Cult of the Damned Thesis (1)
step
	#requires taintedessence
    .goto IcecrownGlacier,49.7,34.4
	.use 44301
	.use 44304 >> Clic droit sur les Essences Altérées dans vos sacs pour les transformer en une Masse Gougeante. Lancez-la dans un chaudron.
	.complete 13321,1 << Alliance
	.complete 13356,1 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand vaisseau Alliance qui vole haut dans les airs. Parlez à Thassarian au coin arrière gauche du vaisseau
    .turnin 13342 >>Rendez la quête Il n'est pas nuisible
    .turnin 13345 >>Rendez la quête Besoin d'infos supplémentaires
    .accept 13346 >>Acceptez la quête Pas de repos pour les malfaisants
    .accept 13332 >>Acceptez la quête Lever les barricades
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Montez les escaliers au milieu du vaisseau (derrière Maraad), puis les escaliers de chaque côté du premier escalier pour descendre dans la salle des moteurs. Parlez à l'Ingénieur en chef Vrilleboulon
    .turnin 13321 >>Rendez la quête Testez-le à nouveau
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Entrez dans la grande salle à l'avant. Parlez à Kolitra
    .turnin 13358 >>Rendez la quête Il n'est pas nuisible
	.turnin 13366 >>Rendez la quête Besoin d'infos supplémentaires
    .accept 13367 >>Acceptez la quête Pas de repos pour les malfaisants
    .accept 13306 >>Acceptez la quête Lever les barricades
step << Horde
	>> Rendez-vous au pont inférieur du vaisseau. Parlez à l'Ingénieur en chef Cuivregrif
    .turnin 13356 >>Rendez la quête Testez-le à nouveau
step
    .goto IcecrownGlacier,52.5,42.0,70,0
    .goto IcecrownGlacier,51.3,37.1,70,0
    .goto IcecrownGlacier,47.1,37.4,70,0
    .goto IcecrownGlacier,50.0,44.9,70,0
    .goto IcecrownGlacier,52.5,42.0
	.use 44127 >>Utilisez le Kit de construction de barricade dans vos sacs à la Vallée des Héros défunts sur les lueurs violettes qui apparaissent
    .complete 13332,1 << Alliance --Barricades constructed (8)
	.complete 13306,1 << Horde --Barricades constructed (8)
step
	>>Cette quête est TRÈS difficile, groupez-vous pour elle si nécessaire
	>>Ouvrez les coffres à l'intérieur d'Aldur'thar et ramassez le Crâne, le Cœur, le Sceptre et les Robes d'Alumeth
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Cette quête est TRÈS difficile, groupez-vous pour elle si nécessaire
	.use 44476 >> Cliquez sur l'un des objets dans vos sacs pour les combiner en Restes d'Alumeth
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Cette quête est TRÈS difficile, groupez-vous pour elle si nécessaire
	.use 44480 >> Utilisez les Restes d'Alumeth devant le cristal brillant pour le convoquer. Tuez-le
    .complete 13346,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13367,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand vaisseau Alliance qui vole haut dans les airs. Parlez à Thassarian au coin arrière gauche du vaisseau
    .turnin 13346 >>Rendre la quête Pas de repos pour les malfaisants
    .turnin 13332 >>Rendez la quête Lever les barricades
	.accept 13337 >>Acceptez la quête Le rempart Mur-de-fer
	.accept 13334 >>Acceptez la quête Bannières tachées de sang
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Entrez dans la grande salle à l'avant. Parlez à Kolitra
    .turnin 13367 >>Rendre la quête Pas de repos pour les malfaisants
    .turnin 13306 >>Rendez la quête Lever les barricades
	.accept 13312 >>Acceptez la quête Le rempart Mur-de-fer
	.accept 13307 >>Acceptez la quête Bannières tachées de sang
step
    .goto IcecrownGlacier,51.3,40.3,70,0
    .goto IcecrownGlacier,49.1,43.8
	>>Tuez les Convertisseurs du Fléau dans la région
    .complete 13334,3 << Alliance --Scourge Converter (5)
    .complete 13307,3 << Horde --Scourge Converter (5)
step
    .goto IcecrownGlacier,45.5,46.5
	>>Cette quête est TRÈS difficile, groupez-vous pour elle si nécessaire
	.use 44186 >> Montez vers le balcon, puis utilisez la Rune de distorsion dans vos sacs à l'Orbe de Grimkor. Tuez Grimkor le Malfaisant
    .complete 13337,1 << Alliance --Grimkor the Wicked (1)
    .complete 13312,1 << Horde --Grimkor the Wicked (1)
step
    .goto IcecrownGlacier,47.1,48.5,70,0
    .goto IcecrownGlacier,41.9,48.4,70,0
    .goto IcecrownGlacier,41.9,54.3,70,0
    .goto IcecrownGlacier,46.1,53.1
	>>Tuez les Porte-bannière du Fléau et les Héros convertis dans la région
    .complete 13334,1 << Alliance --Scourge Banner-Bearer (5)
    .complete 13334,2 << Alliance --Converted Hero (20)
    .complete 13307,1 << Horde --Scourge Banner-Bearer (5)
    .complete 13307,2 << Horde --Converted Hero (20)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Envolez-vous vers Le Brise-ciel, le grand vaisseau Alliance qui vole haut dans les airs. Parlez à Thassarian au coin arrière gauche du vaisseau
	.turnin 13334 >>Rendre la quête Bannières tachées de sang
	.turnin 13337 >>Rendre la quête Le rempart Mur-de-fer
	>>Entrez dans la grande salle que Maraad regarde sur Le Brise-ciel et parlez à Justin
	.accept 13314 >>Acceptez la quête Recevoir le message
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Utilisez le Fusil à fléchette dans vos sacs sur les Éclaireurs du Marteau d'Orgrim (vous pouvez l'utiliser en étant sur votre monture volante). Dépouillez leurs cadavres pour les Ordres.
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Entrez dans la grande salle que Maraad regarde sur Le Brise-ciel et parlez à Justin
	.turnin 13314 >>Rendre la quête Get The Message
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Entrez dans la grande salle à l'avant. Parlez à Kolitra
	.turnin 13312 >>Rendre la quête Le rempart Mur-de-fer
	.turnin 13307 >>Rendre la quête Bannières tachées de sang
step << Horde
	>>Parlez à Krom Blackscar à côté de vous
	.accept 13313 >>Acceptez la quête Aveugler les yeux dans le ciel
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Utilisez le SGM-3 dans vos sacs sur les Chasseurs de reconnaissance du Casse-ciel dans les airs.
	.complete 13313,1 --Skybreaker Recon Fighters shot down (6)
step << Horde
	>> Envolez-vous vers Le Marteau d'Orgrim, le grand navire de la Horde qui vole haut dans les airs. Entrez dans la grande salle à l'avant. Parlez à Krom Blackscar
	.turnin 13313 >>Rendre la quête Aveugler les yeux dans le ciel
step
	+Si vous avez sauté ou n'avez pas terminé l'une des quêtes de ce guide, veuillez recommencer le guide et les terminer. Pour ce faire, cliquez sur l'engrenage et retournez au guide La Couronne de glace Gunship Déverrouiller Quêtes journalières Quêtes.
	>>Si vous les avez tous complétés, vous pouvez commencer à utiliser le circuit La Couronne de glace Gunship Quêtes journalières Quêtes Route. Notez que certains ne seront peut-être pas disponibles aujourd'hui car vous avez peut-être déjà complété certaines quêtes journalières.
]])
