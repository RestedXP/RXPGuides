if GetLocale() ~= "frFR" then return end
local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
#mop
<< DK
#group RestedXP Chevalier de la mort Démarrage
#next RestedXP Alliance 60-70\59-61 Péninsule des Flammes infernales << Alliance wotlk
#next RestedXP Horde 60-70\59-61 Péninsule des Flammes infernales << Horde wotlk
#next RXP Cataclysme 60-80 (H)\59-61 Péninsule des Flammes infernales << Horde cata
#next RXP Cataclysme 60-80 (A)\59-61 Péninsule des Flammes infernales << Alliance cata
#next RXP MoP 60-80 (H)\59-61 Péninsule des Flammes infernales << Horde !wotlk !cata
#next RXP MoP 60-80 (A)\59-61 Péninsule des Flammes infernales << Alliance !wotlk !cata
#defaultfor DK
#name 55-58 The Scarlet Enclave

step
    .goto 124,51.345,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le roi-liche|r
    .target Le Roi-liche
    .accept 12593 >>Acceptez la quête Au service du roi-liche
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Instructeur Razuvious|r
    >>|cRXP_FRIENDLY_Instructeur Razuvious|r |cRXP_WARN_patrouille légèrement|r
    .turnin 12593 >>Rendez la quête Au service du roi-liche
    .target Instructor Razuvious
    .accept 12619 >>Acceptez la quête La lame runique blasonnée
step
    #loop
    .goto 124,47.811,27.771,10,0
    .goto 124,46.8,29.1,40,0
    .goto 124,48.1,27.9,40,0
    .goto 124,49.2,26.5,40,0
    .goto 124,48.1,27.9,40,0
	>>Ramassez l'|T135410:0|t[|cRXP_LOOT_Epée détériorée|r] d'un des présentoirs d'armes. Elle a plusieurs emplacements de réapparition autour des murs
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .isOnQuest 12619
    .goto 124,47.9,27.6
    .cast 51769 >> |cRXP_WARN_Canalisez l'|r |T135410:0|t[|cRXP_LOOT_Epée détériorée|r] |cRXP_WARN_vers la|r |cRXP_PICK_Runeforge|r
    .timer 8,Ornez la lame runique RP
	.use 38607
    .complete 12619,1 --Runebladed Sword (1)
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Instructeur Razuvious|r
    >>|cRXP_FRIENDLY_Instructeur Razuvious|r |cRXP_WARN_patrouille légèrement|r
    .turnin 12619 >>Rendez la quête La lame runique blasonnée
    .target Instructor Razuvious
    .accept 12842 >>Acceptez la quête La runeforge : se préparer à la bataille
step
    .goto 124,47.9,27.5
    >>|cRXP_WARN_Rendez-vous à la |cRXP_PICK_Runeforge|r à nouveau|r
    >>|cRXP_WARN_Dans votre Grimoire (Défaut: P) cliquez sur|r |T237523:0|t[Runeforge]
    >>|cRXP_WARN_Cisélez votre|r |T135335:0|t[|cFF0070FFLame de l'âme runique|r] |cRXP_WARN_avec|r |T136130:0|t[Rune de Cendreglace]
    .complete 12842,1 --Weapon emblazoned (1)
step
    #optional
    #completewith next
    .equip 16,38707 >> |cRXP_WARN_Équipez le|r |T135335:0|t[|cFF0070FFLame de l'âme runique|r]
    .use 38707
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Instructeur Razuvious|r
    >>|cRXP_FRIENDLY_Instructeur Razuvious|r |cRXP_WARN_patrouille légèrement|r
    .turnin 12842 >>Rendez la quête La runeforge : se préparer à la bataille
    .target Instructor Razuvious
    .accept 12848 >>Acceptez la quête La faim sans fin
step
    #optional
    .isOnQuest 12848
    .equip 16,38707 >> |cRXP_WARN_Équipez le|r |T135335:0|t[|cFF0070FFLame de l'âme runique|r]
    .use 38707
step
    #completewith next
    .cast 54669 >> Cliquez sur une des |cRXP_PICK_Prisons des Âmes d'Acherus|r le long de la paroi intérieure centrale pour libérer un |cRXP_ENEMY_Initié indigne|r
    .timer 17,Initié indigne RP
step
    .goto 124,48.4,29.0
    >>Tuez le |cRXP_ENEMY_Initié indigne|r après le court RP
    .complete 12848,1 --Unworthy Initiate dominated (1)
    .mob Unworthy Initiate
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Instructeur Razuvious|r
    >>|cRXP_FRIENDLY_Instructeur Razuvious|r |cRXP_WARN_patrouille légèrement|r
    .turnin 12848 >>Rendez la quête La faim sans fin
    .target Instructor Razuvious
    .accept 12636 >>Acceptez la quête L’œil d’Achérus
step << wotlk
    .isOnQuest 12636
    .goto 124,48.660,32.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchimiste Karloff|r
    >>|cRXP_BUY_Achetez quatre|r |T133849:0|t[Cadavre Poussière] |cRXP_WARN_auprès de lui|r
    .collect 37201,4 --Corpse Dust (4)
    .target Alchemist Karloff
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le roi-liche|r
    .target Le Roi-liche
    .turnin 12636 >>Rendez la quête L’œil d’Achérus
    .accept 12641 >>Acceptez la quête La mort vient de l’œil
step
    .isOnQuest 12641
    .goto 124,51.062,36.310,-1
    .goto 124,52.130,35.220,-1
    .aura 51852 >> Cliquez sur un |cRXP_PICK_Mécanisme de contrôle de l'Œil d'Achérus|r
step
    .goto 124,61.42,60.12,0
	>>|cRXP_WARN_Lancez|r |T136158:0|t[Siphon d'Achérus] (1) |cRXP_WARN_sur la Forge de la Nouvelle-Avalon|r
    >>|cRXP_WARN_Évitez le|r |cRXP_ENEMY_Croisé Écarlate|r |cRXP_WARN_à tout prix. En lançant l'|r |T136119:0|t[Invocation de goules] (2) |cRXP_WARN_peut aussi offrir une petite diversion|r
    >>|cFFFF0000Il n'y a pas de flèche pour cette étape. La position du bâtiment est marquée sur votre carte. Le bâtiment a également une grande icône rouge de Marque du chasseur|r
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto 124,61.7,68.2,0
	>>|cRXP_WARN_Lancez|r |T136158:0|t[Siphon d'Achérus] (1) |cRXP_WARN_sur le Fort Écarlate|r
    >>|cRXP_WARN_Évitez le|r |cRXP_ENEMY_Croisé Écarlate|r |cRXP_WARN_à tout prix. En lançant l'|r |T136119:0|t[Invocation de goules] (2) |cRXP_WARN_peut aussi offrir une petite diversion|r
    >>|cFFFF0000Il n'y a pas de flèche pour cette étape. La position du bâtiment est marquée sur votre carte. Le bâtiment a également une grande icône rouge de Marque du chasseur|r
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto 124,53.4,70.7,0
	>>|cRXP_WARN_Lancez|r |T136158:0|t[Siphon d'Achérus] (1) |cRXP_WARN_sur l'Hôtel de ville de la Nouvelle-Avalon|r
    >>|cRXP_WARN_Évitez le|r |cRXP_ENEMY_Croisé Écarlate|r |cRXP_WARN_à tout prix. En lançant l'|r |T136119:0|t[Invocation de goules] (2) |cRXP_WARN_peut aussi offrir une petite diversion|r
    >>|cFFFF0000Il n'y a pas de flèche pour cette étape. La position du bâtiment est marquée sur votre carte. Le bâtiment a également une grande icône rouge de Marque du chasseur|r
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto 124,52.2,80.7,0
	>>|cRXP_WARN_Lancez|r |T136158:0|t[Siphon d'Achérus] (1) |cRXP_WARN_sur la Chapelle de la Flamme cramoisie|r
    >>|cRXP_WARN_Évitez le|r |cRXP_ENEMY_Croisé Écarlate|r |cRXP_WARN_à tout prix. En lançant l'|r |T136119:0|t[Invocation de goules] (2) |cRXP_WARN_peut aussi offrir une petite diversion|r
    >>|cFFFF0000Il n'y a pas de flèche pour cette étape. La position du bâtiment est marquée sur votre carte. Le bâtiment a également une grande icône rouge de Marque du chasseur|r
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
step
    #optional
	#completewith next
 	.aura -51852 >> |cRXP_WARN_Appuyez sur Ech./Esc. ou|r |T136190:0|t[Rappeler l'Œil d'Achérus] (5) |cRXP_WARN_pour retourner à la Citadelle d'ébène|r
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le roi-liche|r
    .target Le Roi-liche
    .turnin 12641 >>Rendez la quête La mort vient de l’œil
    .accept 12657 >>Acceptez la quête La puissance du Fléau
step
    #completewith next
    .goto 124,50.516,33.404,5 >> Montez sur le téléporteur violet pour vous rendre au niveau inférieur
step
    .goto 124,48.872,29.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .target Highlord Darion Mograine
    .turnin 12657 >>Rendez la quête La puissance du Fléau
    .accept 12850 >>Acceptez la quête Rapport au commandant du Fléau Thalanor
step
    .goto 124,51.055,34.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandant du Fléau Thalanor|r
    >>|cRXP_FRIENDLY_Commandant du Fléau Thalanor|r |cRXP_WARN_patrouille légèrement|r
    .target Scourge Commander Thalanor
    .turnin 12850 >>Rendez la quête Rapport au commandant du Fléau Thalanor
    .accept 12670 >>Acceptez la quête La moisson écarlate
step
	#completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Montez à |cRXP_FRIENDLY_Griffon du Fléau|r pour voler vers Brèche-de-Mort
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12670 >>Rendez la quête La moisson écarlate
    .accept 12678 >>Acceptez la quête Si le chaos règne, laissons la souffrance tenir les rênes
step
    #optional
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salanar le Cavalier|r
    >>|cRXP_FRIENDLY_Salanar le Cavalier|r |cRXP_WARN_patrouille Brèche-de-Mort|r
    .accept 12680 >>Acceptez la quête Voleurs de chevaux
    .target Salanar the Horseman
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olrun la Mande-guerre|r
    .accept 12733 >>Acceptez la quête Le défi de la mort
step
    #loop
    .goto 124,53.20,33.45,30,0
    .goto 124,51.69,35.67,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salanar le Cavalier|r
    >>|cRXP_FRIENDLY_Salanar le Cavalier|r |cRXP_WARN_patrouille Brèche-de-Mort|r
    .accept 12680 >>Acceptez la quête Voleurs de chevaux
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orithos l'Assombrisseur des cieux|r.
    >>|cRXP_FRIENDLY_Orithos l'Assombrisseur des cieux|r |cRXP_WARN_patrouille Brèche-de-Mort|r
    .accept 12679 >>Acceptez la quête Ce soir nous dînons à Havre-Comté
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Croisé écarlate|r et les |cRXP_ENEMY_Citizens of Havre-Comté|r. Ramassez les |cRXP_PICK_Saronite Flèches|r sur le sol
    >>|cRXP_WARN_Ne vous attardez pas sur cette étape pour le moment|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
	.isOnQuest 12680
    .goto 124,57.4,42.3
	.vehicle >>Montez à |cRXP_FRIENDLY_Jument de Havre-comté|r ou |cRXP_FRIENDLY_Etalon de Havre-comté|r. Reconduisez-la vers Brèche-de-Mort
    >>|cRXP_WARN_Be sure the avoid the elite |cRXP_ENEMY_Stable Maître Kitrik|r which patrols the area|r
    .target Havenshire Mare
    .target Havenshire Stallion
step
    #loop
    .goto 124,51.69,35.67,35,0
    .goto 124,53.20,33.45,35,0
	>>|cRXP_WARN_Ride back to Brèche-de-Mort|r
    >>|cRXP_WARN_lance|r |T132226:0|t[Grand galop] (2) |cRXP_WARN_pour augmenter la vitesse de déplacement|r
    >>|cRXP_WARN_lance|r |T132261:0|t[Livraison du cheval volé] (1) |cRXP_WARN_once at|r |cRXP_FRIENDLY_Salanar le Cavalier|r
    >>|cRXP_FRIENDLY_Salanar le Cavalier|r |cRXP_WARN_patrouille Brèche-de-Mort|r
    .complete 12680,1 --Horse Successfully Stolen (1)
    .target Salanar the Horseman
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salanar le Cavalier|r
    .turnin 12680 >>Rendez la quête Voleurs de chevaux
    .target Salanar the Horseman
    .accept 12687 >>Acceptez la quête Dans le royaume des ombres
step
    .isOnQuest 12687
    .goto 124,54.6,46.4
    .vehicle >> Tuez un |cRXP_ENEMY_Cavalier noir d'Achérus|r. Montez le |cRXP_FRIENDLY_Destrier de la mort d'Achérus|r ensuite
    .mob Dark Rider of Acherus
    .target Acherus Deathcharger
step
    #optional
    .isOnQuest 12687
    .goto 124,51.70,35.76,20 >> Retournez à Brèche-de-Mort
step
    .goto 124,51.70,35.76
	>>|cRXP_WARN_lance|r |T136129:0|t[Appel du cavalier] (1) |cRXP_WARN_once at Brèche-de-Mort. Attendez la fin du jeu de rôle court|r
    .complete 12687,1 --The Horseman's Challenge (1)
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salanar le Cavalier|r
    .turnin 12687 >>Rendez la quête Dans le royaume des ombres
step
	#completewith DuelDK
	.cast 48778 >> |cRXP_WARN_Vous avez maintenant votre|r |T237534:0|t[Destrier de la mort d'Achérus]|cRXP_WARN_. Assurez-vous de l'ajouter à vos barres d'action depuis votre panneau Montures (Défaut : Transfert+P)|r
step
    #loop
    .goto 124,55.9,38.8,50,0
    .goto 124,53.9,45.6,50,0
    .goto 124,56.1,51.9,50,0
	>>Tuez les |cRXP_ENEMY_Croisé écarlate|r et les |cRXP_ENEMY_Citizens of Havre-Comté|r. Ramassez les |cRXP_PICK_Saronite Flèches|r sur le sol
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
    #label DuelDK
	#loop
    .goto 124,51.9,35.4,30,0
    .goto 124,51.0,33.6,30,0
    .goto 124,53.8,30.9,30,0
    >>Parlez à |cRXP_FRIENDLY_Death Chevalier Initiates|r et battez-les en duel
	>>|cRXP_WARN_Do not courir out of the 30 yard duel range|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target Death Knight Initiate
    .mob Death Knight Initiate
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orithos l'Assombrisseur des cieux|r.
    >>|cRXP_FRIENDLY_Orithos l'Assombrisseur des cieux|r |cRXP_WARN_patrouille Brèche-de-Mort|r
    .turnin 12679 >>Rendez la quête Ce soir nous dînons à Havre-Comté
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olrun la Mande-guerre|r
    .turnin 12733 >>Rendez la quête Le défi de la mort
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12678 >>Rendez la quête Si le chaos règne, laissons la souffrance tenir les rênes
    .accept 12697 >>Acceptez la quête Gothik le Moissonneur
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothik le Moissonneur|r
    .target Gothik the Harvester
    .turnin 12697 >>Rendez la quête Gothik le Moissonneur
    .accept 12698 >>Acceptez la quête Le don continu
step
    .goto 124,58.396,30.900,20,0
    .goto 124,59.904,31.680,20,0
    .goto 124,60.925,29.682,60,0
    .goto 124,54.1,34.9
    >>|cRXP_WARN_Enter the Mine de Havre-Comté|r
    .use 39253 >> |cRXP_WARN_Utilisez le|r |T133882:0|t[Don du moissonneur] |cRXP_WARN_sur |cRXP_ENEMY_Scarlet Miners|r pendant qu'ils ne sont pas en combat. Ne les tuez PAS et ne les attaquez pas|r
    >>|cRXP_WARN_Une fois que vous avez 5 |cRXP_FRIENDLY_Scarlet Goules|r vous suivant, rendez-vous à|r |cRXP_ENEMY_Gothik le Moissonneur|r
    >>|cRXP_WARN_Tuez tous les |cRXP_ENEMY_Scarlet Ghosts|r avec lesquels vous êtes en combat|r
    .complete 12698,1 --Scarlet Ghoul Returned (5)
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothik le Moissonneur|r
    .target Gothik the Harvester
    .turnin 12698 >>Rendez la quête Le don continu
    .accept 12700 >>Acceptez la quête Une occasion d’attaquer
step
    .goto 124,52.273,33.967
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12700 >>Rendez la quête Une occasion d’attaquer
    .accept 12701 >>Acceptez la quête Massacre à la halte de la Lumière
    .target Prince Valanar
step
    .isOnQuest 12701
    #label Follow1
    #completewith ScarletCannon
    .goto 124,61.597,32.417,35 >>|cRXP_WARN_Suivez la flèche vers le Scarlet Ship. Descendez la petite colline|r
step
    .isOnQuest 12701
    #requires Follow1
    #completewith ScarletCannon
    .goto 124,65.376,32.933,35 >> |cRXP_WARN_Descendez en bas à nouveau|r
step
    .isOnQuest 12701
    #label ScarletCannon
    .goto 124,67.022,38.817,15,0
    .goto 124,67.706,39.023
    .vehicle >> |cRXP_WARN_Courez vers la rampe sur le Scarlet Ship. Entrez le|r |cRXP_PICK_Scarlet Canon|r
    .target Scarlet Cannon
step
	>>|cRXP_WARN_Lancez|r |T136186:0|t[Canon écarlate] (1) |cRXP_WARN_pour tuer le|r |cRXP_ENEMY_Scarlet Fleet Défenseur|r
    >>|cRXP_WARN_Lancez|r |T136099:0|t[Pulsation électromagnétique] (2) |cRXP_WARN_si un quelconque |cRXP_ENEMY_Scarlet Fleet Défenseur|r commencent à attaquer le vous canon à proximité immédiate|r
    .complete 12701,1 --Scarlet Defender (100)
    .mob Scarlet Fleet Defender
step
    .isOnQuest 12701
    .cast vehicle,52588,52589 >>|cRXP_WARN_Lancez|r |T135766:0|t[Evasion sur un griffon squelette] (5) |cRXP_WARN_pour revenir à Brèche-de-Mort|r
    .timer 70,Brèche-de-Mort Vol
step
    .goto 124,52.272,33.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12701 >>Rendez la quête Massacre à la halte de la Lumière
    .accept 12706 >>Acceptez la quête Victoire à Brèche-de-Mort !
step
    #completewith next
    .goto 124,53.094,32.473
    .fly >> Montez sur un |cRXP_FRIENDLY_Griffon du Fléau|r pour retourner à Acherus
    .skipgossip
    .target Scourge Gryphon
step
    .goto 124,48.873,29.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .target Highlord Darion Mograine
    .turnin 12706 >>Rendez la quête Victoire à Brèche-de-Mort !
    .accept 12714 >>Acceptez la quête La volonté du roi-liche
step
    .goto 124,47.472,26.550
    .target Lord Thorval
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Thorval|r
    .accept 12849 >>Acceptez La Puissance du Sang, du Givre et de l'Impie
	.turnin 12849 >>Rendez La Puissance du Sang, du Givre et de l'Impie
	.trainer >> Apprenez vos sorts de classe << wotlk/cata
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Montez sur un |cRXP_FRIENDLY_Griffon du Fléau|r pour voler vers Brèche-de-Mort
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.459,36.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12714 >>Rendez la quête La volonté du roi-liche
    .accept 12715 >>Acceptez la quête La crypte du Souvenir
step << wotlk
    .isOnQuest 12715
    .goto 124,52.896,35.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hargus le Répugnant <Fournitures>|r
    >>|cRXP_BUY_Achetez 20|r |T133849:0|t[Cadavre Poussière] |cRXP_WARN_de sa part|r
    .collect 37201,20 --Corpse Dust (20)
    .target Hargus the Geist
step
    .goto 124,55.270,46.179
	>>Cliquez sur le |cRXP_PICK_Abandoned Courrier|r
    >>|cRXP_WARN_Vous pouvez également utiliser cette |cRXP_PICK_Boîte aux lettres|r si vous souhaitez vous envoyer des objets|r
    .turnin 12711 >>Rendez la quête Du courrier abandonné
step
    .goto 124,55.900,52.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noth the Porte-Peste|r
    .target Noth the Plaguebringer
    .accept 12716 >>Acceptez la quête La requête du porte-peste
step
    #completewith LTTS
    .goto 124,54.007,58.135,20 >> Voyagez vers la Crypte du Souvenir
step
    .goto 124,54.299,57.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12715 >>Rendez la quête La crypte du Souvenir
    .accept 12719 >>Acceptez la quête Nul lieu pour fuir ou se cacher
step
    #label LTTS
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baron Vaillefendre|r
    .target Baron Rivendare
    .accept 12722 >>Acceptez la quête Comme des agneaux à l’abattoir
step
	#completewith QuimbyRegistry
	>>Tuez les |cRXP_ENEMY_Scarlet Croisade|r et les |cRXP_ENEMY_Citoyens de Nouvelle-Avalon|r. Dépouille-les pour leurs |cRXP_LOOT_Crâne de croisé|r
    >>|cRXP_WARN_Ne vous attardez pas sur cette étape pour le moment|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    #completewith next
    .goto 124,52.924,71.237,25 >> Entrez l'Hôtel de ville de la Nouvelle-Avalon
step
    #label QuimbyRegistry
	>>Tuez le |cRXP_ENEMY_Maire Quimby|r. Ramassez le |cRXP_PICK_Registre de Nouvelle-Avalon|r sur la table
    .complete 12719,1 --Mayor Quimby (1)
    .mob +Mayor Quimby
    .goto 124,52.243,71.152
    .complete 12719,2 --New Avalon Registry (1)
    .goto 124,52.462,71.010
step
    #completewith next
    .goto 124,54.007,58.135,20 >> Retournez à la Crypte du Souvenir
step
    .goto 124,54.301,57.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12719 >>Rendez la quête Nul lieu pour fuir ou se cacher
    .accept 12720 >>Acceptez la quête Comment se faire des amis et influencer ses ennemis
step
    #optional
    .isQuestComplete 12722
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baron Vaillefendre|r
    .target Baron Rivendare
    .turnin 12722 >>Rendez la quête Comme des agneaux à l’abattoir
step
	#completewith Dawn
	>>Tuez les |cRXP_ENEMY_Scarlet Croisade|r et les |cRXP_ENEMY_Citoyens de Nouvelle-Avalon|r. Dépouille-les pour leurs |cRXP_LOOT_Crâne de croisé|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,61.387,60.722,20,0
    .goto 124,62.065,60.247
	>>Ramassez la |cRXP_PICK_Chaîne en fer|r sur le mur à l'intérieur de la Forge
    .complete 12716,2 --Iron Chain (1)
step
    #completewith next
    .goto 124,57.676,64.336,15 >> Entrez l'Auberge
step
    .goto 124,57.847,62.617,10,0
    .goto 124,57.521,61.883,10,0
    .goto 124,57.856,61.842
	>>Ramassez le |cRXP_PICK_Chaudron vide|r dans le sous-sol
    .complete 12716,1 --Empty Cauldron (1)
step
    .isOnQuest 12720
	.use 39418 >> |cRXP_WARN_Ouvrez la|r |T132595:0|t[Boîte à bijoux ouvragée] |cRXP_WARN_pour 2|r |T135271:0|t[Eloquente de Keleseth]
    .collect 39371,2 -- Keleseth's Persuader
step
    .isOnQuest 12720
    .equip 16,39371 >> |cRXP_WARN_Équipez|r |T135271:0|t[Eloquente de Keleseth] |cRXP_WARN_à votre Main droite|r
    .equip 17,39371 >> |cRXP_WARN_Équipez|r |T135271:0|t[Eloquente de Keleseth] |cRXP_WARN_à votre Main gauche|r
    .use 39371
step
	#label Dawn
    .goto 124,62.4,68.2
	>>|cRXP_WARN_Attaquez n'importe quel |cRXP_ENEMY_Scarlet Croisade|r jusqu'à ce que la quête soit terminée. Cela peut prendre un certain temps si vous êtes malchanceux|r
    >>|cRXP_WARN_Vous devez avoir|r |T135271:0|t[Eloquente de Keleseth] |cRXP_WARN_équipé pour terminer l'objectif|r
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
    #optional
    .isOnQuest 12720
    .equip 16,38707 >> |cRXP_WARN_Équipez la|r |T135335:0|t[|cFF0070FFLame de l'âme runique|r]
    .use 38707
step
    #loop
    .goto 124,53.8,71.6,60,0
    .goto 124,54.6,63.8,60,0
    .goto 124,60.6,63.8,60,0
    .goto 124,57.0,68.6,60,0
	>>Tuez les |cRXP_ENEMY_Scarlet Croisade|r et les |cRXP_ENEMY_Citoyens de Nouvelle-Avalon|r. Dépouille-les pour leurs |cRXP_LOOT_Crâne de croisé|r
    >>|cRXP_ENEMY_Citoyens de Nouvelle-Avalon|r |cRXP_WARN_peuvent être trouvés à l'intérieur des bâtiments|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,55.894,52.395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noth la Porte-Peste|r
    .target Noth the Plaguebringer
    .turnin 12716 >>Rendez la quête La requête du porte-peste
    .accept 12717 >>Acceptez la quête La cuvée spéciale de Noth
step
    .goto 124,56.157,52.008
    >>Cliquez sur le |cRXP_PICK_Chaudron de peste|r
    .turnin 12717 >>Rendez la quête La cuvée spéciale de Noth
step
    #optional
    .goto 124,56.157,52.008
    >>Cliquez sur le |cRXP_PICK_Chaudron de peste|r à nouveau
    .turnin 12718 >>Rendez la quête Plus de crânes pour la cuvée
    .itemcount 39328,20
step
    #completewith BSL
    .goto 124,54.007,58.135,20 >> Rendez-vous à la Crypte du Souvenir
step
    .goto 124,54.678,57.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baron Vaillefendre|r
    .target Baron Rivendare
    .turnin 12722 >>Rendez la quête Comme des agneaux à l’abattoir
step
    #label BSL
    .goto 124,54.299,57.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12720 >>Rendez la quête Comment se faire des amis et influencer ses ennemis
    .accept 12723 >>Acceptez la quête Derrière les lignes écarlates
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Rendez-vous à la Taverne Écarlate. Parlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r et à |cRXP_FRIENDLY_Thassarian|r en haut
step
    .goto 124,56.249,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r en haut
    .target Orbaz Bloodbane
    .turnin 12723 >>Rendez la quête Derrière les lignes écarlates
    .accept 12724 >>Acceptez la quête Le chemin du croisé vertueux
step
    .goto 124,56.266,80.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thassarian|r en haut
    .target Thassarian
    .accept 12725 >>Acceptez la quête Frères dans la mort
step
    #completewith next
    .goto 124,61.752,68.157,20,0
    .goto 124,62.876,68.650,10 >> Entrez dans le Fort Écarlate. Descendez au sous-sol
    >>|cRXP_WARN_Ne libérez PAS votre esprit si vous mourez. Une |cRXP_FRIENDLY_Vierge combattante val'kyr|r vous ressuscitera|r
step
    .goto 124,62.954,67.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koltira Tissemort|r au sous-sol
    .target Koltira Deathweaver
    .turnin 12725 >>Rendez la quête Frères dans la mort
    .accept 12727 >>Acceptez la quête Une issue sanglante
step
	#completewith next
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
	>>|cRXP_WARN_Ne défendez PAS|r |cRXP_FRIENDLY_Koltira Tissemort|r
    >>Montez au dernier étage. Ramassez le |cRXP_PICK_Programme de Patrouille de Nouvelle-Avalon|r sur la table
    .complete 12724,1 --New Avalon Patrol Schedule (1)
  step
    .goto 124,62.898,68.109
	>>Rendez-vous à |cRXP_FRIENDLY_Koltira Tissemort|r au sous-sol
    >>Tuez |cRXP_ENEMY_Valroth|r. Ramassez |cRXP_PICK_Restes de l'Inquisiteur Valroth|r sur le sol pour |cRXP_LOOT_Tête de Valroth|r
	>>|cRXP_WARN_Vous devrez peut-être tuer les renforts qui attaquent |cRXP_FRIENDLY_Koltira Tissemort|r en attendant que |cRXP_ENEMY_Valroth|r apparaisse|r
    >>|cRXP_WARN_Si le jeu de rôle est terminé, parlez à |cRXP_FRIENDLY_Koltira Tissemort|r de nouveau pour le relancer|r
    >>|cRXP_WARN_Restez dans|r |T136178:0|t[Région anti-magie] |cRXP_WARN_pour réduire les dégâts des sorts|r
    .complete 12727,1 --Valroth's Head (1)
    .skipgossip
step
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
    >>Montez au dernier étage. Ramassez le |cRXP_PICK_Programme de Patrouille de Nouvelle-Avalon|r sur la table
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    #optional
    .goto 124,56.157,52.008
    >>Cliquez sur le |cRXP_PICK_Chaudron de la peste|r
    .turnin 12718 >>Rendez la quête Plus de crânes pour la cuvée
    .itemcount 39328,20
step
    #completewith ACFV
    .goto 124,56.150,79.986,15 >> Rendez-vous à la Taverne Écarlate. Parlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r et à |cRXP_FRIENDLY_Thassarian|r en haut
step
	#completewith ACFV
	.destroy 39328 >> Supprimez tous les |T133730:0|t[Crâne de croisé] restants
step
    .goto 124,56.254,79.845
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r en haut
    .target Orbaz Bloodbane
    .turnin 12724 >>Rendez la quête Le chemin du croisé vertueux
step
    #label ACFV
    .goto 124,56.266,80.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thassarian|r en haut
    .target Thassarian
    .turnin 12727 >>Rendez la quête Une issue sanglante
    .accept 12738 >>Acceptez la quête Vengeance !
step
    .goto 124,52.6,80.7,40,0
    .goto 124,53.1,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chevalier-commandant Poing-du-Fléau|r
    >>|cRXP_FRIENDLY_Chevalier-commandant Poing-du-Fléau|r |cRXP_WARN_patrouille la Chapelle|r
    .turnin 12738 >>Rendez la quête Vengeance !
    .target Knight Commander Plaguefist
    .accept 12748 >>Acceptez la quête Une surprise spéciale << Orc
    .accept 12739 >>Acceptez la quête Une surprise spéciale << Tauren
    .accept 12742 >>Acceptez la quête Une surprise spéciale << Human
    .accept 12743 >>Acceptez la quête Une surprise spéciale << NightElf
    .accept 12744 >>Acceptez la quête Une surprise spéciale << Dwarf
    .accept 12745 >>Acceptez la quête Une surprise spéciale << Gnome
    .accept 12746 >>Acceptez la quête Une surprise spéciale << Draenei
    .accept 12747 >>Acceptez la quête Une surprise spéciale << BloodElf
    .accept 12749 >>Acceptez la quête Une surprise spéciale << Troll
    .accept 12750 >>Acceptez la quête Une surprise spéciale << Undead
    .accept 28649 >>Acceptez la quête Une surprise spéciale << Worgen
    .accept 28650 >>Acceptez la quête Une surprise spéciale << Goblin
step << Orc
    .goto 124,53.771,83.274
	>>Tuez |cRXP_ENEMY_Kug Gueule-de-fer|r après le court RP
    .complete 12748,1 --Kug Ironjaw (1)
    .mob Kug Ironjaw
step << Tauren
    .goto 124,54.505,83.856
	>>Tuez |cRXP_ENEMY_Malar Corne-brave|r après le court RP
    .complete 12739,1 -- Malar Bravehorn (1)
    .mob Malar Bravehorn
step << Human
    .goto 124,53.536,83.785
	>>Tuez |cRXP_ENEMY_Ellen Perrepont|r après le court RP
    .complete 12742,1 --|Ellen Stanbridge slain: 1/1
    .mob Ellen Stanbridge
step << NightElf
    .goto 124,54.246,83.908
	>>Tuez |cRXP_ENEMY_Yazmina Roncechêne|r après le court RP
    .complete 12743,1 -- Yazmina Oakenthorn (1)
    .mob Yazmina Oakenthorn
step << Dwarf
    .goto 124,54.018,83.285
	>>Tuez |cRXP_ENEMY_Donovan Tirgivre|r après le court RP
    .complete 12744,1 --Donovan Pulfrost (1)
    .mob Donovan Pulfrost
step << Gnome
    .goto 124,53.928,83.803
	>>Tuez |cRXP_ENEMY_Goby Explonheimer|r après le court RP
    .complete 12745,1 -- Goby Blastenheimer  (1)
    .mob Goby Blastenheimer
step << Draenei
    .goto 124,54.538,83.423
	>>Tuez |cRXP_ENEMY_Valok le Vertueux|r après le court RP
    .complete 12746,1 -- Valok the Righteous (1)
    .mob Valok the Righteous
step << BloodElf
    .goto 124,54.285,83.303
	>>Tuez |cRXP_ENEMY_Dame Eonys|r après le court RP
    .complete 12747,1 --Lady Eonys (1)
    .mob Lady Eonys
step << Troll
    .goto 124,53.801,83.756
	>>Tuez |cRXP_ENEMY_Iggy Sombrebroche|r après le court RP
    .complete 12749,1 --Iggy Darktusk(1)
    .mob Iggy Darktusk
step << Undead
    .goto 124,53.542,83.304
	>>Tuez |cRXP_ENEMY_Antoine Brack|r après le court RP
    .complete 12750,1 -- Antoine Brack (1)
    .mob Antoine Brack
step << Worgen
    .goto 124,54.144,83.282
	>>Tuez |cRXP_ENEMY_Seigneur Harford|r après le court RP
    .complete 28649,1 -- Lord Harford (1)
    .mob Lord Harford
step << Goblin
    .goto 124,54.113,83.753
	>>Tuez |cRXP_ENEMY_Gally Grossetache|r après le court RP
    .complete 28650,1 -- Gally Lumpstain (1)
    .mob Gally Lumpstain
step
    .goto 124,53.1,82.1,40,0
    .goto 124,52.6,80.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chevalier-commandant Poing-du-Fléau|r
    >>|cRXP_FRIENDLY_Chevalier-commandant Poing-du-Fléau|r |cRXP_WARN_patrouille la Chapelle|r
    .turnin 12748 >>Rendez la quête Une surprise spéciale << Orc
    .turnin 12739 >>Rendez la quête Une surprise spéciale << Tauren
    .turnin 12742 >>Rendez la quête Une surprise spéciale << Human
    .turnin 12743 >>Rendez la quête Une surprise spéciale << Nightelf
    .turnin 12744 >>Rendez la quête Une surprise spéciale << Dwarf
    .turnin 12745 >>Rendez la quête Une surprise spéciale << Gnome
    .turnin 12746 >>Rendez la quête Une surprise spéciale << Draenei
    .turnin 12747 >>Rendez la quête Une surprise spéciale << Bloodelf
    .turnin 12749 >>Rendez la quête Une surprise spéciale << Troll
    .turnin 12750 >>Rendez la quête Une surprise spéciale << Undead
    .turnin 28649 >>Rendez la quête Une surprise spéciale << Worgen
    .turnin 28650 >>Rendez la quête Une surprise spéciale << Goblin
    .target Knight Commander Plaguefist
	.accept 12751 >>Acceptez la quête Un retour au pays... en quelque sorte
step
    #completewith AATO
    .goto 124,56.150,79.986,15 >> Retournez à la Taverne Écarlate. Parlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r et à |cRXP_FRIENDLY_Thassarian|r à l'étage
step
    .goto 124,56.268,80.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thassarian|r
    .target Thassarian
    .turnin 12751 >>Rendez la quête Un retour au pays... en quelque sorte
step
    #label AATO
    .goto 124,56.251,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r
    .target Orbaz Bloodbane
    .accept 12754 >>Acceptez la quête Embuscade au surplomb
step
    #completewith ScarletCourier
    .subzone 4360 >> Rendez-vous au Surplomb Écarlate
step
    #completewith ScarletCourier
    .cast 53061 >> |cRXP_WARN_Utilisez la|r |T136065:0|t[Cachette de fortune] |cRXP_WARN_au Surplomb Écarlate|r
    .use 39645
step
    #label ScarletCourier
    .goto 124,59.715,76.335
	.use 39645 >>Tuez le |cRXP_ENEMY_Courrier écarlate|r. Ramassez les |cRXP_LOOT_Possessions du courrier écarlate|r et le |cRXP_LOOT_Message du courrier écarlate|r
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
    .mob Scarlet Courier
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Retournez à la Taverne Écarlate. Parlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r à l'étage
step
    .goto 124,56.253,79.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r à l'étage
    .target Orbaz Bloodbane
    .turnin 12754 >>Rendez la quête Embuscade au surplomb
    .accept 12755 >>Acceptez la quête Une rencontre avec le destin
step
    .goto 124,65.663,83.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lynnia Abbendis|r
    .target High General Abbendis
    .turnin 12755 >>Rendez la quête Une rencontre avec le destin
    .accept 12756 >>Acceptez la quête L’Assaut écarlate émerge
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Retournez à la Taverne Écarlate. Parlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r à l'étage
step
    .goto 124,56.251,79.846
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orbaz Sangreplaie|r à l'étage
    .target Orbaz Bloodbane
    .turnin 12756 >>Rendez la quête L’Assaut écarlate émerge
    .accept 12757 >>Acceptez la quête L’approche des armées écarlates
step
    #completewith next
    .goto 124,56.180,80.036
    .subzone 4281 >> |cRXP_WARN_Passez par le |cRXP_PICK_Portail|r vers Acherus derrière|r |cRXP_FRIENDLY_Orbaz Sangreplaie|r
step
    .goto 124,48.872,29.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .target Highlord Darion Mograine
    .turnin 12757 >>Rendez la quête L’approche des armées écarlates
    .accept 12778 >>Acceptez la quête L’apocalypse écarlate
step << wotlk/cata
    .goto 124,46.697,31.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Amal'thazad|r
    .target Amal'thazad
    .trainer >> Apprenez vos sorts de classe
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Montez à |cRXP_FRIENDLY_Flageller Griffon|r pour voler vers Brèche-de-Mort
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-liche|r
    .target Le Roi-liche
    .turnin 12778 >>Rendez la quête L’apocalypse écarlate
    .accept 12779 >>Acceptez la quête La fin de toutes choses…
step
	#completewith next
	.use 39700
	.vehicle >> |cRXP_WARN_Utilisez le|r |T134228:0|t[Cor des Couvegivres] |cRXP_WARN_pour enfourcher le|r |cRXP_FRIENDLY_Vainqueur couvegivre|r
step
    #loop
    .goto 124,56.0,62.2,100,0
    .goto 124,55.4,64.8,100,0
    .goto 124,54.8,66.8,100,0
    .goto 124,54.6,69.9,100,0
    .goto 124,54.4,75.6,100,0
    .goto 124,57.0,74.8,100,0
    .goto 124,57.3,71.8,100,0
    .goto 124,60.0,72.2,100,0
    .goto 124,62.6,75.1,100,0
    .goto 124,59.5,66.1,100,0
    .goto 124,59.5,60.2,100,0
    >>|cRXP_WARN_Lancez|r |T135851:0|t[Trait de mort gelé] (1) |cRXP_WARN_pour tuer |cRXP_ENEMY_Scarlet Soldiers|r et détruisez|r |cRXP_ENEMY_Scarlet Ballistas|r
    >>|cRXP_WARN_Lancez|r |T136217:0|t[Dévorer un humanoïde] (3) |cRXP_WARN_sur un |cRXP_ENEMY_Scarlet Croisé|r pour restaurer la vie et le mana|r
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .mob +Scarlet Ballista
    .complete 12779,1 --Scarlet Soldiers (150)
step
    #completewith TLKC
    .goto 124,53.575,36.865,30 >> Envolez-vous vers le |cRXP_FRIENDLY_Roi-liche|r
step
    #completewith TLKC
    .exitvehicle >> |cRXP_WARN_Quittez le|r |cRXP_FRIENDLY_Vainqueur couvegivre|r
step
    #label TLKC
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-liche|r
    .turnin 12779 >>Rendez la quête La fin de toutes choses…
    .target Le Roi-liche
    .accept 12800 >>Acceptez la quête Le dernier ordre du roi-liche
step
    #completewith next
    .goto 124,49.3,28.7,45,0
    .goto 124,47.1,24.1,45,0
    .goto 124,39.430,21.142,70,0
    .goto 124,35.161,26.725,80 >> Voyagez à travers La Passe Nocive vers Scierie de Browman
step
    .goto 124,34.1,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandant du Fléau Thalanor|r
    .turnin 12800 >>Rendez la quête Le dernier ordre du roi-liche
    .target Scourge Commander Thalanor
    .accept 12801 >>Acceptez la quête La Lumière de l’Aube
step
	#completewith next
    .goto 124,34.441,31.107
	.gossipoption 93584 >> |cRXP_WARN_Parlez à |cRXP_FRIENDLY_Généralissime Darion Mograine|r pour commencer le jeu de rôle|r
    >>|cRXP_WARN_S'il ne se tient pas à côté de |cRXP_FRIENDLY_Commandant du Fléau Thalanor|r cela signifie que la bataille est en cours ou en préparation. L'information pour ceci devrait être en haut de votre écran. Déplacez-vous vers Chapelle de l'Espoir de Lumière et attendez la fin du jeu de rôle|r
    .skipgossip
    .subzoneskip 2268
    .target Highlord Darion Mograine
step
    .goto 124,39.0,38.5
	>>|cRXP_WARN_Attendez la fin du jeu de rôle à Chapelle de l'Espoir de Lumière. Vous pouvez vous asseoir et rester hors de combat pendant la bataille|r
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto 124,39.119,39.069
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .turnin 12801 >>Rendez la quête La Lumière de l’Aube
    .target Highlord Darion Mograine
    .accept 13165 >>Acceptez la quête Reprendre Achérus
step
    #optional
    .equip 16,38633 >> |cRXP_WARN_Équipez|r |T132480:0|t[|cFF0070FFBardiche de la Lame d'ébène|r]
    .use 38633
    .itemcount 38633,1
step
    #optional
    .equip 16,38632 >> |cRXP_WARN_Équipez|r |T135335:0|t[|cFF0070FFEstramaçon de la Lame d'ébène|r]
    .use 38632
    .itemcount 38632,1
step
	#completewith next
	.cast 50977 >> |cRXP_WARN_Lancez|r |T135766:0|t[Porte de la mort]
    .usespell 50977
	.subzoneskip 4281
step
	#completewith next
    .subzone 4281 >> |cRXP_WARN_Passez par la|r |T135766:0|t[Porte de la mort]
step
    .goto 23/0,-5650.600,2375.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .target Highlord Darion Mograine
    .turnin 13165 >>Rendez la quête Reprendre Achérus
    .accept 13166 >>Acceptez la quête La bataille pour le fort d’Ébène
    .trainer >> Apprenez vos sorts de classe << wotlk/cata
step
    #completewith Pwerk
    .goto 23,83.179,48.888,5 >> Montez sur le téléporteur violet pour vous rendre à l'étage supérieur
step
    .isOnQuest 13166
    #sticky
    #label Cinderglacier
    #loop
    .waypoint 23,80.873,47.435,20,0
    .waypoint 23,81.227,44.550,20,0
    .waypoint 23,83.156,45.121,20,0
    .cast 53341 >>|cRXP_WARN_Cisélez votre nouvelle arme avec|r |T136130:0|t[Rune de Cendreglace] |cRXP_WARN_à la|r |cRXP_PICK_Forgerune|r
step
	#completewith Pwerk
	>>Tuez le |cRXP_ENEMY_Flageller|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #label Pwerk
    .goto 23,81.954,46.315
	>>Tuez |cRXP_ENEMY_Le Recousu|r
    .complete 13166,1 --Patchwerk (1)
    .mob Patchwerk
step
    #loop
    .goto 23,80.873,47.435,45,0
    .goto 23,81.227,44.550,45,0
    .goto 23,83.156,45.121,45,0
	>>Tuez le |cRXP_ENEMY_Flageller|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #requires Cinderglacier
	#completewith next
    .goto 23,83.179,48.888,5 >> Montez sur le téléporteur violet pour vous rendre au niveau inférieur
step
    #requires Cinderglacier
    .goto 23/0,-5650.700,2375.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .turnin 13166 >>Rendez la quête La bataille pour le fort d’Ébène
    .target Highlord Darion Mograine
    .accept 13188 >>Acceptez la quête Là où marche le roi << Alliance
    .accept 13189 >>Acceptez La bénédiction de Saurcroc << Horde
step << Horde
    .isOnQuest 13189
    .goto 23/0,-5696.000,2348.200
	.zone Durotar >>Prenez le portail pour Orgrimmar
step << Horde
    .goto Orgrimmar,31.74,37.82 << wotlk/cata
    .goto Orgrimmar,48.112,70.480 << mop
    .target Thrall << wotlk/cata
    .target Garrosh Hellscream << mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 13189 >>Rendez La bénédiction de Saurcroc
step << Horde
    .goto Orgrimmar,38.1,85.8 << wotlk
    .goto Orgrimmar,35.478,69.111 << cata/mop
	.zone Blasted Lands >> Prenez le Portail vers les terres Foudroyées
    .zoneskip Orgrimmar,1
step << Alliance
    .isOnQuest 13188
    .goto 23/0,-5659.900,2324.400
	.zone Elwynn Forest >>Prenez le portail pour Stormwind
step << Alliance
    .goto Stormwind City,79.989,38.468 << wotlk
    .goto 84/0,232.200,-8363.000 << cata/mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Roi Varian Wrynn|r
    .target King Varian Wrynn
    .turnin 13188 >>Rendez la quête Là où marche le roi
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >> Prenez le Portail vers les terres Foudroyées à la Tour des mages
    .zoneskip Stormwind City,1
]])
