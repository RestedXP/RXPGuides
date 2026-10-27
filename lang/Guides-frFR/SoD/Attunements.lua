if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Guides Endgame
#subgroup Accès
#name Accès aux Cryptes de Karazhan

step
    #completewith next
    .subzone 2268 >> Voyagez à la |cRXP_LOOT_Chapelle de l'Espoir de Lumière|r dans les |cRXP_PICK_Maleterres de l’Est|r
step
    .goto Eastern Plaguelands,81.3,58.75
    >>Cliquez sur le |cRXP_FRIENDLY_Panneau d’affichage|r à droite de l'entrée de la chapelle
    .accept 86964 >> Acceptez la quête Pour l’or et la gloire !
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Voyagez au |cRXP_PICK_Défilé de Deuillevent|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,47.36,75.60,100 >> Voyagez au sud vers |cRXP_LOOT_Karazhan|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,39,74
    >>Cherchez le cadavre de l' |cRXP_FRIENDLY_Aventurière décédée|r
    .turnin 86964 >> Rendez la quête Pour l’or et la gloire !
    .accept 86965 >> Acceptez la quête Des ombres surnaturelles
    .target Deceased Adventurer
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Dirigez-vous vers le nord jusqu'au camp de l'Agent de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Agente Keanna|r
    .turnin 86965 >> Rendez la quête Des ombres surnaturelles
    .accept 86966 >> Acceptez la quête En quête de membres ayant survécu
step
    .goto Deadwind Pass,59.2,73.4,30 >> Voyagez au sud à l'entrée de la grotte des ogres
    .isOnQuest 86966
step
    .goto Deadwind Pass,65.0,78.0
    >>Entrez dans la grotte, cherchez l' |cRXP_FRIENDLY_Aventurier blessé|r, il est enfermé dans une cage
    .turnin 86966 >> Rendez la quête En quête de membres ayant survécu
    .accept 86967 >> Acceptez la quête Prêter main-forte
    .target Injured Adventurer
step
    .goto Deadwind Pass,65.0,78.0
    >>Tuez n'importe lequel des |cRXP_ENEMY_Ogres|r et dépouillez-les jusqu'à trouver une |cRXP_LOOT_« Clé » de cage de Deuillevent|r. Utilisez-la sur la cage pour terminer la quête
    >>|cRXP_WARN_Si un autre joueur a déjà complété cet objectif alors que vous étiez proche, vous aurez aussi la complétion de cette quête validée même si vous n'êtes pas dans le même groupe que ce joueur|r
    .complete 86967,1
    .collect 235785,1 --Deadwind Cage "Key"
    .disablecheckbox
    .mob Deadwind Warlock
    .mob Deadwind Mauler
    .mob Deadwind Ogre Mage
    .mob Deadwind Brute
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Voyagez au nord jusqu'au camp de l'Agent de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 86967 >> Rendez la quête Prêter main-forte
    .accept 86968 >> Acceptez la quête Avez-vous peur du noir ?
    .target Harrison Jones
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Agente Keanna|r
    .turnin 86968 >> Rendez la quête Avez-vous peur du noir ?
    .accept 86969 >> Acceptez la quête L’hypothèse
    .target Agent Keanna
step
    #optional
    #completewith Hypothesis
    #label Wetlands
    .zone Wetlands >> Voyagez aux |cRXP_PICK_Paluns|r  rechercher la |T132839:0|t[Flamme de vie]
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires Wetlands
    #label GrimBatol
    .goto 1437/0,-3451.700,-3450.800,40 >> Allez au début du chemin pour |cRXP_LOOT_Grim Batol|r
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires GrimBatol
    .goto Wetlands,52.55,41.62,0
    .goto Wetlands,88.07,60.72,0
    .goto Wetlands,85.72,69.33,0
    .goto Wetlands,87.04,51.45
    >>Tuez n'importe lequel des |cRXP_ENEMY_Draconiens|r dans la zone jusqu'à obtenir la |T132839:0|t[|cRXP_LOOT_Flamme de vie|r]
    .collect 235789,1 --Flame of Life
    .mob Red Scalebane
    .mob Scalebane Lieutenant
    .mob Wyrmkin Firebrand
    .mob Red Dragonspawn
    .mob Scalebane Royal Guard
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label EnterDungeon
    .subzoneskip 2557 --Dire Maul
    .subzoneskip 15475 --Demon Fall Canyon
    .goto Kalimdor,42.98,67.51,0 --Dire Maul Entrance
    .goto Ashenvale,84.5,75.0,0 --Demon Fall Canyon Entrance
    +Montez un groupe pour |cRXP_LOOT_Hache-Tripes Ouest|r ou le |cRXP_LOOT_Canyon de la Malechute|r, et entrez dans le donjon
    >>|cRXP_WARN_N'oubliez pas que vous devez débloqué l'accès pour le Canyon de la Malechute.|r Vous pouvez trouver un guide pour le faire dans la partie Guides Endgames > Accès
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Tuez |cRXP_ENEMY_Tendris Crochebois|r, le premier boss de l'instance. Dépouillez-le pour la |T135139:0|t[Branche de bois de fer ancestral]
    .complete 86969,2
    .subzoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Tuez |cRXP_ENEMY_Tristeracine|r, le premier boss de l'instance. Dépouillez-le pour la |T135139:0|t[Branche de bois de fer ancestral]
    .complete 86969,2
    .subzoneskip 15475,1 --Only shows in Demon Fall Canyon
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label Winterspring
    .zone Winterspring >> Voyagez au |cRXP_PICK_Berceau-de-l’Hiver|r pour chercher le |T136116:0|t[Feu follet enthousiaste]
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Winterspring
    #label Darkwhisper
    .goto Winterspring,60.39,73.95,50 >> Voyagez à la |cRXP_LOOT_Gorge du Sombre murmure|r
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Darkwhisper
    .goto Winterspring,59.78,75.92,20,0
    .goto Winterspring,60.18,78.08,20,0
    .goto Winterspring,60.74,79.11,20,0
    .goto Winterspring,61.16,80.19,20,0
    .goto Winterspring,61.21,82.13,20,0
    .goto Winterspring,59.09,83.57,20,0
    .goto Winterspring,58.93,85.67,20,0
    .goto Winterspring,56.06,84.80,20,0
    .goto Winterspring,55.13,84.21,20,0
    .goto Winterspring,53.88,84.77,20,0
    .goto Winterspring,53.08,86.33,20,0
    .goto Winterspring,52.68,88.38,20,0
    .goto Winterspring,52.2,90.4
    .target Enthusiastic Wisp
    >>Allez vers le sud et cherchez le |cRXP_FRIENDLY_Feu follet enthousiaste|r. Interagissez avec pour le prendre avec vous
    >>|cRXP_WARN_Essayez d'éviter de combattre les démons élites dans la zone. Vous pouvez juste les dépasser en les ignorant|r
    .complete 86969,3 --Enthusiastic Wisp
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #label Hypothesis
    >>Récupérez la |T132839:0|t[Flamme de vie]. Elle tombe sur les |cRXP_ENEMY_Draconiens élites|r près de |cRXP_LOOT_Grim Batol|r aux |cRXP_PICK_Paluns|r
    >>Récupérez la |T135139:0|t[Branche de bois de fer ancestral]. Elle tombe soit sur |cRXP_ENEMY_Tristeracine|r dans le donjon du |cRXP_LOOT_Canyon de la Malechute|r|cRXP_WARN_|r, soit sur |cRXP_ENEMY_Tendris Crochebois|r dans le donjon de |cRXP_LOOT_Hache-Tripes Ouest|r|cRXP_WARN_|r
    >>Récupérez le |T136116:0|t[Feu follet enthousiaste]. Il s'agit d'un |cRXP_FRIENDLY_PNJ amical|r avec lequel vous pouvez interagir dans la |cRXP_LOOT_Gorge du Sombre murmure|r au |cRXP_PICK_Berceau-de-l'Hiver|r
    >>|cRXP_WARN_Ces objets peuvent être récupérés dans l'ordre que vous souhaitez|r
    .complete 86969,1 --Flame of Life
    .complete 86969,2 --Ancient Ironwood Branch
    .complete 86969,3 --Enthusiastic Wisp
    .mob Grimroot
    .mob Tendris Warpwood
    .isOnQuest 86969
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Retournez au |cRXP_PICK_Défilé de Deuillevent|r
    .isQuestComplete 86969
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Voyagez jusqu'au camp de l'Agent de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Agente Keanna|r
    .turnin 86969 >> Rendez la quête L’hypothèse
    .accept 86970 >> Acceptez la quête Tester notre hypothèse
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,42.20,77.41,20,0
    .goto Deadwind Pass,39.98,75.36,20,0
    .goto Deadwind Pass,39.93,74.24
    >>Voyagez au Lopin de Morgan à l'ouest de Karazhan. |cRXP_WARN_Marchez dans les énormes orbes d’ombre ici|r
    >>Utilisez votre |T135432:0|t[|cRXP_FRIENDLY_Tison enchanté|r] quand vous êtes à l'intérieur et attendez que le RP se termine
    .complete 86970,1
    .use 235790 --Enchanted Firebrand
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,55.40,78.75,20,0
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Voyagez au nord jusqu'au camp de l'Agent de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Agente Keanna|r
    .turnin 86970 >> Rendez la quête Tester notre hypothèse
    .target Agent Keanna
step
    >>|cRXP_WARN_Félicitations, vous avez maintenant obtenu l'accès aux Cryptes de Karazhan !|r
    >>Vous pouvez |Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Harrison Jones|r pour prendre une quête, que vous pourrez faire dans l'instance
    .accept 86971 >> Acceptez la quête Les drôles de bibelots de Karazhan !
    .target Harrison Jones
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Guides Endgame
#subgroup Accès
#name Introduction à l'Enclave Écarlate

step
   #completewith next
   .subzone 2268 >> Voyagez à la |cRXP_LOOT_Chapelle de l'Espoir de Lumière|r dans les |cRXP_PICK_Maleterres de l’Est|r
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Leonid Barthalomew le Révéré|r à l'intérieur de la chapelle
   .accept 87459 >> Acceptez la quête Activités écarlates
   .target Leonid Barthalomew the Revered
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jessica Chambers|r.
    .home >> Si vous le voulez, |cRXP_WARN_vous pouvez lier votre Pierre de foyer à cet endroit|r. Cela vous aidera à revenir plus vite des Clairières de Tirisfal
    .target Jessica Chambers
step << Alliance
    .goto Eastern Plaguelands,81.64,59.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khaelyn Steelwing|r à l'extérieur
    .fly Chillwind >> Volez aux Maleterres de l'ouest
    .target Khaelyn Steelwing
    .isOnQuest 87459
step << Horde
    .goto Eastern Plaguelands,80.23,57.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Georgia|r à l'extérieur
    .target Georgia
    .fly Undercity >> Volez à Undercity
    .isOnQuest 87459
step << Horde
    .goto Tirisfal Glades,61.85,66.59,60 >> Quittez Undercity
    .isOnQuest 87459
step << Alliance
   #completewith next
   .goto Tirisfal Glades,84.85,70.57
   .zone Tirisfal Glades >> Voyagez aux Clairières de Tirisfal
   .isOnQuest 87459
step
   .goto Tirisfal Glades,81.76,58.06
   >>Allez au nord jusqu'au camp écarlate << Alliance
   >>Allez à l'est jusqu'au camp écarlate << Horde
   >>Cliquez sur les |cRXP_PICK_Boulet et chaîne|r à l'extérieur de la petite tente. Ils feront apparaître un |cRXP_WARN_Infiltrateur écarlate|r |cRXP_ENEMY_Élite|r qui va vous attaquer
   >>Tuez-le et dépouillez-le pour son |cRXP_LOOT_butin|r et obtenir les |T133471:0|t[Ordres de la commandante]
   .complete 87459,1 --Orders from the Commander
   .mob Scarlet Infiltrator
   .isOnQuest 87459
step
   #completewith next
   .subzone 2268 >> Revenez à la |cRXP_LOOT_Chapelle de l'Espoir de Lumière|r dans les |cRXP_PICK_Maleterres de l’Est|r
   .isOnQuest 87459
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Leonid Barthalomew le Révéré|r à l'intérieur de la chapelle
    .turnin 87459 >> Rendez la quête Activités écarlates
    .accept 87493 >> Acceptez la quête Agitation à la Main de Tyr
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Voyagez au sud jusqu'au camp écarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandante Beatrix|r
    .turnin 87493 >> Rendez la quête Agitation à la Main de Tyr
    .accept 87497 >> Acceptez la quête La scission
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Commandante Beatrix|r et complétez son dialogue
    .complete 87497,1
    .skipgossip
    .target Commander Beatrix
step
   .goto Eastern Plaguelands,81.73,57.84
   >>Retournez à la Chapelle de l'Espoir de Lumière
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Leonid Barthalomew le Révéré|r à l'intérieur
    .turnin 87497 >> Rendez la quête La scission
    .accept 87498 >> Acceptez la quête La Reconquête écarlate
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Retournez au camp écarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandante Beatrix|r
    .turnin 87498 >> Rendez la quête La Reconquête écarlate
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Inquisiteur écarlate Caldoran|r
    .accept 87502 >> Acceptez la quête Chasse aux renseignements
    .target Scarlet Inquisitor Caldoran
step
    .goto Eastern Plaguelands,68.18,82.43
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Inquisitrice Jociphine|r |cRXP_WARN_afin qu'elle vous donne un déguisement écarlate temporaire|r
    .aura 1231929 --Scarlet Illusion
    .skipgossip
    .target Inquisitor Jociphine
step
    >>Entrez dans la Main de Tyr et dirigez-vous vers la Cathédrale au centre
    .goto Eastern Plaguelands,85.27,83.98
    .complete 87502,1 --Scout the Cathedral in Tyr's Hand: 1/1
step
    .goto Eastern Plaguelands,89.76,81.41,30 >>Prenez le chemin de gauche pour la Nouvelle-Avalon
step
    >>Dirigez-vous vers le fort de la Nouvelle-Avalon
    >>|cRXP_WARN_Faites attention aux |r|cRXP_ENEMY_Limiers écarlates|r |cRXP_WARN_ils peuvent voir à travers votre déguisement !|r
    >>Utilisez le |T132328:0|t[Pistage des bêtes] pour trouver où se trouve les limiers << Hunter
    .goto Eastern Plaguelands,96.66,83.06
    .complete 87502,3 --Scout the Keep in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Dirigez-vous vers la Tour des mages
    >>|cRXP_WARN_Faites attention aux |r|cRXP_ENEMY_Limiers écarlates|r |cRXP_WARN_ils peuvent voir à travers votre déguisement !|r
    >>Utilisez le |T132328:0|t[Pistage des bêtes] pour trouver où se trouve les limiers << Hunter
    .goto Eastern Plaguelands,98.14,87.88
    .complete 87502,2 --Scout the Mage Tower in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Retournez au camp écarlate
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Inquisiteur écarlate Caldoran|r
    .turnin 87502 >> Rendez la quête Chasse aux renseignements
    .accept 87506 >> Acceptez la quête Affaiblir les défenses
    .target Scarlet Inquisitor Caldoran
    .unitscan Sarlet Bloodhound
step
    #optional
    #completewith next
    >>|cRXP_WARN_Vous pouvez maintenant débloquer le Déguisement écarlate de manière permanente, en obtenant 4 parties d'un set écarlate que vous pouvez fabriquer et en utilisant l' |r |T134503:0|t[|cFF0070FFInsigne écarlate|r] que l'on vous a fournit
    >>Vous devrez les trouver à l'Hôtel des Ventes. Vous n'êtes pas obligé de le faire, mais cela facilite énormément vos déplacements dans la Nouvelle-Avalon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Inquisitrice Jociphine|r
    .accept 90510 >> Acceptez la quête La Nouvelle-Avalon
    .use 237020 --Scarlet Insignia
step
    >>Entrez dans la Main de Tyr et cherchez les |cRXP_ENEMY_Commandants de siège écarlates|r
    >>|cRXP_WARN_Vous pouvez les trouver plus souvent près des armes de siège ou des remparts|r
    .complete 87506,1 --Scarlet Siege Commander (3)
    .target Scarlet Siege Commander
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Retournez au camp écarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandante Beatrix|r
    .turnin 87506 >> Rendez la quête Affaiblir les défenses
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Emissaire de l'Aube d'argent|r
    .accept 87508 >> Acceptez la quête Se présenter au seigneur Tyrosus
step
    >>Retournez à la chapelle de l'Espoir de Lumière
    .goto Eastern Plaguelands,81.74,57.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r à l'intérieur
    .turnin 87508 >> Rendez la quête Se présenter au seigneur Tyrosus
    .accept 87509 >> Acceptez la quête La colère de l’Aube
    .target Lord Maxwell Tyrosus
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Retournez au camp écarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandante Beatrix|r
    .skipgossip
    .complete 87509,1 --Report back to Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandante Beatrix|r
    .turnin 87509 >> Rendez la quête La colère de l’Aube
    .accept 87516 >> Acceptez la quête Décapitation imminente
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.36,87.58
    >>Cette quête vous demandera de tuer |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_le premier boss du nouveau raid l'Enclave Écarlate|r
    >>Trouvez un groupe de raid et bon courage !
    .complete 87516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r dans la cellule où vous allez être téléporté après avoir vaincu Balnazzar dans le raid
    .turnin 87516 >> Rendez la quête Décapitation imminente
    .target Lord Maxwell Tyrosus
step
    +|cRXP_WARN_Félicitations vous avez terminé la suite de quêtes servant d'introduction à l'Enclave Écarlate !|r
]])
