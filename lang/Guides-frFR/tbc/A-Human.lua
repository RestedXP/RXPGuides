if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 1-11 Forêt d'Elwynn
#subgroup RestedXP Alliance 1-20
#defaultfor Human
#next 12-14 Loch Modan;12-14 Sombrivage << Warlock
#next 11-12 Loch Modan;12-14 Sombrivage << !Warlock

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
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
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>Allez dans la tente au Camp Défias
    >>Ouvrez les |cRXP_PICK_Stolen Books|r. Récupérez les |cRXP_LOOT_Powers of the Void|r
    >>|cRXP_WARN_Vous pouvez ramasser les |cRXP_LOOT_Powers of the Void|r en sécurité à l'intérieur de la tente! regardez la vidéo sur la méthode à appliquée|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >> Cliquez ici pour l'exemple vidéo
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Rendez la quête Le Tome dérobé
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith ATW
    .cast 688 >> Lancez [Invocation d'un diablotin]
    .usespell 688
step << Warlock
    #optional
    #completewith ATW
    .cast 687 >> Lancez [Peau de démon]
    .usespell 687
    .aura 687
step
    #completewith DeleteHS
	.destroy 6948 >> Détruisez votre [Pierre de foyer], vous n'allez pas encore en avoir besoin
step
    #label ATW
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
    .target Deputy Willem
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Tuez les |cRXP_ENEMY_Young Wolves|r jusqu'à ce que vous puissiez vendre jusqu'à 10+ pièces de cuivre au marchand
    >>Vous allez apprendre [Cri de guerre] qui vous fera aller bien plus vite dans les premiers niveaux
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers à l'intérieur
    .train 6673 >>Apprenez [Cri de guerre]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Rendez la quête Menace intérieure
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
    .target Deputy Willem
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>Dès que vous avez au moins 50 pièces de cuivre à disposition:
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Tuez des |cRXP_ENEMY_Young Wolves|r et des |cRXP_ENEMY_Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step
    #label DeleteHS
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Tuez les |cRXP_ENEMY_Kobold Vermins|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33,2 >> Rendez la quête Les loups derrière la frontière << Warrior/Paladin/Rogue
    .turnin 33,1 >> Rendez la quête Les loups derrière la frontière << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    >>Faites en sorte de garder 10 pièces de cuivre ou plus pour plus tard << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Godric Rothgar
step << Rogue
    .goto Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janos Hammerknuckle|r
    .vendor 78 >>|cRXP_BUY_Achetez un|r [Miséricorde] |cRXP_BUY_à Janos si vous pouvez vous le permettre|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #completewith next
    +Équipez le [Miséricorde]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3100 >> Acceptez la quête Lettre simple << Warrior
    .accept 3101 >> Acceptez la quête Lettre consacrée << Paladin
    .accept 3102 >> Acceptez Lettre codée << Rogue
    .accept 3103 >> Acceptez la quête Lettre bénie << Priest
    .accept 3104 >> Acceptez la quête Lettre glyphée << Mage
    .accept 3105 >> Acceptez la quête Lettre contaminée << Warlock
    .target Marshal McBride
step
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Tuez les |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step
    #sticky
    #label xp3
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 3+1110 >>Monter votre expérience jusqu'à 1110/1400xp
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Godric Rothgar
step
    #requires xp3
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
    .target Marshal McBride
step << Mage
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Dirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
step << Mage
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .trainer >> Apprenez vos sorts de classe
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Dirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
step << Priest
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
    .turnin 3103 >> Rendez la quête Lettre bénie
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Brother Sammuel|r en bas des escaliers << Paladin
step << Warrior
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers
    .turnin 3100 >> Rendez la quête Lettre simple
    .trainer >> Apprenez vos sorts de classe
    .target Llane Beshere
step << Paladin
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >> Rendez la quête Lettre consacrée
    .trainer >> Apprenez vos sorts de classe
    .target Brother Sammuel
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r à l'extérieur
    .accept 18 >> Acceptez la quête La confrérie des voleurs
    .target Deputy Willem
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Rendez la quête Lettre contaminée
    .train 172 >>Apprenez [Corruption]
    .target Drusilla La Salle
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Tuez les |cRXP_ENEMY_Defias Thugs|r. Dépouillez-les pour leur |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Rendez la quête La confrérie des voleurs << Rogue/Warlock
    .turnin 18,2 >> Rendez la quête La confrérie des voleurs << Priest
    .turnin 18,3 >> Rendez la quête La confrérie des voleurs << Warrior
    .turnin 18,4 >> Rendez la quête La confrérie des voleurs << Paladin
    .turnin 18,5 >> Rendez la quête La confrérie des voleurs << Mage
    .turnin 18 >> Rendez la quête La confrérie des voleurs
    .accept 3903 >> Acceptez la quête Milly Osworth
    .accept 6 >> Acceptez la quête La prime pour Garrick Ladétrousse
    .target Deputy Willem
step << Paladin
    #completewith RestandR
    .equip 16,5579 >> Équipez le [Marteau de la milice]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #completewith RestandR
    .equip 16,2224 >> Équipez la [Dague de la milice]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Équipez l'[Epée courte de la milice]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Godric Rothgar
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Entrez dans la Mine de la crête aux échos
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Tuez les |cRXP_ENEMY_Kobold Laborers|r à l'intérieur de la Mine de la crête aux échos
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    .xp 5 >> Montez jusqu'au niveau 5
step
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    >>Passez l'étape suivante << !Priest !Mage
    .turnin 3903 >> Rendez la quête Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly << Priest/Mage
    .target Milly Osworth
step << Rogue
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Rendez Lettre codée
    .train 1784 >>Apprenez [Camouflage]
    .train 921 >>Apprenez [Vol à la tire]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Ramassez les |cRXP_PICK_Milly's Harvest|r sur le sol
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Tuez |cRXP_ENEMY_Garrick Padfoot|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandonnez Les vendanges de Milly
step
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >> Monter votre expérience jusqu'à 1735+/2800xp << Paladin/Warrior/Rogue/Warlock
    .xp 5+1625 >> Monter votre expérience jusqu'à 1195+/2800xp << Mage
    .xp 5+1085 >> Monter votre expérience jusqu'à 1085+/2800xp << Priest
    .mob Defias Thug
step << Priest/Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Rendez la quête La récolte de Milly
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6,2 >> Rendez la quête La prime pour Garrick Ladétrousse << Warrior/Rogue/Paladin
    .turnin 6,1 >> Rendez la quête La prime pour Garrick Ladétrousse << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .turnin 21,1 >> Rendez la quête La bataille de la Crête aux échos << Rogue
    .turnin 21,2 >> Rendez la quête La bataille de la Crête aux échos << Warrior/Paladin
    .turnin 21,3 >> Rendez la quête La bataille de la Crête aux échos << !Warrior !Paladin !Rogue
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
    .target Marshal McBride
step << Priest/Mage
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Allez en haut des escaliers
step << Priest/Mage
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Neals|r à l'étage
    .turnin 3905,1 >>Rendez la quête Manifeste des vendanges
    .target Brother Neals
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Acceptez la quête Repos et détente
    .target Falkhaan Isenstrider
step
    #completewith Goldshire
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 87
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2018 >> Apprenez [Forge]
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +Équipez le [Glaive]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>Achetez un [Maillet en bois] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Andrew Krighton
--  .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158,1 >> Rendez la quête Repos et détente << Rogue/Warrior
    .turnin 2158,2 >> Rendez la quête Repos et détente << !Rogue !Warrior
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    .target Innkeeper Farley
    --xx subzone not found. check ptr
step
    #optional
    .xp 6 >> Montez jusqu'au niveau 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor 151 >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brog si vous pouvez vous le permettre|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Allez en bas des escaliers
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Apprenez vos sorts de classe
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
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
    .turnin -5623 >> Rendez la quête Au service de la Lumière
    .accept 5624 >> Acceptez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor 295 >> |cRXP_BUY_Achetez des|r [Dalaran piquant] |cRXP_BUY_à Farley jusqu'à ce qu'il ne vous reste qu'1 pièce d'argent|r << Warrior
    .vendor 295 >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] |cRXP_BUY_à Farley|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>Lancez [Soins inférieurs (Rang 2)] et [Mot de pouvoir : Robustesse] sur le |cRXP_FRIENDLY_Guard Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r et à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Acceptez la quête Princesse doit mourir !
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez le [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Achetez autant de|r [Lait glacé] que vous le pouvez << Priest/Warlock/Mage
    .vendor >>Vendez tout ce dont nous n'avez pas besoin << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>Utilisez les [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .accept 84 >> Acceptez la quête Revenir voir Billy
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gramma Stonefield|r à l'intérieur
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>Utilisez les [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step
    #sticky
    #label KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entrez dans l'un dans des grands espaces ouverts dans la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto 1429,41.732,78.024
    >>Tuez |cRXP_ENEMY_Goldtooth|r. Dépouillez-le pour le |cRXP_LOOT_Bernice's Necklace|r
    >>|cRXP_WARN_Faites attention car il arrive souvent avec les |cRXP_ENEMY_Kobold Miner|r proches de lui|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step << Warrior
    #optional
    #completewith Exchange
    +À partir de maintenant, essayez de garder au moins une [Potion de soins mineure] car vous en aurez besoin pour le Cadavre de Rolf plus tard
    .subzoneskip 87 --Goldshire
step
    .isQuestTurnedIn 5624 << Priest
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>Monter votre expérience jusqu'à 1800+/4500xp
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Priest
    .isOnQuest 5624
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1460 >>Montez votre expérience jusqu'à 1460+/4500xp << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Rendez la quête Dent-d'or
    .target "Auntie" Bernice Stonefield
step
    #completewith Exchange
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez pas le [Sac de billes] que vous recevez en récompenser de quête. C'est un objet incroyablement puissant, même au niveau 70
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +Équipez le [Glaive]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Maillet en bois] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #optional
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .xp <8,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
    .xp <8,1
step
    #label CandlesEnd
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
    .target William Pestle
step
    .xp 8 >> Montez jusqu'au niveau 8
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
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
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Apprenez [Premiers soins]
step << Warlock
    #optional
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
    .vendor >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> Achetez une [Petite sacoche marron] si nécessaire
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] |cRXP_BUY_à Farley|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez jusqu'à 10|r [Dalaran piquant] |cRXP_BUY_et 10|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r << Paladin
    .target Innkeeper Farley
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .train 853,1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Murloc Streamrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|tÀ l'aide de votre [Forge], transformez vos |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez vos |cRXP_LOOT_[Rough Stones]|r et vos |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez le [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> Entrez dans la mine de Jasperlode
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Suivez le chemin au milieu pour explorer la mine de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez le [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Quittez la mine de Jasperlode
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    +|cRXP_WARN_Ramenez (Kite) un |cRXP_ENEMY_Young Forest Bear|r jusqu'au|r |cRXP_FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_Essayez de parler au |cRXP_FRIENDLY_Guard Thomas|r avant que le |cRXP_ENEMY_Young Forest Bear|r ne meurt par les |cRXP_FRIENDLY_Stormwind Guards|r pour obtenir le crédit pour la quête|r
    >>Faites en sorte de lui infliger au moins 51%+ dégâts pour qu'il compte pour la quête
    .mob Young Forest Bear
step
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,72.656,60.334
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Prowlers
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Courez sur le|cRXP_PICK_Rolf's corpse|r, puis lancez|r [Protection Divine] et cliquez immédiatement sur |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Courez et enfuyez-vous des |cRXP_ENEMY_Murlocs|r après avoir complété la quête|r
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Murloc Foragers|r vont lancer|r [Boire une potion mineure] qui les soignera de 61-68 points de vie
    >>Lancez [Rénovation] et [Mot de pouvoir : Bouclier] |cRXP_WARN_puis remontez votre barre de mana à fond. Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous, tuez-en un rapidement. Enfuyez-vous après en avoir tué un, puis tuez l'autre|r << Priest
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, sortez et lancez [Métamorphone] sur l'un des deux avant de tuer l'autre. Tuez celui qui est Métamorphosé ensuite << Mage
    >>Maintenez 100 points de Rage. Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, sortez et maintenez [Brise-genou] sur l'un des deux en tuant l'autre. Utilisez le [Sac de billes] sur celui que vous tuez. Enfuyez-vous de celui que vous avez semé avec [Brise-genou] après avoir tué le premier << Warrior
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, sortez et concentrez-vous sur l'un d'entre eux. Utilisez [Évasion] une fois qu'ils vous attaquent tous les deux. Il s'agit d'une bonne opportunité pour utiliser le [Sac de billes]. Enfuyez-vous une fois que vous avez tué l'un des deux << Rogue
    >>Engagez les 2  |cRXP_ENEMY_Murlocs|r devant les huttes, sortez et maintenez [Peur] sur l'un d'entre eux en boucle, en essayant de maintenir vos DoTs sur les deux << Warlock
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
    #completewith BundleOT
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
    .target Sara Timberlain
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
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
    #completewith Deed << !Warlock
    #completewith WarlockPrincess << Warlock
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label WarlockPrincess << Warlock
    .goto Elwynn Forest,69.3,79.0
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r lancera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    >>Gardez 100 points de rage avant d'engager |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Soyez sûrs que [Évasion] soit prêt. Si vous avez du mal, vous pouvez utiliser la barrière avec des Armes de Jet, elle n'arrivera pas à vous toucher et vous pourrez gagner du temps << Rogue
    >>Soyez prêt à utiliser une [Potion de soins mineure]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Cliquez ici pour un exemple vidéo << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label Deed << !Warlock
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_Red Linen Bandanas|r
    >>Si vous n'avez pas encore fini cette étape. Passez cette étape si vous le voulez car vous reviendrez bientôt ici << Warlock
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
step << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << !Warlock
    .goto Redridge Mountains,10.76,77.64,0
    .goto Redridge Mountains,10.76,77.64,40,0
    .goto Redridge Mountains,15.79,64.37
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step
    #completewith ElmoresTask
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Rendez la quête À la recherche du varech
    .timer 9,À la recherche du varech RP
    .accept 114 >> Acceptez la quête La fuite
    .target William Pestle
step << Paladin/Warrior/Rogue
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Apprenez [Premiers soins]
step << Rogue
    #optional
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    >>Ne vous inquiétez pas si vous n'avez pas encore de seconde arme, vous en obtiendrez une bientôt
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 59 >> Acceptez la quête Les armures de cuir et d'étoffe << Warlock
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target Marshal Dughan
step
    #label ElmoresTask
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acceptez la quête La quête d'Elmore
    .target Smith Argus
step << Warlock
    #optional
    #completewith WarlockTraining
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r et à |cRXP_FRIENDLY_Remen Marcot|r
    .train 980 >> |T136139:0|t[Malédiction d'agonie]
    .train 5782 >> |T136183:0|t[Peur]
    .train 6201 >> |T135230:0|t[Création de Pierre de soins (mineure)]
    .train 696 >> |T136185:0|t[Peau de démon (Rang 2)]
    .train 1120 >> |T136163:0|t[Drain d'âme]
    .train 707 >> |T135817:0|t[Immolation (Rang 2)]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Acceptez la quête Convocation de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
    .xp <10,1
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 980 >> |T136139:0|t[Malédiction d'agonie]
    .train 5782 >> |T136183:0|t[Peur]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .xp <8,1
step << Warlock
    #optional
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    >>|cRXP_BUY_Achetez les|r [Grimoire d'Eclair de feu (Rang 2)] |cRXP_BUY_and|r [Grimoire de Pacte de Sang (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    >>|cRXP_BUY_Achetez le|r [Grimoire d'Eclair de feu (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    >>|cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Priest
    #optional
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Acceptez la quête Prière du désespoir << Human/Dwarf
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Josetta
    .xp <10,1
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .trainer >> Apprenez vos sorts de classe
    .xp >10,1
    .xp <9,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .money >1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    >>N'apprenez PAS [Rage sanguinaire] pour l'instant, vous devez garder de l'argent pour apprendre d'autres sorts bientôt
    .trainer >> Apprenez vos sorts de classe
    .accept 1638 >> L'entraînement du guerrier
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <10,1
step << Warrior
    #optional
    .money <1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1638 >> L'entraînement du guerrier
    .target Lyria Du Lac
    .xp <10,1
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Rendez la quête Princesse doit mourir !
    .target Ma Stonefield
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672,-1
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .xp 9.65,1
step << Rogue/Warrior
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .money >0.2600
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
step << !Warlock
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672,-1
step
    #completewith GnollEnd
    >>Tuez |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur [|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Gold Pickup Schedule|r] tombe très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    >>|cRXP_ENEMY_Gruff Swiftbite|r est un mob rare, qui possède un taux de chance de tomber cet objet de 100%
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    .isOnQuest 11
    #completewith next
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
    .isOnQuest 176
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
    >>Vous pouvez le ramener (Kite) à la Tour de Garde, faites bien en sorte de lui infliger au moins 51% de dégâts
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    .isOnQuest 11
    #completewith next
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .isOnQuest 176
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
    >>Vous pouvez le ramener (Kite) à la Tour de Garde, faites bien en sorte de lui infliger au moins 51% de dégâts
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .isOnQuest 11
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
step << Warrior/Rogue
    .money >0.2600
    +Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r
    >>Continuez jusqu'à avoir 26 pièces d'argent à vendre/en monnaie. Ils serviront à acheter vos compétences Armes de jet, masses à deux mains et épées à deux mains. Ils serviront aussi à acheter une Arme de jet de niveau 3 et pour voler à Stormwind bientôt
    >>Passez manuellement cette étape lorsque vous avez assez d'argent
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
    >>Choisissez les [|cRXP_FRIENDLY_Stormwind Guard Leggings|r] comme récompense. Vous obtiendrez la compétence pour porter des Masses à deux mains bientôt << Warrior
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
    .isQuestComplete 11
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    >>N'acceptez pas les autres quêtes
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    >>N'acceptez pas les autres quêtes
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r à l'intérieur
    >>N'acceptez pas les autres quêtes
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .target Salma Saldean
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Acceptez la quête Un message rapide
    .target Quartermaster Lewis
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Heather|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 20|r [Lutjan à longue mâchoire]|cRXP_BUY_|r
    .collect 4592,20 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
    .zoneskip Westfall,1
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
    #optional
    .abandon 123 >>Abandonnez Le collecteur
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock/Mage
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue
    .trainer >>Apprenez la compétence Bâtons << Priest
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    >>Gardez bien 6 pièces d'argent pour apprendre vos sorts plus tard
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Gardez bien 6 pièces d'argent pour apprendre vos sorts plus tard
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    .equip 16,851 >> Équipez le [Coutelas] dans votre main droite
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2494 >> Équipez le [Stylet] dans votre main gauche
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .isOnQuest 1685
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Rendez la quête Convocation de Gakin
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #completewith WLHoggerEnd
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r en utilisant [Connexion] et en vous tenant sur le bûcher près de vous
    .zoneskip Stormwind City,1
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Voyagez vers Goldshire
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibré]
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 123 >> Rendez la quête Le collecteur
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibré]
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +Équipez le [Bâton de combat équilibré]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    .subzone 62 >> Voyagez au Champ de Potirons des Saumepuits
    .isOnQuest 1688
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .waypoint Elwynn Forest,70.5,77.6,60,0
    .waypoint Elwynn Forest,68.1,77.5,60,0
    .waypoint Elwynn Forest,68.2,81.4,60,0
    .waypoint Elwynn Forest,70.8,80.9,60,0
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en continue|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Rendez la quête Les armures de cuir et d'étoffe
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Rendez la quête Les armures de cuir et d'étoffe
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith TheBinding
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    >>Tuez des créatures sur la route. Faites en sorte de garder 2 [Éclats d'âme] en utilisant [Drain d'âme]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>Faites attention aux créatures que vous rencontrez sur la route
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
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
    .cast 7728 >> Utilisez l'[Echarte de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
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
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilsa Corbin|r à l'étage
    >>Vous devez économiser 20 pièces d'argent pour apprendre à porter des Masses à deux main et des armes de jet à Ironforge !
    .trainer >> Apprenez vos sorts de classe
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Ilsa Corbin
    .train 6546,1
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Osric Strang|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
    .target Bartleby
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
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Entrez dans la Cathédrale de Stormwind
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5635 >> Rendez la quête Prière du désespoir
    .train 8092 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .isOnQuest 5635
step << Human Priest/Dwarf Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5634 >> Rendez la quête Prière du désespoir
    .train 8092 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .train 13908,3
step << Warrior/Paladin/Rogue
    .goto Stormwind City,51.192,17.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelman Stonehand|r
    .train 2575 >>Apprenez [Minage]
    >>Il sera utilisé avec votre [Forge] pour fabriquer les [Pierre à aiguiser brute] et les [Caillou brut] pour augmenter votre dégâts des armes
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .target Gelman Stonehand
    .train 2018,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step << Warrior/Paladin/Rogue
    #optional
    #completewith EnterIF
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << Warrior/Paladin/Rogue
    #optional
    .goto Stormwind City,51.021,16.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brooke Stonebraid|r
    .collect 2901,1 >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    .target Brooke Stonebraid
    .train 2575,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step
    #completewith EnterIF
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
step
    #optional
    >>Prenez le Tram des profondeurs pour Ironforge
    >>Montez vos [Premiers soins] en attendant le Tram pour Ironforge si nécessaire
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant le Tram pour Ironforge si nécessaire << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu du côté Ironforge dans le Tram des Profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
    .skill firstaid,<1,1
step
    #optional
    >>Prenez le Tram des profondeurs pour Ironforge
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant le Tram pour Ironforge si nécessaire << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu du Tram des Profondeurs du côté d'Ironforge
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    .use 17117 >>Utilisez le [Pipeau du dératiseur] |cRXP_WARN_sur les |cRXP_ENEMY_Deeprun Rats|r à l'intérieur du Tram des Profondeurs|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r à l'intérieur du Tram des Profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    #label EnterIF
    .zone Ironforge >>Entrez dans Ironforge
step << skip
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Cliquez ici pour un "logout skip" à l'intérieur du tram
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Entrez dans Ironforge
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Entrez dans le bâtiment des Marchand d'armes
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Apprenez la compétence Armes de jet
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    .goto 1455,61.356,88.398,6 >> Quittez le bâtiment des Marchand d'armes
step << Warrior
    .money <0.06
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>Si vous n'avez pas assez d'argent, ce n'est pas très grave
    .train 6546 >> Apprenez [Pourfendre (Rang 2)]
    .train 2687 >> Apprenez [Rage sanguinaire]
    .target Bilban Tosslespanner
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step
#xprate <1.5
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .isQuestAvailable 418
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step
#xprate >1.49
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Apprenez [Cuisine]
step << Warrior/Paladin/Rogue
#xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geofram Rochorteil|r en bas du bâtiment
    .goto Ironforge,51.8,29.5,15,0
    .goto Ironforge,49.6,28.2,12,0
    .goto Ironforge,49.9,26.3
    .train 2575 >>Apprenez [Minage]
    .target Geofram Bouldertoe
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate >1.49
    #optional
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate >1.49
#ah
    #sticky
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#xprate >1.49
#ah
    #sticky
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)

--
--

step
#xprate <1.5
    .goto Ironforge,18.14,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
#xprate <1.5
    #optional
    #completewith Dirt
    .goto 1426,53.47,35.02
    >>Quittez Ironforge
    .zone Dun Morogh >> Voyagez vers Dun Morogh
step
#xprate <1.5
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
#xprate <1.5
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step << Warrior/Rogue
#xprate <1.5
    #optional
    #requires Dirt
    #completewith VagashEnd
    +Équipez le [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
#xprate <1.5
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
#xprate <1.5
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> Cliquez ici pour un exemple vidéo << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
#xprate <1.5
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Senator Mehr Stonehallow|r et à |cFF00FF25Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Dank Drizzlecut|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Apprenez [Minage]
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate <1.5
    #optional
    #completewith QuarryEnd
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tuez les |cRXP_ENEMY_Rockjaw Skullthumpers|r et les |cRXP_ENEMY_Rockjaw Bonesnappers|r à l'intérieur de la grotte
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
#xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foreman Stonebrow|r et à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin
#xprate <1.5
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Ice Cold Milk] |cRXP_BUY_à Kazan|r
    .target Kazan Mogosh
    .xp >15,1
step
#xprate <1.5
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
#xprate <1.5
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,79.672,36.171
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
#xprate <1.5
    .goto Dun Morogh,78.97,37.14
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour sa |cRXP_LOOT_Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
#xprate <1.5
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417,1 >> Rendez la quête La revanche du pilote << Rogue
    .turnin 417 >> Rendez la quête La revanche du pilote << !Rogue
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,84.4,31.1,25 >>Allez à travers le tunnel pour le Loch Modan
    .zoneskip Loch Modan

--
--

step
#xprate >1.49
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Quittez Ironforge
step
#xprate >1.49
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
step
#xprate >1.49
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >> Continuez à suivre le chemin à travers les montagne jusqu'au lieu du deathskip
step
#xprate >1.49
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Courez et sautez du bord de la montagne au nord et tombez. Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
step
#xprate >1.49
    #completewith next
    .goto Wetlands,11.95,50.24,80 >> Nagez jusqu'au rivage vers le Port de Menethil
    .subzoneskip 150 --Menethil Harbor
step
#xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r à l'étage inférieur de la caserne
    .vendor 1448 >> Achetez un [Tube en bronze] |cRXP_BUY_à Neal (si il en a en stock)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
#xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Quittez le donjon de Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
#xprate >1.49
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r à l'extérieur
    .fp Wetlands >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r à l'intérieur
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
step
#xprate >1.49
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Voyagez vers les quais pour le bateau se rendant à Auberdine
    .zoneskip Darkshore
step
#xprate >1.49
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
#xprate >1.49
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
#xprate >1.49
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
#xprate >1.49
    #optional
    +Vous aurez besoin d'un niveau de compétence de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] les objets suivants:
    >>|T133971:0|t[Cuisinez] les |cRXP_LOOT_[Chunks of Boar Meat]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisinez] les |cRXP_LOOT_[Stringy Wolf Meat]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
#xprate >1.49
    #optional
    +Vous aurez besoin d'un niveau de compétence de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] les |cRXP_LOOT_[Stringy Wolf Meat]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
#xprate >1.49
    #optional
    +Vous aurez besoin d'un niveau de compétence de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] les |cRXP_LOOT_[Chunks of Boar Meat]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
#xprate >1.49
    #optional
    .goto 1437,4.370,56.762
    >>Montez en niveau vos [Premiers soins] en attendant le bateau pour Sombrivage
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
#xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#xprate <1.5
#name 11-12 Loch Modan << !Warlock
#name 12-14 Loch Modan << Warlock
#subgroup RestedXP Alliance 1-20
#defaultfor Human
#next 14-14 Sombrivage << Warlock
#next 12-14 Sombrivage << !Warlock

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes ! << Warlock/Mage/Rogue
    .target Mountaineer Stormpike
step << !Warlock !Mage !Rogue
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warlock/Mage/Rogue
    #optional
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Abandonnez La mission de Stormpike. Celle-ci sert à débloquer La mission du Montagnard Stormpike qui se rend pour 550xp
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>Gardez vos |cRXP_LOOT_[Chunks of Boar Meat]|r pour les utiliser pour monter votre [Cuisine] Plus tard
    .subzoneskip 144
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    .subzone 144 >> Voyagez à Thelsamar
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Achetez jusqu'à 2|r [Petite sacoche marron] |cRXP_BUY_à Yanni si nécessaire|r
    .target Yanni Stoutheart
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Achetez des|r [Pain sorti du four]|cRXP_BUY_. Essayez d'en avoir environ 20|r << Rogue
    .vendor 6734 >> |cRXP_BUY_Achetez des|r [Pain sorti du four]|cRXP_BUY_ et|r [Lait frais]|cRXP_BUY_. Essayez d' avoir environ 10|r [Pain sorti du four] |cRXP_BUY_ et 20|r [Lait frais] << Mage/Warlock
    .target Innkeeper Hearthstove
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step << Warlock/Mage/Rogue
    #optional
    #completewith SilverStream
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
step << Warlock/Mage/Rogue
    #completewith SilverStream
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Tunnel Rat Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step << Warlock/Mage/Rogue
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    .complete 307,1 -- Miners' Gear (4)
step << Warlock/Mage/Rogue
    #optional
    #completewith FilthyMountaineer
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Warlock/Mage/Rogue
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step << Warlock/Mage/Rogue
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Stormpike
step << Warlock/Mage/Rogue
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
step << Warlock/Mage/Rogue
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous aurez besoin d'un niveau de compétence de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r à l'extérieur
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step << !Warlock
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << !Warlock
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r à l'extérieur
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << Warlock
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step << Warlock
    .goto Loch Modan,27.33,56.70
    >>Tuez les |cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,27.33,56.70
    +Tuez en boucle les |cRXP_ENEMY_Troggs|r jusqu'à ce que vous ayez l'équivalent de 71s 50c à vendre au marchand, puis rendez les quêtes
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>Montez votre expérience jusqu'à 9600+/11400xp
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step << Warlock
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 14 >> Montez jusqu'au niveau 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << Warlock
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r à l'extérieur
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Paladin
    #optional
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Brandur Ironhammer
    .xp <12,1
step << Rogue
    #optional
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
    .xp <12,1
step << Warrior
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
    .xp <12,1
step << Mage/Priest/Warlock
#ah
    #sticky
    #label AH1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez une|r [Baguette magique supérieure] |cRXP_BUY_si elle coûte moins de 30s 6c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step
#ah
    #sticky
    #label AH2
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #sticky
    #label AH3
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #requires AH1
step
    #requires AH2
step
    #requires AH3
step << Mage/Priest/Warlock
    #optional
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp <13,1
step << Priest/Warlock/Mage
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harick Boulderdrum|r en bas des escaliers
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +N'oubliez pas d'équiper la [Baguette de fonte] quand vous atteindrez le niveau 15 plus tard
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Achetez un|r [Grimoire de Consumer l'ombre (Rang 1)] |cRXP_BUY_et un|r [Grimoire de Sacrifice (Rang 1)] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Jubahl Corpseseeker
step << Priest
    #optional
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
    .xp <12,1
step << Mage
    #optional
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
    .xp <12,1
step
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Quittez Ironforge
step
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
step
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >> Continuez à suivre le chemin à travers les montagne jusqu'au lieu du deathskip
step
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Courez et sautez du bord de la montagne au nord et tombez. Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
step
    #completewith next
    .goto Wetlands,11.95,50.24,80 >> Nagez jusqu'au rivage vers le Port de Menethil
    .subzoneskip 150 --Menethil Harbor
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r dans l'étage inférieure de la caserne
    .vendor 1448 >> Achetez un [Tube en bronze] |cRXP_BUY_à Neal (si il en a en stock)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Quittez le donjon de Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r à l'extérieur
    .fp Wetlands >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r à l'intérieur
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Voyagez vers les quais pour le bateau se rendant à Auberdine
    .zoneskip Darkshore
step
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto 1437,4.370,56.762
    >>Montez en niveau vos [Premiers soins] en attendant le bateau pour Sombrivage
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance Warlock
#xprate <1.5
#name 14-14 Sombrivage
#subgroup RestedXP Alliance 1-20
#defaultfor Human Warlock
#next 14-20 Île de Brume-sang

step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>Achetez-lui jusqu'à 20 [Lutjan à longue mâchoire]
    .collect 4592,15 --Longjaw Mud Snapper (40)
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Montez les escaliers pour y trouver |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Acceptez Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Ouvrez  |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>Utilisez l' [Espoir de Tharnariun] |cRXP_WARN_sur un |cRXP_ENEMY_Rabid Thistle Bear|r. Il peut être utilisé à n'importe quelle distance tant que vous l'avez en cible|r
    >>==N'UTILISEZ PAS L'OBJET DE QUÊTE SI IL N'Y A PAS D'OURS À PROXIMITÉ==
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Courez vers le bord du Camp Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Rendez la quête Terres malades
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .target Terenthis
step
    #optional
    #sticky
    .abandon 1001 >> Abandonnez Bigobox 411. Vous ne terminerez pas cette quête
step
    #optional
    #sticky
    .abandon 4681 >> Abandonnez Échouage. Vous ne terminerez pas cette quête
step
    #optional
    .goto Darkshore,30.749,40.995
    >>Montez vos [Premiers soins] en attendant le bateau pour l'Île de Brume-Azure
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
]])
