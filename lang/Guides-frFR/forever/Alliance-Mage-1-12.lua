if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Human Mage
#name 1-10 Forêt d'Elwynn Mage AoE
#version 1
#group RestedXP Mage Alliance

#defaultfor none Human
#next 10-12 Loch Modan Mage AoE Avancé
step
    #sticky
    #completewith next
    .goto 1429/0,-136.52,-8933.53
    +Vous avez sélectionné un guide conçu pour les Humains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez << Gnome
    +Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , mais beaucoup plus rapide
step
    >>Détruisez votre Pierre de foyer
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
step
    .goto 1429/0,-162.62,-8902.59
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 783 >> Rendez la quête Menace intérieure
.target Marshal McBride
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
step
    .goto 1429/0,-68.11,-8874.67
    .vendor >>Tuez des loups jusqu'à avoir l'équivalent de 50 pièces de cuivre à vendre au marchand. Vendez, puis achetez x10 Eau au Frère Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Montez jusqu'au niveau 2
step
    .goto 1429/0,-161.82,-8870.05
>>Parlez à |cRXP_FRIENDLY_Eagan Tannepeau|r
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
.target Eagan Peltskinner
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
step
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    >>Tuez les Jeunes loups dans la zone pour leur viande
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    >>Tuez les Vermines kobold dans la zone
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto 1429/0,-161.82,-8870.05
.target Eagan Peltskinner
>>Parlez à |cRXP_FRIENDLY_Eagan Tannepeau|r
    .turnin 33 >> Rendez la quête Les loups derrière la frontière
step
    .goto 1429/0,-116.70,-8900.14
    .vendor >>Vendez votre surplus, puis achetez x10 Eaux supplémentaire au Frère Danil
step
    .goto 1429/0,-162.62,-8902.59
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
.target Marshal McBride
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3104 >> Acceptez la quête Lettre glyphée
step
    .xp 3 >> Montez jusqu'au niveau 3
step
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    >>Tuez les Ouvriers kobolds
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto 1429/0,-120.17,-8897.82
    .xp 3+1110 >>Montez votre expérience jusqu'à 1110+/1400 sur le chemin du retour
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
step
    .goto 1429/0,-162.62,-8902.59
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
.target Marshal McBride
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
step
    >>Montez à l'étage
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-182.65,-8865.42,15,0
    .goto 1429/0,-188.23,-8851.58
.target Khelden Bremen
>>Parlez à |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .trainer >> Apprenez vos sorts de classe
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 18 >> Acceptez la quête La confrérie des voleurs
step
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    >>Tuez les Nervis défias. Dépouillez-les pour leur Masques
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto 1429/0,-136.52,-8933.53
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 18 >> Rendez la quête La confrérie des voleurs
.target Deputy Willem
    .accept 6 >> Acceptez la quête La prime pour Garrick Ladétrousse
    .accept 3903 >> Acceptez la quête Milly Osworth
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    >>Tuez les Travailleurs dans la mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Montez jusqu'au niveau 5
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Parlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Rendez la quête Milly Osworth
.target Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly
step
    #som
    #phase 3-6
    .goto 1429/0,-224.30,-8846.90
.target Milly Osworth
>>Parlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Rendez la quête Milly Osworth
step
    #era/som
    >>Ramassez les Seaux de raisins dans le champ
    .goto 1429/0,-356.19,-9082.99
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-460.31,-9055.21
    >>Tuez Garrick Ladétrousse et récupérez sa Tête
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Montez votre expérience sur le retour jusqu'à 1175+/2800xp
    .goto 1429/0,-224.30,-8846.90
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Parlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Rendez la quête La récolte de Milly
.target Milly Osworth
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 6 >> Rendez la quête La prime pour Garrick Ladétrousse
step
    .goto 1429/0,-162.62,-8902.59
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 21 >> Rendez la quête La bataille de la Crête aux échos
.target Marshal McBride
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
step
     #era/som
     >>Montez les escaliers principaux
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,15,0
    .goto 1429/0,-181.64,-8902.13
.target Brother Neals
>>Parlez au |cRXP_FRIENDLY_Frère Neals|r
    .turnin 3905 >>Rendez la quête Manifeste des vendanges
step
    .goto 1429/0,-47.28,-9043.64
.target Falkhaan Isenstrider
>>Parlez à |cRXP_FRIENDLY_Falkhaan Isenrôde|r
    .accept 2158 >> Acceptez la quête Repos et détente
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,164.44,-9339.91,200 >> Mourez et ressuscitez au Gardien des âmes ou courez vers Comté-de-l'Or
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1429/0,74.02,-9465.52
>>Parlez au |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
.target Marshal Dughan
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
step
    .goto 1429/0,46.43,-9460.26,15,0
    >>Directement à votre gauche en entrant dans l'auberge
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
step
    .goto 1429/0,16.20,-9462.65
.target Innkeeper Farley
>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
    .turnin 2158 >> Rendez la quête Repos et détente
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
step
    .xp 6 >> Montez jusqu'au niveau 6
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Montez les escaliers. Apprenez vos sorts de classe
step
    .goto 1429/0,74.20,-9497.30
.target Remy "Two Times"
>>Parlez à |cRXP_FRIENDLY_Remy « Deux fois »|r.
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
step
    #sticky
    #completewith BoarMeat1
    >>Commencez à tuer les sangliers que vous croisez pour leur viande de sanglier
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Parlez à la |cRXP_FRIENDLY_« Tatie » Bernice Champierreux|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Parlez à la |cRXP_FRIENDLY_Maman Champierreux|r
    .accept 88 >> Acceptez la quête Princesse doit mourir !
step
    #sticky
    #completewith Candles
    >> Obtenez quelques Bougies sur les Kobolds à côté
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >> Obtenez de la Poussière d'or sur les Kobolds à côté
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>Tuez en boucle les mobs à l'est en passant par l'extérieur de la mine
    .goto 1429/0,38.38,-9923.69
>>Parlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Rendez la quête Le collier perdu
.target Billy Maclure
    .accept 86 >> Acceptez la quête Une tourte pour Billy
step
    #label BoarMeat1
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Parlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
step
    .goto 1429/0,63.78,-10008.82
    .vendor >>Vendez, puis achetez autant de lait que vous le pouvez
step
    #sticky
    #completewith next
    >>Tuez les sangliers que vous croisez pour la viande de sanglier
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
>>Parlez à |cRXP_FRIENDLY_Tommy Joe Champierreux|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
.target Tommy Joe Stonefield
    .accept 111 >> Acceptez la quête Discuter avec Mamie
step
    .goto 1429/0,407.40,-9918.55
    >>Terminez de récolter la Viande de sanglier
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
>>Parlez à la |cRXP_FRIENDLY_« Tatie » Bernice Champierreux|r
    .turnin 86 >> Rendez la quête Une tourte pour Billy
.target "Auntie" Bernice Stonefield
    .accept 84 >> Acceptez la quête Revenir voir Billy
step
    .goto 1429,34.945,83.855
>>Parlez à la |cRXP_FRIENDLY_Mamie Champierreux|r
    .turnin 111 >> Rendez la quête Discuter avec Mamie
.target Gramma Stonefield
    .accept 107 >> Acceptez la quête Note pour William
step
    #sticky
    #label KoboldCandles
    >> Obtenez quelques Bougies sur les Kobolds à côté
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >> Obtenez de la Poussière d'or sur les Kobolds à côté
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Tuez en boucle les mobs à l'est en passant par l'extérieur de la mine
    .goto 1429/0,38.38,-9923.69
>>Parlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
.target Billy Maclure
    .accept 87 >> Acceptez la quête Dent-d'or
step
    >>Entrez dans la mine
    .goto 1429/0,129.73,-9844.49
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Tuez Dent-d'or pour le Collier de Bernice
    .goto 1429/0,88.08,-9744.96--??
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Montez votre expérience jusqu'à 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Parlez à la |cRXP_FRIENDLY_« Tatie » Bernice Champierreux|r
    .turnin 87 >> Rendez la quête Dent-d'or
step
    >>Tuez des mobs sur la route pour revenir à Comté-de-l'Or
    .xp 7+2690 >>Montez votre expérience jusqu'à 2690+/4500xp
    .goto 1429/0,74.20,-9497.30
step
    .goto 1429/0,74.20,-9497.30
>>Parlez à |cRXP_FRIENDLY_Remy « Deux fois »|r.
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
.target Remy "Two Times"
    .accept 40 >> Acceptez la quête Péril en la rivière
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1429/0,74.02,-9465.52
>>Parlez au |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 40 >> Rendez la quête Péril en la rivière
.target Marshal Dughan
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1429/0,33.14,-9460.75
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
.target William Pestle
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> À la recherche du varech
step
    .xp 8 >> Montez jusqu'au niveau 8
step
    .money <0.1250
    .goto 1429/0,8.25,-9464.89
    .vendor >>Achetez un sac à 6 emplacements à Brog
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Montez les escaliers. Apprenez vos sorts de classe
step
    .goto 1429/0,16.20,-9462.65
    .vendor >>Achetez de l'Eau de niveau 5 jusqu'à en avoir 40
step
    >>Tuez des Murlocs vers l'est et dépouillez-les pour les Frondes de varech. Tuez des monstres sur l'île si vous en avez encore besoin
    .goto 1429/0,-116.70,-9404.71,60,0
    .goto 1429/0,-248.59,-9434.80,50,0
    .goto 1429/0,-463.78,-9393.14,50,0
    .goto 1429/0,-422.13,-9481.10,50,0
    .goto 1429/0,-331.89,-9485.73,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Entrez dans la mine et continuez à suivre le chemin du milieu
    .goto 1429/0,-609.56,-9189.46,60,0
    .goto 1429/0,-560.97,-9101.50
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-1032.06,-9610.23
>>Parlez au |cRXP_FRIENDLY_Garde Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
.target Guard Thomas
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
step
    #sticky
    #completewith Prowlers
    >>Tuez les Rôdeurs en faisant les autres quêtes
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Tuez des Ours pendant que vous faites d'autres quêtes. Tuez tous ceux que vous croisez
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-987.88,-9335.28
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Parlez au |cRXP_FRIENDLY_Superviseur Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
step
    .goto 1429/0,-1355.79,-9469.52
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    #sticky
    #completewith Bundles
    >>Gardez l'oeil ouvert pour les tas de fagots en bas des arbres
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto 1429/0,-1234.31,-9224.18,60 >> Allez vers le cadavre du garde
step
    .goto 1429/0,-1234.31,-9224.18
    >> Tuez les monstres autour du cadavre. Engagez les 2 monstres devant les huttes, éloignez-vous et transformez l'un deux en mouton pendant que vous tuez l'autre, puis tuez le mouton. Récupérez la carcasse au sol
    >> Faites attention comme cette quête peut être difficile
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    >>Revenez en courant, finissez de récolter les fagots
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Parlez au |cRXP_FRIENDLY_Superviseur Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
step
    #label Prowlers
    .xp 9 >> Montez jusqu'au niveau 9
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
.target Sara Timberlain
>>Parlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
step
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    >>Tuez les derniers mobss de la quête Protéger la frontière
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-1032.06,-9610.23
>>Parlez au |cRXP_FRIENDLY_Garde Thomas|r
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
.target Guard Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
>>Parlez à |cRXP_FRIENDLY_Saldean le fermier|r
-->>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
-->>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
--
-->>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
-->>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
step
    #sticky
    #completewith Princess
    >>Vérifiez si vous arrivez à obtenir le Titre de propriété de la marche de l'Ouest sur un Défias (rare)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    >>Commencez à faire le tour de la ferme en tuant les Défias et en les dépouillant pour leur masques
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto 1429/0,-873.34,-9772.73
    >>Tuez Princesse. Utilisez une Potion de soins inférieure avant si nécessaire. Dépouillez-la pour son collier
    >>Vous pouvez aussi sauter d'un côté puis de l'autre de la clôture de la ferme pour tuer La Princesse et ses gardes
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,-1366.20,-9552.85,120 >>Mourez et ressuscitez au Gardien des âmes si vous êtes bas en vie, sinon revenez simplement et rendez la quête
step
    .goto 1429/0,-1223.90,-9534.33
.target Sara Timberlain
>>Parlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .isQuestComplete 83
step
    .goto 1433/0,-1741.68,-9644.29
    .zone Redridge Mountains >>Tuez des mobs sur la route pour les Carmines
step
    #softcore
    #sticky
    #completewith next
    +Laissez-vous tuer par les monstres ici
    .goto 1433/0,-1813.97,-9710.17
step
    #softcore
    >>Ressuscitez au Gardien des âmes.
    .goto 1433/0,-2022.37,-9394.52,100 >>Ressuscitez au Gardien des âmes.
step
    #softcore
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    #hardcore
    >>Courez vers le trajet de vol. Soyez très prudent et évitez d'attirer les monstres ou de mourir sur la route. Restez sur la route et observez les alentours
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto 1429/0,33.14,-9460.75
    >>N'attendez pas le temps de son RP
.target William Pestle
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .turnin 112 >> Rendez la quête À la recherche du varech
step
    .goto 1429/0,70.72,-9462.58
>>Parlez au |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
.target Marshal Dughan
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
step
    .goto 1429/0,87.87,-9456.65
.target Smith Argus
.target Verner Osgood
>>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acceptez la quête La quête d'Elmore
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .accept 114 >> Acceptez la quête La fuite
step
    >>Sortez de l'auberge et allez vers le sud
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Parlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
step
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Parlez à la |cRXP_FRIENDLY_Maman Champierreux|r
    .turnin 88 >> Rendez la quête Princesse doit mourir !
step
    .goto 1429/0,695.47,-9663.95
.target Deputy Rainer
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
step
    .isOnQuest 184
    .goto 1436/0,916.67,-9852.67
.target Farmer Furlbrow
>>Parlez à |cRXP_FRIENDLY_Fermier Froncebouille|r
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
step
    .goto 1436/0,919.54,-9853.04
.target Verna Furlbrow
>>Parlez à |cRXP_FRIENDLY_Verna Froncebouille|r
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
step
    .goto 1436/0,1042.11,-10112.11
.target Salma Saldean
>>Parlez à |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
step
    #softcore
    #sticky
    #completewith next
    .goto 1436/0,1207.17,-10552.67,150 >> Mourez et ressuscitez au Gardien des âmes ou courez vers la Colline des Sentinelles
step
    .goto 1436/0,1045.22,-10508.800
.target Gryan Stoutmantle
>>Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
step
    .goto 1436/0,1021.60,-10500.61
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
.target Quartermaster Lewis
>>Parlez à l' |cRXP_FRIENDLY_Intendant Lewis|r
    .accept 6181 >> Acceptez la quête Un message rapide
step
    #phase 3-6
    .goto 1436/0,1042.11,-10112.11
    .xp 11+3750 >> Montez votre expérience jusqu'à 3750+/8800xp
step
    .goto 1436/0,1035.67,-10627.33
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
>>Parlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
.target Thor
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .fly Stormwind >> Volez à Stormwind
step
    .goto 1453/0,625.49,-8857.89
    >>Choisissez les fusées. Elles infligent de très bons dégâts et peuvent être utilisées pour engager les mobs seul au loin
.target Morgan Pestle
>>Parlez à |cRXP_FRIENDLY_Morgan Pilon|r
    .turnin 61 >> Rendez la quête Une cargaison pour Hurlevent
step
    #era/som
    .goto 1453/0,613.39,-8796.05
    .trainer >> Achetez la compétence pour porter des épées à une main
step
    .goto 1453/0,382.18,-8701.93
.target Osric Strang
>>Parlez à |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    >>Vendez et réparez
step
    #completewith next
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Parlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
step
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Parlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
step
    #sticky
    #completewith next
    .goto 1453/0,521.98,-8353.25,20 >>Entrez dans le Tram des profondeurs
step
    >>Prenez le tram lorsqu'il arrive, puis descendez de celui-ci quand il arrive de l'autre côté
.target Monty
>>Parlez à |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
step
    >>Utilisez votre flûte sur les rats aux alentours
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Parlez à |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
step
    .goto 1455/0,-1322.37,-4838.32,30 >>Entrez dans Ironforge
step
    .goto 1455/0,-1152.40,-4821.13
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
step
    #phase 3-6
    .goto 1455/0,-928.40,-4614.46
     .trainer >> Apprenez vos sorts de classe
step
    #sticky
    #completewith next
    .goto 1426/0,-832.79,-5022.97,100 >>Quittez Forgefer
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .accept 314 >> Acceptez la quête Protection du troupeau
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,12 >> Montez sur cette partie de la montagne
step
    >>Tuez Vagash. Dépouillez-le pour son Croc
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>Faites attention comme cette quête peut être difficile
    .goto 1426/0,-1280.97,-5390.70
    .goto 1426/0,-1289.83,-5669.780,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    >>Tuez quelques mobs sur la route
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Achetez de la nourriture et de l'eau au marchand
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Tuez les Troggs dans la grotte
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Montez en expérience jusqu'à 6350+/7600xp
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 433 >> Rendez la quête Le serviteur public
step
    #era/som--xpgate
    .xp 11
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Vendez votre surplus, achetez 30 boissons de niveau 5 à Kazan
    .trainer >> Apprenez la Cuisine auprès de Ghilm. Vous en aurez besoin pour recevoir 2 quêtes supplémentaires plus tard
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
step
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    >>Tuez Griffe galeuse. Dépouillez-le pour sa Griffe
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    .goto 1426/0,-2354.62,-4898.20,25 >>Allez à travers le tunnel pour le Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Gnome Mage
#name 1-10 Dun Morogh Mage AoE
#version 1
#group RestedXP Mage Alliance

#defaultfor none Gnome
#next 10-12 Loch Modan Mage AoE Avancé
step
    #era/som
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez << Human
    +Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , mais beaucoup plus rapide
step
    #phase 3-6
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez << Human
    +Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , et est aussi plus lent depuis le bonus d'expérience sur les quêtes de 100%
step
    >>Détruisez votre Pierre de foyer
    .goto 1426/0,328.18,-6214.85
.target Sten Stoutarm
>>Parlez à |cRXP_FRIENDLY_Sten Rudebras|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
step
    >>Tuez les Loups. Dépouillez-les pour leur Viande
    .goto 1426/0,388.61,-6333.02
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Montez jusqu'au niveau 2
step
    .goto 1426/0,324.58,-6224.67
    >>Vendez votre surplus. Achetez 15 Eaux. Tuez des loups supplémentaires si vous n'avez pas assez d'argent
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto 1426/0,328.18,-6214.85
>>Parlez à |cRXP_FRIENDLY_Sten Rudebras|r
    .turnin 179 >> Rendez la quête Tailleur chez les nains
.target Sten Stoutarm
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3114 >> Acceptez la quête Note de service glyphée
step
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Parlez à |cRXP_FRIENDLY_Balir Martel-de-givre|r
    .accept 170 >> Acceptez la quête Une nouvelle menace
step
    #sticky
    #completewith Rockjaw
    >>Tuez les Troggs Mâcherocs normaux que vous croisez
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    >>Tuez les Troggs Mâcherocs Mastocs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto 1426/0,688.98,-6222.47
>>Parlez à |cRXP_FRIENDLY_Talin Oeil-perçant|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
.target Talin Keeneye
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
step
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    >>Tuez les Sangliers dans la zone
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto 1426/0,688.98,-6222.47
.target Talin Keeneye
>>Parlez à |cRXP_FRIENDLY_Talin Oeil-perçant|r
    .turnin 183 >> Rendez la quête Chasseur de sangliers
step
    .xp 3+860 >> Montez votre expérience jusqu'à 860+/1400xp
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
step
    #label Rockjaw
    .goto 1426/0,567.09,-6362.99
>>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .turnin 234 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
.target Grelin Whitebeard
    .accept 182 >> Acceptez la quête La caverne des trolls
step
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    >> Une fois acceptée, un chrono de 5 minutes commencera. Détendez-vous et suivez le guide
step
    .goto 1426/0,388.61,-6421.67
    >>Montez ici et tuez les Troggs si vous n'en avez pas encore tué assez
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Si vous avez été trop lent et avez échoué la quête chronométrée, allez la reprendre à nouveau
    .goto 1426/0,570.83,-6372.42,0
.target Nori Pridedrift
>>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto 1426/0,383.68,-6057.22
.target Durnan Furcutter
>>Parlez à |cRXP_FRIENDLY_Durnan Coupefourrure|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
step
    #label Scalding1
    .goto 1426/0,383.68,-6057.22
>>Parlez à |cRXP_FRIENDLY_Durnan Coupefourrure|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
.target Durnan Furcutter
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
step
    .goto 1426/0,388.17,-6056.10
.target Marryk Nurribit
>>Parlez à |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Rendez la quête Note de service glyphée
    .trainer >> Apprenez vos sorts de classe
step
    >>Sortez du bunker
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Parlez à |cRXP_FRIENDLY_Balir Martel-de-givre|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
step
    .goto 1426/0,324.58,-6224.67
    .vendor >>Au vendeur, achetez 10 eaux
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto 1426/0,506.81,-6477.48,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    >>Tuez les Jeunes trolls Crins-de-givre
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
step
    .goto 1426/0,567.09,-6362.99
>>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .turnin 182 >> Rendez la quête La caverne des trolls
.target Grelin Whitebeard
    .accept 218 >> Acceptez la quête Le journal volé
step
    #requires Mug
    .goto 1426/0,482.18,-6500.47,30,0
    .goto 1426/0,373.83,-6470.92,15,0
    .goto 1426/0,295.03,-6513.60
    >>Entrez dans la grotte des trolls. Tuez Grik'nir, puis dépouillez-le pour le journal de Grelin
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Tuez quelques mobs en revenant
    .goto 1426/0,565.91,-6365.85
>>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .turnin 218 >> Rendez la quête Le journal volé
.target Grelin Whitebeard
    .accept 282 >> Acceptez la quête Les observations de Senir
step
    >> Tuez des mobs jusqu'ici
    .goto 1426/0,153.00,-6235.86
>>Parlez au |cRXP_FRIENDLY_Montagnard Thalos|r
    .turnin 282 >> Rendez la quête Les observations de Senir
.target Mountaineer Thalos
    .accept 420 >> Acceptez la quête Les observations de Senir
step
    .goto 1426/0,132.51,-6247.65
.target Hands Springsprocket
>>Parlez à |cRXP_FRIENDLY_Mano Engrenaressort|r
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
step
    .goto 1426/0,122.66,-6227.95,20,0
    .goto 1426/0,43.86,-6044.08,20 >>Traversez le tunnel
step
    #sticky
    #completewith BoarMeat44
    >> Tuez des sangliers afin d'obtenir 4 Viandes de sanglier pour plus tard
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Tuez des Sangliers pour obtenir 6 Côtes de sanglier pour plus tard
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>Tuez des sangliers au nord-est de Kharanos
    .goto 1426/0,9.38,-5942.30,45,0
    .goto 1426/0,-54.64,-5863.50,45,0
    .goto 1426/0,-359.99,-5705.90
    .xp 5+2415 >> Montez votre expérience jusqu'à 2415+/2800xp
step
    #softcore
    .goto 1426/0,-512.67,-5686.2,120 >> Mourez et ressuscitez au Gardien des âmes, ou allez à Kharanos en marchant. Assurez-vous que votre zone n'est PAS la Passe des Frigères
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Parlez à |cRXP_FRIENDLY_Senir Blanchebarbe|r
    .turnin 420 >> Rendez la quête Les observations de Senir
step
    #completewith next
    .goto 1426/0,-497.89,-5633.67
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Parlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
step
    .goto 1426/0,-576.69,-5748.58
    .xp 6 >> Montez jusqu'au niveau 6
step
    .goto 1426/0,-523.35,-5590.82
.target Tannok Frosthammer
>>Parlez à |cRXP_FRIENDLY_Tannok Martel-de-givre|r
    .turnin 2160 >> Rendez la quête Des provisions pour Tannok
step
    >>En haut des escaliers
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Apprenez vos sorts de classe
step
    .goto 1426/0,-532.37,-5600.83
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> Achetez autant de boisson de niveau 5 que vous pouvez vous le permettre
step
    .goto 1426/0,-464.45,-5573.78
.target Tharek Blackstone
>>Parlez à |cRXP_FRIENDLY_Tharek Noirepierre|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
step
    .goto 1426/0,-632.15,-5466.540
    >>Ne tuez PAS les ours sur la route
.target Pilot Bellowfiz
>>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Parlez au |cRXP_FRIENDLY_Pilote Engrepierre|r
    .accept 313 >> Acceptez la quête L'antre Gris
step
    .goto 1426/0,-680.12,-5489.20
.target Beldin Steelgrill
>>Parlez à |cRXP_FRIENDLY_Beldin Grillacier|r
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
step
    #label BoarMeat44
    .goto 1426/0,-664.55,-5499.710
.target Loslor Rudge
>>Parlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
step
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    >>Obtenez les objets pour Ravitailler le Crache-vapeur
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto 1426/0,-632.15,-5466.540
>>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
.target Pilot Bellowfiz
    .accept 318 >> Acceptez la quête L'éternol
step
    >>Retournez dans l'auberge
    .goto 1426/0,-507.74,-5587.70,20,0
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Achetez autant de boisson de niveau 5 que vous pouvez vous le permettre
    >>Vous pouvez acheter un Couteau à dépecer à l'extérieur de l'auberge si vous le souhaitez, c'est une meilleure option qu'un bâton jusqu'à ce que vous obteniez une arme avec des stats
step
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    >> Entrez dans la grotte. Tuez les Wendigos. Dépouillez-les pour leur Peaux de wendigo
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Ramassez la caisse
    .goto 1426/0,-369.84,-5745.30
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto 1426/0,-197.47,-5932.45,30,0
    .goto 1426/0,-201.51,-6015.520
.target Hegnar Rumbleshot
>>Parlez à |cRXP_FRIENDLY_Hegnar Grondetrait|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .vendor >> Vendez et réparez
step
    .xp 7 >> Montez jusqu'au niveau 7
step
    >>Tuez quelques mobs sur la route
    .goto 1426/0,68.48,-5728.88,50,0
    .goto 1426/0,29.08,-5584.42,50,0
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Parlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
step
    .goto 1426/0,299.96,-5387.42
    .vendor >> Vendez. Achetez jusqu'à 20 boissons de niveau 5
step
    #sticky
    #label Evershine
    .goto 1426/0,314.73,-5380.85
>>Parlez à |cRXP_FRIENDLY_Rejold Brasselorge|r
    .turnin 318 >> Rendez la quête L'éternol
.target Rejold Barleybrew
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Parlez à |cRXP_FRIENDLY_Marleth Brasselorge|r
    .accept 310 >> Acceptez la quête Bières rivales
step
    #label Ribs
    #requires Evershine
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    >> Tuez les Ours, les Sangliers et les Léopards. Allez au nord->ouest->sud
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Terminez de récolter les Côtes de sanglier
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto 1426/0,315.28,-5378.39
>>Parlez à |cRXP_FRIENDLY_Rejold Brasselorge|r
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
.target Rejold Barleybrew
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Montez votre expérience jusqu'à 4360+/4500xp
step
    .xp 7+3735 >>Montez votre expérience jusqu'à 3735+/4500xp
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step
    .goto 1426/0,-532.37,-5600.83
    >> Achetez une Bière au malt Rhapsody et une Thunder Ale à Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto 1426/0,-542.22,-5597.55,10,0
    .goto 1426/0,-547.63,-5607.07
    >>Descendez les escaliers, puis parlez à Jarven et donnez-lui la Thunder Ale
    >>Attendez que le tonneau ne soit plus protégé, puis rendez la quête
    .turnin 310 >> Rendez la quête Bières rivales
    .accept 311 >> Acceptez la quête Retour chez Marleth
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Parlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
     >>Vendez la recette la prochaine fois que vous vendez votre surplus
step
    .xp 8 >> Montez jusqu'au niveau 8
step
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Apprenez vos sorts de classe
    >>Assurez-vous d'apprendre Métamorphose
step
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Achetez jusqu'à 30 boissons de niveau 5 à l'aubergiste
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Parlez à |cRXP_FRIENDLY_Senir Blanchebarbe|r
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Parlez au |cRXP_FRIENDLY_Pilote Engrepierre|r
    .turnin 313 >> Rendez la quête L'antre Gris
step
    .goto 1426/0,-632.15,-5466.540
.target Pilot Bellowfiz
>>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet
step
    #era/som
    >>À l'intérieur du bâtiment
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Parlez à |cRXP_FRIENDLY_Esbrouf Fulgurouage|r
    .accept 412 >> Acceptez Opération Recombobulation
step
    .goto 1426/0,-320.59,-5354.58,25,0
    .goto 1426/0,-271.34,-5367.72,25 >> Montez la rampe vers les Chatoyantes
step
    .goto 1426/0,-212.24,-5364.43,30,0
    .goto 1426/0,-241.79,-5308.62,30,0
    .goto 1426/0,-153.14,-5190.42,30,0
    .goto 1426/0,-271.34,-5003.27,30,0
    >>Tuez les mobs dans cette zone. Soyez prudent si vous devez vous occuper du camp au milieu. Vous pouvez engager les mobs dans les huttes et les éliminer en restant cacher (LoS) derrière les huttes si vous avez besoin de 2 mobs supplémentaires. Si vous n'avez pas de chance, dirigez-vous vers l'autre zone
    >>Ramassez les boîtes au sol
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Utilisez Métamorphose sur le Vieux Barbeglace, puis récupérez les viandes
    .goto 1426/0,-94.04,-5646.80
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Parlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
step
    .goto 1426/0,304.88,-5380.85
    .vendor >> Achetez jusqu'à 20 boissons de niveau 5 supplémentaires
step
    #sticky
    #label Stout
    .goto 1426/0,315.28,-5378.39
>>Parlez à |cRXP_FRIENDLY_Rejold Brasselorge|r
    .turnin 315 >> Rendez la quête La bière brune parfaite
.target Rejold Barleybrew
    .accept 413 >> Acceptez la quête La Brune scintillante
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Parlez à |cRXP_FRIENDLY_Marleth Brasselorge|r
    .turnin 311 >> Rendez la quête Retour chez Marleth
step
    #era/som
    #requires Stout
    .goto 1426/0,462.48,-5288.92,40,0
    .goto 1426/0,580.68,-5167.43,40,0
    .goto 1426/0,541.28,-5302.05,40,0
    .goto 1426/0,605.31,-5321.75,40,0
    .goto 1426/0,551.13,-5367.72,40,0
    >>Tuez les Gnomes lépreux. Dépouillez-les pour les Rouages et les Engrenages
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Montez jusqu'au niveau 9
step
    .goto 1426/0,595.46,-5545.02,35 >>Entrez dans la grotte
step
    .goto 1426/0,713.66,-5528.60,40,0
    .goto 1426/0,753.06,-5613.97,40,0
    >>Tuez les Chasseurs de têtes à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Descendez avec prudence dans ce petit coin de la grotte
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto 1426/0,649.63,-5568.00,15 >>Remontez dans la grotte
step
    #softcore
    >>Sautez en bas, vous allez mourir immédiatement après
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
step
    #hardcore
   .goto 1426/0,-499.17,-5644.37,150 >> Utilisez votre Foyer si elle est disponible, sinon retournez à Kharanos
step
    .goto 1426/0,-499.17,-5644.37
>>Parlez à |cRXP_FRIENDLY_Senir Blanchebarbe|r
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
.target Senir Whitebeard
    .accept 291 >> Acceptez la quête Les rapports
step
    #era/som
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Parlez à |cRXP_FRIENDLY_Esbrouf Fulgurouage|r
    .turnin 412 >> Rendez Opération Recombobulation
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .accept 314 >> Acceptez la quête Protection du troupeau
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,10 >>Montez sur cette partie de la montagne
step
    >>Tuez Vagash. Dépouillez-le pour son Croc
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>Faites attention comme cette quête peut être difficile
    .goto 1426/0,-1280.97,-5390.70
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    >>Tuez quelques mobs sur la route
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Vendez votre surplus, achetez de la nourriture et de l'eau si nécessaire
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Tuez les Troggs dans la grotte
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 433 >> Rendez la quête Le serviteur public
step
    .goto 1426/0,-1502.59,-5837.23,40,0
    .goto 1426/0,-1679.89,-5787.98,40,0
    .goto 1426/0,-1694.67,-5646.8,40,0
    .xp 10 >> Montez au niveau 10 avec les Troggs
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Vendez votre surplus, achetez jusqu'à 30 boissons de niveau 5 à Kazan
    .trainer >> Apprenez la Cuisine auprès de Ghilm. Vous en aurez besoin pour recevoir 2 quêtes supplémentaires plus tard
step
    .goto 1426/0,-2325.07,-5164.15
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
step
    >>Tuez des mobs sur la route
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    >>Tuez Griffe galeuse. Dépouillez-le pour sa Griffe
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    >>Revenez par le tunnel que vous avez traversé
    .goto 1426/0,-2118.22,-5541.73,50,0
    .goto 1426/0,-2251.19,-5633.67,25,0
    .goto 1426/0,-2447.11,-5479.74
>>Parlez au |cRXP_FRIENDLY_Montagnard Brasselorge|r
    .turnin 413 >> Rendez la quête La Brune scintillante
.target Mountaineer Barleybrew
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 10-12 Loch Modan Mage AoE Avancé
#version 1
#group RestedXP Mage Alliance

#defaultfor none Mage
#next 12-18 Sombrivage Mage AoE
step
    #era/som
    #completewith next
    +Lors de vos quêtes au Loch Modan, conservez TOUS les Morceaux de viande de sanglier que vous obtenez et ne les vendez PAS. Vous en aurez besoin plus tard
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Entrez dans le bunker par l'arrière
.target Captain Rugelfuss
>>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
step << Gnome
    .goto 1432/0,-2818.49,-5742.10,45 >> Allez à l'entrée des Troggs
step << Gnome
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    >>Tuez les Troggs Brisepierres. Dépouillez-les pour leurs Dents
    >>Soyez prudent comme cette quête peut être difficile. Courez si vous en engagez accidentellement 2 à la fois
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Entrez dans le bunker par l'arrière
.target Captain Rugelfuss
>>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .turnin 267 >> Rendez la quête La menace trogg
step << Human
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vendez et réparez
step << Human
    .goto 1432/0,-2676.82,-4825.93
>>Parlez au |cRXP_FRIENDLY_Montagnard Foudrepique|r
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
.target Mountaineer Stormpike
    .accept 307 >> Acceptez la quête Bas les pattes !
step << Human
    #sticky
    #completewith next
    >>Tuez les Araignées dans la zone pour leur Ichor d'araignée
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Tuez les Ours dans la zone pour leur Viande d'ours
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Tuez les Sangliers dans la zone pour leurs Tripes de sanglier
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto 1432/0,-2961.92,-5366.82,130 >>Tuez des mobs sur la route pour une quête de cuisine à venir
step
    >>Courez jusqu'à Thelsamar. Ne liez PAS votre Pierre de foyer << Gnome
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Parlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
step << Human
    #sticky
    .abandon 1338 >> Abandonnez la quête La mission de Foudrepique. C'est pour débloquer la quête La mission du Montagnard Foudrepique
step
    .goto 1432/0,-2953.65,-5381.54
    .vendor >>Achetez 1-2 sacs à 6 places pour remplir vos emplacements encore libres
step
    .goto 1432/0,-2972.96,-5377.86
    .vendor >> Achetez de la nourriture/de l'eau (essayez d'avoir 40 boissons de niveau 5, et 20 nourritures de niveau 5)
step
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Trouvez le Montagnard Kadrell. Il patrouille le long de la route vers Thelsamar
.target Mountaineer Kadrell
>>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
step
    #sticky
    #completewith Thelsamar1
    >>Tuez les Araignées dans la zone pour les boudins de Thelsamar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Tuez les Ours dans la zone pour les boudins de Thelsamar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Tuez les Sangliers dans la zone pour les boudins de Thelsamar
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vendez et réparez
step << Gnome
    .goto 1432/0,-2676.82,-4825.93
>>Parlez au |cRXP_FRIENDLY_Montagnard Foudrepique|r
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
.target Mountaineer Stormpike
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
step << Gnome
    #label Thelsamar1
    .goto 1432/0,-2923.58,-4803.910,130 >>Tuez quelques mobs pour obtenir des Tripes de sanglier, de la Viande d'ours et des Ichors d'araignée sur la route
step << Human
    #label Thelsamar1
    .goto 1432/0,-3077.77,-4984.19,130 >>Tuez quelques mobs pour obtenir des Tripes de sanglier, de la Viande d'ours et des Ichors d'araignée sur la route
step
    #sticky
    #completewith Gear
    >> Tuez les Rats des tunnels. Dépouillez-les pour leurs Oreilles
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto 1432/0,-2972.96,-4822.30,45 >>Allez à l'entrée de la grotte en tuant les rats
step
    #label Gear
    .goto 1432/0,-2972.96,-4853.58,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2956.41,-4945.56,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2972.96,-4853.58,12,0
    >>Récoltez les caisses que vous trouvez dans la grotte. Soyez prudents cela est difficile au niveau 11
    >>Soyez prudents car les Géomanciens lancent Gardien de flammes (Immunité contre le Feu) après quelques secondes
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto 1432/0,-3081.36,-4902.88
    >> Tuez les Rats des tunnels. Dépouillez-les pour leurs Oreilles
    >> Essayez de tuer les Vermines au lieu des Kobolds/Géomanciens
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>Tuez les Araignées dans la zone pour les boudins de Thelsamar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Tuez les Ours dans la zone pour les boudins de Thelsamar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Tuez les Sangliers dans la zone pour les boudins de Thelsamar
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto 1432/0,-2636.44,-4816.79,60 >>Retournez au bunker en tuant des mobs sur la route
step
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vendez et réparez
step
    .goto 1432/0,-2675.06,-4824.14
>>Parlez au |cRXP_FRIENDLY_Montagnard Foudrepique|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique << Human
.target Mountaineer Stormpike
    .accept 1338 >> Acceptez la quête La mission de Foudrepique << Human
step
    #sticky
    #label Meat9
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34
    >>Tuez les Ours. Dépouillez-les pour leur Viande
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19
    >>Tuez les Araignées. Dépouillez-les pour leur Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51
    >>Tuez les Sangliers. Dépouillez-les pour leur Tripes
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Trouvez le Montagnard Kadrell. Il patrouille le long de la route vers Thelsamar
.target Mountaineer Kadrell
>>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    .turnin 416 >> Rendez la quête Chasse au rat
step
    #requires Ichor9
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Parlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
step
    #era/som
    .goto 1432/0,-2952.55,-5381.91
    .vendor >> Achetez des sacs à 6 emplacements jusqu'à ce que tous vos emplacements pour les sacs soient pris. Achetez également 1 Silex et amadou, et 2 Bois simple
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Montez jusqu'au niveau 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto 1432/0,-3781.70,-5702.36
    .vendor >> Vérifiez si Aldren a la Ceinture de grand sage. Achetez-la si vous pouvez vous le permettre. Gardez-la pour plus tard
step << Gnome
    #requires RatCatching
    .goto 1432/0,-3812.59,-5694.63
.target Prospector Ironband
>>Parlez au |cRXP_FRIENDLY_Prospecteur Baguefer|r
    .accept 298 >>Acceptez la quête Compte rendu d'avancement des fouilles
step << Gnome
    #softcore
    .goto 1432/0,-3872.73,-5646.07
    .deathskip >> Mourez et ressuscitez pour revenir à Thelsamar
step << Gnome
    #hardcore
    >> Revenez à Thelsamar. Entrez à l'intérieur du bâtiment
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Parlez à |cRXP_FRIENDLY_Brock Cherchepierre|r
    .accept 6387 >>Acceptez la quête L'honneur des étudiants
>>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >>Rendez la quête Compte rendu d'avancement des fouilles
.target Jern Hornhelm
    .accept 301 >>Acceptez la quête Rapport à Forgefer
step << Gnome
    #softcore
    >> Entrez dans le bâtiment
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Parlez à |cRXP_FRIENDLY_Brock Cherchepierre|r
    .accept 6387 >>Acceptez la quête L'honneur des étudiants
>>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >>Rendez la quête Compte rendu d'avancement des fouilles
.target Jern Hornhelm
    .accept 301 >>Acceptez la quête Rapport à Forgefer
step
    #requires RatCatching
    .goto 1432/0,-2929.93,-5424.95
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
>>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Rendez la quête L'honneur des étudiants << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Acceptez la quête Voyage vers Forgefer << Gnome
    .fly Ironforge >> Volez à Ironforge
step << Human
    .goto 1455/0,-928.25,-4614.46
    .trainer >> Apprenez vos sorts de classe
step << skip --logout skip << Human
    #completewith next
    +Dirigez-vous vers l'escalier derrière le Maître des paladins à l'arrière de la salle. Montez à mi-hauteur environ, puis positionnez-vous vers le bord des escaliers jusqu'à ce que vous ayez l'air de flotter. Déconnectez-vous, puis reconnectez-vous
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> CLIQUEZ ICI pour un exemple vidéo
    >>Effectuez un Logout skip pour vous retrouver devant Forgefer
step << Human
    .goto 1455/0,-810.36,-5039.71,120 >> Quittez Ironforge
step << Gnome
    .goto 1455/0,-1303.79,-4631.18
>>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 301 >>Rendez la quête Rapport à Forgefer
.target Prospector Stormpike
    .accept 302 >>Acceptez la quête De l'explosif pour Baguefer
step << Gnome
    >>Retournez à la La Grande forge, puis tournez à droite et entrez à l'intérieur du bâtiment
    .goto 1455/0,-1105.66,-4722.04,30,0
    .goto 1455/0,-1120.92,-4708.11
>>Parlez à |cRXP_FRIENDLY_Golnir Rochorteil|r
    .turnin 6391 >>Rendez la quête Voyage vers Forgefer
.target Golnir Bouldertoe
    .accept 6388 >>Acceptez la quête Gryth Thurden
step << Gnome
    .goto 1455/0,-1026.28,-4872.56
.target Senator Barin Redstone
>>Parlez au |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
    .turnin 291 >>Rendez la quête Les rapports
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
>>Parlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Rendez la quête Gryth Thurden
.target Gryth Thurden
    .accept 6392 >>Acceptez la quête Retourner vers Brock
    .fly Thelsamar >> Volez à Thelsamar
step << Gnome
    >>Entrez dans le bâtiment
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Parlez à |cRXP_FRIENDLY_Brock Cherchepierre|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
.target Jern Hornhelm
>>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 302 >>Rendez la quête De l'explosif pour Baguefer
step << Gnome
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step << Gnome
    .goto 1426/0,-537.29,-5587.04
    .trainer >> Apprenez vos sorts de classe
step
    #hardcore
    #completewith next
    .goto 1426/0,-1124.84,-5283.99,150 >> Dirigez-vous vers l'emplacement du raccourci
step
    #hardcore
    .goto 1426/0,-1128.29,-5282.35,40,0
    .goto 1426/0,-1172.62,-5325.03,40,0
    .goto 1426/0,-1207.09,-5325.03,40,0
    .goto 1426/0,-1212.02,-5265.93,40,0
    .goto 1426/0,-1192.32,-5219.97,40,0
    .goto 1426/0,-1103.67,-5174.0,40,0
    .goto 1426/0,-1167.69,-5144.45,40,0
    .goto 1426/0,-1236.64,-5147.73,40,0
    .goto 1426/0,-1433.64,-4586.28,40,0
    .goto 1426/0,-1438.57,-4287.50,40,0
    .goto 1426/0,-1428.72,-4231.68,40,0
    .goto 1426/0,-1473.04,-4205.42,40,0
    .goto 1426/0,-1492.74,-4156.17,40,0
    .goto 1437/0,-1241.48,-4000.12,50,0
    .goto 1437/0,-1121.55,-4013.90,40,0
    .goto 1437/0,-1084.33,-3947.75,40,0
    .goto 1437/0,-1014.03,-3911.92,40,0
    .goto 1437/0,-889.97,-3809.94,40,0
    >>Ouvrez ce lien et suivez-le sur un autre écran.
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>Évitez les Crocodiles en traversant la mer
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLIQUEZ ICI pour un exemple vidéo
    .goto 1437/0,-889.97,-3809.94,80 >> Voyagez vers le Port de Menethil
step
    #softcore
    .goto 1426/0,309.81,-5108.33,50 >> Courez jusque là.
step
    #softcore
    .goto 1426/0,280.26,-4963.87,15 >>Montez la montagne vers le nord
step
    #softcore
    .goto 1426/0,206.38,-4832.53,15 >>Suivez-la jusqu'ici
step
    #softcore
    .goto 1426/0,176.83,-4770.15,15,0
    .goto 1426/0,176.83,-4704.48,15,0
    .goto 1437/0,-869.29,-3344.13,60,0
    .deathskip >>Continuez à courir droit vers le nord, tombez et mourez, puis réapparaissez
step
    #softcore
    #completewith next
    .goto 1437/0,-914.78,-3435.09,60 >> Nagez jusqu'au rivage
step
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    .vendor >> Si vous avez 8 pièces d'argent, achetez le Tube en bronze à Neal Allen s'il est disponible
step
    .money <0.04
    .goto 1437/0,-724.55,-3699.69
    .vendor >> Vérifiez si Dewin a des Potions de soins, achetez jusqu'à ce qu'il ne vous reste qu'1 pièce d'argent
step
    .goto 1437/0,-782.45,-3793.40
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Attendez le bateau ici. Fabriquez un Feu de camp depuis votre grimoire et commencez à cuisiner les morceaux de viande de sanglier que vous aviez gardés auparavant. Vous avez besoin d'une compétence d'au moins 10 en cuisine dès à présent puis de 50 plus tard (cuisinez donc tout ce que vous pouvez).
    .goto 1437/0,-583.95,-3727.25
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>Montez sur le bateau lorsqu'il arrive. Allez à Sombrivage. Si vous avez fini de cuisiner, commencez à invoquer autant d'eau de niveau 5 que possible
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>Montez sur le bateau lorsqu'il arrive. Allez à Sombrivage. Commencez à invoquer autant d'eau de niveau 5 que possible
]])

