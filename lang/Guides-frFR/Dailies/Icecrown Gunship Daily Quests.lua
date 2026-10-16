if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Route des quêtes journalières du vaisseau de la Couronne de glace

step << Alliance -- Checking that the actual pre quests that have been completed, not dailies
	+Pour débloquer toutes les quêtes journalières du vaisseau de la Couronne de glace, vous devez d'abord terminer la chaîne de prérequis. Veuillez utiliser le guide de déverrouillage des quêtes journalières du vaisseau de la Couronne de glace pour débloquer toutes les quêtes journalières.
	.isQuestAvailable 13314,13346,13342,13318,13321,13295,13288,13380,13291,13231,13296

--	 13314  Get the Message
--	 13346  No Rest For The Wicked
--	 13342  Not a Bug
--	 13318  Drag and Drop
--	 13321  Retest Now
--	 13295  Basic Chemistry
--	 13288  That's Abominable!
--	 13380  Leading the Charge
--	 13291  Borrowed Technology
--	 13231  The Broken Front
--	 13296  Get to Ymirheim!

step << Horde -- Checking that the actual quests that have been completed, not dailies
	+Pour débloquer toutes les quêtes journalières du vaisseau de la Couronne de glace, vous devez d'abord terminer la chaîne de prérequis. Veuillez utiliser le guide de déverrouillage des quêtes journalières du vaisseau de la Couronne de glace pour débloquer toutes les quêtes journalières.
	.isQuestAvailable 13313,13228,13293,13239,13373,13279,13356,13352,13358,13367,13264

--	 13313  Blinding the Eyes in the Sky
--	 13228  The Broken Front
--	 13293  Get to Ymirheim!
--	 13239  Volatility
--	 13279  Basic Chemistry
--	 13356  Retest Now
--	 13352  Drag and Drop
--	 13358  Not a Bug
--	 13367  No Rest For The Wicked
--	 13264  That's Abominable!

--Alliance Skybreaker Quests (11)
--	Blood of the Chosen, 13336
--	Slaves to Saronite, 13300
--	No Mercy!, 13233
--	The Solution Solution, 13292
--	That's Abominable!, 13289
--	Neutralizing the Plague, 13297
--	Retest Now, 13322
--	Drag and Drop, 13323
--	Not a Bug, 13344
--	No Rest For The Wicked, 13350
--	Capture More Dispatches, 13333

--Alliance other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13280
--  Assault by Air, 13309
--  Assault by Ground, 13284
--  Static Shock Troops: the Bombardment, 13404
--  Putting the Hertz: The Valley of Lost Hope, 13382 -- not implimented by blizzard

--Horde Orgrim's Hammer Quests (11)
--	Blood of the Chosen, 13330
--	Slaves to Saronite, 13302
--	Make Them Pay!, 13234
--	Volatility, 13261
--	That's Abominable!, 13276
--	Neutralizing the Plague, 13281
--	Retest Now, 13357
--	Drag and Drop, 13353
--	Not a Bug, 13365
--	No Rest For The Wicked, 13368
--	Keeping the Alliance Blind, 13331

--Horde other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13283  -- DONE
--  Assault by Air, 13310 -- DONE
--  Assault by Ground, 13301 -- DONE
--  Riding the Wavelength: The Bombardment, 13406
--  Total Ohmage: The Valley of Lost Hope!, 13376 -- not implimented by blizzard

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Envolez-vous vers le vaisseau de l'Alliance, Le Ciel-brisé
	>>Parlez à Chevalier-capitaine Drosche, Absalan le Pieux, Grand capitaine Justin Bartlett, Ingénieur en chef Vrilleboulon et Thassarian.
	>>Notez que la quête Pas de pitié ! est une quête JcJ qui vous oblige à tuer 15 joueurs de la Horde dans La Couronne de glace. Vous pouvez abandonner/ignorer cette quête journalière si vous le souhaitez.
    .daily 13336 >>Acceptez la quête Le sang des Élus.
    .daily 13300 >>Acceptez la quête Esclaves de la saronite.
	.daily 13233 >>Acceptez la quête Pas de pitié !
    .daily 13292 >>Acceptez la quête La solution pour la solution
    .daily 13289 >>Acceptez la quête C'est abominable !
	.daily 13297 >>Acceptez la quête Neutraliser la peste
    .daily 13322 >>Acceptez la quête Testez-le à nouveau.
    .daily 13323 >>Acceptez la quête Attraper et lâcher.
	.daily 13344 >>Acceptez la quête Il n'est pas nuisible.
    .daily 13350 >>Acceptez la quête Pas de repos pour les malfaisants
    .daily 13333 >>Acceptez la quête Capturer plus de dépêches.
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Envolez-vous vers le vaisseau de la Horde, Le Marteau d'Orgrim
	>>Parlez à Porteguerre Davos Rioht, Frère Keltan, Saccageur-des-cieux Korm Noire-balafre, Ingénieur en chef Cuivregrif et Koltira Tissemort.
	>>Notez que la quête Faites-leur payer le prix fort ! est une quête JcJ qui vous oblige à tuer 15 joueurs de l'Alliance dans La Couronne de glace. Vous pouvez abandonner/ignorer cette quête journalière si vous le souhaitez.
    .daily 13330 >>Acceptez la quête Le sang des Élus.
    .daily 13302 >>Acceptez la quête Esclaves de la saronite.
	.daily 13234 >>Acceptez la quête Faites-leur payer le prix fort !
    .daily 13261 >>Acceptez la quête Volatilité
    .daily 13276 >>Acceptez la quête C'est abominable !
	.daily 13281 >>Acceptez la quête Neutraliser la peste
    .daily 13357 >>Acceptez la quête Testez-le à nouveau.
    .daily 13353 >>Acceptez la quête Attraper et lâcher.
	.daily 13365 >>Acceptez la quête Il n'est pas nuisible.
    .daily 13368 >>Acceptez la quête Pas de repos pour les malfaisants
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
	>>Tirez sur tous les Lance Armes à feu sur les bâtiments en volant
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Retournez à Koup
    .turnin 13309 >>Rendez la quête Attaque aérienne.
	.isQuestComplete 13309
step << Horde
	>>Envolez-vous vers Commandant Xutjja (sur le sol - pas sur le navire).
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Acceptez la quête Attaque aérienne.
step << Horde
	#completewith next
	.vehicle >>Courez vers la Tourelle de suppression Kor'kron sur le navire et cliquez dessus.
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Tirez sur toutes les tourelles que vous voyez en volant pour les désactiver. Les infiltrateurs tomberont au fur et à mesure
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Rendez la quête Attaque aérienne.
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Parlez au Chef d'escouade. Il se peut qu'il ne soit pas ici si quelqu'un d'autre a lancé la quête et le temps de réapparition est d'environ 6 minutes
    .daily 13284 >>Acceptez la quête Assaut terrestre.
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tuez les Vrykul partout dans Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escortez les troupes. Laissez certaines troupes retenir les monstres si nécessaire.
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
    .turnin 13280 >>Rendez la quête Le roi de la montagne
	.isQuestComplete 13280
step << Alliance
	>>Retournez auprès de Commandant Koup.
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Rendez la quête Assaut terrestre
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Parlez au Chef d'escouade. Il ne sera peut-être pas ici si quelqu'un d'autre a commencé la quête avec un temps de réapparition d'environ 6 minutes
    .daily 13301 >>Acceptez la quête Assaut terrestre.
step << Horde
    .goto IcecrownGlacier,54.9,52.8,0,0
	#completewith Mineslave
	>>Tuez les Vrykul partout dans Ymirheim
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
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Ramassez les pièces d'équipement abandonné éparpillées sur le sol autour du Front Brisé. Utilisez la Solution contrebandée dans vos sacs quand vous avez une de chaque pièce d'équipement (vous n'avez pas besoin d'attendre le RP) << Alliance
	.collect 43609,3,13292,1,-1 << Alliance --Pile of Bones (3)
	.collect 43610,3,13292,1,-1 << Alliance --Abandoned Helm (3)
	.collect 43616,3,13292,1,-1  << Alliance --Abandoned Armor (3)
    .complete 13292,1 << Alliance --Field Tests Conducted (3)
	.use 43608 >>Ramassez les pièces d'équipement abandonné éparpillées sur le sol autour du Front Brisé. Utilisez l'Huile volatile de Copperclaw dans vos sacs quand vous avez une de chaque pièce d'équipement (vous n'avez pas besoin d'attendre le RP) << Horde
	.collect 43609,3,13261,1,-1  << Horde --Pile of Bones (3)
	.collect 43610,3,13261,1,-1 << Horde --Abandoned Helm (3)
	.collect 43616,3,13261,1,-1 << Horde --Abandoned Armor (3)
    .complete 13261,1 << Horde --Field Tests Conducted (3)
	.isOnQuest 13292 << Alliance
	.isOnQuest 13261 << Horde
step
    .goto IcecrownGlacier,68.3,61.5
	>>Tuez les Abominations monstrueuses dans la zone et ramassez-les pour leurs Viscères d'abomination Transi
	.use 43968 >> Utilisez le Kit de réanimation d'abominations avec quelques Viscères dans vos sacs pour convoquer une Abomination que vous pouvez contrôler. Collectez autant de mobs que possible en faisant attaquer les Abominations par eux et en attirant l'aggro, puis utilisez "Plein à craquer" pour tuer tous les mobs près de votre Abomination (les mobs doivent être en combat pour obtenir leur crédit)
	>>Si vous n'avez plus de Viscères, allez tuer d'autres Abominations monstrueuses. Vous ne pouvez avoir qu'un viscère à la fois.
	.collect 43966,1,13289,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13289,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13289,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13289,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13276,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13276,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13276,2 << Horde --Vicious Geists Exploded (15)
    .complete 13276,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13289 << Alliance
	.isOnQuest 13276 << Horde
step
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Tuez les Horreurs suppurantes dans la zone et ramassez-les pour une Épine géante de chair. Cette quête est TRÈS difficile. Groupez-vous pour cette quête si nécessaire ou vous pouvez abandonner/ignorer cette quête quotidienne si vous le souhaitez
	.collect 44009,1 -- Flesh Giant Spine (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	.goto IcecrownGlacier,62.3,63.4
	.use 44009 >> Utilisez l'Épine géante de chair dans vos sacs pour créer le Liquide spinal suppurant
	.collect 44010,1 -- Pustulant Spinal Fluid (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Utilisez le Liquide spinal suppurant dans vos sacs sur les chaudrons verts bouillonnants. Tuez les mobs qui apparaissent et utilisez le Liquide spinal à nouveau quand on vous demande "Ajouter du liquide bientôt". Cette quête est TRÈS difficile. Groupez-vous si nécessaire ou vous pouvez abandonner/ignorer cette quête quotidienne si vous le souhaitez
    .complete 13297,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13281,1 << Horde --Batch of Plague Neutralized (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
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
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Allez à l'intérieur d'Aldur'thar
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
	>>Cette quête est TRÈS difficile. Groupez-vous si nécessaire ou abandonnez/ignorez cette quête quotidienne
	>>Ouvrez les coffres à l'intérieur d'Aldur'thar et ramassez le Crâne, le Cœur, le Sceptre et les Robes d'Alumeth
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Cette quête est TRÈS difficile. Groupez-vous si nécessaire ou abandonnez/ignorez cette quête quotidienne
	.use 44476 >> Cliquez sur l'un des objets dans vos sacs pour les combiner en Restes d'Alumeth
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Cette quête est TRÈS difficile. Groupez-vous si nécessaire ou abandonnez/ignorez cette quête quotidienne
	.use 44480 >> Utilisez les Restes d'Alumeth devant le cristal brillant pour le convoquer. Tuez-le
    .complete 13350,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13368,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
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
step << Alliance
	>>Envolez-vous vers la petite plateforme dans l'air. Parlez à Killohertz
	.goto IcecrownGlacier,53.96,42.93
	.daily 13404 >>Acceptez la quête Troupe de choc statique : le Bombardement
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Parlez à Karen pour monter dans un bombardier. Utilisez Charger le bouclier (1) pour obtenir 100 boucliers puis basculez vers Soute à bombe (5) et commencez à bombarder les Fléau en dessous jusqu'à ce que tous les Fantassins et les Capitaines soient tués. Basculez vers Tourelle antiaérienne (4) et commencez à utiliser Roquettes anti-aériennes (1) pour tirer sur les Gargouilles dans l'air. Une fois terminé, appuyez sur le bouton Sortir du véhicule et vous serez renvoyé sur la plateforme
	.complete 13404,1 -- Bombardment Infantry slain (50)
	.complete 13404,2 -- Bombardment Captain slain (10)
	.complete 13404,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Alliance
	>>Parlez à Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13404 >>Rendre la quête Troupe de choc statique : le Bombardement
	.isQuestComplete 13404
step << Horde
	>>Envolez-vous vers la petite plateforme dans l'air. Parlez à Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .daily 13406 >>Acceptez la quête Profiter de l'onde : le Bombardement
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Parlez à Rizzy pour monter dans un bombardier. Utilisez Charger le bouclier (1) pour obtenir 100 boucliers puis basculez vers Soute à bombe (5) et commencez à bombarder les Fléau en dessous jusqu'à ce que tous les Fantassins et les Capitaines soient tués. Basculez vers Tourelle antiaérienne (4) et commencez à utiliser Roquettes anti-aériennes (1) pour tirer sur les Gargouilles dans l'air. Une fois terminé, appuyez sur le bouton Sortir du véhicule et vous serez renvoyé sur la plateforme
	.complete 13406,1 -- Bombardment Infantry slain (50)
	.complete 13406,2 -- Bombardment Captain slain (10)
	.complete 13406,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Horde
	>>Parlez à Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13406 >>Rendre la quête Profiter de l'onde : le Bombardement
	.isQuestComplete 13406
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Retournez au Skybreaker. Parlez au Chevalier-capitaine Drosche, à Absalan le Pieux, au Grand capitaine Justin Bartlett, à l'Ingénieur en chef Vrilleboulon et à Thassarian.
    .turnin -13336 >>Rendez la quête Le sang des Élus
    .turnin -13300 >>Rendez la quête Esclaves de la saronite
	.turnin -13233 >>Rendre la quête Pas de pitié !
    .turnin -13292 >>Rendre la quête La solution pour la solution
    .turnin -13289 >>Rendre la quête C'est abominable !
	.turnin -13297 >>Rendre la quête Neutraliser la Peste
    .turnin -13322 >>Rendez la quête Testez-le à nouveau
    .turnin -13323 >>Rendez la quête Attraper et lâcher
	.turnin -13344 >>Rendez la quête Il n'est pas nuisible
    .turnin -13350 >>Rendre la quête Pas de repos pour les malfaisants
    .turnin -13333 >>Rendez la quête Capturez plus d'ordres.
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Retournez au Marteau d'Orgrim. Parlez au Porteguerre Davos Rioht, au Frère Keltan, au Saccageur-des-cieux Korm Noire-balafre, à l'Ingénieur en chef Cuivregrif et à Koltira Tissemort.
    .turnin -13330 >>Rendez la quête Le sang des Élus
    .turnin -13302 >>Rendez la quête Esclaves de la saronite
	.turnin -13234 >>Rendre la quête Les faire payer !
    .turnin -13261 >>Rendre la quête Volatilité
    .turnin -13276 >>Rendre la quête C'est abominable !
	.turnin -13281 >>Rendre la quête Neutraliser la Peste
    .turnin -13357 >>Rendez la quête Testez-le à nouveau
    .turnin -13353 >>Rendez la quête Attraper et lâcher
	.turnin -13365 >>Rendez la quête Il n'est pas nuisible
    .turnin -13368 >>Rendre la quête Pas de repos pour les malfaisants
    .turnin -13331 >>Rendez la quête Maintenir l'Alliance aveugle.
step << Alliance
	+Vous avez complété toutes les Quêtes journalières du Brise-ciel pour aujourd'hui :) N'oubliez pas d'essayer de compléter les quêtes de groupe que vous avez abandonnées/ignorées si vous le souhaitez !
step << Horde
	+Vous avez complété toutes les Quêtes journalières du Marteau d'Orgrim pour aujourd'hui :) N'oubliez pas d'essayer de compléter les quêtes de groupe que vous avez abandonnées/ignorées si vous le souhaitez !
]])
