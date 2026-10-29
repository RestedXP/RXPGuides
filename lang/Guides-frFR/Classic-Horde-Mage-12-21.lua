if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 12-17 Les Tarides AoE
#version 1
#group RestedXP Horde Mage AoE
#defaultfor Horde Mage
#next 17-21 Serres-Rocheuses /Les Tarides AoE

step << Mage
	#era/som
    #completewith next
	+Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , mais beaucoup plus rapide
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible, et est aussi plus lent depuis le bonus d'expérience récent sur les quêtes de 100% sur SoM
step
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Parlez à |cRXP_FRIENDLY_Tonga Totem-runique|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
step
    .goto The Barrens,52.2,31.0
>>Parlez à |cRXP_FRIENDLY_Sergra Sombreronce|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée
.target Sergra Darkthorn
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target Zargh
>>Parlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Parlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >> Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Parlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
step << Troll Mage
    >>N'allez PAS à Orgrimmar
    .goto The Barrens,51.5,30.3
>>Parlez à |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
.target Devrak
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Parlez à l' |cRXP_FRIENDLY_Apothicaire Helbrim|r
    .accept 848 >>Acceptez la quête Spores fongiques
    .accept 1492 >>Acceptez Maître des quais Dizzywig
step
    #sticky
    #completewith next
    >>Vérifiez cette endroit pour voir si le Tonneau vide de Chen y est présent. Ramassez-le et commencez la quête, au cas échéant vous l'obtiendrez plus tard
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    .goto The Barrens,55.6,26.6
    >>Tuez les Hurans dans la zone
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Undead
    #sticky
    #completewith next
    >>Si la Pierre de puissance imparfaite dans vos sacs a une durée inférieure à 10 minutes, détruisez-la, puis retournez et ramassez la pierre violette à côté d'Ak'Zeloth de nouveau
    .turnin 926 >>Rendez la quête Pierre de puissance imparfaite
step << !Undead
    #sticky
    #completewith BeakCave
    >>Tuez quelques Trotteurs des plaines sur la route si vous avez du temps sur la Pierre de puissance imparfaite. Dépouillez-les pour leur Bec
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>Montez la montagne ici
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>Dirigez-vous à la grotte entourée des orcs de la Lame-Ardente
step << !Undead
    >>Faites un clic droit sur l'Autel
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Tuez les Raptors que vous croisez. Dépouillez-les pour quelques Têtes de raptor - vous en obtiendrez d'autres plus tard
    .complete 869,1 --Raptor Head (12)
step
    >>Tuez les Trotteurs des plaines. Dépouillez-les pour leur Becs
    .goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step
    >>En haut de la tour
    .goto The Barrens,51.5,30.9
>>Parlez à |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Rendez la quête Stopper les attaques des hurans
.target Thork
    .accept 872 >>Acceptez la quête La perturbation cesse
.target Darsok Swiftdagger
>>Parlez à |cRXP_FRIENDLY_Darsok Vivedague|r
    .accept 867 >>Acceptez la quête Les harpies pillardes
step
    .goto The Barrens,52.2,31.0
>>Parlez à |cRXP_FRIENDLY_Sergra Sombreronce|r
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
.target Sergra Darkthorn
    .accept 845 >>Acceptez la quête Les zhévras
step
    #sticky
    #completewith Crates
    >>Tuez les Tranchecrin en ramassant les Caisses et en tuant Kreenig Grondegroin
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Récupérez les boîtes marrons dispersées dans la zone
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Tuez Kreenig Grondegroin. Dépouillez-le pour sa Défense
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>Récupérez les boîtes marrons dispersées dans la zone
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>Finissez de tuer les Tranchecrins
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Tuez tous les Zhévras que vous croisez. Dépouillez-les pour leurs Sabots
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>Parlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Rendez la quête La Graine démoniaque
step
    >>Tuez tous les Zhévras que vous croisez. Dépouillez-les pour leurs Sabots. Assurez-vous d'en avoir 4 avant d'aller à Cabestan
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Étage supérieur du bâtiment
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>Parlez à |cRXP_FRIENDLY_Gazleu|r
    .accept 887 >>Acceptez la quête Les flibustiers des Mers du sud
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >> Apprenez le chemin de vol de Cabestan
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>Parlez à |cRXP_FRIENDLY_Krachevalve|r
    .accept 894 >>Acceptez la quête Samophlange
step
    >>Cliquez sur l'Affiche de recherche. Vous pouvez aussi déposer des objets à la banque si vous le voulez
    .goto The Barrens,62.6,37.5
    .accept 895 >>Acceptez la quête ON RECHERCHE : baron de Longrivage
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>Parlez à |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Acceptez la quête Les cornes de raptors
step
    .goto The Barrens,62.3,38.4
>>Parlez au |cRXP_FRIENDLY_Brasseur Drohn|r
    .turnin 819 >>Rendez la quête Tonneau vide de Chen
.target Brewmaster Drohn
    .accept 821 >>Acceptez la quête Tonneau vide de Chen
step
    #sticky
    #label Southsea
    >>Tuez les ennemis des Mers du sud dans la zone
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    >>Tuez le Baron de Longrivage. Dépouillez-le pour sa Tête
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>Parlez à |cRXP_FRIENDLY_Gazleu|r
    .turnin 887 >>Rendez la quête Les flibustiers des Mers du sud
.target Gazlowe
    .accept 890 >>Acceptez la quête La livraison perdue
    .turnin 895 >>Rendez la quête ON RECHERCHE : baron de Longrivage
step
    .goto The Barrens,63.3,38.4
>>Parlez au |cRXP_FRIENDLY_Maître des quais Tournoupette|r
    .turnin 1492 >>Rendez Maître des quais Dizzywig
    .turnin 890 >>Rendez la quête La livraison perdue
.target Wharfmaster Dizzywig
    .accept 892 >>Acceptez la quête La livraison perdue
    .accept 896 >>Acceptez la quête La bonne fortune d'un mineur pauvre
step
    .goto The Barrens,62.7,36.3
>>Parlez à |cRXP_FRIENDLY_Gazleu|r
    .turnin 892 >>Rendez la quête La livraison perdue
.target Gazlowe
    .accept 888 >>Acceptez la quête Course à la lentille
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >> Volez à la Croisée
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Parlez à |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Rendez la quête Ravitaillement pour la Croisée
    .turnin 872 >>Rendez la quête La perturbation cesse
step
    .goto The Barrens,52.2,31.0
>>Parlez à |cRXP_FRIENDLY_Sergra Sombreronce|r
    .turnin 845 >>Rendez la quête Les zhévras
.target Sergra Darkthorn
    .accept 903 >>Acceptez la quête Les rôdeurs des Tarides
step
    #sticky
    #completewith next
    >>Tuez les Trotteurs des plaines. Dépouillez-les pour leur Rognons
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .accept 855 >> Acceptez la quête Les bracelets de centaures
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Tuez les |cRXP_ENEMY_Querelleurs kolkars|r et les |cRXP_ENEMY_Légion-tempêtes kolkars|r. Dépouillez-les pour leurs |cRXP_LOOT_Bracelets|r
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Tuez |cRXP_ENEMY_Barak Kodobane|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Faites attention aux coups en mêlée de |cRXP_ENEMY_Barak Kodobane|r qui infligent BEAUCOUP de dégâts et il est protégé par un |cRXP_ENEMY_Kolkar Wrangler|r. Ils peuvent vous immobiliser avec un filet et vous tirer dessus à distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>Tuez les Raptors que vous croisez. Dépouillez-les pour quelques Têtes de raptor - vous en obtiendrez d'autres plus tard
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>Ne vous préoccupez pas de tous les tuer pour l'instant
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Tuez les Rôdeurs. Dépouillez-les pour leurs Griffes et leur Défenses
    .goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Tuez les Harpies. Dépouillez-les pour leur Serres
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto The Barrens,43.8,12.2
    >> Si vous n'avez pas encore obtenu la Lourde masse à pointes, essayez de l'acheter à Vrang Wildgore << Druid/Warrior
    .vendor >> Vendez votre surplus à Vrang si besoin
step
    #sticky
    #completewith next
    >>Tuez les Trotteurs des plaines. Dépouillez-les pour leur Rognons
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Tuez les Raptors. Dépouillez-les pour leur Têtes
    .complete 869,1 --Raptor Head (12)
step
    >>Cliquez sur la Console de contrôle
    .goto The Barrens,52.4,11.6
    .turnin 894 >>Rendez la quête Samophlange
    .accept 900 >>Acceptez la quête Samophlange
step
    >>Cliquez sur la valve
    .goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Cliquez sur la Valve. Des mobs apparaîtront lorsque vous cliquerez sur dessus
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Cliquez sur la Console de contrôle
    .goto The Barrens,52.4,11.6
    .turnin 900 >>Rendez la quête Samophlange
    .accept 901 >>Acceptez la quête Samophlange
step
    >>Tuez le Bricoleur Brokarde dans le bâtiment. Dépouillez-le pour la Clé de la console
    .goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>Rendez la quête Samophlange
    .accept 902 >>Acceptez la quête Samophlange
step
    >>Acceptez la quête Contact
    .goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>Parlez au |cRXP_FRIENDLY_Déchiqueteur de Crackelevier|r
    .accept 858 >>Acceptez la quête Contact
step
    >>Tuer des mobs jusqu'au niveau 16 est important pour la suite, car les 3 quêtes à venir sont assez difficiles.
	.xp 16 >> Montez jusqu'au niveau 16
step
    >>Tuez le Superviseur Trimballast (Il patrouille partout dans la tour). Dépouillez-le pour la Clé de contact
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>Cela va commencer une quête d'escorte
    .goto The Barrens,56.5,7.5
>>Parlez au |cRXP_FRIENDLY_Déchiqueteur de Crackelevier|r
    .turnin 858 >>Rendez la quête Contact
.target Wizzlecrank's Shredder
    .accept 863 >>Acceptez la quête La fuite
step
    #label Slugs
    >>2 mobs vont apparaître à un moment. Tuez-les puis attendez le temps de son RP à la fin
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Tuez les mobs dans la zone. Dépouillez-les jusqu'à ce que l'Emeraude oeil-de-chat ne tombe
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>Allez à l'entrée ouest d'Orgrimmar
step
    .goto Orgrimmar,38.79,85.68
    .trainer >> Apprenez vos sorts de classe
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>Parlez à |cRXP_FRIENDLY_Gryshka l'aubergiste|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
step
    >>Dirigez-vous vers le Maître de vol. Ne volez NULLE PART
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar << Undead
>>Parlez à |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Rendez la quête Doras, le maître des coursiers du vent << Troll Mage
.target Doras
    .accept 6386 >>Acceptez la quête Retour à la Croisée << Troll Mage
step
    >>Allez au fort Grommash
    .goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>Parlez à |cRXP_FRIENDLY_Zor Arbre-solitaire|r
    .accept 1061 >>Acceptez la quête Les esprits des Serres-Rocheuses
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour vous revenir à la Croisée
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target Zargh
>>Parlez à |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Rendez la quête Retour à la Croisée.
step
    .goto The Barrens,51.9,30.3
>>Parlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Rendez la quête Les raptors voleurs
.target Gazrog
    .accept 3281 >>Acceptez la quête Argent volé
step
    .goto The Barrens,52.3,31.0
>>Parlez à |cRXP_FRIENDLY_Sergra Sombreronce|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
.target Sergra Darkthorn
    .accept 881 >>Acceptez la quête Echeyakee
step
    >>Utilisez la Corne d'Echeyakee dans vos sacs pour invoquer Echeyakee. Tuez-le et dépouillez-le pour sa Peau
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>Parlez à |cRXP_FRIENDLY_Sergra Sombreronce|r
    .turnin 881 >>Rendez la quête Echeyakee
.target Sergra Darkthorn
    .accept 905 >>Acceptez la quête Les Faucheurs furieux
step
    .goto The Barrens,52.20,31.90
>>Parlez à |cRXP_FRIENDLY_Tonga Totem-runique|r
    .turnin 870 >> Rendez la quête Les Bassins oubliés
.target Tonga Runetotem
    .accept 877 >> Acceptez la quête L'oasis stagnante
step
    .goto The Barrens,52.00,31.60
.target Mankrik
>>Parlez à |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Acceptez la quête Consumé par la haine
    .accept 4921 >> Acceptez la quête Disparition au combat
step
    >>En haut de la tour
    .goto The Barrens,51.6,30.9
>>Parlez à |cRXP_FRIENDLY_Darsok Vivedague|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
.target Darsok Swiftdagger
    .accept 875 >>Acceptez la quête Lieutenants harpies
step
    .goto The Barrens,51.50,30.20
.target Apothecary Helbrim
>>Parlez à l' |cRXP_FRIENDLY_Apothicaire Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Volez à Ratchet
step
    .goto The Barrens,63.0,37.2
>>Parlez à |cRXP_FRIENDLY_Krachevalve|r
    .turnin 902 >>Rendez la quête Samophlange
    .turnin 863 >> Rendez la quête La fuite
.target Sputtervalve
    .accept 1483 >> Acceptez la quête Ziz Fizzik
step
    .goto The Barrens,63.30,38.40
.target Wharfmaster Dizzywig
>>Parlez au |cRXP_FRIENDLY_Maître des quais Tournoupette|r
    .turnin 896 >> Rendez la quête La bonne fortune d'un mineur pauvre
step
    .goto The Barrens,62.40,37.70
.target Mebok Mizzyrix
>>Parlez à |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Acceptez la quête Omelette à la mousse profonde
step
    >>Ramassez la caisse
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Ramassez la caisse
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>Tuez tous les raptors que vous croisez. Dépouillez-les pour leurs Cornes et leurs Plumes. Soyez prudent car ils lancent Rosser
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Ouvrez le coffre pour l'Argent volé
    >>Gardez toutes les Plumes solécailles que vous obtenez pour plus tard
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Cliquez sur la Fissure bouillonnante sous l'eau
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Tuez les Centaures. Dépouillez-les pour leurs bracelets
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Tuez en boucle les Centaures autour du lac jusqu'à ce que Verog apparaisse (vous verrez qu'il criera dans le chat lorsqu'il apparaît)
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Cliquez sur l'œuf. Vous avez besoin des Plumes solécailles des raptors
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Cliquez sur l'œuf. Vous avez besoin des Plumes solécailles des raptors
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Cliquez sur l'œuf. Vous avez besoin des Plumes solécailles des raptors
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    >>Terminez de tuer les Raptors. Dépouillez-les pour leurs Cornes
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Parlez à la femme de Mankrik
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>Liez votre Pierre de foyer au Camp Taurajo
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Parlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Acceptez la quête Tribus en guerre
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo
    .fly Crossroads >>Volez à la Croisée
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Parlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Rendez la quête Argent volé
step
    .goto The Barrens,52.2,31.0
>>Parlez à |cRXP_FRIENDLY_Sergra Sombreronce|r
    .turnin 905 >>Rendez la quête Les Faucheurs furieux
.target Sergra Darkthorn
    .accept 3261 >>Acceptez la quête Jorn Œil-des-cieux
step
    .goto The Barrens,52.2,31.9
>>Parlez à |cRXP_FRIENDLY_Tonga Totem-runique|r
    .turnin 877 >>Rendez la quête L'oasis stagnante
.target Tonga Runetotem
    .accept 880 >>Acceptez la quête Source de vie
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Parlez à |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Rendez la quête Disparition au combat
step
    #sticky
	#completewith next
    >>Tuez les Trotteurs des plaines. Dépouillez-les pour leur Rognons
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>Parlez à |cRXP_FRIENDLY_Regthar Seuil-de-mort|r
    .turnin 851 >>Rendez la quête Verog le Derviche
.target Regthar Deathgate
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
step
    .goto The Barrens,45.39,28.43
.target Regthar Deathgate
>>Parlez à |cRXP_FRIENDLY_Regthar Seuil-de-mort|r
    .turnin 855 >> Rendez la quête Les bracelets de centaures
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>Parlez à |cRXP_FRIENDLY_Regthar Seuil-de-mort|r
    .turnin 851 >>Rendez la quête Verog le Derviche
.target Regthar Deathgate
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
step
    #sticky
	#label CeBracers
    >>Tuez les Centaures. Dépouillez-les pour leurs bracelets
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >> Hezrul patrouille autour du grand lac de la Cavernes des lamentations
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Parlez à |cRXP_FRIENDLY_Regthar Seuil-de-mort|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .turnin 855 >> Rendez la quête Les bracelets de centaures
step
    .goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Parlez à |cRXP_FRIENDLY_Regthar Seuil-de-mort|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
step
    >> Cette quête peut être très difficile à faire seul. Si vous n'avez personne avec qui monter un groupe, envisagez de former un groupe pour cette quête ou faites de l'attirer près du bâtiment du donneur de quête
    >> Passez cette étape si elle est trop difficile
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target Regthar Deathgate
>>Parlez à |cRXP_FRIENDLY_Regthar Seuil-de-mort|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>Tuez les Tueuses Ensorçailes. Dépouillez-les pour les Anneaux de lieutenant harpie
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,41.4,24.5
    >>Tuez les Rôdeurs des savanes dans la zone. Dépouillez-les pour leurs Défenses
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>Parlez à |cRXP_FRIENDLY_Seereth Bris-de-pierre|r
    .turnin 1061 >> Rendez la quête Les esprits des Serres-Rocheuses
.target Seereth Stonebreak
    .accept 1062 >> Acceptez la quête Les invasions gobelines
.target Makaba Flathoof
>>Parlez à |cRXP_FRIENDLY_Makaba Sabot-plat|r
    .accept 6548 >> Acceptez la quête Vengez mon village !
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 17-21 Serres-Rocheuses /Les Tarides AoE
#version 1
#group RestedXP Horde Mage AoE
#defaultfor Horde Mage
#next 21-30 Forêt des Pins argentés/Hautebrande AoE

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    >>Tuez les Totem-sinistres dans la zone
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.191,27.791
>>Parlez à |cRXP_FRIENDLY_Makaba Sabot-plat|r
    .turnin 6548 >> Rendez la quête Vengez mon village !
.target Makaba Flathoof
    .accept 6629 >> Acceptez la quête Tuer Grundig Noir-nuage
step
    >>Entrez dans le village par le chemin à l'ouest. Assurez-vous de tuer les 6 brutes avant de commencer la quête à l'intérieur. Tuez Grundig Noir-nuage devant la tente principale
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Démarrez l'escorte de Kaya
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Parlez à |cRXP_FRIENDLY_Kaya Sabot-plat|r
    .accept 6523 >> Acceptez la quête Protéger Kaya
step
     >>Escortez Kaya et restez proche d'elle. 3 Totem-sinistres apparaîtront près du feu de camp. Mangez/buvez avant qu'elle n'arrive au camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>Parlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acceptez la quête Suceurs de sang
step
    #sticky
    #label deepmossegg
    >>Cliquez sur les oeufs d'araignée près des arbres
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Tuez les Araignées des mousses profondes dans la zone
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Parlez à |cRXP_FRIENDLY_Ziz Fizzik|r
    .turnin 1483 >> Rendez la quête Ziz Fizzik
.target Ziz Fizziks
    .accept 1093 >> Acceptez la quête Super-Découpeur 6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Tuez les Déboiseurs pendant que vous cherchez les Opérateurs pour obtenir le Plan
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Tuez les Opérateurs de la KapitalRisk jusqu'à ce que vous obteniez le Plan
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Terminez de tuer les Déboiseurs
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Parlez à |cRXP_FRIENDLY_Ziz Fizzik|r
    .turnin 1093 >> Rendez la quête Super-Découpeur 6000
.target Ziz Fizziks
    .accept 1094 >> Acceptez la quête D'autres instructions
step
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
step
    .goto The Barrens,44.9,59.1
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 3261 >>Rendez la quête Jorn Œil-des-cieux
.target Jorn Skyseer
    .accept 882 >>Acceptez la quête Ishamuhale
step
    #sticky
    #label Lizard
    >>Tuez les Groin-tempête. Dépouillez-les pour une Corne
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>Trouvez et tuez Lakota'mani (Kodo gris) dans la zone. Dépouillez-le pour son Sabot. Si vous ne le trouvez pas, passez cette quête
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
step
    >>Tuez ÉNORMÉMENT de Hurans. Dépouillez-les pour leur Défenses. Gardez les Joyau de sang que vous obtenez
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>Tuez les Trotteurs des plaines. Dépouillez-les pour leur Rognons
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Contournez le lac et tuez les Tortues en AoE. Dépouillez-les pour leur Carapaces
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Tuez un Zhévra dans la zone. Dépouillez-le pour sa Carcasse
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Utilisez la Carcasse de zhévra fraîche près de l'arbre mort pour invoquer Ishamuhale. Tuez-le et dépouillez-le pour son Croc
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Tuez les Trotteurs des plaines. Dépouillez-les pour leur Rognons
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>Retournez à Cabestan
.target Gazlowe
>>Parlez à |cRXP_FRIENDLY_Gazleu|r
    .turnin 888 >>Rendez la quête Course à la lentille
step
    .goto The Barrens,63.0,37.2
>>Parlez à |cRXP_FRIENDLY_Krachevalve|r
    .turnin 1094 >>Rendez la quête D'autres instructions
.target Sputtervalve
    .accept 1095 >>Acceptez la quête D'autres instructions
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Parlez à |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>Parlez au |cRXP_FRIENDLY_Brasseur Drohn|r
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Volez à la Croisée
step
    .goto The Barrens,52.2,31.9
>>Parlez à |cRXP_FRIENDLY_Tonga Totem-runique|r
    .turnin 880 >>Rendez la quête Source de vie
.target Tonga Runetotem
    .accept 1489 >>Acceptez la quête Hamuul Totem-runique
    .accept 3301 >>Acceptez la quête Mura Runetotem
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Parlez à |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Rendez la quête Consumé par la haine
step
    >>En haut de la tour
    .goto The Barrens,51.60,30.90
>>Parlez à |cRXP_FRIENDLY_Darsok Vivedague|r
    .turnin 875 >> Rendez la quête Lieutenants harpies
.target Darsok Swiftdagger
    .accept 876 >> Acceptez la quête Serena Plumesang
step
    >>Cela commence une quête chronométrée
    .goto The Barrens,51.4,30.2
>>Parlez à l' |cRXP_FRIENDLY_Apothicaire Helbrim|r
    .turnin 848 >>Rendez la quête Spores fongiques
.target Apothecary Helbrim
    .accept 853 >>Acceptez la quête L'apothicaire Zamah
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Volez au Camp Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Tuez les Hurans pour un Joyau de sang
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
>>Parlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Rendez la quête Tribus en guerre
.target Mangletooth
    .accept 5052 >>Acceptez la quête Joyaux de sang d'Agamaggan
    .turnin 5052 >>Rendez la quête Joyaux de sang d'Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 882 >>Rendez la quête Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .accept 1130 >>Acceptez la quête Melor envoie un message
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target Jorn Skyseer
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 883 >>Rendez la quête Lakota'mani
step
    .goto The Barrens,44.8,59.1
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 882 >>Rendez la quête Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .accept 1130 >>Acceptez la quête Melor envoie un message
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>Cherchez Owatanka (Lézard-tonnerre bleu) dans cette zone. Si vous le trouvez, ramassez son Épine caudale et commencez la quête. Si vous ne le trouvez pas, passez cette quête
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
step
    .goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
    >>Tuez les Lézards-tonnerre. Dépouillez-les pour leur Sang
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
.target Jorn Skyseer
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
step
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 884 >>Rendez la quête Owatanka
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
.target Jorn Skyseer
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
step
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    >>Tuez un Faucon-tonnerre. Dépouillez-le pour ses Ailes
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>Parlez à |cRXP_FRIENDLY_Jorn Œil-des-cieux|r
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>Échangez vos Joyaux de sang pour le buff L'esprit du vent auprès de Mutiledent. Si vous avez accidentellement vendu les Joyaux, passez cette étape.
.target Mangletooth
>>Parlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 889 >> Rendez la quête L'esprit du vent
step
    .goto Thunder Bluff,32.0,66.9,60 >>Prenez l'ascenseur pour monter aux Pitons-du-Tonnerre
step
    .goto Thunder Bluff,45.814,64.711
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
step
    .goto Thunder Bluff,61.538,80.919
>>Parlez à |cRXP_FRIENDLY_Melor Sabot-de-pierre|r
    .turnin 1130 >>Rendez la quête Melor envoie un message
.target Melor Stonehoof
    .accept 1131 >>Acceptez la quête Broie-l'acier
step
 	>>Entrez dans le bassin des Visions
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target Apothecary Zamah
>>Parlez à l' |cRXP_FRIENDLY_Apothicaire Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Apprenez vos sorts de classe
	>>Ne prenez pas encore la spécialisation AoE (si vous avez la spécialisation feu)
step
    .goto Thunder Bluff,28.4,27.7
.target Clarice Foster
>>Parlez à |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Acceptez la quête Jusqu'à ce que la mort nous sépare
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >> Prenez le chemin de vol des Pitons-du-Tonnerre
    .fly Crossroads >>Volez à la Croisée
step
    >>Tuez Serena Plumesang. Dépouillez-la pour récupérer sa Tête
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>Parlez à |cRXP_FRIENDLY_Seereth Bris-de-pierre|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
>>Parlez à |cRXP_FRIENDLY_Makaba Sabot-plat|r
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .turnin 6523 >>Rendez la quête Protéger Kaya
.target Makaba Flathoof
    .accept 6401 >>Acceptez la quête Kaya est en vie
.target Seereth Stonebreak
    .accept 1063 >>Acceptez la quête L'Ancienne
--    .accept 1068 >> Accept Shredding Machines
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>Parlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Rendez la quête Suceurs de sang
step
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Parlez à |cRXP_FRIENDLY_Ziz Fizzik|r
    .turnin 1095 >>Rendez la quête D'autres instructions
step
    .goto Stonetalon Mountains,47.5,58.4
.target Tammra Windfield
>>Parlez à |cRXP_FRIENDLY_Tammra Champ-des-vents|r
    .turnin 6401 >>Rendez la quête Kaya est en vie
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>> Prenez le chemin de vol de la Retraite de Roche-Soleil
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
step
    .goto Thunder Bluff,70.00,30.90
>>Parlez à |cRXP_FRIENDLY_Magatha Totem-sinistre|r
    .turnin 1063 >> Rendez la quête L'Ancienne
.target Magatha Grimtotem
    .accept 1064 >> Acceptez la quête L'aide des Réprouvés
step
    .goto Thunder Bluff,78.62,28.56
>>Parlez à l' |cRXP_FRIENDLY_Archidruide Hamuul Totem-runique|r
    .turnin 1489 >> Rendez la quête Hamuul Totem-runique
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Acceptez la quête Nara Wildmane
step
    .goto Thunder Bluff,75.65,31.62
.target Nara Wildmane
>>Parlez à |cRXP_FRIENDLY_Nara Crin-sauvage|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
step
    .goto Thunder Bluff,23.00,21.0
>>Parlez à l' |cRXP_FRIENDLY_Apothicaire Zamah|r
    .turnin 1064 >> Rendez la quête L'aide des Réprouvés
.target Apothecary Zamah
    .accept 1065 >> Acceptez la quête Un voyage vers Moulin-de-Tarren
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Apprenez vos sorts de classe si nécessaire
	>>Changez votre spécialisation pour la Givre AoE si vous ne l'avez pas encore fait
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>Volez à la Croisée
step
    .goto The Barrens,51.60,30.90
	>>Montez à l'étage
.target Darsok Swiftdagger
>>Parlez à |cRXP_FRIENDLY_Darsok Vivedague|r
    .turnin 876 >> Rendez la quête Serena Plumesang
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >> Volez à Orgrimmar
]])
