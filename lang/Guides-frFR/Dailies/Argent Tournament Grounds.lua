if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name A_1_AT_Démarrage
#displayname |cRXP_LOOT_1.0|r - Devenir un champion

step
	#completewith next
	.goto IcecrownGlacier,69.66,22.86,200 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Justicière Mariel Cœur-Vrai|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13667 >> Acceptez la quête Le tournoi d'Argent << Alliance
	.accept 13668 >> Acceptez la quête Le tournoi d'Argent << Horde
	.target Justicar Mariel Trueheart
step
	#completewith next
	.goto IcecrownGlacier,72.59,22.61
	.fp Argent Tournament Grounds >> Apprenez le trajet de Vol vers l'Enceinte du tournoi d'Argent
	.target Helidan Lightwing
step
	>>Entrez dans le Pavillon du Concordat argenté de l'Alliance << Alliance
	>>Entrez dans le Pavillon de Saccage-Soleil de la Horde << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magister Edien|r Sunhollow << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13667 >> Rendez la quête Le tournoi d'Argent << Alliance
	.turnin 13668 >> Rendez la quête Le tournoi d'Argent << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r, |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Eclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r, |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.accept 13828 >> Acceptez la quête La maîtrise de la mêlée << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13837 >> Acceptez la quête La maîtrise de la charge << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.accept 13835 >> Acceptez la quête La maîtrise du brise-bouclier << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.accept 13829 >> Acceptez la quête La maîtrise de la mêlée << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.accept 13839 >> Acceptez la quête La maîtrise de la charge << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.accept 13838 >> Acceptez la quête La maîtrise du brise-bouclier << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	#completewith next
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis Montez le |cRXP_FRIENDLY_Stabled Palefroi quel'dorei|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis Montez le |cRXP_FRIENDLY_Stabled Faucon-pérégrin saccage-soleil|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valis Chassevent|r
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.20,19.23
	.complete 13835,1 << Alliance -- Valis Windchaser's advice
	.complete 13838,1 << Horde -- Valis Windchaser's advice
	.skipgossip 33974,1,1
	.target Valis Windchaser
step
	.isOnQuest 13835 << Alliance
	.isOnQuest 13838 << Horde
	>>Utilisez |T132358:0|tBrise-bouclier (2) sur |cRXP_ENEMY_Cible à distance|r et retirez ses couches de |T132360:0|tDéfense. Une fois qu'il n'y a plus de couches de |T132360:0|tDéfense, continuez à utiliser |T132358:0|tBrise-bouclier sur la |cRXP_ENEMY_Cible à distance|r vulnérable
	>>Vous devez être à au moins 5 yards de la |cRXP_ENEMY_Cible à distance|r quand vous utilisez |T132358:0|tBrise-bouclier
	.goto IcecrownGlacier,73.13,19.01
	.complete 13835,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13838,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rugan Ventracier|r
	.goto IcecrownGlacier,72.67,18.87
	.complete 13837,1 << Alliance -- Rugan Steelbelly's advice
	.complete 13839,1 << Horde -- Rugan Steelbelly's advice
	.skipgossip 33972,1,1
	.target Rugan Steelbelly
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>Utilisez |T132358:0|tBrise-bouclier (2) sur |cRXP_ENEMY_À la charge ! Cibles|r pour enlever les couches de |T132360:0|tDéfense. Utilisez |T132226:0|tÀ la charge ! (3) une fois qu'aucune couche de |T132360:0|tDéfense ne subsiste
	>>Assurez-vous de ne pas être trop près ou trop loin de la |cRXP_ENEMY_Cible de charge|r quand vous utilisez |T132226:0|tCharge
	.goto IcecrownGlacier,72.75,18.85
	.complete 13837,2 << Alliance -- Charge vulnerable Charge Target (2)
	.complete 13839,2 << Horde -- Charge vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeran Boisclos|r
	.goto IcecrownGlacier,72.46,19.30
	.complete 13828,1 << Alliance -- Jeran Lockwood's advice
	.complete 13829,1 << Horde -- Jeran Lockwood's advice
	.skipgossip 33973,1,1
	.target Jeran Lockwood
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>Utilisez |T132360:0|tDéfense (4) |c99ffff99TOUJOURS|r avant d'attaquer avec |T135375:0|tCoup de lance (1). |T132360:0|tDéfense peut s'empiler jusqu'à 3 fois. Il est préférable d'avoir toujours 3 couches de |T132360:0|tDéfense. Ne pas avoir au moins 1 couche de |T132360:0|tDéfense causera des dégâts importants quand vous utilisez |T135375:0|tCoup de lance, risquant potentiellement de vous démonter
	>>Utilisez |T135375:0|tCoup de lance (1) sur la |cRXP_ENEMY_Mêlée Leurre|r 5 fois
	>>Vous pouvez également utiliser |T134058:0|tRafraîchir la monture (5) pour soigner quand vous n'êtes pas en combat
	.goto IcecrownGlacier,72.28,19.24
	.complete 13828,2 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13829,2 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r, |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Eclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r, |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.turnin 13828 >> Rendre la quête La maîtrise de la mêlée << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13837 >> Rendre la quête La maîtrise de la charge << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13835 >> Rendre la quête La maîtrise du brise-bouclier << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13829 >> Rendre la quête La maîtrise de la mêlée << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13839 >> Rendre la quête La maîtrise de la charge << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13838 >> Rendre la quête La maîtrise du brise-bouclier << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r << Horde
	.accept 13672 >> Acceptez la quête Prêt pour le défi << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13678 >> Acceptez la quête Prêt pour le défi << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r. Il propose 1 quête quotidienne sur 3. Acceptez celle qui est disponible << Alliance
	.daily 13669,13670,13666 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r. Il propose 1 quête quotidienne sur 3. Acceptez celle qui est disponible << Horde
	.daily 13674,13675,13673 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Eclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.daily 13671 >> Acceptez la quête Entraînement sur le terrain << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.daily 13676 >> Acceptez la quête Entraînement sur le terrain << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.daily 13625 >> Acceptez la quête Sachez tenir vos rênes << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.daily 13677 >> Acceptez la quête Sachez tenir vos rênes << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestAvailable 13672 << Alliance
	.isQuestAvailable 13678 << Horde
step
	#completewith next
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos Sacs, puis Montez le |cRXP_FRIENDLY_Stabled Palefroi quel'dorei|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos Sacs, puis Montez le |cRXP_FRIENDLY_Stabled Faucon-pérégrin saccage-soleil|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Utilisez |T132358:0|tBrise-bouclier (2) sur |cRXP_ENEMY_Ranged Targets|r et supprimez les couches de |T132360:0|tDéfense. Une fois que les couches de |T132360:0|tDéfense n'existent plus, continuez à utiliser |T132358:0|tBrise-bouclier sur la Cible à distance vulnérable
	>>Vous devez être à au moins 5 mètres du |cRXP_ENEMY_Cible à distance|r lorsque vous utilisez |T132358:0|tBrise-bouclier
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.13,19.01
	.complete 13625,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13677,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Utilisez |T132358:0|tBrise-bouclier (2) sur |cRXP_ENEMY_Charge Targets|r pour éliminer les couches de |T132360:0|tDéfense. Utilisez |T132226:0|tÀ la charge ! (3) une fois qu'il n'y a plus de couches de |T132360:0|tDéfense
	>>Assurez-vous de ne pas être trop près ni trop loin du |cRXP_ENEMY_Cible de charge|r lorsque vous utilisez |T132226:0|tÀ la charge !
	.goto IcecrownGlacier,72.75,18.85
	.complete 13625,3 << Alliance -- Use Charge on vulnerable Charge Target (2)
	.complete 13677,3 << Horde -- Use Charge on vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Utilisez |T132360:0|tDéfense (4) |c99ffff99TOUJOURS|r avant d'attaquer avec |T135375:0|tCoup de lance (1). |T132360:0|tDéfense peut se cumuler jusqu'à 3 fois. Il faut toujours avoir 3 couches de |T132360:0|tDéfense. L'absence d'au moins 1 couche de |T132360:0|tDéfense vous causera des dégâts importants quand vous utilisez |T135375:0|tCoup de lance, ce qui peut potentiellement vous démonter.
	>>Utilisez |T135375:0|tCoup de lance (1) sur le |cRXP_ENEMY_Mêlée Leurre|r 5 fois
	>>Vous pouvez également utiliser |T134058:0|tRafraîchir la monture (5) pour soigner quand vous n'êtes pas en combat
	.goto IcecrownGlacier,72.28,19.24
	.complete 13625,1 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13677,1 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	.isOnQuest 13671 << Alliance
	.isOnQuest 13676 << Horde
	>>Tuez |cRXP_ENEMY_Hulking Abominations|r, |cRXP_ENEMY_Malefic Necromancers|r et |cRXP_ENEMY_Serviteurs increvables|r ou |cRXP_ENEMY_any Flageller|r dans La Couronne de glace
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	.goto IcecrownGlacier,70.79,62.08,40,0
	.goto IcecrownGlacier,69.99,65.26,40,0
	.goto IcecrownGlacier,67.91,69.43,40,0
	.goto IcecrownGlacier,71.42,68.86,40,0
	.goto IcecrownGlacier,70.79,62.08
	.complete 13671,1 << Alliance -- Icecrown Scourge slain (8)
	.complete 13676,1 << Horde -- Icecrown Scourge slain (8)
	.mob Hulking Abomination
	.mob Malefic Necromancer
	.mob Undying Minion
	.mob Risen Alliance Soldier
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
step
	#completewith next
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13669,1 << Alliance -- Blade of Drak'Mar (1)
	.complete 13674,1 << Horde -- Blade of Drak'Mar (1)
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13670,1 << Alliance -- Winter's Edge (1)
	.complete 13675,1 << Horde -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
step
	#completewith next
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
step
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13666,1 << Alliance -- Ashwood Brand (1)
	.complete 13673,1 << Horde -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Horde
	.isOnQuest 13666,13673,13675,13670,13674,13669
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r, |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Éclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r, |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.turnin 13669 >> Rendez la quête Une arme remarquable << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13674 >> Rendez la quête Une arme remarquable << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Rendez la quête Entraînement sur le terrain << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Rendez la quête Entraînement sur le terrain << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Rendez la quête Sachez tenir vos rênes << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Rendez la quête Sachez tenir vos rênes << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13669 << Alliance -- A Worthy Weapon
	.isQuestComplete 13674 << Horde -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r, |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Éclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r, |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.turnin 13670 >> Rendez la quête Fil de l'hiver << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13675 >> Rendez la quête Fil de l'hiver << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Rendez la quête Entraînement sur le terrain << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Rendez la quête Entraînement sur le terrain << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Rendez la quête Sachez tenir vos rênes << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Rendez la quête Sachez tenir vos rênes << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13670 << Alliance -- The Edge Of Winter
	.isQuestComplete 13675 << Horde -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r, |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Éclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r, |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.turnin 13666 >> Rendez la quête Une lame digne d'un champion << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13673 >> Rendez la quête Une lame digne d'un champion << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Rendez la quête Entraînement sur le terrain << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Rendez la quête Entraînement sur le terrain << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Rendez la quête Sachez tenir vos rênes << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Rendez la quête Sachez tenir vos rênes << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13666 << Alliance -- A Blade Fit For A Champion
	.isQuestComplete 13673 << Horde -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avareth Frappe-rapide|r et |cRXP_FRIENDLY_Eclaireur Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Amariel Ligesol|r et |cRXP_FRIENDLY_Galathia Brillaube|r << Horde
	.turnin -13671 >> Rendez la quête Entraînement sur le terrain << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin -13676 >> Rendez la quête Entraînement sur le terrain << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin -13625 >> Rendez la quête Sachez tenir vos rênes << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin -13677 >> Rendez la quête Sachez tenir vos rênes << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step -- Checking if they have 15 Aspirant's Seals after a set of turn ins.
	>>Afin de compléter la quête |cFFffff00Prêt pour le défi|r et progresser dans le |T236690:0|tEnceinte du tournoi d'Argent, vous devez compléter les quêtes quotidiennes et acquérir |T133443:0|t|c99CCFFFFAspirant's Seals|r
	>>Vous avez besoin |T133443:0|t|c99CCFFFF15 Aspirant's Seals|r. Vous gagnerez 5 par jour si vous complétez les 3 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r << Horde
	.complete 13672,1 << Alliance -- Aspirant's Seal (15)
	.complete 13678,1 << Horde -- Aspirant's Seal (15)
	.turnin 13672 >> Rendez la quête Prêt pour le défi << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13678 >> Rendez la quête Prêt pour le défi << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r << Horde
	.accept 13679 >> Acceptez la quête Le défi de l'aspirant << Alliance
	.accept 13680 >> Acceptez la quête Le défi de l'aspirant << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
	.isQuestTurnedIn 13672 << Alliance
	.isQuestTurnedIn 13678 << Horde
step
	#completewith next
	>>Envolez-vous vers l'Anneau des Aspirants du côté nord
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis Montez le |cRXP_FRIENDLY_Stabled Palefroi quel'dorei|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis Montez le |cRXP_FRIENDLY_Stabled Faucon-pérégrin saccage-soleil|r << Horde
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion << Alliance
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion << Horde
	.goto IcecrownGlacier,71.84,19.87 << Alliance
	.goto IcecrownGlacier,71.84,19.98 << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer David|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et maintenez les piles pendant le duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Vaillant d'argent|r et le vainquez
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,71.43,19.57
	.complete 13679,1 << Alliance -- Argent Valiant defeated (1)
	.complete 13680,1 << Horde -- Argent Valiant defeated (1)
	.skipgossip 2
	.timer 13,Arrivée du Vaillant d'argent
	.mob Argent Valiant
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>Sautez du |cRXP_FRIENDLY_Palefroi quel'dorei|r << Alliance
	>>Sautez du |cRXP_FRIENDLY_Faucon-pérégrin saccage-soleil à l'écurie|r << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistère Edien Solcreuse|r << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13679 >> Rendez la quête Le défi de l'aspirant << Alliance
	.turnin 13680 >> Rendez la quête Le défi de l'aspirant << Horde
	.accept 13690 >> Acceptez la quête Un vaillant de l'Exodar << Draenei
	.accept 13685 >> Acceptez la quête Un vaillant de Forgefer << Dwarf
	.accept 13688 >> Acceptez la quête Un vaillant de Gnomeregan << Gnome
	.accept 13684 >> Acceptez la quête Un vaillant de Hurlevent	<< Human
	.accept 13689 >> Acceptez la quête Un vaillant de Darnassus << NightElf
	.accept 13695 >> Acceptez la quête Un vaillant de Fossoyeuse << Scourge
	.accept 13691 >> Acceptez la quête Un vaillant d'Orgrimmar << Orc
	.accept 13694 >> Acceptez la quête Un vaillant des Pitons-du-Tonnerre << Tauren
	.accept 13693 >> Acceptez la quête Un vaillant de Sen'jin << Troll
	.accept 13696 >> Acceptez la quête Un vaillant de Lune-d'Argent << BloodElf
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13690 >> Rendez la quête Un vaillant de l'Exodar << Draenei
	.turnin 13685 >> Rendez la quête Un vaillant de Forgefer << Dwarf
	.turnin 13688 >> Rendez la quête Un vaillant de Gnomeregan << Gnome
	.turnin 13684 >> Rendez la quête Un vaillant de Hurlevent	<< Human
	.turnin 13689 >> Rendez la quête Un vaillant de Darnassus << NightElf
	.turnin 13695 >> Rendez la quête Un vaillant de Fossoyeuse << Scourge
	.turnin 13691 >> Rendez la quête Un vaillant d'Orgrimmar << Orc
	.turnin 13694 >> Rendez la quête Un vaillant des Pitons-du-Tonnerre << Tauren
	.turnin 13693 >> Rendez la quête Un vaillant de Sen'jin << Troll
	.turnin 13696 >> Rendez la quête Un vaillant de Lune-d'Argent << BloodElf
	.accept 13716 >> Acceptez la quête Les devoirs du vaillant << Draenei
	.accept	13714 >> Acceptez la quête Les devoirs du vaillant << Dwarf
	.accept 13715 >> Acceptez la quête Les devoirs du vaillant << Gnome
	.accept	13718 >> Acceptez la quête Les devoirs du vaillant << Human
	.accept 13717 >> Acceptez la quête Les devoirs du vaillant << NightElf
	.accept	13721 >> Acceptez la quête Les devoirs du vaillant << Scourge
	.accept 13697 >> Acceptez la quête Les devoirs du vaillant << Orc
	.accept 13720 >> Acceptez la quête Les devoirs du vaillant << Tauren
	.accept 13719 >> Acceptez la quête Les devoirs du vaillant << Troll
	.accept 13722 >> Acceptez la quête Les devoirs du vaillant << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf

step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13603,13616,13600 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.daily 13592 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >> Acceptez la quête La grande mêlée
	.daily 13847 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13752,13754,13753 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >> Acceptez la quête La grande mêlée
	.daily 13854 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r. Elle a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13757,13759,13758 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.daily 13760 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >> Acceptez la quête La grande mêlée
	.daily 13855 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r. Elle a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13741,13743,13742 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.daily 13744 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >> Acceptez la quête La grande mêlée
	.daily 13851 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13746,13748,13747 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.daily 13749 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >> Acceptez la quête La grande mêlée
	.daily 13852 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r. Elle a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13783,13785,13784 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.daily 13786 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >> Acceptez la quête La grande mêlée
	.daily 13859 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13778,13780,13779 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.daily 13781 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >> Acceptez la quête La grande mêlée
	.daily 13860 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13762,13764,13763 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.daily 13765 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >> Acceptez la quête La grande mêlée
	.daily 13856 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13773,13775,13774 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.daily 13776 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >> Acceptez la quête La grande mêlée
	.daily 13858 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13768,13770,13769 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >> Acceptez la quête La grande mêlée
	.daily 13857 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez l'Elekk de l'Exodar à l'écurie << Draenei
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Bélier de Forgefer à l'écurie << Dwarf
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Mécanotrotteur de Gnomeregan à l'écurie << Gnome
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Palefroi de Hurlevent à l'écurie << Human
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Sabre-de-nuit darnassien à l'écurie << NightElf
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Cheval de guerre des Réprouvés à l'écurie << Scourge
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Loup d'Orgrimmar à l'écurie << Orc
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Kodo des Pitons-du-Tonnerre à l'écurie << Tauren
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Raptor sombrelance à l'écurie << Troll
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Faucon-pérégrin de Lune-d'argent à l'écurie << BloodElf
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion << Alliance
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
step -- THE GRAND MELEE
	>>Rendez-vous à l'Anneau des Vaillants de l'Alliance << Alliance
	>>Rendez-vous à l'Anneau des Vaillants de la Horde << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05 << Alliance
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39 << Horde
	.complete 13665,1 << Human -- Mark of the Valiant (3)
	.complete 13745,1 << Dwarf -- Mark of the Valiant (3)
	.complete 13750,1 << Gnome -- Mark of the Valiant (3)
	.complete 13756,1 << Draenei -- Mark of the Valiant (3)
	.complete 13761,1 << NightElf -- Mark of the Valiant (3)
	.complete 13767,1 << Orc -- Mark of the Valiant (3)
	.complete 13772,1 << Troll -- Mark of the Valiant (3)
	.complete 13777,1 << Tauren -- Mark of the Valiant (3)
	.complete 13782,1 << Scourge -- Mark of the Valiant (3)
	.complete 13787,1 << BloodElf -- Mark of the Valiant (3)
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
	.skipgossip
	.mob Stormwind Valiant << Alliance
	.mob Ironforge Valiant << Alliance
	.mob Gnomeregan Valiant << Alliance
	.mob Darnassus Valiant << Alliance
	.mob Exodar Valiant << Alliance
	.mob Thunder Bluff Valiant << Horde
	.mob Silvermoon Valiant << Horde
	.mob Sen'jin Valiant << Horde
	.mob Orgrimmar Valiant << Horde
	.mob Undercity Valiant << Horde
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 << Human -- Converted Hero slain (10)
	.complete 13744,1 << Dwarf -- Converted Hero slain (10)
	.complete 13749,1 << Gnome -- Converted Hero slain (10)
	.complete 13755,1 << Draenei -- Converted Hero slain (10)
	.complete 13760,1 << NightElf -- Converted Hero slain (10)
	.complete 13765,1 << Orc -- Converted Hero slain (10)
	.complete 13771,1 << Troll -- Converted Hero slain (10)
	.complete 13776,1 << Tauren -- Converted Hero slain (10)
	.complete 13781,1 << Scourge -- Converted Hero slain (10)
	.complete 13786,1 << BloodElf -- Converted Hero slain (10)
	.isOnQuest 13592,13744,13749,13755,13760,13765,13771,13776,13781,13786
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Horde
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13847,1 << Human -- Boneguard Footman slain (15)
	.complete 13847,3 << Human -- Boneguard Lieutenant (3)
	.complete 13851,1 << Dwarf -- Boneguard Footman slain (15)
	.complete 13851,3 << Dwarf -- Boneguard Lieutenant slain (3)
	.complete 13852,1 << Gnome -- Boneguard Footman slain (15)
	.complete 13852,3 << Gnome -- Boneguard Lieutenant slain (3)
	.complete 13854,1 << Draenei -- Boneguard Footman slain (15)
	.complete 13854,3 << Draenei -- Boneguard Lieutenant slain (3)
	.complete 13855,1 << NightElf -- Boneguard Footman slain (15)
	.complete 13855,3 << NightElf -- Boneguard Lieutenant slain (3)
	.complete 13856,1 << Orc -- Boneguard Footman slain (15)
	.complete 13856,3 << Orc -- Boneguard Lieutenant slain (3)
	.complete 13857,1 << Troll -- Boneguard Footman slain (15)
	.complete 13857,3 << Troll -- Boneguard Lieutenant slain (3)
	.complete 13858,1 << Tauren -- Boneguard Footman slain (15)
	.complete 13858,3 << Tauren -- Boneguard Lieutenant slain (3)
	.complete 13860,1 << Scourge -- Boneguard Footman slain (15)
	.complete 13860,3 << Scourge -- Boneguard Lieutenant slain (3)
	.complete 13859,1 << BloodElf -- Boneguard Footman slain (15)
	.complete 13859,3 << BloodElf -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13600,1 << Human -- Blade of Drak'Mar (1)
	.complete 13742,1 << Dwarf -- Blade of Drak'Mar (1)
	.complete 13747,1 << Gnome -- Blade of Drak'Mar (1)
	.complete 13753,1 << Draenei -- Blade of Drak'Mar (1)
	.complete 13758,1 << NightElf -- Blade of Drak'Mar (1)
	.complete 13763,1 << Orc -- Blade of Drak'Mar (1)
	.complete 13769,1 << Troll -- Blade of Drak'Mar (1)
	.complete 13774,1 << Tauren -- Blade of Drak'Mar (1)
	.complete 13779,1 << Scourge -- Blade of Drak'Mar (1)
	.complete 13784,1 << BloodElf -- Blade of Drak'Mar (1)
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13616,1 << Human -- Winter's Edge (1)
	.complete 13743,1 << Dwarf -- Winter's Edge (1)
	.complete 13748,1 << Gnome -- Winter's Edge (1)
	.complete 13754,1 << Draenei -- Winter's Edge (1)
	.complete 13759,1 << NightElf -- Winter's Edge (1)
	.complete 13764,1 << Orc -- Winter's Edge (1)
	.complete 13770,1 << Troll -- Winter's Edge (1)
	.complete 13775,1 << Tauren -- Winter's Edge (1)
	.complete 13780,1 << Scourge -- Winter's Edge (1)
	.complete 13785,1 << BloodElf -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 << Human -- Ashwood Brand (1)
	.complete 13741,1 << Dwarf -- Ashwood Brand (1)
	.complete 13746,1 << Gnome -- Ashwood Brand (1)
	.complete 13752,1 << Draenei -- Ashwood Brand (1)
	.complete 13757,1 << NightElf -- Ashwood Brand (1)
	.complete 13762,1 << Orc -- Ashwood Brand (1)
	.complete 13768,1 << Troll -- Ashwood Brand (1)
	.complete 13773,1 << Tauren -- Ashwood Brand (1)
	.complete 13778,1 << Scourge -- Ashwood Brand (1)
	.complete 13783,1 << BloodElf -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Horde
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783,13616,13743,13748,13754,13759,13764,13770,13775,13780,13785,13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r, |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin 13603 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Rendez la quête La grande mêlée
	.turnin 13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r, |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin 13616 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Rendez la quête La grande mêlée
	.turnin 13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r, |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin 13600 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Rendez la quête La grande mêlée
	.turnin 13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin -13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >> Rendez la quête La grande mêlée
	.turnin -13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Rendez la quête La grande mêlée
	.turnin 13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Rendez la quête La grande mêlée
	.turnin 13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Rendez la quête La grande mêlée
	.turnin 13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >> Rendez la quête La grande mêlée
	.turnin -13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r, |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin 13757 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Rendez la quête La grande mêlée
	.turnin 13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r, |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin 13759 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Rendez la quête La grande mêlée
	.turnin 13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r, |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin 13758 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Rendez la quête La grande mêlée
	.turnin 13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin -13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >> Rendez la quête La grande mêlée
	.turnin -13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r, |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin 13741 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Rendez la quête La grande mêlée
	.turnin 13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r, |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin 13743 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Rendez la quête La grande mêlée
	.turnin 13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r, |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin 13742 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Rendez la quête La grande mêlée
	.turnin 13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rollo|r Sureshot et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin -13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >> Rendez la quête La grande mêlée
	.turnin -13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r, |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin 13746 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Rendez la quête La grande mêlée
	.turnin 13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r, |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin 13748 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Rendez la quête La grande mêlée
	.turnin 13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r, |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin 13747 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Rendez la quête La grande mêlée
	.turnin 13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin -13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >> Rendez la quête La grande mêlée
	.turnin -13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Rendez la quête La grande mêlée
	.turnin 13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Rendez la quête La grande mêlée
	.turnin 13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Rendez la quête La grande mêlée
	.turnin 13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >> Rendez la quête La grande mêlée
	.turnin -13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r, |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin 13773 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Rendez la quête La grande mêlée
	.turnin 13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r, |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin 13775 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Rendez la quête La grande mêlée
	.turnin 13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r, |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin 13774 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Rendez la quête La grande mêlée
	.turnin 13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin -13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >> Rendez la quête La grande mêlée
	.turnin -13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r, |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin 13762 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Rendez la quête La grande mêlée
	.turnin 13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r, |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin 13764 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Rendez la quête La grande mêlée
	.turnin 13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r, |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin 13763 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Rendez la quête La grande mêlée
	.turnin 13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin -13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >> Rendez la quête La grande mêlée
	.turnin -13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r, |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin 13778 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Rendez la quête La grande mêlée
	.turnin 13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r, |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin 13780 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Rendez la quête La grande mêlée
	.turnin 13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r, |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin 13779 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Rendez la quête La grande mêlée
	.turnin 13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin -13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >> Rendez la quête La grande mêlée
	.turnin -13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r, |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13783 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Rendez la quête La grande mêlée
	.turnin 13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r, |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13785 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Rendez la quête La grande mêlée
	.turnin 13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r, |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13784 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Rendez la quête La grande mêlée
	.turnin 13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin -13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >> Rendez la quête La grande mêlée
	.turnin -13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron

step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.complete 13716,1 >> Rendez la quête Les devoirs du vaillant << Draenei -- Valiant's Seal (25)
	.complete 13714,1 >> Rendez la quête Les devoirs du vaillant << Dwarf -- Valiant's Seal (25)
	.complete 13715,1 >> Rendez la quête Les devoirs du vaillant << Gnome -- Valiant's Seal (25)
	.complete 13718,1 >> Rendez la quête Les devoirs du vaillant << Human -- Valiant's Seal (25)
	.complete 13717,1 >> Rendez la quête Les devoirs du vaillant << NightElf -- Valiant's Seal (25)
	.complete 13721,1 >> Rendez la quête Les devoirs du vaillant << Scourge -- Valiant's Seal (25)
	.complete 13697,1 >> Rendez la quête Les devoirs du vaillant << Orc -- Valiant's Seal (25)
	.complete 13720,1 >> Rendez la quête Les devoirs du vaillant << Tauren -- Valiant's Seal (25)
	.complete 13719,1 >> Rendez la quête Les devoirs du vaillant << Troll -- Valiant's Seal (25)
	.complete 13722,1 >> Rendez la quête Les devoirs du vaillant << BloodElf -- Valiant's Seal (25)
	.turnin 13716 >> Rendez la quête Les devoirs du vaillant << Draenei
	.turnin 13714 >> Rendez la quête Les devoirs du vaillant << Dwarf
	.turnin 13715 >> Rendez la quête Les devoirs du vaillant << Gnome
	.turnin 13718 >> Rendez la quête Les devoirs du vaillant << Human
	.turnin 13717 >> Rendez la quête Les devoirs du vaillant << NightElf
	.turnin 13721 >> Rendez la quête Les devoirs du vaillant << Scourge
	.turnin 13697 >> Rendez la quête Les devoirs du vaillant << Orc
	.turnin 13720 >> Rendez la quête Les devoirs du vaillant << Tauren
	.turnin 13719 >> Rendez la quête Les devoirs du vaillant << Troll
	.turnin 13722 >> Rendez la quête Les devoirs du vaillant << BloodElf
	.accept 13724 >> Acceptez la quête Le défi du vaillant << Draenei
	.accept	13713 >> Acceptez la quête Le défi du vaillant << Dwarf
	.accept 13723 >> Acceptez la quête Le défi du vaillant << Gnome
	.accept	13699 >> Acceptez la quête Le défi du vaillant << Human
	.accept 13725 >> Acceptez la quête Le défi du vaillant << NightElf
	.accept	13729 >> Acceptez la quête Le défi du vaillant << Scourge
	.accept 13726 >> Acceptez la quête Le défi du vaillant << Orc
	.accept 13728 >> Acceptez la quête Le défi du vaillant << Tauren
	.accept 13727 >> Acceptez la quête Le défi du vaillant << Troll
	.accept 13731 >> Acceptez la quête Le défi du vaillant << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez l'Elekk de l'Exodar à l'écurie << Draenei
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Bélier de Forgefer à l'écurie << Dwarf
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Mécanotrotteur de Gnomeregan à l'écurie << Gnome
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Palefroi de Hurlevent à l'écurie << Human
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Sabre-de-nuit darnassien à l'écurie << NightElf
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Cheval de guerre des Réprouvés à l'écurie << Scourge
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Loup d'Orgrimmar à l'écurie << Orc
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Kodo des Pitons-du-Tonnerre à l'écurie << Tauren
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Raptor sombrelance à l'écurie << Troll
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Faucon-pérégrin de Lune-d'argent à l'écurie << BloodElf
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion << Alliance
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 << Draenei -- Argent Champion defeated (1)
	.complete 13713,1 << Dwarf -- Argent Champion defeated (1)
	.complete 13723,1 << Gnome -- Argent Champion defeated (1)
	.complete 13699,1 << Human -- Argent Champion defeated (1)
	.complete 13725,1 << NightElf -- Argent Champion defeated (1)
	.complete 13729,1 << Scourge -- Argent Champion defeated (1)
	.complete 13726,1 << Orc -- Argent Champion defeated (1)
	.complete 13728,1 << Tauren -- Argent Champion defeated (1)
	.complete 13727,1 << Troll -- Argent Champion defeated (1)
	.complete 13731,1 << BloodElf -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13724 >> Rendez la quête Le défi du vaillant << Draenei
	.turnin	13713 >> Rendez la quête Le défi du vaillant << Dwarf
	.turnin 13723 >> Rendez la quête Le défi du vaillant << Gnome
	.turnin	13699 >> Rendez la quête Le défi du vaillant << Human
	.turnin 13725 >> Rendez la quête Le défi du vaillant << NightElf
	.turnin	13729 >> Rendez la quête Le défi du vaillant << Scourge
	.turnin 13726 >> Rendez la quête Le défi du vaillant << Orc
	.turnin 13728 >> Rendez la quête Le défi du vaillant << Tauren
	.turnin 13727 >> Rendez la quête Le défi du vaillant << Troll
	.turnin 13731 >> Rendez la quête Le défi du vaillant << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.accept 13734 >> Acceptez la quête La naissance d'un champion << Draenei
	.accept	13732 >> Acceptez la quête La naissance d'un champion << Dwarf
	.accept 13733 >> Acceptez la quête La naissance d'un champion << Gnome
	.accept	13702 >> Acceptez la quête La naissance d'un champion << Human
	.accept 13735 >> Acceptez la quête La naissance d'un champion << NightElf
	.accept	13739 >> Acceptez la quête La naissance d'un champion << Scourge
	.accept 13736 >> Acceptez la quête La naissance d'un champion << Orc
	.accept 13738 >> Acceptez la quête La naissance d'un champion << Tauren
	.accept 13737 >> Acceptez la quête La naissance d'un champion << Troll
	.accept 13740 >> Acceptez la quête La naissance d'un champion << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Justicière Mariel Cœur-Vrai|r
	.goto IcecrownGlacier,69.66,22.86
	.turnin 13734 >> Rendez la quête La naissance d'un champion << Draenei
	.turnin	13732 >> Rendez la quête La naissance d'un champion << Dwarf
	.turnin 13733 >> Rendez la quête La naissance d'un champion << Gnome
	.turnin	13702 >> Rendez la quête La naissance d'un champion << Human
	.turnin 13735 >> Rendez la quête La naissance d'un champion << NightElf
	.turnin	13739 >> Rendez la quête La naissance d'un champion << Scourge
	.turnin 13736 >> Rendez la quête La naissance d'un champion << Orc
	.turnin 13738 >> Rendez la quête La naissance d'un champion << Tauren
	.turnin 13737 >> Rendez la quête La naissance d'un champion << Troll
	.turnin 13740 >> Rendez la quête La naissance d'un champion << BloodElf
	.target Justicar Mariel Trueheart
step
	.goto IcecrownGlacier,76.33,19.48 << Alliance
	.goto IcecrownGlacier,76.17,24.21 << Horde
	+|T255137:0|t|cRXP_WARN_Vous êtes désormais un Champion de l'Exodar!|r << Draenei
	+|T255139:0|t|cRXP_WARN_Vous êtes désormais un Champion de Gnomeregan!|r << Gnome
	+|T255138:0|t|cRXP_WARN_Vous êtes désormais un Champion de Forgefer!|r << Dwarf
	+|T255141:0|t|cRXP_WARN_Vous êtes désormais un Champion de Darnassus!|r << NightElf
	+|cRXP_WARN_Vous êtes désormais un |T255140:0|tChampion de Hurlevent!|r << Human
	+|T255142:0|t|cRXP_WARN_Vous êtes désormais un Champion d'Orgrimmar!|r << Orc
	+|T255145:0|t|cRXP_WARN_Vous êtes désormais un Champion de Sen'jin!|r << Troll
	+|T255136:0|t|cRXP_WARN_Vous êtes désormais un Champion de Lune-d'Argent!|r << BloodElf
	+|T255143:0|t|cRXP_WARN_Vous êtes désormais un Champion de la Fossoyeuse!|r << Scourge
	+|T255144:0|t|cRXP_WARN_Vous êtes désormais un Champion des Pitons-du-Tonnerre!|r << Tauren
	>>|cRXP_LOOT_Vous avez terminé ce guide d'introduction Becoming a Champion Guide!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13724 << Draenei
	.isQuestTurnedIn 13713 << Dwarf
	.isQuestTurnedIn 13723 << Gnome
	.isQuestTurnedIn 13699 << Human
	.isQuestTurnedIn 13725 << NightElf
	.isQuestTurnedIn 13729 << Scourge
	.isQuestTurnedIn 13726 << Orc
	.isQuestTurnedIn 13728 << Tauren
	.isQuestTurnedIn 13727 << Troll
	.isQuestTurnedIn 13731 << BloodElf
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name B_2_AT_Exodar
#displayname |cRXP_FRIENDLY_2.0|r - Champion de l'Exodar
<< Alliance !Draenei

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r
	.goto IcecrownGlacier,76.10,19.10
	.accept 13705 >> Acceptez la quête Vaillant de l'Exodar
	.turnin 13705 >> Rendez la quête Vaillant de l'Exodar
	.target Colosos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13716 >> Acceptez la quête Les devoirs du vaillant
	.daily 13752,13754,13753 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >> Acceptez la quête La grande mêlée
	.daily 13854 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716
step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez l'Elekk de l'Exodar à l'écurie
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13756
step -- THE GRAND MELEE
	>>Rendez-vous à l'Anneau des Vaillants de l'Alliance << Alliance
	>>Rendez-vous à l'Anneau des Vaillants de la Horde << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13756,1 -- Mark of the Valiant (3)
	.isOnQuest 13756
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13755,1 -- Converted Hero slain (10)
	.isOnQuest 13755
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Alliance
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13854
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13854,1 -- Boneguard Footman slain (15)
	.complete 13854,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13854
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13753
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13753
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13753,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13753

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13754
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13754
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13754
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13754,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13754

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13752
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13752,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13752
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13752,13754,13753,13755,13756,13854
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Rendez la quête La grande mêlée
	.turnin 13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Rendez la quête La grande mêlée
	.turnin 13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Rendez la quête La grande mêlée
	.turnin 13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saandos|r et |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >> Rendez la quête La grande mêlée
	.turnin -13854 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r
	.goto IcecrownGlacier,76.10,19.10
	.complete 13716,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13716 >> Rendez la quête Les devoirs du vaillant
	.accept 13724 >> Acceptez la quête Le défi du vaillant
	.target Colosos
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez l'Elekk de l'Exodar à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colossos|r
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13724 >> Rendez la quête Le défi du vaillant
	.target Colosos
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Vous êtes maintenant un |T255137:0|tchampion de l'Exodar!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le Guide du Champion de l'Exodar !|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13724
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name C_2_AT_Stormwind
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Hurlevent
<< Alliance !Human

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.accept 13593 >> Acceptez la quête Vaillant de Hurlevent
	.turnin 13593 >> Rendez la quête Vaillant de Hurlevent
	.target Marshal Jacob Alerius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13718 >> Acceptez la quête Les devoirs du vaillant
	.daily 13603,13616,13600 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.daily 13592 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >> Acceptez la quête La grande mêlée
	.daily 13847 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Palefroi de Hurlevent à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13665
step -- THE GRAND MELEE
	>>Rendez-vous à l'Anneau des Vaillants de l'Alliance << Alliance
	>>Rendez-vous à l'Anneau des Vaillants de la Horde << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13665,1 -- Mark of the Valiant (3)
	.isOnQuest 13665
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 -- Converted Hero slain (10)
	.isOnQuest 13592
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Alliance
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13847
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13847,1 -- Boneguard Footman slain (15)
	.complete 13847,3 -- Boneguard Lieutenant (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13600
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13600,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13600

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13616
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13616
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13616,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13603
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13603,13616,13600,13592,13665,13847
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r, |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin 13603 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Rendez la quête La grande mêlée
	.turnin 13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r, |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin 13616 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Rendez la quête La grande mêlée
	.turnin 13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r, |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin 13600 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Rendez la quête La grande mêlée
	.turnin 13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sire Marcus Barlowe|r et |cRXP_FRIENDLY_Capitaine Joseph Holley|r
	.turnin -13592 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >> Rendez la quête La grande mêlée
	.turnin -13847 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
step
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r
	.complete 13718,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13718 >> Rendez la quête Les devoirs du vaillant
	.accept	13699 >> Acceptez la quête Le défi du vaillant
	.target Marshal Jacob Alerius
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Palefroi de Hurlevent à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13699,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.turnin	13699 >> Rendez la quête Le défi du vaillant
	.target Marshal Jacob Alerius
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Vous êtes désormais un |T255140:0|tChampion de Hurlevent!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le guide Champion de Hurlevent !|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13699
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name D_2_AT_Forgefer
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Forgefer
<< Alliance !Dwarf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r
	.goto IcecrownGlacier,76.64,19.49
	.accept 13703 >> Acceptez la quête Vaillant de Forgefer
	.turnin 13703 >> Rendez la quête Vaillant de Forgefer
	.target Lana Stouthammer
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r. Elle a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13714 >> Acceptez la quête Les devoirs du vaillant
	.daily 13741,13743,13742 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.daily 13744 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >> Acceptez la quête La grande mêlée
	.daily 13851 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Bélier de Forgefer à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13745
step -- THE GRAND MELEE
	>>Rendez-vous à l'Anneau des Vaillants de l'Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13745,1 -- Mark of the Valiant (3)
	.isOnQuest 13745
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant

step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13744,1 -- Converted Hero slain (10)
	.isOnQuest 13744
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13851
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13851,1 -- Boneguard Footman slain (15)
	.complete 13851,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13851
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13742
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13742
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13742,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13742

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13743
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13743
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13743
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13743,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13743

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13741
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13741,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13741
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Horde
	.isOnQuest 13741,13743,13742,13744,13745,13851
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r, |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin 13741 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Rendez la quête La grande mêlée
	.turnin 13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r, |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin 13743 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Rendez la quête La grande mêlée
	.turnin 13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r, |cRXP_FRIENDLY_Rollo Coup-sûr|r et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin 13742 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Rendez la quête La grande mêlée
	.turnin 13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rollo|r Sureshot et |cRXP_FRIENDLY_Clara Voltebière|r
	.turnin -13744 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >> Rendez la quête La grande mêlée
	.turnin -13851 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew
step
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r
	.goto IcecrownGlacier,76.64,19.49
	.complete 13714,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13714 >> Rendez la quête Les devoirs du vaillant
	.accept	13713 >> Acceptez la quête Le défi du vaillant
	.target Lana Stouthammer
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Bélier de Forgefer à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13713,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lana Rudemartel|r
	.goto IcecrownGlacier,76.64,19.49
	.turnin	13713 >> Rendez la quête Le défi du vaillant
	.target Lana Stouthammer
step
	.goto IcecrownGlacier,76.33,19.48
	+|T255138:0|t|cRXP_WARN_Vous êtes désormais un Champion de Forgefer!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le guide du Champion de Forgefer!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13713
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name E_2_AT_Gnomeregan
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Gnomeregan
<< Alliance !Gnome

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r
	.goto IcecrownGlacier,76.55,19.82
	.accept 13704 >> Acceptez la quête Vaillant de Gnomeregan
	.turnin 13704 >> Rendez la quête Vaillant de Gnomeregan
	.target Ambrose Boltspark
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13715 >> Acceptez la quête Les devoirs du vaillant
	.daily 13746,13748,13747 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.daily 13749 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >> Acceptez la quête La grande mêlée
	.daily 13852 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Mécanotrotteur de Gnomeregan à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13750
step -- THE GRAND MELEE
	>>Rendez-vous à l'Anneau des Vaillants de l'Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13750,1 -- Mark of the Valiant (3)
	.isOnQuest 13750
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13749,1 -- Converted Hero slain (10)
	.isOnQuest 13749
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13852
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13852,1 -- Boneguard Footman slain (15)
	.complete 13852,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13852
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13747
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13747
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13747,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13747

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13748
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13748
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13748
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13748,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13748

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13746
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13746,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13746
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13746,13748,13747,13749,13750,13852
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r, |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin 13746 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Rendez la quête La grande mêlée
	.turnin 13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r, |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin 13748 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Rendez la quête La grande mêlée
	.turnin 13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r, |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin 13747 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Rendez la quête La grande mêlée
	.turnin 13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koche Clépharnaüm|r et |cRXP_FRIENDLY_Krante Clépharnaüm|r
	.turnin -13749 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >> Rendez la quête La grande mêlée
	.turnin -13852 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r
	.goto IcecrownGlacier,76.55,19.82
	.complete 13715,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13715 >> Rendez la quête Les devoirs du vaillant
	.accept 13723 >> Acceptez la quête Le défi du vaillant
	.target Ambrose Boltspark
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Mécanotrotteur de Gnomeregan à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13723,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ambrose Etinceboulon|r
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13723 >> Rendez la quête Le défi du vaillant
	.target Ambrose Boltspark
step
	.goto IcecrownGlacier,76.33,19.48
	+|T255139:0|t|cRXP_WARN_Vous êtes désormais un Champion de Gnomeregan!|r
	>>|cRXP_LOOT_Vous avez terminé le guide Champion de Gnomeregan!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13723
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name F_2_AT_Darnassus
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Darnassus
<< Alliance !NightElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r
	.goto IcecrownGlacier,76.34,19.03
	.accept 13706 >> Acceptez la quête Vaillant de Darnassus
	.turnin 13706 >> Rendez la quête Vaillant de Darnassus
	.target Jaelyne Evensong
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r. Elle a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13717 >> Acceptez la quête Les devoirs du vaillant
	.daily 13757,13759,13758 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.daily 13760 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >> Acceptez la quête La grande mêlée
	.daily 13855 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Sabre-de-nuit darnassien à l'écurie
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13761
step -- THE GRAND MELEE
	>>Rendez-vous à l'Anneau des Vaillants de l'Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13761,1 -- Mark of the Valiant (3)
	.isOnQuest 13761
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13760,1 -- Converted Hero slain (10)
	.isOnQuest 13760
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13855
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13855,1 -- Boneguard Footman slain (15)
	.complete 13855,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13855
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13758
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13758
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13758,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13758

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13759
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13759
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13759
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13759,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13759

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13757
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13757,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13757
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13757,13759,13758,13760,13761,13855
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r, |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin 13757 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Rendez la quête La grande mêlée
	.turnin 13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r, |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin 13759 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Rendez la quête La grande mêlée
	.turnin 13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r, |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin 13758 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Rendez la quête La grande mêlée
	.turnin 13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illestria Chantelame|r et |cRXP_FRIENDLY_Airae Cherchétoile|r
	.turnin -13760 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >> Rendez la quête La grande mêlée
	.turnin -13855 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker
step
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r
	.goto IcecrownGlacier,76.34,19.03
	.complete 13717,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13717 >> Rendez la quête Les devoirs du vaillant
	.accept 13725 >> Acceptez la quête Le défi du vaillant
	.target Jaelyne Evensong
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Sabre-de-nuit darnassien à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de l'Alliance|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13725,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaelyne Chant-du-soir|r
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13725 >> Rendez la quête Le défi du vaillant
	.target Jaelyne Evensong
step
	.goto IcecrownGlacier,76.33,19.48
	+|T255141:0|t|cRXP_WARN_Vous êtes désormais un Champion de Darnassus!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le Guide du Champion de Darnassus!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13725
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name B_2_AT_Orgrimmar
#displayname |cRXP_FRIENDLY_2.0|r - Champion d'Orgrimmar
<< Horde !Orc


step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r
	.goto IcecrownGlacier,76.46,24.60
	.accept 13707 >> Acceptez la quête Vaillant d'Orgrimmar
	.turnin 13707 >> Rendez la quête Vaillant d'Orgrimmar
	.target Mokra the Skullcrusher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13697 >> Acceptez la quête Les devoirs du vaillant
	.daily 13762,13764,13763 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.daily 13765 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >> Acceptez la quête La grande mêlée
	.daily 13856 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697
step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Loup d'Orgrimmar à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13767
step
	>>Rendez-vous à l'Anneau des Vaillants de la Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13767,1 -- Mark of the Valiant (3)
	.isOnQuest 13767
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13765,1 -- Converted Hero slain (10)
	.isOnQuest 13765
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13856
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13856,1 -- Boneguard Footman slain (15)
	.complete 13856,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13856
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13763
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13763
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13763,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13763

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13764
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13764
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13764
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13764,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13764

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13762
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13762,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13762
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13762,13764,13763,13765,13767,13856
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r, |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin 13762 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Rendez la quête La grande mêlée
	.turnin 13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r, |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin 13764 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Rendez la quête La grande mêlée
	.turnin 13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r, |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin 13763 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Rendez la quête La grande mêlée
	.turnin 13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akinos|r et |cRXP_FRIENDLY_Morah Sœur-worg|r
	.turnin -13765 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >> Rendez la quête La grande mêlée
	.turnin -13856 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister
step
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r
	.goto IcecrownGlacier,76.46,24.60
	.complete 13697,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13697 >> Rendez la quête Les devoirs du vaillant
	.accept 13726 >> Acceptez la quête Le défi du vaillant
	.target Mokra the Skullcrusher
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Loup d'Orgrimmar à l'écurie
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13726,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13726 >> Rendez la quête Le défi du vaillant
	.target Mokra the Skullcrusher
step
	.goto IcecrownGlacier,76.17,24.21
	+|T255142:0|t|cRXP_WARN_Vous êtes désormais un Champion d'Orgrimmar!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le Guide du Champion d'Orgrimmar!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13726
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name C_2_AT_Sen'jin
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Sen'jin
<< Horde !Troll

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.accept 13708 >> Acceptez la quête Vaillant de Sen'jin
	.turnin 13708 >> Rendez la quête Vaillant de Sen'jin
	.target Zul'tore
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13719 >> Acceptez la quête Les devoirs du vaillant
	.daily 13768,13770,13769 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >> Acceptez la quête La grande mêlée
	.daily 13857 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Raptor sombrelance à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13772
step
	>>Rendez-vous à l'Anneau des Vaillants de la Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13772,1 -- Mark of the Valiant (3)
	.isOnQuest 13772
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13771,1 -- Converted Hero slain (10)
	.isOnQuest 13771
	.mob Converted Hero

step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13857
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13857,1 -- Boneguard Footman slain (15)
	.complete 13857,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13857
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13769
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13769
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13769,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13769

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13770
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13770
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13770
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13770,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13770

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13768
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13768,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13768
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13768,13770,13769,13771,13772,13857
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Rendez la quête La grande mêlée
	.turnin 13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Rendez la quête La grande mêlée
	.turnin 13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Rendez la quête La grande mêlée
	.turnin 13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chasseur des ombres Mezil-kree|r et |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >> Rendez la quête La grande mêlée
	.turnin -13857 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju
step
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.complete 13719,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13719 >> Rendez la quête Les devoirs du vaillant
	.accept 13727 >> Acceptez la quête Le défi du vaillant
	.target Zul'tore
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Raptor sombrelance à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13727,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13727 >> Rendez la quête Le défi du vaillant
	.target Zul'tore
step
	.goto IcecrownGlacier,76.17,24.21
	+|T255145:0|t|cRXP_WARN_Vous êtes désormais un Champion de Sen'jin!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le Champion de Sen'jin Guide!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13727
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name D_2_AT_Les Pitons-du-Tonnerre
#displayname |cRXP_FRIENDLY_2.0|r - Champion des Pitons-du-Tonnerre
<< Horde !Tauren

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r
	.goto IcecrownGlacier,76.20,24.63
	.accept 13709 >> Acceptez la quête Vaillant des Pitons-du-Tonnerre
	.turnin 13709 >> Rendez la quête Vaillant des Pitons-du-Tonnerre
	.target Runok Wildmane
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13720 >> Acceptez la quête Les devoirs du vaillant
	.daily 13773,13775,13774 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.daily 13776 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >> Acceptez la quête La grande mêlée
	.daily 13858 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Kodo des Pitons-du-Tonnerre à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13777
step
	>>Rendez-vous à l'Anneau des Vaillants de la Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13777,1 -- Mark of the Valiant (3)
	.isOnQuest 13777
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant

step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13776,1 -- Converted Hero slain (10)
	.isOnQuest 13776
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13858
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13858,1 -- Boneguard Footman slain (15)
	.complete 13858,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13858
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13774
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13774
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13774,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13774

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13775
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13775
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13775
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13775,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13775

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13773
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13773,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13773
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Horde
	.isOnQuest 13773,13775,13774,13776,13777,13858
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r, |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin 13773 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Rendez la quête La grande mêlée
	.turnin 13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r, |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin 13775 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Rendez la quête La grande mêlée
	.turnin 13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r, |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin 13774 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Rendez la quête La grande mêlée
	.turnin 13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dern Totem-de-rage|r et |cRXP_FRIENDLY_Anka Sabot-Griffu|r
	.turnin -13776 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >> Rendez la quête La grande mêlée
	.turnin -13858 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r
	.goto IcecrownGlacier,76.20,24.63
	.complete 13720,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13720 >> Rendez la quête Les devoirs du vaillant
	.accept 13728 >> Acceptez la quête Le défi du vaillant
	.target Runok Wildmane
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Kodo des Pitons-du-Tonnerre à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13728,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runok Crin-sauvage|r
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13728 >> Rendez la quête Le défi du vaillant
	.target Runok Wildmane
step
	.goto IcecrownGlacier,76.17,24.21
	+|T255144:0|t|cRXP_WARN_Vous êtes désormais un Champion des Pitons-du-Tonnerre!|r
	>>|cRXP_LOOT_You are now finished with the Champion des Pitons-du-Tonnerre Guide!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13728
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name E_2_AT_Fossoyeuse
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Fossoyeuse
<< Horde !Scourge

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r
	.goto IcecrownGlacier,76.53,24.21
	.accept 13710 >> Acceptez la quête Vaillant de Fossoyeuse
	.turnin 13710 >> Rendez la quête Vaillant de Fossoyeuse
	.target Deathstalker Visceri
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r. Il a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.accept 13721 >> Acceptez la quête Les devoirs du vaillant
	.daily 13778,13780,13779 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.daily 13781 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >> Acceptez la quête La grande mêlée
	.daily 13860 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721
step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Cheval de guerre des Réprouvés à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13782
step
	>>Rendez-vous à l'Anneau des Vaillants de la Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13782,1 -- Mark of the Valiant (3)
	.isOnQuest 13782
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13781,1 -- Converted Hero slain (10)
	.isOnQuest 13781
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13860,1 -- Boneguard Footman slain (15)
	.complete 13860,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13779
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13779
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13779,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13779

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13780
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13780
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13780
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13780,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13780

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13778
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13778,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13778
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << Horde
	.isOnQuest 13778,13780,13779,13781,13782,13860
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r, |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin 13778 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Rendez la quête La grande mêlée
	.turnin 13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r, |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin 13780 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Rendez la quête La grande mêlée
	.turnin 13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r, |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin 13779 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Rendez la quête La grande mêlée
	.turnin 13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah Chalke|r et |cRXP_FRIENDLY_Dresseur Dretch|r
	.turnin -13781 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >> Rendez la quête La grande mêlée
	.turnin -13860 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r
	.goto IcecrownGlacier,76.53,24.21
	.complete 13721,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13721 >> Rendez la quête Les devoirs du vaillant
	.accept	13729 >> Acceptez la quête Le défi du vaillant
	.target Deathstalker Visceri
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Cheval de guerre des Réprouvés à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13729,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nécrotraqueur Viscéri|r
	.goto IcecrownGlacier,76.53,24.21
	.turnin	13729 >> Rendez la quête Le défi du vaillant
	.target Deathstalker Visceri
step
	.goto IcecrownGlacier,76.17,24.21
	+|T255143:0|t|cRXP_WARN_Vous êtes désormais un Champion de la Fossoyeuse!|r
	>>|cRXP_LOOT_Vous avez terminé le Guide Champion de Fossoyeuse!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13729
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name F_2_AT_Silvermoon
#displayname |cRXP_FRIENDLY_2.0|r - Champion de Lune-d'argent
#next Quêtes secondaires du Champion
<< Horde !BloodElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r
	.goto IcecrownGlacier,76.45,23.85
	.accept 13711 >> Acceptez la quête Vaillant de Lune-d'Argent
	.turnin 13711 >> Rendez la quête Vaillant de Lune-d'Argent
	.target Eressea Dawnsinger
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokra le Brise-tête|r. Elle a 1 sur 3 quêtes quotidiennes. Acceptez celle qui est disponible.
	.accept 13722 >> Acceptez la quête Les devoirs du vaillant
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r. Elle a 1 quête quotidienne sur 3. Acceptez celle qui est disponible
	.daily 13783,13785,13784 >>Acceptez la quête Une lame digne d'un champion |c99ffff99OU|r Fil de l'hiver |c99ffff99OU|r Une arme remarquable
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.daily 13786 >> Acceptez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >> Acceptez la quête La grande mêlée
	.daily 13859 >> Acceptez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722
step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Faucon-pérégrin de Lune-d'argent à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13787
step
	>>Rendez-vous à l'Anneau des Vaillants de la Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à tout |cRXP_ENEMY_Vaillant|r. Vous pouvez tous les défier en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour retirer les piles de |T132360:0|tDéfense du |cRXP_ENEMY_Valiant|r constamment
	>>Une fois qu'il n'y a plus de piles de |T132360:0|tDéfense sur le |cRXP_ENEMY_Valiant|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) à portée de mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Battez un |cRXP_ENEMY_Vaillant|r différent 3 fois en Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13787,1 -- Mark of the Valiant (3)
	.isOnQuest 13787
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Sautez de votre Monture. |cRXP_WARN_N'oubliez pas d'équiper votre Arme|r. Ne détruisez pas votre |T135128:0|t|c99ffff99Lance|r. Vous en aurez besoin à nouveau
	>>Tuez les |cRXP_ENEMY_Héros convertis|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13786,1 -- Converted Hero slain (10)
	.isOnQuest 13786
	.mob Converted Hero


step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Horde
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13859
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout
step
	>>Tuez les |cRXP_ENEMY_Garde d'os Fantassins|r en utilisant votre |cRXP_FRIENDLY_Cheval de guerre|r pour les écraser et les tuer instantanément
	>>Tuez les |cRXP_ENEMY_Garde d'os Lieutenants|r. Accumulez des stacks de |T132360:0|tDéfense (4) et maintenez-les. Utilisez |T132358:0|tBrise-bouclier (2) pour supprimer leur bouclier puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	.complete 13859,1 -- Boneguard Footman slain (15)
	.complete 13859,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13859
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Tuez les |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r en utilisant |T132358:0|tBrise-bouclier (2) sur eux
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Collectez |cRXP_PICK_Winter Hyacinth|r au Barrage Mur-de-fer à la limite entre La Couronne de glace et Forêt du Chant de cristal
	>>Elles poussent sur les rochers
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Voyagez vers Lac Drak’Mar dans la région nord-est de Désolation des dragons
	.isOnQuest 13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Utilisez le |T134195:0|t|cFFFFFF99Winter Hyacinth|r dans vos sacs au centre de Lac Drak’Mar
	>>Attendez la fin du jeu de rôle de Maiden of Drak'Mar puis ramassez le |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Jeu de rôle de Maiden of Drak'Mar
	.complete 13784,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
	.isOnQuest 13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	>>Tuez |cRXP_ENEMY_Lord Brasier semperardent|r. Ramassez-le pour obtenir le |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Voyagez vers Lac du Souffle de l'hiver dans le nord de Fjord Hurlant
	.isOnQuest 13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Utilisez le |T135488:0|t|c99ffff99Everburning Ember|r dans vos Sacs pour libérer la Demoiselle du lac du Souffle de l'hiver
	.complete 13785,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Allez aux Grisonnes
	.isOnQuest 13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Utilisez le |T134721:0|t|c99ffff99Baume à lèvres anti-verrues|r dans vos Sacs |c99ffff99à chaque fois|r avant d'essayer de /embrasser les Lake Frogs
	>>Ciblez les Lake Frogs pour les embrasser automatiquement. Si cela ne fonctionne pas, tapez /embrasser
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tÉventuellement, l'un des Lake Frogs se transformera en un Humain. Parlez-lui pour recevoir le |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_N'oubliez pas d'équiper votre Arme|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13783,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13783
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13783,13785,13784,13786,13787,13859
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r, |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13783 >> Rendez la quête Une lame digne d'un champion
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Rendez la quête La grande mêlée
	.turnin 13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r, |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13785 >> Rendez la quête Fil de l'hiver
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Rendez la quête La grande mêlée
	.turnin 13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r, |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13784 >> Rendez la quête Une arme remarquable
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Rendez la quête La grande mêlée
	.turnin 13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kethiel Lance-solaire|r et |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin -13786 >> Rendez la quête L'entraînement sur le terrain d'un vaillant
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >> Rendez la quête La grande mêlée
	.turnin -13859 >> Rendez la quête Aux portes de l'ennemi
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Afin de terminer la quête |cFFffff00Les devoirs du vaillant|r et de progresser dans |T236690:0|tEnceinte du tournoi d'Argent, vous devez accomplir les quêtes quotidiennes et acquérir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Vous avez besoin de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Vous obtiendrez 5 par jour si vous terminez les 4 quêtes quotidiennes
	>>|c99ffff99RECHARGEZ LE GUIDE LE LENDEMAIN SI VOUS DEVEZ TOUJOURS COMPLÉTER LES QUÊTES QUOTIDIENNES JUSQU'À CE QUE VOUS PUISSIEZ RENDRE CETTE QUÊTE|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r
	.goto IcecrownGlacier,76.45,23.85
	.complete 13722,1 >> Rendez la quête Les devoirs du vaillant -- Valiant's Seal (25)
	.turnin 13722 >> Rendez la quête Les devoirs du vaillant
	.accept 13731 >> Acceptez la quête Le défi du vaillant
	.target Eressea Dawnsinger
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Faucon-pérégrin de Lune-d'argent à l'écurie
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, vous pouvez en prendre un à nouveau juste à l'intérieur du Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Danny|r
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>Attendez l'arrivée du |cRXP_ENEMY_Champion d'argent|r puis éliminez-le
	.goto IcecrownGlacier,68.60,20.99
	.complete 13731,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Champion d'argent Arrivée
	.mob Argent Champion
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eressea Chantelaube|r
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13731 >> Rendez la quête Le défi du vaillant
	.target Eressea Dawnsinger
step
	.goto IcecrownGlacier,76.17,24.21
	+|T255136:0|t|cRXP_WARN_Vous êtes désormais un Champion de Lune-d'Argent!|r
	>>|cRXP_LOOT_Vous avez maintenant terminé le guide du Champion de Lune-d'argent!|r
	>>|cRXP_LOOT_Vous avez maintenant le choix de devenir un|r |cRXP_WARN_Champion|r |cRXP_LOOT_d'une autre|r |cRXP_WARN_Course|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Charger le |cRXP_FRIENDLY_2.0|r Guide pour la|r |cRXP_WARN_Course|r |cRXP_LOOT_que vous choisissez de poursuivre ensuite !|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Quêtes journalières Quêtes|r
	.isQuestTurnedIn 13731
]])



RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name G_2.1_AT_La_Quête_du_Chevalier_noir_Histoire
#displayname |cRXP_PICK_2.1|r - La Quête du Chevalier noir Histoire

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 13633 >> Acceptez le Chevalier noir de la marche de l'Ouest ? << Alliance
	.accept 13634 >> Acceptez le Chevalier noir des Pins-Argentés ? << Horde
	.target Crusader Rhydalla
step << Mage
	.zone Stormwind City >>Téléportez-vous à Stormwind << Alliance
	.zone Undercity >>Téléportez-vous à Undercity << Horde
	.isOnQuest 13633,13634
step << Alliance !Mage
    .goto Dalaran,40.11,62.81
	.zone Stormwind City >>Prenez le portail de Dalaran vers Hurlevent
	.isOnQuest 13633
step << Alliance
	#completewith next
	.goto StormwindClassic,66.2,62.2
	.fly Westfall >> Volez vers la Marche de l'Ouest
	.isOnQuest 13633
step << Alliance
	>> Rendez-vous à Ruisselune. Ramassez le |cRXP_PICK_Journal poussiéreux|r à l'intérieur de la maison
	.goto Westfall,42.09,69.66
	.complete 13633,1 -- Dusty Journal (1)
	.isOnQuest 13633
step << Horde !Mage
    .goto Dalaran,55.64,23.85
	.zone Undercity >>Prenez le portail à Dalaran vers Fossoyeuse
	.isOnQuest 13634
step << Horde
	#completewith next
	.goto Undercity,63.25,48.56
	.fly Silverpine >> Volez à la Forêt des Pins-argentés
	.isOnQuest 13634
step << Horde
	>> Rendez-vous au Champ de Valgan. Ramassez le |cRXP_PICK_Journal poussiéreux|r à l'intérieur de la maison
	.goto Silverpine Forest,52.85,27.92,8,0
	.goto Silverpine Forest,53.17,28.10
	.complete 13634,1 -- Dusty Journal (1)
	.isOnQuest 13634
step << Mage
	#completewith next
	.zone Dalaran >>Téléportez-vous à Dalaran
	.isOnQuest 13633,13634
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13633,13634
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13633 >> Rendez la quête Le Chevalier noir de la marche de l'Ouest ? << Alliance
	.turnin 13634 >> Rendez la quête Le Chevalier noir des Pins-Argentés ? << Horde
	.accept 13641 >> Acceptez la quête Le cristal de voyant
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Téléportez-vous à Dalaran
	.isOnQuest 13641
step
	#completewith next
	.isOnQuest 13641
	.goto CrystalsongForest,43.90,40.07
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
step
	>>Tuez les |cRXP_ENEMY_Unbound Seers|r. Ramassez-les pour le |cRXP_LOOT_Seer's Cristal|r
	.goto CrystalsongForest,43.90,40.07,30,0
	.goto CrystalsongForest,46.04,40.87,30,0
	.goto CrystalsongForest,48.62,39.37,30,0
	.goto CrystalsongForest,42.57,49.12,30,0
	.goto CrystalsongForest,46.04,40.87
	.complete 13641,1 -- Seer's Crystal (1)
	.mob Unbound Seer
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13641
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13641 >> Rendez la quête Le cristal de voyant
	.accept 13643 >> Acceptez la quête Ce dont les morts peuvent parler
	.target Crusader Rhydalla
step
	>>Allez vers l'est vers le Cimetière de l'|T236690:0|tEnceinte du tournoi d'Argent
	.use 45070 >>Utilisez le |T132775:0|t|cFFFFFF99Seer's Cristal|r dans vos sacs sur les tombes
	.complete 13643,1 -- Sir Wendell Balfour's death investigated
	.goto IcecrownGlacier,79.37,23.09
	.complete 13643,3 -- Conall Irongrip's death investigated
	.goto IcecrownGlacier,79.64,22.85
	.complete 13643,2 -- Lorien Sunblaze's death investigated
	.goto IcecrownGlacier,79.63,23.57
	.isOnQuest 13643
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13643 >> Rendez la quête Ce dont les morts peuvent parler
	.accept 13654 >> Acceptez la quête Le manège de l'écuyer
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Téléportez-vous à Dalaran
	.isOnQuest 13654
step
	#completewith next
	.isOnQuest 13654
	.goto CrystalsongForest,37.48,57.47
	.zone CrystalsongForest >> Voyagez vers Forêt du Chant de cristal
step
	>>Tuez les |cRXP_ENEMY_Skeletal Woodcutters|r. Ramassez-les pour un |cRXP_LOOT_Large Femur|r
	.goto CrystalsongForest,37.48,57.47,15,0
	.goto CrystalsongForest,36.68,61.93,15,0
	.goto CrystalsongForest,40.81,60.25,15,0
	.goto CrystalsongForest,38.17,57.37,15,0
	.goto CrystalsongForest,36.68,61.93
	.collect 45080,1 -- Large Femur
	.mob Skeletal Woodcutter
	.isOnQuest 13654
step
	>>|cRXP_WARN_STAND BEHIND MALORIC|r
	.use 45080 >>Utilisez le |T133727:0|t|cFFFFFF99Grand Fémur|r dans vos Sacs sur |cRXP_ENEMY_Maloric|r
	>>Une fois qu'il est neutralisé, ramassez le |cRXP_LOOT_Murderer's Toolkit|r
	.goto CrystalsongForest,38.19,59.49
	.complete 13654,1 -- Murderer's Toolkit (1)
	.isOnQuest 13654
	.mob Maloric
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace
	.isOnQuest 13654
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13654 >> Rendez la quête Le manège de l'écuyer
	.accept 13663 >> Acceptez la quête Les ordres du Chevalier noir
	.target Crusader Rhydalla
step
	.use 45083 >>Utilisez le |T133331:0|t|cFFFFFF99Enchanted Bridle|r dans vos sacs sur le |cRXP_FRIENDLY_Griffon du Chevalier noir|r
	>>Le Griffon RP dure environ 1 min 40 sec
	.goto IcecrownGlacier,77.77,21.61
	.cast 63163
	.timer 100,Griffon du Chevalier noir RP
	.complete 13663,1 -- Black Knight's Gryphon taken
	.isOnQuest 13663
	.target Black Knight's Gryphon
step
	>>Ramassez l'|cRXP_LOOT_Stolen Tournoi Invitation|r et les |cRXP_LOOT_Black Chevalier's Orders|r à l'intérieur de la petite hutte
	.complete 13663,2 -- Stolen Tournament Invitation
	.goto IcecrownGlacier,54.07,8.66
	.complete 13663,3 -- Black Knight's Orders
	.goto IcecrownGlacier,54.10,8.63
	.isOnQuest 13663
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13663 >> Rendez la quête Les ordres du Chevalier noir
	.target Crusader Rhydalla
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	>>REMARQUE : Accepter cette quête nécessite que vous soyez un |cRXP_WARN_Champion|r. Si vous ne pouvez pas accepter cette quête, vous devez terminer le |cRXP_LOOT_1.0|r Guide Devenir un Champion
	.goto IcecrownGlacier,69.43,23.02
	.accept 13664 >> Acceptez la quête La chute du Chevalier noir
	.target Crusader Rhydalla
step
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre d'Argent|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre d'Argent|r << Horde
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance|r, il y a des Racks partout dans les Écuries
	.use 46069 << Alliance
	.use 46070 << Horde
	.goto IcecrownGlacier,72.30,22.55
	.target Stabled Argent Warhorse
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecuyer Cavin|r
	>>Rappelez-vous d'utiliser |T132360:0|tDéfense (4). Utilisez |T132226:0|tÀ la charge ! (3) avec |T135375:0|tCoup de lance (1) et |T132358:0|tBrise-bouclier (2) si vous êtes à distance
	>>|cRXP_ENEMY_Le Chevalier noir|r vous fera désarçonner une fois que ses PV atteindront 0
	>>|cRXP_WARN_Remember to Equiper (vous) Arme!|r
	>>Tuez |cRXP_ENEMY_Le Chevalier noir|r
	.goto IcecrownGlacier,71.35,23.14
	.complete 13664,1 -- The Black Knight slain
	.skipgossip
	.timer 14,Le Chevalier noir Arrivée
	.target Squire Cavin
	.mob The Black Knight
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13664 >> Rendre la quête La chute du Chevalier noir
	.target Crusader Rhydalla

step -- 14016 and 14017 added in 3.2 - Add in Phase 3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 14016 >> Accepter La malédiction du Chevalier noir
	.target Crusader Rhydalla
step
	>>Allez à l'est vers le Cimetière du |T236690:0|tEnceinte du tournoi d'Argent
	>>Tuez le |cRXP_ENEMY_Assassin du Culte|r après le court jeu de rôle
	.goto IcecrownGlacier,79.50,23.27
	.complete 14016,1 -- Investigate the Black Knight's Grave
	.isOnQuest 14016
	.target Cult Assassin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14016 >> Rendre la quête La Tombe du Chevalier noir
	.accept 14017 >> Accepter Le destin du Chevalier noir
	.target Crusader Rhydalla
step
	>>Volez à l'est vers Le guet du Nécrorateur
	>>Tuez le |cRXP_ENEMY_Doctor Kolher|r. Butin le pour son |cRXP_LOOT_Orders|r
	>>Il patrouille sur la plateforme
	.goto IcecrownGlacier,61.19,22.41
	.complete 14017,1 -- Doctor Kohler's Orders (1)
	.isOnQuest 14017
	.target Doctor Kolher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Croisée Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14017 >> Rendre la quête La Tombe du Chevalier noir
	.target Crusader Rhydalla
step
	+C'est la fin de l'histoire de |cRXP_WARN_The Noir Chevalier's|cRXP_ENEMY_!|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name H_3_AT_Champion_Quêtes journalières_Quêtes
#displayname |cRXP_ENEMY_3.0|r - Champion Quêtes journalières Quêtes

step
	>>Pour accéder à Champion Quêtes journalières Quêtes, vous devez avoir terminé le |cRXP_LOOT_1.0|r Guide pour devenir un Champion
	>>Si vous ne pouvez accepter aucune quête, assurez-vous qu'elle a été terminée
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Justicière Mariel Cœur-Vrai|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13794 >> Accepter Eadric le Pur << !DK
	.accept 13795 >> Accepter Le Plaie-du-Fléau << DK
	.target Justicar Mariel Trueheart
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Eadric le Pur|r
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13794 >> Rendre la quête Eadric le Pur
	.target Eadric the Pure
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Crok Plaie-du-Fléau|r
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13795 >> Rendre la quête Le Plaie-du-Fléau
	.target Crok Scourgebane
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eadric le Pur|r, |cRXP_FRIENDLY_Luuri|r et |cRXP_FRIENDLY_Cellian Bonmatin|r
	.daily 13682 >> Accepter La menace vient d'en haut << Alliance
	.daily 13809 >> Accepter La menace vient d'en haut << Horde
	.daily 13861 >> Accepter La bataille devant la citadelle << Alliance
	.daily 13862 >> Accepter La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >> Accepter Entre champions… << Alliance
	.daily 13811 >> Accepter Entre champions… << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >> Accepter Sur le territoire ennemi << Alliance
	.daily 13810 >> Accepter Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,69.92,23.53
	.isQuestTurnedIn 13664 -- Must complete 13664 to accept Threat From Above
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eadric le Pur|r, |cRXP_FRIENDLY_Luuri|r et |cRXP_FRIENDLY_Cellian Bonmatin|r
	.daily 13861 >> Accepter La bataille devant la citadelle << Alliance
	.daily 13862 >> Accepter La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >> Accepter Entre champions… << Alliance
	.daily 13811 >> Accepter Entre champions… << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >> Accepter Sur le territoire ennemi << Alliance
	.daily 13810 >> Accepter Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crok Plaie-du-Fléau|r, |cRXP_FRIENDLY_Illyrie Tombenuit|r et |cRXP_FRIENDLY_Zor'be le Saigneur|r
	.daily 13788 >> Accepter La menace vient d'en haut << Alliance
	.daily 13812 >> Accepter La menace vient d'en haut << Horde
	.daily 13864 >> Accepter La bataille devant la citadelle << Alliance
	.daily 13863 >> Accepter La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >> Accepter Entre champions… << Alliance
	.daily 13814 >> Accepter Entre champions… << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >> Accepter Sur le territoire ennemi << Alliance
	.daily 13813 >> Accepter Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,73.80,19.45
	.isQuestTurnedIn 13664
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crok Plaie-du-Fléau|r, |cRXP_FRIENDLY_Illyrie Tombenuit|r et |cRXP_FRIENDLY_Zor'be le Saigneur|r
	.daily 13864 >> Accepter La bataille devant la citadelle << Alliance
	.daily 13863 >> Accepter La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >> Accepter Entre champions… << Alliance
	.daily 13814 >> Accepter Entre champions… << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >> Accepter Sur le territoire ennemi << Alliance
	.daily 13813 >> Accepter Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << !DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez l'Elekk de l'Exodar à l'écurie << Draenei
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Bélier de Forgefer à l'écurie << Dwarf
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Mécanotrotteur de Gnomeregan à l'écurie << Gnome
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Palefroi de Hurlevent à l'écurie << Human
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Sabre-de-nuit darnassien à l'écurie << NightElf
	>>Si vous avez égaré (vous) |T135128:0|t|c99ffff99Lance de l'Alliance|r il y a des Racks partout dans les Écuries
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13790
step << !DK Alliance -- Among the Champions
	>>Dirigez-vous vers l'Anneau des Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à n'importe quel |cRXP_ENEMY_Champion|r. Ils peuvent tous être mis au défi en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Défaites un autre |cRXP_ENEMY_Champion|r 4 fois en Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13790,1 -- Mark of the Champion (4)
	.isOnQuest 13790
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << !DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Cheval de guerre des Réprouvés à l'écurie << Scourge
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Loup d'Orgrimmar à l'écurie << Orc
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Kodo des Pitons-du-Tonnerre à l'écurie << Tauren
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Raptor sombrelance à l'écurie << Troll
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Faucon-pérégrin de Lune-d'argent à l'écurie << BloodElf
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r il y a des râteliers partout dans les Écuries
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13811
step << !DK Horde -- Among the Champions
	>>Dirigez-vous vers l'Anneau des Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à n'importe quel |cRXP_ENEMY_Champion|r. Ils peuvent tous être mis au défi en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Défaites un autre |cRXP_ENEMY_Champion|r 4 fois en Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13811,1 -- Mark of the Champion (4)
	.isOnQuest 13811
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez l'Elekk de l'Exodar à l'écurie << Draenei
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Bélier de Forgefer à l'écurie << Dwarf
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Mécanotrotteur de Gnomeregan à l'écurie << Gnome
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Palefroi de Hurlevent à l'écurie << Human
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le Sabre-de-nuit darnassien à l'écurie << NightElf
	>>Si vous avez égaré (vous) |T135128:0|t|c99ffff99Lance de l'Alliance|r il y a des Racks partout dans les Écuries
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13793
step << DK Alliance -- Among the Champions
	>>Dirigez-vous vers l'Anneau des Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à n'importe quel |cRXP_ENEMY_Champion|r. Ils peuvent tous être mis au défi en Duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Défaites un |cRXP_ENEMY_Champion|r différent 4 fois dans un Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13793,1 -- Mark of the Champion (4)
	.isOnQuest 13793
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Cheval de guerre des Réprouvés à l'écurie << Scourge
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Loup d'Orgrimmar à l'écurie << Orc
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Kodo des Pitons-du-Tonnerre à l'écurie << Tauren
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Raptor sombrelance à l'écurie << Troll
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le Faucon-pérégrin de Lune-d'argent à l'écurie << BloodElf
	>>Si vous avez égaré votre |T135128:0|t|c99ffff99Lance de la Horde|r, il y a des Rayons dans les Écuries
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13814
step << DK Horde -- Among the Champions
	>>Rendez-vous à l'Anneau des Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_ENEMY_Champion|r quelconque. Ils peuvent tous être provoqués en duel
	>>Souvenez-vous d'utiliser |T132360:0|tDéfense (4) et d'en maintenir les stacks pendant le Duel
	>>Utilisez |T132358:0|tBrise-bouclier (2) pour enlever les cumuls |T132360:0|tDéfense du |cRXP_ENEMY_Champion|r constamment
	>>Quand il ne reste aucun cumul de |T132360:0|tDéfense sur le |cRXP_ENEMY_Champion|r, utilisez |T132226:0|tÀ la charge ! (3) ainsi que |T135375:0|tCoup de lance (1) en mêlée
	>>À la fin du Duel, utilisez |T134058:0|tRafraîchir la monture (5) pour soigner à la vie maximale
	>>Défaites un |cRXP_ENEMY_Champion|r différent 4 fois dans un Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13814,1 -- Mark of the Champion (4)
	.isOnQuest 13814
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step
	#completewith next
	.goto IcecrownGlacier,55.23,32.26,60 >>|cRXP_WARN_Remember to Equiper (vous) Arme!|r
	.isOnQuest 13789,13810,13791,13813
step -- Taking Battle To The Enemy
	>>Tuez un membre quelconque du |cRXP_ENEMY_Cult of the Damné|r
	>>Ceux-ci incluent |cRXP_ENEMY_Blackguards|r, |cRXP_ENEMY_Torturers|r, |cRXP_ENEMY_Alchemists|r ou |cRXP_ENEMY_Apothecary|r
	.goto IcecrownGlacier,55.23,32.26,60,0
	.goto IcecrownGlacier,53.47,33.10,60,0
	.goto IcecrownGlacier,53.98,35.81,60,0
	.goto IcecrownGlacier,52.25,33.90,60,0
	.goto IcecrownGlacier,50.66,33.76,60,0
	.goto IcecrownGlacier,48.95,34.32,60,0
	.goto IcecrownGlacier,49.22,31.45,60,0
	.goto IcecrownGlacier,55.23,32.26
	.complete 13789,1 << !DK Alliance -- Cult of the Damned member slain (15)
	.complete 13810,1 << !DK Horde -- Cult of the Damned member slain (15)
	.complete 13791,1 << DK Alliance -- Cult of the Damned member slain (15)
	.complete 13813,1 << DK Horde -- Cult of the Damned member slain (15)
	.isOnQuest 13789,13810,13791,13813
	.mob Cult Blackguard
	.mob Overseer Jhaeqon
	.mob Vile Torturer
	.mob Damned Apothecary
	.mob Cult Alchemist
	.mob Overseer Savryn
step -- Threat From Above
	.goto IcecrownGlacier,47.12,33.26,65,0
	.goto IcecrownGlacier,45.72,35.25,65,0
	.goto IcecrownGlacier,43.85,33.47,65,0
	.goto IcecrownGlacier,45.42,31.95,65,0
	.goto IcecrownGlacier,47.12,33.26
    .line IcecrownGlacier,45.11,31.99,45.80,32.16,46.19,32.24,46.58,32.39,46.93,32.75,47.05,33.02,47.23,33.61,46.91,34.13,46.47,35.04,45.98,35.23,45.42,35.43,44.80,34.97,44.09,34.04,43.85,33.00,44.37,32.12,45.11,31.99
	>>Cherchez le |cRXP_ENEMY_Chillmaw|r qui vole dans les airs
	>>Tuez |cRXP_ENEMY_Chillmaw|r et les |cRXP_ENEMY_Cultist Bombardiers|r. Les |cRXP_ENEMY_Cultist Bombardiers|r vont sauter de |cRXP_ENEMY_Chillmaw|r quand sa santé diminue pour vous combattre aussi.
	>>Cette quête est TRÈS difficile. Trouvez un groupe si nécessaire. Passez cette étape si vous êtes incapable de trouver un groupe ou de le combattre en solo
	.complete 13682,1 << !DK Alliance -- Chillmaw slain (1)
	.complete 13682,2 << !DK Alliance -- Cultist Bombardier slain (3)
	.complete 13809,1 << !DK Horde -- Chillmaw slain (1)
	.complete 13809,2 << !DK Horde -- Cultist Bombardier slain (3)
	.complete 13788,1 << DK Alliance -- Chillmaw slain (1)
	.complete 13788,2 << DK Alliance -- Cultist Bombardier slain (3)
	.complete 13812,1 << DK Horde -- Chillmaw slain (1)
	.complete 13812,2 << DK Horde -- Cultist Bombardier slain (3)
	.isOnQuest 13682,13809,13788,13812
	.unitscan Boneguard Commander
	.mob Cultist Bombardier
step -- Battle Before The Citadel
	#completewith next
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de l'Alliance|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Alliance
	.vehicle >>Équipez la |T135128:0|t|c99ffff99Lance de la Horde|r dans vos sacs puis montez le |cRXP_FRIENDLY_Cheval de guerre de campagne à l'écurie|r << Horde
	>>Il y a un |T135128:0|t|c99ffff99Porte-Lances|r juste à côté de la Barricade si vous avez besoin d'un autre
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13861,13862,13864,13863
	.target Stabled Campaign Warhorse
step -- Battle Before The Citadel
	>>Tuez les |cRXP_ENEMY_Garde d'os Commandants|r
	>>Accumulez des charges de |T132360:0|tDéfense (4) et maintenez-la. Utilisez |T132358:0|tBrise-bouclier (2) pour enlever leur bouclier, puis |T132226:0|tÀ la charge ! (3) et |T135375:0|tCoup de lance (1)
	>>Vous pouvez utiliser votre |cRXP_FRIENDLY_Cheval de guerre|r pour écraser et tuer les |cRXP_ENEMY_Footmen|r ennuyeux immédiatement
	>>Utilisez |T132358:0|tBrise-bouclier (2) sur n'importe quel |cRXP_ENEMY_Boneguard Repérage (flying Gargoyles)|r qui vous agresse
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.complete 13861,1 << !DK Alliance -- Boneguard Commander slain (3)
	.complete 13862,1 << !DK Horde -- Boneguard Commander slain (3)
	.complete 13864,1 << DK Alliance -- Boneguard Commander slain (3)
	.complete 13863,1 << DK Horde -- Boneguard Commander slain (3)
	.isOnQuest 13861,13862,13864,13863
	.mob Boneguard Commander
step
	.goto IcecrownGlacier,69.96,23.44,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << !DK
	.isOnQuest 13682,13809,13861,13862,13790,13811,13789,13810
step
	.goto IcecrownGlacier,73.80,20.06,300 >> Rendez-vous à l'|T236690:0|tEnceinte du tournoi d'Argent dans La Couronne de glace << DK
	.isOnQuest 13788,13812,13864,13863,13793,13814,13791,13813
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eadric le Pur|r, |cRXP_FRIENDLY_Luuri|r et |cRXP_FRIENDLY_Cellian Bonmatin|r
	.turnin 13682 >> Rendre la quête La menace vient d'en haut << Alliance
	.turnin 13809 >> Rendre la quête La menace vient d'en haut << Horde
	.turnin 13861 >> Rendre la quête La bataille devant la citadelle << Alliance
	.turnin 13862 >> Rendre la quête La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >> Rendre la quête Entre champions… << Alliance
	.turnin 13811 >> Rendre la quête Entre champions… << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >> Rendre la quête Sur le territoire ennemi << Alliance
	.turnin 13810 >> Rendre la quête Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
	.isQuestComplete 13682 << Alliance
	.isQuestComplete 13809 << Horde
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eadric le Pur|r, |cRXP_FRIENDLY_Luuri|r et |cRXP_FRIENDLY_Cellian Bonmatin|r
	.turnin 13861 >> Rendre la quête La bataille devant la citadelle << Alliance
	.turnin 13862 >> Rendre la quête La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >> Rendre la quête Entre champions… << Alliance
	.turnin 13811 >> Rendre la quête Entre champions… << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >> Rendre la quête Sur le territoire ennemi << Alliance
	.turnin 13810 >> Rendre la quête Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crok Plaie-du-Fléau|r, |cRXP_FRIENDLY_Illyrie Tombenuit|r et |cRXP_FRIENDLY_Zor'be le Saigneur|r
	.turnin 13788 >> Rendre la quête La menace vient d'en haut << Alliance
	.turnin 13812 >> Rendre la quête La menace vient d'en haut << Horde
	.turnin 13864 >> Rendre la quête La bataille devant la citadelle << Alliance
	.turnin 13863 >> Rendre la quête La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >> Rendre la quête Entre champions… << Alliance
	.turnin 13814 >> Rendre la quête Entre champions… << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >> Rendre la quête Sur le territoire ennemi << Alliance
	.turnin 13813 >> Rendre la quête Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
	.isQuestComplete 13788 << Alliance
	.isQuestComplete 13812 << Horde
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crok Plaie-du-Fléau|r, |cRXP_FRIENDLY_Illyrie Tombenuit|r et |cRXP_FRIENDLY_Zor'be le Saigneur|r
	.turnin 13864 >> Rendre la quête La bataille devant la citadelle << Alliance
	.turnin 13863 >> Rendre la quête La bataille devant la citadelle << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >> Rendre la quête Entre champions… << Alliance
	.turnin 13814 >> Rendre la quête Entre champions… << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >> Rendre la quête Sur le territoire ennemi << Alliance
	.turnin 13813 >> Rendre la quête Sur le territoire ennemi << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step
	+|cRXP_WARN_Vous avez terminé toutes les Quêtes journalières du Champion pour aujourd'hui! Rechargez ce Guide demain pour les continuer.|r
]])

-- The following are added in 3.2 - Implement in Phase 3

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name I_3.1_AT_Crusader_Daily_Quests
#displayname |cRXP_ENEMY_3.1|r - Quêtes journalières du Croisé

step
	#completewith next
	+|cRXP_WARN_Phase 3 introduit les Quêtes journalières du Croisé|r
	>>Pour accéder aux Quêtes journalières du Croisé, vous devez avoir le succès :
	.achievement 2817 << Alliance
	.achievement 2816 << Horde
step
	>>Entrez au Pavillon d'Argent
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haut croisé Adélard|r et |cRXP_FRIENDLY_Croisé Aubargent|r.
	.daily 14105,14101,14102,14104 >>Acceptez la quête Nécrorateur Kharos
	>>|c99ffff99ou bien créez un|r Drottinn Hrothgar
	>>|c99ffff99ou bien créez un|r Mandebrume Yngvar
	>>|c99ffff99ou bien créez un|r Ornolf The Scarred
	.daily 14108,14107 >>Acceptez la quête Get Kraken!
	>>|c99ffff99ou bien créez un|r The Destin Of The À terre
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	.isOnQuest 14105
	>>Rendez-vous au guet du Nécrorateur
	>>Tuez |cRXP_ENEMY_Nécrorateur Kharos|r
	.complete 14105,1
	.goto Icecrown,64.2,21.4
	.target Deathspeaker Kharos
step
	#completewith next
	.isOnQuest 14108
	.goto Icecrown,69.79,22.21,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Hippogriffe d'Argent à l'écurie|r en dehors du Pavillon d'Argent.
	.skipgossip
step
	.isOnQuest 14108
	>>Lancez |c99ffff99Flaming Lances|r sur le |cRXP_ENEMY_Kraken de la mer Boréale|r et les |cRXP_ENEMY_Kvaldir Deepcallers|r.
	.complete 14108,1
	.complete 14108,2
	.use 46954
	.mob North Sea Kraken
	.mob Kvaldir Deepcaller
step
	.isOnQuest 14101
	>>Rendez-vous aux Monuments Tualiq à l'Accostage de Hrothgar.
	>>Utilisez le |c99ffff99Cor de guerre kvaldir|r
	>>Tuez |cRXP_ENEMY_Drottinn Hrothgar|r
	.complete 14101,1
	.use 47006
	.goto Hrothgar's Landing,50.4,15.6
	.target Drottinn Hrothgar
step
	.isOnQuest 14102
	>>Rendez-vous à la Caverne de Mistcaller à l'Accostage de Hrothgar.
	>>Utilisez le |c99ffff99Mistcaller's Chouchou|r
	>>Tuez |cRXP_ENEMY_Mandebrume Yngvar|r
	.complete 14102,1
	.use 47009
	.goto Hrothgar's Landing,43.8,24.6
	.target Mistcaller Yngvar
step
	.isOnQuest 14104
	>>Rendez-vous au pont de la Fureur de Bor à l'Accostage de Hrothgar.
	>>Utilisez la |c99ffff99Captured Kvaldir Bannière|r
	>>Tuez |cRXP_ENEMY_Ornolf The Scarred|r
	.complete 14104,1
	.use 47029
	.goto Hrothgar's Landing,58.6,31.6
step
	.isOnQuest 14107
	>>Ramassez |cRXP_PICK_Discarded Cristaux d’âme|r sur le sol.
	>>Utilisez la |c99ffff99Light-Béni Relique|r sur les Esprits du Héros à terre.
	.collect 47035,6,14107,1,-1
	.complete 14107,1
	.use 47033
	.goto Icecrown,49.19,40.42
	.target Fallen Hero's Spirit
step
	>>Retournez au Pavillon d'Argent
	.dailyturnin 14105,14101,14102,14104 >>Rendez la quête Nécrorateur Kharos
	>>|c99ffff99ou bien créez un|r Drottinn Hrothgar
	>>|c99ffff99ou bien créez un|r Mandebrume Yngvar
	>>|c99ffff99ou bien créez un|r Ornolf The Scarred
	.dailyturnin 14108,14107 >>Rendez la quête Get Kraken!
	>>|c99ffff99ou bien créez un|r The Destin Of The À terre
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	+|cRXP_WARN_Vous avez terminé toutes les Argent Covenant Quêtes journalières pour aujourd'hui ! Rechargez ce Guide demain pour les continuer.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name J_3.2_AT_Silver_Covenant_Quêtes journalières
#displayname |cRXP_ENEMY_3.2|r - Argent Covenant Quêtes journalières
<< Alliance

step
	#completewith next
	+|cRXP_WARN_Phase 3 introduit les Argent Covenant Quêtes journalières|r
	>>Pour accéder aux Argent Covenant Quêtes journalières, vous devez être Exalté avec le |cRXP_WARN_Silver Covenant|r et être un |cRXP_ENEMY_Champion|r, ce qui donne le succès :
	.achievement 3676,1
step
	>>Entrez dans le Pavillon du Concordat argenté de l'Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narasi Aubeneige|r et |cRXP_FRIENDLY_Savinia Chanterite|r.
	.daily 14096 >>Acceptez Votre personnage've Really Terminé It This Temps, Kul
	.daily 14074,14152,14080,14077 >>Acceptez la quête A Leg Up
	>>|c99ffff99ou bien créez un|r Secours at Mer
	>>|c99ffff99ou bien créez un|r Stop The Aggressors
	>>|c99ffff99ou bien créez un|r La miséricorde de la Lumière
	.daily 14076,14090,14112 >>Acceptez la quête Breakfast of Champions
	>>|c99ffff99ou bien créez un|r Gormok Wants His Snobolds
	>>|c99ffff99ou bien créez un|r What Do Votre personnage Nourrir a Yéti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	.isOnQuest 14074
	>>Rendez-vous à l'Accostage de Hrothgar
	>>Ramassez les |cRXP_LOOT_Stolen Haut-trotteur Jambes|r au sol ou tuez des |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14074,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14152
	>>Rendez-vous au bateau de l'Alliance à l'Accostage de Hrothgar.
	>>Tuez |cRXP_ENEMY_Kvaldir Berserkers|r et |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14152,1
	.complete 14152,2
	.goto Hrothgar's Landing,49.97,49.45
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Rendez-vous à l'Accostage de Hrothgar
	>>Tuez |cRXP_ENEMY_Kvaldir Reavers|r ou |cRXP_ENEMY_Lieur de brume kvaldir|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14077
	>>Rendez-vous à l'Accostage de Hrothgar
	>>Utilisez le |c99ffff99Confessor's Prayer Livre|r pour accomplir les derniers rites pour les |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14077,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14112
	#completewith next
	>>Ramassez les |cRXP_PICK_Fresh Pa-Squale|r dans les seaux sur le bateau de l'Alliance.
	.collect 47036,5
	.goto Icecrown,67.11,7.89
step
	.isOnQuest 14112
	>>Sautez dans l'eau et utilisez les |cRXP_PICK_Fresh Pa-Squale|r.
	>>Tuez des |cRXP_ENEMY_Sharks|r pour obtenir de la |cRXP_LOOT_North Mer Requin Viande|r.
	.complete 14112,1
	.use 47036
step
	.isOnQuest 14096
	>>Tuez |cRXP_ENEMY_Zélotes sombres|r et |cRXP_ENEMY_Dark Ritualists|r pour obtenir les |cRXP_PICK_Black Cage Keys|r.
	>>Utilisez les clés pour libérer |cRXP_FRIENDLY_Prisonnier Aspirants|r des cages.
	.collect 46895,5,14096,2,-1
    .complete 14096,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14096
	>>Tuez |cRXP_ENEMY_Zélotes sombres|r et |cRXP_ENEMY_Dark Ritualists|r pour obtenir les |cRXP_PICK_Black Cage Keys|r.
	>>Libérez |cRXP_FRIENDLY_Kul the Téméraire|r de sa cage.
    .complete 14096,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14076
	>>Allez aux pics Foudroyés
	>>Utilisez le |c99ffff99Earthshaker Tambour|r à côté des amas de neige.
	>>Tuez |cRXP_ENEMY_Deep Jormungars|r qui apparaissent pour |cRXP_LOOT_Jormungar Oeuf Sacs|r.
	.complete 14076,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14090
	>>Allez aux pics Foudroyés
	>>Utilisez le |c99ffff99Filet lesté|r pour capturer les |cRXP_ENEMY_Snowblind Sujets|r.
	.complete 14090,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Retournez au Pavillon du Concordat argenté.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narasi Aubeneige|r et |cRXP_FRIENDLY_Savinia Chanterite|r.
	.dailyturnin 14096 >>Rendez Votre personnage've Really Terminé It This Temps, Kul
	.dailyturnin 14074,14152,14080,14077 >>Rendre la quête A Leg Up
	>>|c99ffff99ou bien créez un|r Secours at Mer
	>>|c99ffff99ou bien créez un|r Stop The Aggressors
	>>|c99ffff99ou bien créez un|r La miséricorde de la Lumière
	.dailyturnin 14076,14090,14112 >>Rendre la quête Breakfast of Champions
	>>|c99ffff99ou bien créez un|r Gormok Wants His Snobolds
	>>|c99ffff99ou bien créez un|r What Do Votre personnage Nourrir a Yéti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	+|cRXP_WARN_Vous avez terminé toutes les Argent Covenant Quêtes journalières pour aujourd'hui ! Rechargez ce Guide demain pour les continuer.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Tournoi d'Argent
#name J_3.2AT_Sunreavers_Quêtes journalières_Quêtes
#displayname |cRXP_ENEMY_3.2|r - Sunreavers Quêtes journalières Quêtes
<< Horde

step
	#completewith next
	+|cRXP_WARN_Phase 3 introduit les Sunreavers Quêtes journalières Quêtes|r
	>>Pour accéder à Sunreavers Quêtes journalières Quêtes, vous devez être Exaltée avec |cRXP_WARN_Sunreavers|r et être un |cRXP_ENEMY_Champion|r ce qui donne le succès :
	.achievement 3677,1
step
	>>Entrez dans le Pavillon de Saccage-Soleil.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Girana Premier-sang|r et |cRXP_FRIENDLY_Tylos Coursaurore|r.
	.daily 14142 >>Acceptez la quête Vous avez vraiment fait fort cette fois, Kul
	.daily 14143,14136,14140,14144 >>Acceptez la quête A Leg Up
	>>|c99ffff99ou bien créez un|r Secours at Mer
	>>|c99ffff99ou bien créez un|r Stop The Aggressors
	>>|c99ffff99ou bien créez un|r La miséricorde de la Lumière
	.daily 14092,14141,14145 >>Acceptez la quête Breakfast of Champions
	>>|c99ffff99ou bien créez un|r Gormok Wants His Snobolds
	>>|c99ffff99OU BIEN :|r Acceptez la quête Que donnez-vous à manger à un Yéti, de toute façon ?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	.isOnQuest 14143
	>>Rendez-vous à l'Accostage de Hrothgar
	>>Ramassez le |cRXP_LOOT_Stolen Haut-trotteur Jambes|r sur le sol ou Tuez les |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14143,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14136
	>>Rendez-vous au bateau de la Horde à l'Accostage de Hrothgar.
	>>Tuez les |cRXP_ENEMY_Kvaldir Berserkers|r et les |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14136,1
	.complete 14136,2
	.goto Hrothgar's Landing,44.14,54.22
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Rendez-vous à l'Accostage de Hrothgar
	>>Tuez les |cRXP_ENEMY_Kvaldir Reavers|r ou les |cRXP_ENEMY_Lieur de brume kvaldir|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14144
	>>Rendez-vous à l'Accostage de Hrothgar
	>>Utilisez le |c99ffff99Confessor's Prayer Livre|r pour accomplir les derniers rites pour les |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14144,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14145
	#completewith next
	>>Ramassez le |cRXP_PICK_Fresh Pa-Squale|r des seaux sur le bateau de la Horde.
	.collect 47036,5
	.goto Icecrown,73.97,9.42
step
	.isOnQuest 14145
	>>Sautez dans l'eau et utilisez le |cRXP_PICK_Fresh Pa-Squale|r.
	>>Tuez les |cRXP_ENEMY_Sharks|r pour obtenir le |cRXP_LOOT_North Mer Requin Viande|r.
	.complete 14145,1
	.use 47036
step
	.isOnQuest 14142
	>>Tuez les |cRXP_ENEMY_Zélotes sombres|r et les |cRXP_ENEMY_Sombre Ritualists|r pour les |cRXP_PICK_Noir Cage Keys|r.
	>>Utilisez les clés pour libérer les |cRXP_FRIENDLY_Prisonnier Aspirants|r de leurs cages.
	.collect 46895,5,14142,2,-1
    .complete 14142,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14142
	>>Tuez les |cRXP_ENEMY_Zélotes sombres|r et les |cRXP_ENEMY_Sombre Ritualists|r pour les |cRXP_PICK_Noir Cage Keys|r.
	>>Libérez le |cRXP_FRIENDLY_Kul the Téméraire|r de sa cage.
    .complete 14142,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14092
	>>Allez aux pics Foudroyés
	>>Utilisez le |c99ffff99Trembleterre Tambour|r à côté des tas de neige.
	>>Tuez les |cRXP_ENEMY_Deep Jormungars|r qui apparaissent pour les |cRXP_LOOT_Jormungar Oeuf Sacs|r.
	.complete 14092,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14141
	>>Allez aux pics Foudroyés
	>>Utilisez le |c99ffff99Filet lesté|r pour capturer les |cRXP_ENEMY_Voile-Blanc Sujets|r.
	.complete 14141,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Retournez au Pavillon de Saccage-Soleil
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Girana Premier-sang|r et |cRXP_FRIENDLY_Tylos Coursaurore|r.
	.dailyturnin 14142 >>Rendez la quête Vous avez vraiment fait fort cette fois, Kul
	.dailyturnin 14143,14136,14080,14144 >>Rendez la quête A Leg Up
	>>|c99ffff99ou bien créez un|r Secours at Mer
	>>|c99ffff99ou bien créez un|r Stop The Aggressors
	>>|c99ffff99ou bien créez un|r La miséricorde de la Lumière
	.dailyturnin 14092,14141,14145 >>Rendez la quête Breakfast of Champions
	>>|c99ffff99ou bien créez un|r Gormok Wants His Snobolds
	>>|c99ffff99OU BIEN :|r Acceptez la quête Que donnez-vous à manger à un Yéti, de toute façon ?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	+|cRXP_WARN_Vous avez terminé toutes les quêtes journalières de Sunreaver pour aujourd'hui ! Rechargez ce guide demain pour les continuer.|r
]])
