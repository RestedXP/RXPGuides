if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Human
#group RXP TBC Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#name 1-11 Forêt d'Elwynn
#next 11-12 Dun Morogh/Loch Modan

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Vous avez sélectionné un guide conçu pour les Humains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >> Vendez votre Armure, votre Chemise, votre Pantalon et vos Bottes en plus de la nourriture et de l'eau dans vos sacs. Vous allez avoir besoin de 10 pièces de cuivre au total
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Acceptez la quête Le Tome dérobé
    .train 348 >> Apprenez [Immolation]
    .target Drusilla La Salle
step << Warlock
    --#hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>Entrez dans la tente au camp Défias
    >>Ouvrez les |cRXP_PICK_Stolen Books|r. Récupérez les |cRXP_LOOT_Powers of the Void|r
    >>|cRXP_WARN_Vous pouvez ramasser les |cRXP_LOOT_Powers of the Void|r en sécurité à l'intérieur de la tente! regardez la vidéo sur la méthode à appliquée|r
    .link https://youtu.be/3qQwsJhAZIk >> Cliquez ici pour un exemple vidéo
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Restez à l'intérieur de la tente pour que les |cRXP_ENEMY_Defias Thugs|r ne peuvent pas vous toucher|r
    .hs >> Utilisez votre Pierre de Foyer pour revenir à Comté-du-Nord
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Rendez la quête Le Tome dérobé
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >> Lancez [Invocation d'un diablotin]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Acceptez la quête Menace intérieure
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Tuez les |cRXP_ENEMY_Young Wolves|r jusqu'à ce que vous puissiez vendre jusqu'à 10+ pièces de cuivre au marchand
    >>Vous allez apprendre [Cri de guerre] qui augmente votre efficacité de manière considérable dans les premiers niveaux
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r
    .train 6673 >>Apprenez [Cri de guerre]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Rendez la quête Menace intérieure
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> Une fois que vous avez récupéré 50 pièces de cuivre en marchandise à vendre, achetez 10 [Eau de source]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>Tuez des |cRXP_ENEMY_Young Wolves|r et des |cRXP_ENEMY_Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Tuez les |cRXP_ENEMY_Kobold Vermins|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>Tuez des |cRXP_ENEMY_Young Wolves|r et des |cRXP_ENEMY_Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Rendez la quête Les loups derrière la frontière << Warrior/Paladin/Rogue
    .turnin 33,1 >> Rendez la quête Les loups derrière la frontière << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    >>Achetez 10 [Eau de source]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    .vendor >>|cRXP_BUY_Achetez un|r [Miséricorde]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +Équipez le [Miséricorde]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3100 >> Acceptez la quête Lettre simple << Warrior
    .accept 3101 >> Acceptez la quête Lettre consacrée << Paladin
    .accept 3102 >> Acceptez Lettre codée << Rogue
    .accept 3103 >> Acceptez la quête Lettre bénie << Priest
    .accept 3104 >> Acceptez la quête Lettre glyphée << Mage
    .accept 3105 >> Acceptez la quête Lettre contaminée << Warlock
step
    .xp 3 >> Montez jusqu'au niveau 3
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>Tuez les |cRXP_ENEMY_Kobold Workers|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Montez votre expérience jusqu'à 1110+/1400 sur le chemin du retour
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >> Allez en haut des escaliers << Mage
    .goto Elwynn Forest,49.3,40.7,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Priestess Anetta|r << Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .trainer >> Apprenez vos sorts de classe
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >> Traversez le portail
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Rendez la quête Lettre bénie
    .trainer >> Apprenez vos sorts de classe
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> Voyagez vers |cRXP_FRIENDLY_Llane Beshere|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Voyagez vers |cRXP_FRIENDLY_Brother Sammuel|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Rendez la quête Lettre simple
    .trainer >> Apprenez vos sorts de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Rendez la quête Lettre consacrée
    .trainer >> Apprenez vos sorts de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Acceptez la quête La confrérie des voleurs
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Rendez la quête Lettre contaminée
    .xp 4 >> Montez jusqu'au niveau 4
    .trainer >>Apprenez [Corruption]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Tuez les |cRXP_ENEMY_Defias Thugs|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Montez jusqu'au niveau 4
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Rendez la quête La confrérie des voleurs << Paladin
    .turnin 18,1 >> Rendez la quête La confrérie des voleurs << Rogue/Warlock
    .turnin 18,5 >> Rendez la quête La confrérie des voleurs << Mage
    .turnin 18,2 >> Rendez la quête La confrérie des voleurs << Priest
    .turnin 18,3 >> Rendez la quête La confrérie des voleurs << Warrior
    .turnin 18 >> Rendez la quête La confrérie des voleurs << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Acceptez la quête La prime pour Garrick Ladétrousse
    .accept 3903 >> Acceptez la quête Milly Osworth
step << Paladin
    #completewith next
    +Équipez le [Marteau de guerre de la milice]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Entrez dans la Mine de la crête aux échos
step
    .goto Elwynn Forest,48.61,27.63
    >>Tuez les |cRXP_ENEMY_Kobold Laborers|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Montez jusqu'au niveau 5
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Rendez la quête Milly Osworth
    >>Passez la suite
    .target Milly Osworth
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >> Rendez la quête Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> Rendez Lettre codée
    >>Vous n'avez pas besoin d'apprendre le moindre sort
step << Priest/Mage
    >>Ramassez les |cRXP_PICK_Milly's Harvest|r sur le sol
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Tuez |cRXP_ENEMY_Garrick Padfoot|r. Dépouillez-le jeu pour sa |cRXP_LOOT_Tête|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandonnez Les vendanges de Milly
step << !Priest !Mage
    .xp 5+1715 >> Montez votre expérience sur le retour jusqu'à 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> Montez votre expérience sur le retour jusqu'à 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >> Rendez la quête La récolte de Milly
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> Rendez la quête La prime pour Garrick Ladétrousse << Warrior/Rogue/Paladin
    .turnin 6,1 >> Rendez la quête La prime pour Garrick Ladétrousse << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur de l'Abbaye
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >> Rendez la quête La bataille de la Crête aux échos << Rogue
    .turnin 21,2 >> Rendez la quête La bataille de la Crête aux échos << Warrior/Paladin
    .turnin 21,3 >> Rendez la quête La bataille de la Crête aux échos << !Warrior !Paladin
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Allez en haut des escaliers
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Neals|r à l'étage
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>Rendez la quête Manifeste des vendanges
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> Acceptez la quête Au service de la Lumière
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >> Acceptez la quête Repos et détente
step
    #completewith next
    .subzone 87 >> Voyagez vers Goldshire
step
    --#hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Apprenez [Forge]
    >>Ce métier vous permettra de créer des [Pierre à aiguiser brute] qui augmenteront vos dégâts en mêlée de +2. C'est une amélioration notable dans les premiers niveaux << Warrior/Rogue
    >>Ce métier vous permettra de créer des [Caillou brut] qui augmenteront vos dégâts en mêlée de +2. C'est une amélioration notable dans les premiers niveaux << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Glaive]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Stylet]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Maillet en bois]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Mage/Priest/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrew Krighton|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.706,65.786
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .target Innkeeper Farley
    .turnin 2158,1 >> Rendez la quête Repos et détente << Rogue/Warrior
    .turnin 2158,2 >> Rendez la quête Repos et détente << !Rogue !Warrior
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
step
    .xp 6 >> Montez jusqu'au niveau 6
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>Achetez une [Dague de lancer équilibrée] et équipez-la
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Allez en bas des escaliers
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> Achetez le [Grimoire de Pacte de Sang (Rang 1)] si vous pouvez vous le permettre. Sinon vous pouvez l'acheter plus tard
    .target Cylina Darkheart
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Rendez la quête Au service de la Lumière
    .accept 5624 >> Acceptez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r à l'étage
    .target Michelle Belle
    .train 3273 >> Apprenez [Premiers soins]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Achetez du|r [Dalaran piquant] |cRXP_BUY_jusqu'à ce que vous n'ayez que 1 pièce d'argent|r << Warrior
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Apprenez vos sorts de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Apprenez vos sorts de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
step << Priest
    >>Lancez [Soins inférieurs (Rang 2)] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Guard Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r et à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Acceptez la quête Princesse doit mourir !
    .target +Ma Stonefield
	.goto Elwynn Forest,34.660,84.482
    .xp <6,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Si vous ramassez des |cRXP_LOOT_[Rough Stones]|r transformez-les en [Rough Sharpening Stones] << Warrior/Rogue
    >>Si vous ramassez la moindre |cRXP_LOOT_[Rough Stones]|r  transformez-les en [Pierre à aiguiser brute] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_Achetez autant de|r [Lait frais] que vous le pouvez << Priest/Warlock/Mage
    .vendor >>Vendez tout ce dont nous n'avez pas besoin << !Priest !Warlock !Mage
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Si vous ramassez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Pierre à aiguiser brute] << Warrior/Rogue
    >>Si vous ramassez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Caillou brut] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .accept 84 >> Acceptez la quête Revenir voir Billy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gramma Stonefield|r
    .target Gramma Stonefield
    .goto 1429,34.945,83.855
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
step
    .xp 6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >> Acceptez la quête Princesse doit mourir !
    .target Ma Stonefield
	.goto Elwynn Forest,34.660,84.482
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Pierre à aiguiser brute] << Warrior/Rogue
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Caillou brute] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
step
    #completewith KillGoldtooth
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Pierre à aiguiser brute] << Warrior/Rogue
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Caillou brute] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>Explorez la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>Tuez |cRXP_ENEMY_Goldtooth|r. Dépouillez-le pour le |cRXP_LOOT_Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Pierre à aiguiser brute] << Warrior/Rogue
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Caillou brute] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explorez la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Pierre à aiguiser brute] << Warrior/Rogue
    >>Si vous récupérez les moindres |cRXP_LOOT_[Rough Stones]|r transformez-les en [Caillou brute] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Warrior
    #completewith Goldtooth
    +Essayez de garder une [Potion de soins mineure] à partir de maintenir, vous en aurez besoin pour le Cadavre de Rolf plus tard
step << Warrior/Rogue
    >>N'oubliez de fabriquer des [Pierre à aiguiser brute] si vous ramassez des |cRXP_LOOT_[Rough Stones]|r
    .xp 7+1600 >>Montez votre expérience jusqu'à 1600+/4500xp
step << Paladin
    >>N'oubliez de fabriquer des [Caillou brute] si vous ramassez des |cRXP_LOOT_[Rough Stones]|r
    .xp 7+1600 >>Montez votre expérience jusqu'à 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>Montez votre expérience jusqu'à 1600+/4500xp
step << Priest
    .xp 7+1260 >>Montez votre expérience jusqu'à 1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> Rendez la quête Dent-d'or
step
    .xp 7+2690 >>Montez votre expérience jusqu'à 2690+/4500xp << !Priest
    .xp 7+2350 >>Montez votre expérience jusqu'à 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Voyagez vers Goldshire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .goto Elwynn Forest,41.529,65.900
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Corina Steele
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Glaive]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Stylet]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Maillet en bois]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
step
    .xp 8 >> Montez jusqu'au niveau 8
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Apprenez vos sorts de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> Achetez le [Grimoire d'Eclair de feu (Rang 2)] si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard
    .target Cylina Darkheart
step << Mage/Priest/Rogue/Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Apprenez [Premiers soins]
step
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> Achetez une [Petite sacoche marron] si nécessaire
	.target Brog Hamfist
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> Achetez jusqu'à 40 [Lait frais] << !Warrior !Rogue !Paladin
    .vendor >> Achetez jusqu'à 40 [Dalaran piquant] << Warrior/Rogue
    .vendor >> Achetez jusqu'à 10 [Dalaran piquant] et 10 [Lait frais] << Paladin
    .target Innkeeper Farley
step
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Murloc Streamrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Entrez dans la mine de Jasperlode
step
    >>Suivez le chemin au milieu pour explorer la mine de Jasperlode
    >>Quittez la mine de Jasperlode dès que vous avez complété les objectifs
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
step
    #completewith AcceptBundle
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #completewith Bundles
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol. Ils se trouvent sous les arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_ENEMY_Murloc Foragers|r vont utiliser [Boire une potion mineure] qui les soignera de 61-68 points de vie
    >>Lancez [Rénovation] et [Mot de pouvoir : Bouclier] |cRXP_WARN_puis remontez votre barre de mana à fond. Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous, tuez-en un rapidement. Enfuyez-vous après en avoir tué un, puis tuez l'autre|r << Priest
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et lancez [Métamorphone] sur l'un d'entre eux avant de tuer l'autre. Tuez ensuite celui qui était métamorphosé << Mage
    >>Gardez 100 points de rage. Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et maintenez [Brise-genou] sur l'un des deux avant de tuer l'autre. Utilisez le [Sac de billes] sur celui que vous tuez. Enfuyez-vous de celui que vous avez ralenti après avoir tué le premier << Warrior
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et concentrez-vous sur l'un des deux. Utilisez [Évasion] une fois qu'ils vous attaquent tous les deux. C'est une bonne opportunité pour utiliser votre [Sac de billes]. Enfuyez-vous après avoir tué le premier << Rogue
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant la hutte, écartez-vous et maintenez [Peur] sur l'un des deux, et essayez de maintenir vos DoTs sur les deux << Warlock
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et tuez rapidement l'un des deux. Utilisez [Protection Divine] et vos soins lorsque ceux-ci sont requis. C'est une bonne opportunité pour utiliser votre [Sac de billes]. Enfuyez-vous après avoir tué le premier << Paladin
    >>Rappelez-vous que vous ne pouvez pas attaquer après avoir lancé [Protection Divine] << Paladin
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol. Ils se trouvent sous les arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
step
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> Montez jusqu'au niveau 9
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Acceptez la quête Articles rouges en lin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
step
    #era
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r utilisera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    >>Gardez 100 points de rage avant d'engager |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Soyez sûrs que [Évasion] soit prêt. Si vous avez du mal, vous pouvez utiliser la barrière avec des Armes de Jet, elle n'arrivera pas à vous toucher et vous pourrez gagner du temps << Rogue
    >>Soyez prêt à utiliser une [Potion de soins mineure]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Cliquez ici pour un exemple vidéo << !Warrior
    .complete 88,1
    .mob Princess
step
    #completewith Level9Grind
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step
    #era
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> Monter votre expérience jusqu'à 3400+/6500xp
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Montez votre expérience jusqu'à 4475+/6500xp
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << !Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>RESTEZ SUR LA ROUTE PRINCIPALE ET ÉVITEZ TOUTES LES CRÉATURES PROCHE SUR LA ROUTE
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Rendez la quête À la recherche du varech
    .accept 114 >> Acceptez la quête La fuite
    .target William Pestle
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Apprenez [Premiers soins]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 59 >> Acceptez la quête Les armures de cuir et d'étoffe << Warlock
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >> Acceptez la quête La quête d'Elmore
step
    .xp 10 >> Montez jusqu'au niveau 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target Ilsa Corbin
    .target Lyria Du Lac
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .trainer >> Apprenez vos sorts de classe
    .xp <10,1
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >> Acceptez la quête Convocation de Gakin
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Montez à l'étage
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target Priestess Josetta
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Acceptez la quête Prière du désespoir
    .trainer >> Apprenez vos sorts de classe
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
    >>Apprenez au minimum [Ambidextrie] et [Sprint]. N'apprenez pas d'autres sorts. Gardez votre argent
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
step << Rogue
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    >>Achetez et équipez un [Stylet] pour votre main gauche
    .target Corina Steele
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Voyagez jusqu'aux vignes des Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88,1 >> Rendez la quête Princesse doit mourir ! << Rogue/Hunter
    .turnin 88,2 >> Rendez la quête Princesse doit mourir ! << Warrior/Paladin
    .turnin 88,3 >> Rendez la quête Princesse doit mourir ! << !Rogue !Hunter !Warrior !Paladin
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Voyagez jusqu'à la garnison du ruisseau de l'ouest
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .goto Elwynn Forest,24.234,74.450
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .goto Elwynn Forest,24.234,74.450
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .target Deputy Rainer
step
    #completewith GnollEnd
    >>Tuez |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur [|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Gold Pickup Schedule|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    >>|cRXP_ENEMY_Gruff Swiftbite|r est un mob rare, qui possède un taux de chance de tomber cet objet de 100%
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    #completewith next
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Hogger|r en boucle et utilisez vos DoTs pour le tuer|r
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warrior
    .money >0.3129
    #era
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r
    >>Continuez jusqu'à avoir 31s 29c+ à vendre/en monnaie. Ils serviront à acheter vos compétences Armes de jet, masses à deux mains et épées à deux mains. Ils serviront aussi à acheter une Arme de jet de niveau 3 et pour voler à Stormwind bientôt
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .isQuestComplete 176
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Rendez la quête Le collecteur
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Rendez la quête Une prime pour les Gnolls rivepatte
    .target Deputy Rainer
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    >>N'acceptez pas les autres quêtes
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,59.92,19.42
	.target Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    >>N'acceptez pas les autres quêtes
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .target Salma Saldean
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .target Gryan Stoutmantle
step << Human
    .goto Westfall,57.002,47.169
    .target Quartermaster Lewis
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Acceptez la quête Un message rapide
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
step << Rogue
    #era
    .money >0.3152
    +Tuez des créatures jusqu'à disposer de 31s 52c en objet à vendre au marchand/en argent
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step << Rogue
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> Achetez une [Dague de lancer équilibrée]. Équipez-la 
    .target Thurman Mullby
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue
    .trainer >>Apprenez la compétence Bâtons << Warlock/Priest
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    >>Apprenez la compétence pour porter des épées à deux mains si vous avez d'argent. Vous devez garder 20 pièces d'argent pour plus tard << Warrior
    >>Apprenez la compétence pour porter des épées à une main si vous avez assez d'argent << Mage/Warlock
step << Rogue
#ah
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
	>>|cRXP_BUY_Achetez-lui un|r [Coutelas] |cRXP_BUY_ou|r regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
	.collect 851,1
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
#ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
	>>|cRXP_BUY_Achetez et équipez un|r [Coutelas]
	.collect 851,1
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
    #sticky
    .equip 16,851 >> Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Rendez la quête Convocation de Gakin
    .target Gakin the Darkbinder
    .accept 1688 >> Acceptez la quête Surena Caledon
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Quittez Stormwind. Voyagez vers Goldshire
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    >>Choisissez le [|cRXP_FRIENDLY_Bâton de combat équilibré|r] comme récompense. Équipez-le
    .turnin 123 >> Rendez la quête Le collecteur
    .accept 147 >> Acceptez la quête Chasse à l'homme
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    >>Choisissez le  [|cRXP_FRIENDLY_Bâton de combat équilibrée|r] comme récompense. Équipez-le
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >> Acceptez la quête Chasse à l'homme
step << Warlock
    .xp 11
step << Warlock
    #completewith LockVW
    .goto Elwynn Forest,71.0,80.8,150 >> Voyagez au Champ de Potirons des Saumepuits. Tuez des créatures en route
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>Tuez |cRXP_ENEMY_Morgan the Collector|r. Dépouillez-le pour son|cRXP_LOOT_The Collector's Ring|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    #label LockVW
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target Sara Timberlain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Rendez la quête Les armures de cuir et d'étoffe
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    >>Tuez des créatures sur la route. Faites en sorte de garder 2 [Éclats d'âme] en utilisant [Drain d'âme]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>RESTEZ SUR LA ROUTE PRINCIPALE ET ÉVITEZ TOUTES LES CRÉATURES PROCHE SUR LA ROUTE
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
step << Warlock
    .isQuestComplete 147
    #completewith next
    .goto Elwynn Forest,42.105,65.927,100 >> Quittez Stormwind. Voyagez vers Goldshire
step << Warlock
    .isQuestComplete 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Rendez la quête Chasse à l'homme
step << Warlock
    #completewith TravelIF
    .isQuestTurnedIn 147
    .goto StormwindClassic,70.07,86.82
    .zone Stormwind City >> Téléportez-vous à Hurlevent
    .zoneskip Elwynn Forest,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Rendez la quête Surena Caledon
    .accept 1689 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 7728 >> Utilisez l'[Echarpe de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Rendez la quête Le lien
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osric Strang|r
    >>N'acceptez pas la quête suivante
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    .target Osric Strang
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Ilsa Corbin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Attaquez |cRXP_ENEMY_Bartleby|r. Il se rendra à 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Rendez la quête Battre Bartleby
    .accept 1665 >> Acceptez la quête Tasse de Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .turnin 5635 >> Rendez la quête Prière du désespoir
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Apprenez [Prière du désespoir]
    .target High Priestess Laurena
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
step << Warrior
    #completewith next
    +Mettez [Fracasser Armure] sur votre barre d'action pour vous assurez de l'utiliser constamment. Ce sort est beaucoup plus efficace que [Frappe Héroïque]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaita Deepforge|r
    .vendor >>Achetez une [Pioche de mineur]. Vous allez apprendre le [Minage] très bientôt
    .target Kaita Deepforge
step
    #label TravelIF
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
    >>Montez vos [Premiers soins] si nécessaire en attendant le Tram
step
    >>|cRXP_WARN_Montez dans le Tram une fois qu'il est arrivé. Sortez de l'autre côté et cherchez |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu|r
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    .use 17117 >>Utilisez le [Pipeau du dératiseur] sur les |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    .target Monty
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
step
    .zone Ironforge >>Entrez dans Ironforge
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Apprenez la compétence Armes de jet
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    .vendor >>Achetez une [Dague de lancer équilibrée] et équipez-la
    .target Brenwyn Wintersteel
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan:
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
-->>|cRXP_WARN_NOTE: You must be able to buy ALL otherwise don't buy any at all|r
    >>|T134342:0|t[Tripes de sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Human
#group RXP TBC Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#name 11-12 Dun Morogh/Loch Modan
#next 12-14 Sombrivage

step
    #completewith OperationRecombobulation
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.251,37.592,150 >> Quittez Ironforge
step
    #completewith OperationRecombobulation
    .goto Dun Morogh,46.005,48.637,50 >> Voyagez jusqu'à Kharanos
step
    #label OperationRecombobulation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acceptez Opération Recombobulation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto 1426/0,-130.800,-5477.800,50,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>Lancez [Métamorph|cRXP_WARN_on|re] sur le |cRXP_ENEMY_Old Icebeard|r << Mage
    >>Lancez [Peur] sur le |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
step
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Tuez les |cRXP_ENEMY_Leper Gnomes|r. Dépouillez-les pour leur |cRXP_LOOT_Gears|r et leur |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entrez dans le Repaire des Frostmane
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    >>Descendez cette endroit précis pour découvrir le Repaire des Frostmane. Si il y a des mobs en bas, tuez les normalement et ne descendez PAS
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Tuez les |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #completewith next
    .goto Dun Morogh,45.846,49.365,150 >> Voyagez jusqu'à Kharanos
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Rendez Opération Recombobulation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> Acceptez la quête Protection du troupeau
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Montez sur cette partie de la montagne
step
    .goto Dun Morogh,62.6,46.1
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    #completewith troggs
    .subzone 134 >> Voyagez jusqu'à la Carrière de Gol'Bolar
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_si nécessaire|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_et du|r [Lait frais] |cRXP_BUY_si nécessaire|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label troggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r et à |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dank Drizzlecut|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Apprenez [Minage]
step << Warrior/Paladin/Rogue
    .cast 2580 >> Lancez [Découverte de gisements]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tuez les |cRXP_ENEMY_Rockjaw Skullthumpers|r et les |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step << !Warlock
    .xp 10+6350 >>Montez en expérience jusqu'à 6350+/7600xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foreman Stonebrow|r et à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin << !Priest !Warlock !Mage
    .vendor >> |cRXP_BUY_Achetez 20|r [Lait frais] << Priest/Warlock/Mage
    .target Kazan Mogosh
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
step
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour sa |cRXP_LOOT_Claw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Choisissez la dague, utilisez-la en main gauche jusqu'à ce que vous puissiez acheter une épée au marchand << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>Choisissez la [|cRXP_FRIENDLY_Craftsman's Dagger|r] comme récompense. Équipez-la dans votre main gauche << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >> Voyagez jusqu'au Loch Modan
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    >>N'acceptez pas la suite de quête
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
    .target Mountaineer Stormpike


--I want Humans to hit 12 here before going Darkshore, Warlocks will already be 12 comfortably
step << !Warlock
    #completewith TroggT
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>Gardez les [|cRXP_LOOT_Chunks of Boar Meat|r]|r |cRXP_WARN_pour monter votre niveau de [Cuisine] plus tard
    >>Passez cette étape si vous avez atteint le niveau 12 pendant celle-ci
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp >12,1 -- shows to 11 and under
step
    #optional
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> Voyagez à Thelsamar
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .itemcount 3172,3
    .itemcount 3173,3
    .itemcount 3174,3
step << !Warlock
    #completewith next
    .subzone 924 >> Voyagez jusqu'à la Vallée des Rois
    .xp >12,1 -- shows to 11 and under
step << !Warlock
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .xp >12,1 -- shows to 11 and under
step << !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .target Captain Rugelfuss
    .accept 267 >> Acceptez la quête La menace trogg
    .xp >12,1 -- shows to 11 and under
step << !Warlock
    .isOnQuest 224,267
    .goto 1432/0,-2756.300,-5527.800
    >>Tuez les |cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << !Warlock
    .isQuestComplete 224
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Rendez la quête À la défense des terres du roi
step << !Warlock
    .isQuestComplete 267
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Rendez la quête La menace trogg
step << !Warlock -- skipping if already level 12
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>Gardez vos [|cRXP_LOOT_Chunks of Boar Meat|r]|r |cRXP_WARN_pour monter les niveaux de votre [Cuisine] plus tard
    >>Passez cette étape si vous êtes déjà niveau 12
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .xp >12,1 -- shows to 11 and under
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .itemcount 3172,3
    .itemcount 3173,3
    .itemcount 3174,3
step
    .xp 12
    .goto 1432/0,-2756.300,-5527.800
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>Achetez un [Silex et amadou] et du [Bois simple]. Achetez des [Petite sacoches marron] si nécessaire
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
]])
