if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#wotlk
#cata
#group RestedXP Northrend Quêtes journalières
#name Meilleure route de quêtes journalières pour l'or par heure

--20 daily quests total
--5(rep depending) quests from Hodir (didnt include dragon flying one. its terrible) may not be 5 quests for everyone. should be at least 3 though
--6 from icecrown. quests from Ebon Blade
--9 from icecrown. quests from gunship/surroundings
--all of these quests require pre quests to be completed/unlocked. each section has checks to see if they have completed pre quests or not. if they havnt they're told to do pre quest guide
--gives the player still room to do daily heroic+normal as well as jc/cooking/fishing daily quests


--5 Quest section for The Sons of Hodir Daily Quests. Didn't include slaying dragon quest because its really bad/slow

step
	+Pour déverrouiller les quêtes journalières de The Sons of Hodir, vous devez d'abord compléter leur chaîne de quêtes dans Les pics Foudroyés. Consultez le guide de déverrouillage des quêtes journalières de The Sons of Hodir pour déverrouiller les quêtes journalières
	.isQuestAvailable 13047
step
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des Worgs de givre et Arngrim l'Insatiabilité
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acceptez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.daily 13046 >> Acceptez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et la Mère des Worgs de givre
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acceptez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir et le Heaume de Hodir
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Tuez les Revenants Fragiles. Ramassez leur Butin d'Essence de glace
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Utilisez l'Essence de glace à côté de la Ferraille fumante autour de L'enclume de Fjorn. Ramassez le Morceau de fer gelé
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Tuez les Ancêtres Niffelem et les Frostborn Tourmentés dans la zone. Utilisez la Corne de Hodir dans vos sacs sur leurs cadavres pour les libérer
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Utilisez le Crok du Worg Éthérien dans vos sacs sur le cadavre du Worg À terre. Suivez le Worg Éthérien de givre jusqu'à ce qu'il repère un Infiltrateur de la Forge de tempête, puis tuez-le
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Utilisez la Dent d'Arngrim dans vos sacs sur le Jormungar Errant. Infligez-lui des dégâts jusqu'à 30% de santé ou moins, mais ne le tuez pas
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Utilisez le Crok du Worg Éthérien dans vos sacs sur le cadavre du Worg À terre. Suivez le Worg Éthérien de givre jusqu'à ce qu'il repère un Infiltrateur de la Forge de tempête, puis tuez-le
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Tuez les Huiles Visqueuses dans la Caverne de l'Hibernation. Ramassez leur Butin d'Huile
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des Worgs de givre et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Rendez la quête Nourrir Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 13046 >> Rendez la quête Nourrir Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et la Mère des Worgs de givre
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des Worgs de givre et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Rendez la quête Nourrir Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendez la quête Nourrir Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et la Mère des Worgs de givre
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Retournez à Dun Niffelem
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir et le Heaume de Hodir
    .turnin -12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
step << Mage
	#completewith next
	.zone Dalaran >> Téléportez-vous à Dalaran
	>>Envolez-vous vers La Couronne de glace
step << !Mage
	#completewith next
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Dalaran si elle est définie là-bas ou quelque part près de la Couronne de glace.
	>>Envolez-vous vers La Couronne de glace

--9 Quest section from Icecrown Gunship and close surroundings section. 6 Quests from the gunship, other 3 from on the ground/in Ymirheim

step << Alliance
	+Pour déverrouiller toutes les quêtes journalières du navire d'assaut de la Couronne de glace, vous devez d'abord terminer la chaîne de quêtes préliminaires. Veuillez utiliser le guide de déverrouillage des quêtes journalières du navire d'assaut de la Couronne de glace pour déverrouiller toutes les quêtes journalières.
	.isQuestAvailable 13314,13342,13321,13318
--	13314  Get the Message
-- 	13342  Not a Bug
--	13321  Retest Now
--	13318  Drag and Drop

step << Horde
	+Pour déverrouiller toutes les quêtes journalières du navire d'assaut de la Couronne de glace, vous devez d'abord terminer la chaîne de quêtes préliminaires. Veuillez utiliser le guide des quêtes préliminaires du navire d'assaut de la Couronne de glace pour déverrouiller toutes les quêtes journalières.
	.isQuestAvailable 13313,13356,13352,13358
--	13313  Blinding the Eyes in the Sky
--	13356  Retest Now
--	13352  Drag and Drop
--	13358  Not a Bug

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>À La Couronne de glace, envolez-vous vers le navire d'assaut de l'Alliance, Le Brise-ciel.
	>>Parlez à Chevalier-capitaine Drosche, Absalan le Pieux, Grand capitaine Justin Bartlett, Ingénieur en chef Vrilleboulon et Thassarian.
	>>Ils sont positionnés respectivement à l'arrière gauche du navire, sur le pont supérieur, dans la cale centrale et en dessous sur le pont inférieur.
    .daily 13336 >>Acceptez la quête Le sang des Élus.
    .daily 13300 >>Acceptez la quête Esclaves de la saronite.
    .daily 13322 >>Acceptez la quête Testez-le à nouveau.
    .daily 13323 >>Acceptez la quête Attraper et lâcher.
	.daily 13344 >>Acceptez la quête Il n'est pas nuisible.
    .daily 13333 >>Acceptez la quête Capturer plus de dépêches.
step << Horde
	.goto IcecrownGlacier,67.00,38,0
	>>À La Couronne de glace, envolez-vous vers le navire d'assaut de la Horde, Le Marteau d'Orgrim.
	>>Parlez à Porteguerre Davos Rioht, Frère Keltan, Saccageur-des-cieux Korm Noire-balafre, Ingénieur en chef Cuivregrif et Koltira Tissemort.
	>>Ils sont positionnés respectivement dans la cale avant principale, patrouillant sur le pont supérieur et en dessous sur le pont inférieur.
    .daily 13330 >>Acceptez la quête Le sang des Élus.
    .daily 13302 >>Acceptez la quête Esclaves de la saronite.
    .daily 13357 >>Acceptez la quête Testez-le à nouveau.
    .daily 13353 >>Acceptez la quête Attraper et lâcher.
	.daily 13365 >>Acceptez la quête Il n'est pas nuisible.
    .daily 13331 >>Acceptez la quête Maintenir l'Alliance dans l'ignorance.
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Envolez-vous vers Commandant Koup (sur le sol - pas sur le navire).
    .daily 13309 >>Acceptez la quête Attaque aérienne.
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Faites un clic droit sur la tourelle au sommet de la Machine volante pour lancer la quête.
	.isOnQuest 13309
step << Alliance
	>>Tirez sur tous les Harpons que vous voyez pour les désactiver en volant. Les infiltrés tomberont à mesure que vous le faites.
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Quittez la Machine volante. Vous recevrez un parachute. Retournez auprès de Koup.
    .turnin 13309 >>Rendez la quête Attaque aérienne.
	.isQuestComplete 13309
step << Horde
	>>Envolez-vous vers Commandant Xutjja (sur le sol - pas sur le navire).
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Acceptez la quête Attaque aérienne.
step << Horde
	#completewith next
	.vehicle >>Faites un clic droit sur la tourelle au sommet de la Machine volante pour lancer la quête.
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Tirez sur tous les Harpons que vous voyez pour les désactiver en volant. Les infiltrés tomberont à mesure que vous le faites.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Quittez la Machine volante. Vous recevrez un parachute. Retournez auprès de Xutjja.
    .turnin 13310 >>Rendez la quête Attaque aérienne.
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Parlez au Chef d'escouade. Il se peut qu'il ne soit pas ici si quelqu'un d'autre a commencé la quête et qu'il a un temps de réapparition d'environ 6 minutes. Il réapparaît à environ 10 mètres à droite de Koup. Vous pouvez sauter cette étape si vous ne voulez pas attendre ou vérifier plus tard.
    .daily 13284 >>Acceptez la quête Assaut terrestre.
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tuez les Vrykuls dans Ymirheim.
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escortez les troupes. Laissez certaines troupes encaisser les monstres si nécessaire.
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Allez dans la Mine de saronite. Parlez aux esclaves pour les sauver (parfois, ils peuvent vous attaquer).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Tuez les Vrykuls dans Ymirheim.
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,57.01,62.53
	>>REMARQUE : Cette quête vous signale pour le PVP. Cependant, c'est TRÈS facile.
    .daily 13280 >>Acceptez la quête Le roi de la montagne.
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Faites un clic droit sur le robot ressemblant à un gnome.
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Utilisez "Réacteurs de saut" (3) pour escalader rapidement la falaise (il n'y a pas de temps de recharge). Une fois que vous arrivez au sommet de la montagne, utilisez "Planter l'Étendard de bataille de l'Alliance" (1) pour planter l'étendard. Ensuite, quittez le véhicule.
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
    .turnin 13280 >>Rendez la quête Le roi de la montagne.
	.isQuestComplete 13280
step << Alliance
	>>Retournez auprès de Commandant Koup.
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Rendez la quête Assaut terrestre.
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Parlez au Chef d'escouade. Il se peut qu'il ne soit pas ici si quelqu'un d'autre a commencé la quête et qu'il a un temps de réapparition d'environ 6 minutes. Vous pouvez sauter cette étape si vous ne voulez pas attendre ou vérifier plus tard.
    .daily 13301 >>Acceptez la quête Assaut terrestre.
step << Horde
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tuez les Vrykuls dans Ymirheim.
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Escortez les troupes. Laissez certaines troupes retenir les monstres si nécessaire.
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
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Tuez les Vrykul partout dans Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>NOTE : Cette quête vous signale pour le JcJ. C'est cependant TRÈS facile.
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
    .turnin 13283 >>Rendez la quête Le roi de la montagne
	.isQuestComplete 13283
step << Horde
	>>Retournez au Commandant Xutjja
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>Rendez la quête Assaut terrestre
	.isQuestComplete 13301
step
	>>Allez à la plateforme et tuez les Initiés Amers dans la zone. Ramassez-les pour leur Orbe d'illusion.
	.use 44246 >>Utilisez l'Orbe d'illusion sur les Asservisseurs Sombres dans la zone lorsque vous êtes hors de combat.
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Utilisez le Fusil à fléchette dans vos sacs sur les Éclaireurs du Marteau d'Orgrim (vous pouvez l'utiliser en étant sur votre monture volante). Dépouillez leurs cadavres pour les Ordres.
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Utilisez le SGM-3 dans vos sacs sur les Chasseurs de reconnaissance du Casse-ciel dans les airs.
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>Utilisez le Tonique du culte dilué dans vos sacs pour obtenir le Bonus "Sombre discernement". Cela vous permet de ramasser les Essences Altérées de tous les humanoïdes que vous tuez dans la zone.
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >> Clic droit sur les Essences Altérées dans vos sacs pour les transformer en une Masse Gougeante. Lancez-la dans un chaudron.
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Tuez 5 Serviteurs Asservis (Marcheurs du Vide). Utilisez le Bâtonnet de siphonnage sur leurs cadavres pour leur Matière Noire.
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>Cliquez sur la Pierre d'invocation.
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Retournez au Skybreaker. Parlez au Chevalier-capitaine Drosche, à Absalan le Pieux, au Grand capitaine Justin Bartlett, à l'Ingénieur en chef Vrilleboulon et à Thassarian.
    .turnin -13336 >>Rendez la quête Le sang des Élus
    .turnin -13300 >>Rendez la quête Esclaves de la saronite
    .turnin -13322 >>Rendez la quête Testez-le à nouveau
    .turnin -13323 >>Rendez la quête Attraper et lâcher
	.turnin -13344 >>Rendez la quête Il n'est pas nuisible
    .turnin -13333 >>Rendez la quête Capturez plus d'ordres.
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Retournez au Marteau d'Orgrim. Parlez au Porteguerre Davos Rioht, au Frère Keltan, au Saccageur-des-cieux Korm Noire-balafre, à l'Ingénieur en chef Cuivregrif et à Koltira Tissemort.
    .turnin -13330 >>Rendez la quête Le sang des Élus
    .turnin -13302 >>Rendez la quête Esclaves de la saronite
    .turnin -13357 >>Rendez la quête Testez-le à nouveau
    .turnin -13353 >>Rendez la quête Attraper et lâcher
	.turnin -13365 >>Rendez la quête Il n'est pas nuisible
    .turnin -13331 >>Rendez la quête Maintenir l'Alliance aveugle.

--6 Quest section from Knights of the Ebon Blade. 3 come from The Shadow Vault, other 3 from Death's Rise

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
	>>|cff00ecffNOTE : Ouvrez uniquement les coffres scintillants pour les Documents. Les coffres qui ne scintillent PAS ne contiennent PAS de Documents.|r
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
]])
