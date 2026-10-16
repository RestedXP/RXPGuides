if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name Guide Sésame 58-60
#subgroup RestedXP Horde Sésame 58-60
#subweight -1
#title Personnage boosté 58-60
#next 60-61 Péninsule des Flammes infernales

step
+Dès que vous vous connectez pour la première fois, terminez la petite section tutorielle devant votre formateur de classe pour accéder à tout l'équipement amélioré
.use 185964
.use 186051
.use 186052
.use 186053
.use 186054
.use 186055
.use 186056
.use 186057
.isQuestAvailable 64035 << Alliance
.isQuestAvailable 64052 << Horde !Druid
.isQuestAvailable 64053 << Horde Druid
step << Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Thuul|r au sommet de la hutte
    .train 3567 >> Apprenez [Téléportation : Orgrimmar]
    .train 11417 >> Apprenez [Portail : Orgrimmar]
    .target Thuul
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Achetez toutes les améliorations de familier que vous pouvez vous permettre
	.target Kurgul
step
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barkeep Morag|r
	.vendor >>|cRXP_BUY_Achetez 2 stacks de nourriture|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Achetez 2 stacks de nourriture et d'eau|r << Rogue/Warrior
	.target Barkeep Morag
step
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Quittez Orgrimmar
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Western Plaguelands
step
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step
    #label UCflightpath1
    .isQuestAvailable 5211
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Undercity
    .target Michael Garrett
step
	#completewith next
	.subzone 152 >> Quittez Undercity et allez à la Barricade
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAllez à la Barricade, puis parlez à |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
step
	.goto Western Plaguelands,26.55,56.18
	>>Cliquez sur la |cRXP_PICK_Box of Incendiaries|r près du feu
	.collect 12814,1,5096,1 --Flame in a Bottle (1)
step
    .goto Tirisfal Glades,83.19,68.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garush|r
    .turnin 5405 >>Rendez la quête Brevet de l'Aube d'argent
	.target Argent Officer Garush
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mehlar Aubelame|r
    .accept 9443 >>Acceptez la quête La pseudo-marque du Porteur de Lumière
    .target Mehlar Dawnblade
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mickey|r
    .accept 5901 >>Acceptez la quête Une Plaie sur la Croisade
	.target Mickey Levine
step
    #completewith next
    .use 12846 >>Équipez votre bijou [Brevet de l'Aube d'argent]
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Cliquez sur la|cRXP_PICK_Command Tent|r, puis utilisez votre |T132484:0|t[Scourge Banner]
	>>Ces créatures sont assez difficiles à tuer et peuvent chain-pull, faites attention
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Rendez la quête Diversions écarlates
    .accept 5098 >>Acceptez la quête Tout au long des tours de guet
    .accept 5228 >>Acceptez la quête Les chaudrons du Fléau
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandis|r
    .turnin 5228 >>Rendez la quête Les chaudrons du Fléau
    .accept 5229 >>Acceptez la quête Cible : le Champ de Gangrepierre
	.target Shadow Priestess Vandis
step
    .goto Western Plaguelands,37.12,57.18
    >>Tuez |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Dépouillez-le pour son |cRXP_LOOT_Cauldron Key|r
    .complete 5229,1 --Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.2,56.8
	>>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r posé en haut du podium
    .turnin 5229 >>Rendez la quête Cible : le Champ de Gangrepierre
    .accept 5230 >>Acceptez la quête Retour à la Barricade
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janice|r au second étage de la maison
    .accept 5021 >>Acceptez la quête Mieux vaut tard que jamais
	.target Janice Felstone
step
    #label FelstoneField
    .goto Western Plaguelands,38.8,55.3
	>>Cliquez sur |cRXP_PICK_Janice's Parcel|r dans la grange
	>>Vous pouvez le cliquer à travers le mur du couloir si vous ne voulez pas engager les créatures à l'intérieur
    .turnin 5021 >>Rendez la quête Mieux vaut tard que jamais
    .accept 5023 >>Acceptez la quête Mieux vaut tard que jamais
step
	#completewith next
	.subzone 152 >> Retournez à la Barricade
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandis|r
    .turnin 5230 >>Rendez la quête Retour à la Barricade
    .accept 5231 >>Acceptez la quête Cible : les Larmes de Dalson
	.target Shadow Priestess Vandis
step
	#sticky
	#completewith wplbf
	+Faites en sorte de tuer et de dépouiller les créatures entre chaque tour pour les [Fragments d'Os]
    .collect 22526,30,91261 --Bone Fragments
step
    .goto Western Plaguelands,42.28,66.05
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,2 --Tower Two marked (1)
step
    #label TowerOne
    .goto Western Plaguelands,40.15,71.50
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r à l'étage supérieur de l'auberge
    .accept 4971 >>Acceptez la quête Une question de temps
	.target Chromie
step
    .goto Western Plaguelands,44.24,63.06
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,45.8,63.3
	.use 12627 >>Faites apparaître les |cRXP_ENEMY_Temporal Parasites|r en utilisant votre [Déplaceur temporel] près des silos qui brillent
	>>Les Parasites Temporels lancent continuellement Lenteur et peuvent faire apparaître des parasites additionnels à leur mort. Soyez à courir dans l'eau si vous en avez engagé trop, ils ne peuvent pas nager
    .complete 4971,1 --Temporal Parasite (10)
	.mob Temporal Parasite
step
    .goto Western Plaguelands,46.73,71.14
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,46.04,52.33
    >>Tuez le |cRXP_ENEMY_Seigneur du Chaudron Malvinious|r. Dépouillez-le pour sa |cRXP_LOOT_Clé du chaudron|r
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
	.unitscan Cauldron Lord Malvinious
step
    .goto Western Plaguelands,46.2,52.0
	>>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r posé en haut du podium
    .turnin 5231 >>Rendez la quête Cible : les Larmes de Dalson
    .accept 5232 >>Acceptez la quête Retour à la Barricade
step
    .goto Western Plaguelands,47.8,50.6
	>>Cliquez sur le |cRXP_PICK_Mrs. Dalson's Diary|r
    .turnin 5058 >>Rendez la quête Journal de Mme Dalson
step
    .goto Western Plaguelands,47.49,51.00
	>>Tuez les |cRXP_ENEMY_Wandering Skeleton|r. Dépouillez-les pour leur |cRXP_LOOT_Outhouse Key|r
	>>|cRXP_WARN_Tuez des ennemis pour des|r |T133724:0|t[Fragments d'os] |cRXP_WARN_si le |cRXP_ENEMY_Squelette errant|r n'a pas encore réapparu|r
	.collect 12738,1 -- Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
    >>Cliquez sur le |cRXP_PICK_Outhouse|r
    .turnin 5059 >>Rendez la quête Enfermé
step
    .goto Western Plaguelands,48.2,49.7
	>>Tuez |cRXP_ENEMY_Farmer Dalson|r. Dépouillez-le pour son |cRXP_LOOT_Cabinet Key|r
    .collect 12739,1,5060 --Collect Dalson Cabinet Key (x1)
	.unitscan Farmer Dalson
step
    .goto Western Plaguelands,47.4,49.7
	>>Cliquez sur le|cRXP_PICK_Locked Cabinet|r au dernier étage de la maison
    .turnin 5060 >>Rendez la quête Enfermé
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta|r
    .accept 6004 >>Acceptez la quête Un travail inachevé
	.target Kirsta Deepshadow
step
	#completewith next
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12,70,0
    >>Tuez les |cRXP_ENEMY_Scarlet Mages|r et les |cRXP_ENEMY_Scarlet Knights|r
	>>Les |cRXP_ENEMY_Mages|r et les |cRXP_ENEMY_Chevalier|r partagent leur respawn. Si nécessaire, tuez des créatures en plus pour changer le type de créatures dans la zone
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.77,44.13,70,0
    .goto Western Plaguelands,40.83,52.30,70,0
    .goto Western Plaguelands,47.35,51.54,0
    .goto Western Plaguelands,51.77,44.13
	>>Tuez les |cRXP_ENEMY_Scarlet Medics|r et les |cRXP_ENEMY_Scarlet Hunters|r
	>>Les |cRXP_ENEMY_Medics|r et les |cRXP_ENEMY_Hunters|r peuvent être trouvé dans les camps. Si nécessaire, tuez des créatures en plus pour changer le type de créatures dans la zone
    .complete 6004,1 --Scarlet Medic (2)
	.mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
	.mob +Scarlet Hunter
step
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12
    >>Terminez de tuer les |cRXP_ENEMY_Scarlet Mages|r et les |cRXP_ENEMY_Scarlet Knights|r
	>>Les |cRXP_ENEMY_Mages|r et les |cRXP_ENEMY_Chevalier|r partagent leur respawn. Si nécessaire, tuez des créatures en plus pour changer le type de créatures dans la zone
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta|r
    .turnin 6004 >>Rendez la quête Un travail inachevé
    .accept 6023 >>Acceptez la quête Un travail inachevé
	.target Kirsta Deepshadow
step
    .goto Western Plaguelands,57.83,36.10
	>>Tuez |cRXP_ENEMY_Huntsman Radley|r
	>>Les créatures autour du camp peuvent venir facilement ensemble. Les lieurs de sorts lancent Nova de givre
    .complete 6023,1 --Huntsman Radley (1)
	.unitscan Huntsman Radley
step
    .goto Western Plaguelands,54.64,23.71
	>>Tuez |cRXP_ENEMY_Cavalier Durgen|r
	>>Ce combat est beaucoup moins dangereux si vous attendez qu'il patrouille hors de la tour avant de l'engager. Il peut vous étourdir instantanément pendant 5 secondes
    .complete 6023,2 --Cavalier Durgen (1)
	.unitscan Cavalier Durgen
step
	#label crusader
    .goto Western Plaguelands,55.1,23.5
    >>Ouvrez le |cRXP_PICK_Holy Coffer|r tout en haut de la loot. Récupérez le |cRXP_LOOT_Mark of the Lightbringer|r
	>>|cRXP_WARN_Le |cRXP_ENEMY_Scarlet High Clerist|r (63 elite) peut être présent. Passez cette quête si nécessaire|r
    .complete 9443,1 --Mark of the Lightbringer (1)
    .unitscan Scarlet High Clerist
step
	#label Businessman
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta|r
    .turnin 6023 >>Rendez la quête Un travail inachevé
    .accept 6025 >>Acceptez la quête Un travail inachevé
	.target Kirsta Deepshadow
step
    #label HearthglenOverlook
    .goto Western Plaguelands,47.94,21.43,60,0
    .goto Western Plaguelands,43.31,17.34,50,0
    .goto Western Plaguelands,45.6,18.6
    >>Entrez dans Âtreval et suivez la flèche pour reset les mobs une fois que vous êtes à l'intérieur
    >>Allez tout en haut de la tour. Faites attention car les Paladins dehros peuvent soigner. Vous pouvez essayer de les semer/de les contrôler et d'aller en haut
    >>Sachez que les mobs n'ont pas d'axe Z. Ils peuvent vous toucher directement du bas de la tour si ils sont juste en bas de vous
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    #completewith next
    .subzone 192 >>Sortez d'Âtreval
step
    .goto Western Plaguelands,51.92,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta|r
    .turnin 6025 >>Rendez la quête Un travail inachevé
	.target Kirsta Deepshadow
step
	#completewith next
	.subzone 152 >> Retournez à la Barricade
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandis|r
    .turnin 5232 >>Rendez la quête Retour à la Barricade
    .accept 5233 >>Acceptez la quête Cible : le Repaire putride
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Rendez la quête Tout au long des tours de guet
    .accept 838 >>Acceptez la quête Scholomance
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 838 >>Rendez la quête Scholomance
    .accept 964 >>Acceptez la quête Fragments de squelette
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mehlar Aubelame|r
    .turnin 9443 >>Rendez la quête La pseudo-marque du Porteur de Lumière
    .accept 9444 >>Acceptez la quête Profaner la tombe d'Uther
    .target Mehlar Dawnblade
	.isQuestComplete 9443
step
    #optional
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mehlar Aubelame|r
    .accept 9444 >>Acceptez la quête Profaner la tombe d'Uther
    .target Mehlar Dawnblade
	.isQuestTurnedIn 9443
step
	.goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r au dernier étage de l'auberge
    .turnin 4971 >>Rendez la quête Une question de temps
    .accept 4972 >>Acceptez la quête Arrêt du temps
	.target Chromie
step
	#completewith next
	>>Ouvrez les |cRXP_PICK_Small Lockboxes|r. Ramassez les |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    #loop
	.goto Western Plaguelands,46.40,70.00,0
	.goto Western Plaguelands,46.40,70.00,50,0
	.goto Western Plaguelands,45.60,72.20,50,0
	.goto Western Plaguelands,42.60,71.40,50,0
	.goto Western Plaguelands,41.60,73.20,50,0
	.goto Western Plaguelands,38.80,71.00,50,0
	.goto Western Plaguelands,38.80,68.20,50,0
	.goto Western Plaguelands,40.40,66.40,50,0
	.goto Western Plaguelands,42.60,70.00,50,0
	.goto Western Plaguelands,43.40,64.40,50,0
	.goto Western Plaguelands,45.80,65.80,50,0
	>>Tuez tous les |cRXP_ENEMY_Skeletons|r dans Andorhal. Dépouillez-les pour leur |cRXP_LOOT_Fragments|r
	>>Les |cRXP_ENEMY_Bourreaux Squelettes|r |cRXP_WARN_peuvent utiliser|r |T135358:0|t[Exécution] |cRXP_WARN_si votre vie passe en dessous de 20%|r
    .complete 964,1 --Skeletal Fragments (15)
	.mob Skeletal Executioner
	.mob Skeletal Acolyte
	.mob Skeletal Warlord
	.mob Skeletal Sorcerer
	.mob Skeletal Flayer
	.mob Skeletal Terror
step
    #loop
	.goto Western Plaguelands,40.40,66.50,0
	.goto Western Plaguelands,40.40,66.50,30,0
	.goto Western Plaguelands,38.90,68.10,30,0
	.goto Western Plaguelands,41.30,69.80,30,0
	.goto Western Plaguelands,42.80,73.90,30,0
	.goto Western Plaguelands,43.60,73.40,30,0
	.goto Western Plaguelands,45.10,73.70,30,0
	.goto Western Plaguelands,46.50,73.00,30,0
	.goto Western Plaguelands,44.80,70.50,30,0
	.goto Western Plaguelands,42.90,68.50,30,0
	.goto Western Plaguelands,40.90,67.20,30,0
	>>Ouvrez les |cRXP_PICK_Small Lockboxes|r. Ramassez les |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marlene|r à l'intérieur de la maison
    .accept 5142 >>Acceptez la quête La petite Pamela
	.target Marlene Redpath
step
    .goto Western Plaguelands,52.1,83.3
    .use 23691 >>Équipez la [Marque du Porteur de Lumière corrompue] dans votre main gauche
    >>Utilisez la [Marque du Porteur de Lumière corrompue] à la Tombe d'Uther
    .complete 9444,1 --Uther's Tomb Defiled (1)
    .isQuestTurnedIn 9443
step
    .goto Western Plaguelands,53.07,65.97
    >>Tuez |cRXP_ENEMY_Cauldron Lord Razarch|r. Dépouillez-le pour son |cRXP_LOOT_Cauldron Key|r
	>>|cRXP_ENEMY_Freezing Ghouls|r ont un sort d'étourdissement de zone instantané de 5 secondes
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
	.unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.0,65.7
	>>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r posé en haut du podium
	>>|cRXP_ENEMY_Freezing Ghouls|r ont un sort d'étourdissement de zone instantané de 5 secondes
    .turnin 5233 >>Rendez la quête Cible : le Repaire putride
    .accept 5234 >>Acceptez la quête Retour à la Barricade
step
    #label WildlifePU
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mulgris|r à l'intérieur de la maison
	>>|cRXP_ENEMY_Freezing Ghouls|r ont un sort d'étourdissement de zone instantané de 5 secondes
    .accept 4984 >>Acceptez la quête La faune et la flore souffrent aussi
	.target Mulgris Deepriver
step
    #loop
	.goto Western Plaguelands,46.80,39.60,0
	.goto Western Plaguelands,46.80,39.60,70,0
	.goto Western Plaguelands,45.80,46.40,70,0
	.goto Western Plaguelands,43.40,54.80,70,0
	.goto Western Plaguelands,46.00,59.20,70,0
	.goto Western Plaguelands,51.60,61.60,70,0
	.goto Western Plaguelands,51.00,53.20,70,0
	.goto Western Plaguelands,50.00,46.60,70,0
	.goto Western Plaguelands,47.80,43.40,70,0
	>>Tuez les |cRXP_ENEMY_Diseased Wolves|r
	>>Les |cRXP_ENEMY_Diseased Wolves|r partagent leur spawns avec les |cRXP_ENEMY_Carrion Lurkers|r. Si nécessaire, tuez les pour changer le type de créatures dans la zone
    .complete 4984,1 --Diseased Wolf (8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mulgris|r
    .turnin 4984 >>Rendez la quête La faune et la flore souffrent aussi
    .accept 4985 >>Acceptez la quête La faune et la flore souffrent aussi
	.target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,56.08,63.26,0
    .goto Western Plaguelands,56.08,63.26,90,0
    .goto Western Plaguelands,60.15,59.93,90,0
    .goto Western Plaguelands,59.43,52.40,90,0
    .goto Western Plaguelands,68.18,46.23,90,0
	>>Tuez les |cRXP_ENEMY_Diseased Grizzlies|r
	>>Les |cRXP_ENEMY_Diseased Grizzlies|r partagent leur spawns avec les |cRXP_ENEMY_Plague Lurkers|r. Si nécessaire, tuez les pour changer le type de créatures dans la zone
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathanos|r
    .accept 6022 >>Acceptez la quête Tuer utile
	.target Nathanos Blightcaller
step
	.goto Eastern Plaguelands,27.28,85.22
	>>Cliquez sur le gros |cRXP_PICK_Torn Scroll|r sur le sol à l'intérieur de la crypte
    .accept 6024 >>Acceptez la quête L'appel d'Hameya
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pamela|r
    .turnin 5142 >>Rendez la quête La petite Pamela
    .accept 5149 >>Acceptez la quête La poupée de Pamela
	.target Pamela Redpath
step
    .goto Eastern Plaguelands,38.10,92.24
	>>Ramassez les 3 |cRXP_PICK_Doll Parts|r sur le sol dans les ruines des bâtiments
	>>Cliquer sur les parties de poupées peuvent faire apparaître des |cRXP_ENEMY_Ghosts of the Past|r qui ont une armure de glace et lancent des horions de givre
	.collect 12886,1,5149,1 -- Pamela's Doll's Head
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.64,92.51
	>>Ramassez les 3 |cRXP_PICK_Doll Parts|r sur le sol dans les ruines des bâtiments
	>>Cliquer sur les parties de poupées peuvent faire apparaître des |cRXP_ENEMY_Ghosts of the Past|r qui ont une armure de glace et lancent des horions de givre
	.collect 12887,1,5149,1 -- Pamela's Doll's Left Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.67,90.24
	>>Ramassez les 3 |cRXP_PICK_Doll Parts|r sur le sol dans les ruines des bâtiments
	>>Cliquer sur les parties de poupées peuvent faire apparaître des |cRXP_ENEMY_Ghosts of the Past|r qui ont une armure de glace et lancent des horions de givre
	.collect 12888,1,5149,1 -- Pamela's Doll's Right Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	.use 12886 >>Cliquez sur la [Pamela's Doll's Head] pour combiner les trois parties
    .complete 5149,1 --Pamela's Doll (1)
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pamela|r
    .turnin 5149 >>Rendez la quête La poupée de Pamela
    .accept 5152 >>Acceptez la quête Tante Marlene
    .accept 5241 >>Acceptez la quête Oncle Carlin
	.target Pamela Redpath
    .isQuestComplete 5149
step
    #optional
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pamela|r
    .accept 5152 >>Acceptez la quête Tante Marlene
    .accept 5241 >>Acceptez la quête Oncle Carlin
	.target Pamela Redpath
    .isQuestTurnedIn 5149
step
	#completewith RottingUndead
	.subzone 2264 >> Voyagez à la Croisée de Corin
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Mort-vivant|r. Dépouillez-les pour leur |cRXP_LOOT_Living Rot|r.
	>>Des groupes d'Elite patrouillent la route au nord et la route à l'est. Des mobs invisibles patrouillent à l'intérieur de la Croisée de Corin, donc essayez de sortir les mobs que vous engagez
	.collect 15447,7 --Living Rot (7)
	.mob Hate Shrieker
	.mob Scourge Warder
	.mob Stitched Horror
	.mob Gibbering Ghoul
	.mob Unseen Servant
	.mob Dark Caster
step
	#label RottingUndead
    #loop
	.goto Eastern Plaguelands,58.20,70.20,0
	.goto Eastern Plaguelands,58.20,70.20,25,0
	.goto Eastern Plaguelands,60.40,71.60,25,0
	.goto Eastern Plaguelands,61.00,69.40,25,0
	.goto Eastern Plaguelands,61.40,66.40,25,0
	.goto Eastern Plaguelands,59.40,66.40,25,0
	.goto Eastern Plaguelands,58.00,67.60,25,0
	.use 15454 >>Utilisez le [Mortier et pilon] |cRXP_WARN_avant que le |cRXP_LOOT_Living Rot|r n'expire|r
    .complete 6022,1 --Coagulated Rot (1)
step
	#completewith LHFP
	.subzone 2268 >> Voyagez jusqu'à la Chapelle de l'Espoir de Lumière
step
    .goto Eastern Plaguelands,79.60,63.87
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alen|r
    .accept 6021 >>Acceptez la quête Zaeldarr le Banni
    .accept 5281 >>Acceptez la quête Âmes tourmentées
	.target Caretaker Alen
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carlin|r
    .turnin 5241 >>Rendez la quête Oncle Carlin
    .accept 5211 >>Acceptez la quête Les défenseurs de Comté-de-Darrow
	.target Carlin Redpath
step
    .goto Eastern Plaguelands,81.627,58.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jessica Chambers|r.
    .home >> Liez votre Pierre de foyer à la Chapelle de l'Espoir de Lumière
    .target Jessica Chambers
    .bindlocation 2268
    .subzoneskip 2268,1
step
    #completewith next
    .subzone 2273 >> Voyagez jusqu'à Zul'Mashar
step
	.goto Eastern Plaguelands,64.25,22.09,50,0
	.goto Eastern Plaguelands,68.57,20.95,50,0
	.goto Eastern Plaguelands,69.23,18.48
	>>Tuez |cRXP_ENEMY_Infiltrator Hameya|r. Dépouillez-la pour son |cRXP_LOOT_Key|r
	>>Vous devriez être capable d'être toutes les créatures en montant la montagne. Évitez puis monter la montagne à l'est. N'allez pas proche des tombes
    .complete 6024,1 --Hameya's Key (1)
	.unitscan Infiltrator Hameya
step
	#completewith Termites
	.subzone 2277 >> Voyagez à Gangrebois
step
    #completewith Egan1
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
	.goto Eastern Plaguelands,26.48,37.58,0
	>>Tuez les |cRXP_ENEMY_Diseased Flayers|r et les |cRXP_ENEMY_Gibbering Ghouls|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez aux |cRXP_FRIENDLY_Darrowshire Spirits|r qui apparaissent sur leur cadavre
	>>Ces créatures partagent leur spawn avec d'autre type de créatures, donc tuez tout ce que vous croisez après que les goules soient mortes
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #label Termites
    #loop
    .goto Eastern Plaguelands,42.80,34.24,0
    .goto Eastern Plaguelands,39.97,21.11,50,0
    .goto Eastern Plaguelands,34.90,24.67,50,0
    .goto Eastern Plaguelands,30.69,24.99,50,0
    .goto Eastern Plaguelands,26.59,23.84,50,0
    .goto Eastern Plaguelands,24.19,23.62,50,0
    .goto Eastern Plaguelands,21.15,24.05,50,0
    .goto Eastern Plaguelands,20.90,29.89,50,0
    .goto Eastern Plaguelands,23.75,32.44,50,0
    .goto Eastern Plaguelands,26.48,37.58,50,0
    .goto Eastern Plaguelands,29.55,34.13,50,0
    .goto Eastern Plaguelands,34.89,35.29,50,0
    .goto Eastern Plaguelands,42.80,34.24,50,0
	>>Ramassez les |cRXP_PICK_Termite Mounds|r pour leur |cRXP_LOOT_Termites|r
    .complete 5901,1 --Plagueland Termites (100)
step
    #label Egan1
    .goto Eastern Plaguelands,14.45,33.74
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEntrez dans la maison, puis parlez à |cRXP_FRIENDLY_Egan|r et à |cRXP_FRIENDLY_Augustus|r
    .turnin 5281 >>Rendez la quête Âmes tourmentées
	.target Egan
    .isOnQuest 5281
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	>>Tuez les |cRXP_ENEMY_Diseased Flayers|r et les |cRXP_ENEMY_Gibbering Ghouls|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez aux |cRXP_FRIENDLY_Darrowshire Spirits|r qui apparaissent sur leur cadavre
	>>Ces créatures partagent leur spawn avec d'autre type de créatures, donc tuez tout ce que vous croisez après que les goules soient mortes
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
    >>Tuez plus de |cRXP_ENEMY_Mort-vivant|r dans la zone pour les [|cRXP_LOOT_Minion's Scourgestone|r]
    .collect 12840,20 --Minion's Scourgestones (x20)
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à la Chapelle de l'Espoir de Lumière
    .bindlocation 2268,1
    .subzoneskip 2268
    .cooldown item,6948,>2,1
step
    .goto Eastern Plaguelands,81.44,59.81
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nicholas|r et |cRXP_FRIENDLY_Carlin|r
	.turnin 5510 >>Rendez la quête Pierres du Fléau des serviteurs
	.target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.05,57.55
    >>Parlez à |cRXP_FRIENDLY_Metz|r
    .accept 9141 >> Acceptez la quête On m'appelle "Le Coq"
    .turnin 9141 >> Rendez la quête On m'appelle "Le Coq"
    .target Dispatch Commander Metz
    .itemcount 12844,1 --Argent Dawn Valor Token (1)
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carlin|r
    .turnin 5211 >>Rendez la quête Les défenseurs de Comté-de-Darrow
	.target Carlin Redpath
step
    #completewith UCvisit2
	.goto Eastern Plaguelands,80.22,57.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Georgia|r
    .fly Undercity >>Volez à Undercity
	.target Georgia
	.zoneskip Undercity
step
    .goto Undercity,69.79,43.16
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bauhaus|r
    .turnin 5023 >>Rendez la quête Mieux vaut tard que jamais
    .accept 5049 >>Acceptez la quête Le blues de Jeremiah
	.target Royal Overseer Bauhaus
step
    .goto Undercity,67.61,44.14
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeremiah|r
    .turnin 5049 >>Rendez la quête Le blues de Jeremiah
    .accept 5050 >>Acceptez la quête Charme porte-bonheur
	.target Jeremiah Payson
step
    .goto Undercity,51.88,64.49,30,0
    .goto Undercity,58.07,91.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylvanas|r
    .accept 5961 >>Acceptez la quête Le champion de la reine banshee
	.target Lady Sylvanas Windrunner
step
    #label UCvisit2
	#completewith next
    .goto Tirisfal Glades,61.85,66.59,60 >>Quittez Undercity
	.zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandis|r
    .turnin 5234 >>Rendez la quête Retour à la Barricade
    .accept 5235 >>Acceptez la quête Cible : la Flétrissure de Gahrron
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 964 >>Rendez la quête Fragments de squelette
	.target Apothecary Dithers
    .isQuestComplete 964
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mickey|r
    .turnin 5901 >>Rendez la quête Une Plaie sur la Croisade
    .accept 5902 >>Acceptez la quête Une Plaie sur la Croisade
	.target Mickey Levine
step
	#optional
    .isQuestTurnedIn 5901
    .destroy 15043 >>Détruisez toutes les [Termites des Maleterres] qu'il vous reste
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEscaladez jusqu'au dernier étage du bâtiment, puis parlez à |cRXP_FRIENDLY_Janice|r
    .turnin 5050 >>Rendez la quête Charme porte-bonheur
    .accept 5051 >>Acceptez la quête Deux moitiés deviennent Une
	.target Janice Felstone
step
    #loop
	.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
	.goto Western Plaguelands,36.80,58.60,0
	.goto Western Plaguelands,36.80,58.60,50,0
	.goto Western Plaguelands,36.40,56.40,50,0
	.goto Western Plaguelands,37.40,55.60,50,0
	.goto Western Plaguelands,38.60,56.20,50,0
	.goto Western Plaguelands,37.80,57.60,50,0
	>>Tuez les |cRXP_ENEMY_Jabbering Ghoul|r. Dépouillez-les pour leur |cRXP_LOOT_Good Luck Other-Half-Charm|r
    .use 12722 >> Utilisez le pour créer le |cRXP_LOOT_Charme porte-bonheur|r
    .complete 5051,1 --Good Luck Charm (1)
	.unitscan Jabbering Ghoul
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janice|r au dernier étage du bâtiment
    .turnin 5051 >>Rendez la quête Deux moitiés deviennent Une
	.target Janice Felstone
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marlene|r à l'intérieur de la maison
    .turnin 5152 >>Rendez la quête Tante Marlene
    .accept 5153 >>Acceptez la quête Un étrange historien
	.target Marlene Redpath
step
    .goto Western Plaguelands,49.69,76.75
	>>Cliquez sur |cRXP_PICK_Joseph Redpath's Monument|r. Ramassez le |cRXP_LOOT_Joseph's Wedding Ring|r
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r au dernier étage de l'auberge
    .turnin 5153 >>Rendez la quête Un étrange historien
    .accept 5154 >>Acceptez la quête Les annales de Comté-de-Darrow
    .turnin 4972 >>Rendez la quête Arrêt du temps
	.target Chromie
step
    .goto Western Plaguelands,43.4,69.6
	>>Ouvrez les |cRXP_PICK_Musty Tomes|r. Récupérez les |cRXP_LOOT_Annals of Darrowshire|r
	>>De nombreux livres ne sont pas les bons et vont faire apparaître des créatures lorsqu'ils seront ouverts. Les bons livres ont des pages entièrement blanches, et pas de teinte grises/sombres. Il se peut que vous deviez cliquer sur les mauvais livres pour faire réapparaître les bons
    .complete 5154,1 --Annals of Darrowshire (1)
	.link https://i.imgur.com/B2HDb6K.png >> Cliquez ICI pour un exemple visuel
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r au dernier étage de l'auberge
    .turnin 5154 >>Rendez la quête Les annales de Comté-de-Darrow
    .accept 5210 >>Acceptez la quête Frère Carlin
	.target Chromie
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mulgris|r
    .turnin 4985 >>Rendez la quête La faune et la flore souffrent aussi
    .accept 4987 >>Acceptez la quête La branche de chêne à glyphes
	.target Mulgris Deepriver
step
    .goto Western Plaguelands,62.80,58.76
    >>Tuez |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Dépouillez-le pour son |cRXP_LOOT_Cauldron Key|r
	>>Cette créature à une maladie qui vous applique un Silence pendant 10 sec << !Priest
	>>Cette créature à une maladie qui vous applique un Silence pendant 10 sec, appliquez-vous Abolir maladie et maintenez-le sur vous << Priest
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
	.unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.5,58.6
	>>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r posé en haut du podium
    .turnin 5235 >>Rendez la quête Cible : la Flétrissure de Gahrron
    .accept 5236 >>Acceptez la quête Retour à la Barricade
step
	.goto Eastern Plaguelands,28.03,86.16
	>>Cliquez sur le |cRXP_PICK_Monticule de poussière|r derrière la crypte
    .turnin 6024 >>Rendez la quête L'appel d'Hameya
	.isQuestComplete 6024
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathanos|r
    .turnin 6022 >>Rendez la quête Tuer utile
	.turnin 5961 >>Rendez la quête Le champion de la reine banshee
	.target Nathanos Blightcaller
step
	#completewith next
	.subzone 192 >>Voyagez jusqu'à la Scierie de la Crête du nord
step
	.goto Western Plaguelands,48.35,32.00
	>>Entrez dans le moulin. Cliquez sur le|cRXP_PICK_Northridge Lumber Mill Crate|r proche de la rampe, puis cliquez sur le |cRXP_PICK_Termite Barrel|r
    .turnin 5902 >>Rendez la quête Une Plaie sur la Croisade
    .accept 6390 >>Acceptez la quête Une Plaie sur la Croisade
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r au dernier étage de l'auberge
    .turnin 5154 >>Rendez la quête Les annales de Comté-de-Darrow
	.target Chromie
step
	#completewith next
	.subzone 152 >>Retournez à la Barricade
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandis|r
    .turnin 5236 >>Rendez la quête Retour à la Barricade
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.30,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mickey|r
    .turnin 6390 >>Rendez la quête Une Plaie sur la Croisade
	.target Mickey Levine
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5238 >>Rendez la quête Mission accomplie !
	.target High Executor Derrington
step << skip
    .goto Tirisfal Glades,61.87,59.11
    >>Montez la Tour des Zeppelins
    .zone Stranglethorn Vale >>Prenez le Zeppelin pour Strangleronce
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thysta|r
    .complete 64217,2 << Druid--Speak to Thysta at Grom'gol Base Camp (1)
    .complete 64063,2 << !Druid--Speak to Thysta at Grom'gol Base Camp (1)
	.target Thysta
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thysta|r
	.fly Stonard >> Volez vers Pierrêche
	.target Thysta
    .subzoneskip 75
step << skip
	#completewith next
	.goto Swamp of Sorrows,33.4,71.9,60,0
	.goto Swamp of Sorrows,33.2,68.4,60,0
	.zone Blasted Lands >> Voyagez jusqu'aux Terres foudroyées

step << skip
    .goto Blasted Lands,58.1,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warlord Dar'toon|r
    --.turnin 64063 >>Turn in The Dark Portal << !Druid
    --.turnin 64217 >>Turn in The Dark Portal << Druid
    --.accept 9407 >>Accept Through the Dark Portal
    .target Warlord Dar'toon

]])
