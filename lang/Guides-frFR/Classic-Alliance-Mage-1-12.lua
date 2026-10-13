if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Forêt d'Elwynn Mage AoE
#version 1
#group RestedXP Mage Alliance
#defaultfor Human
#next 10-12 Loch Modan Mage AoE Avancé
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Vous avez sélectionné un guide conçu pour les Humains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez << Gnome
    +Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , mais beaucoup plus rapide
step
    >>Détruisez votre Pierre de foyer
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
step
    .goto Elwynn Forest,48.923,41.606
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 783 >> Rendez la quête Menace intérieure
.target Marshal McBride
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Tuez des loups jusqu'à avoir l'équivalent de 50 pièces de cuivre à vendre au marchand. Vendez, puis achetez x10 Eau au Frère Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Montez jusqu'au niveau 2
step
    .goto Elwynn Forest,48.9,40.2
>>Parlez à |cRXP_FRIENDLY_Eagan Tannepeau|r
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
.target Eagan Peltskinner
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>Tuez les Jeunes loups dans la zone pour leur viande
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>Tuez les Vermines kobold dans la zone
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>Parlez à |cRXP_FRIENDLY_Eagan Tannepeau|r
    .turnin 33 >> Rendez la quête Les loups derrière la frontière
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Vendez votre surplus, puis achetez x10 Eaux supplémentaire au Frère Danil
step
    .goto Elwynn Forest,48.923,41.606
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
.target Marshal McBride
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3104 >> Acceptez la quête Lettre glyphée
step
    .xp 3 >> Montez jusqu'au niveau 3
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>Tuez les Ouvriers kobolds
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>Montez votre expérience jusqu'à 1110+/1400 sur le chemin du retour
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
step
    .goto Elwynn Forest,48.923,41.606
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
.target Marshal McBride
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
step
    >>Montez à l'étage
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>Parlez à |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .trainer >> Apprenez vos sorts de classe
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 18 >> Acceptez la quête La confrérie des voleurs
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>Tuez les Nervis défias. Dépouillez-les pour leur Masques
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 18 >> Rendez la quête La confrérie des voleurs
.target Deputy Willem
    .accept 6 >> Acceptez la quête La prime pour Garrick Ladétrousse
    .accept 3903 >> Acceptez la quête Milly Osworth
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>Tuez les Travailleurs dans la mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Montez jusqu'au niveau 5
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Parlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Rendez la quête Milly Osworth
.target Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target Milly Osworth
>>Parlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Rendez la quête Milly Osworth
step
    #era/som
    >>Ramassez les Seaux de raisins dans le champ
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Tuez Garrick Ladétrousse et récupérez sa Tête
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Montez votre expérience sur le retour jusqu'à 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Parlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Rendez la quête La récolte de Milly
.target Milly Osworth
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 6 >> Rendez la quête La prime pour Garrick Ladétrousse
step
    .goto Elwynn Forest,48.923,41.606
>>Parlez au |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 21 >> Rendez la quête La bataille de la Crête aux échos
.target Marshal McBride
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
step
     #era/som
     >>Montez les escaliers principaux
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>Parlez au |cRXP_FRIENDLY_Frère Neals|r
    .turnin 3905 >>Rendez la quête Manifeste des vendanges
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>Parlez à |cRXP_FRIENDLY_Falkhaan Isenrôde|r
    .accept 2158 >> Acceptez la quête Repos et détente
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >> Mourez et ressuscitez au Gardien des âmes ou courez vers Comté-de-l'Or
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Elwynn Forest,42.105,65.927
>>Parlez au |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
.target Marshal Dughan
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>Directement à votre gauche en entrant dans l'auberge
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
    .turnin 2158 >> Rendez la quête Repos et détente
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
step
    .xp 6 >> Montez jusqu'au niveau 6
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Montez les escaliers. Apprenez vos sorts de classe
step
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Parlez à |cRXP_FRIENDLY_Remy « Deux fois »|r.
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
step
    #sticky
    #completewith BoarMeat1
    >>Commencez à tuer les sangliers que vous croisez pour leur viande de sanglier
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Parlez à la |cRXP_FRIENDLY_« Tatie » Bernice Champierreux|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .goto Elwynn Forest,34.660,84.482
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
    .goto Elwynn Forest,43.132,85.722
>>Parlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Rendez la quête Le collier perdu
.target Billy Maclure
    .accept 86 >> Acceptez la quête Une tourte pour Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Parlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Vendez, puis achetez autant de lait que vous le pouvez
step
    #sticky
    #completewith next
    >>Tuez les sangliers que vous croisez pour la viande de sanglier
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>Parlez à |cRXP_FRIENDLY_Tommy Joe Champierreux|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
.target Tommy Joe Stonefield
    .accept 111 >> Acceptez la quête Discuter avec Mamie
step
    .goto Elwynn Forest,32.5,85.5
    >>Terminez de récolter la Viande de sanglier
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
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
    .goto Elwynn Forest,43.132,85.722
>>Parlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
.target Billy Maclure
    .accept 87 >> Acceptez la quête Dent-d'or
step
    >>Entrez dans la mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Tuez Dent-d'or pour le Collier de Bernice
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Montez votre expérience jusqu'à 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Parlez à la |cRXP_FRIENDLY_« Tatie » Bernice Champierreux|r
    .turnin 87 >> Rendez la quête Dent-d'or
step
    >>Tuez des mobs sur la route pour revenir à Comté-de-l'Or
    .xp 7+2690 >>Montez votre expérience jusqu'à 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>Parlez à |cRXP_FRIENDLY_Remy « Deux fois »|r.
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
.target Remy "Two Times"
    .accept 40 >> Acceptez la quête Péril en la rivière
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Elwynn Forest,42.105,65.927
>>Parlez au |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 40 >> Rendez la quête Péril en la rivière
.target Marshal Dughan
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Elwynn Forest,43.283,65.721
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
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Achetez un sac à 6 emplacements à Brog
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Montez les escaliers. Apprenez vos sorts de classe
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Achetez de l'Eau de niveau 5 jusqu'à en avoir 40
step
    >>Tuez des Murlocs vers l'est et dépouillez-les pour les Frondes de varech. Tuez des monstres sur l'île si vous en avez encore besoin
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Entrez dans la mine et continuez à suivre le chemin du milieu
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
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
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Parlez au |cRXP_FRIENDLY_Superviseur Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    #sticky
    #completewith Bundles
    >>Gardez l'oeil ouvert pour les tas de fagots en bas des arbres
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >> Allez vers le cadavre du garde
step
    .goto Elwynn Forest,79.8,55.5
    >> Tuez les monstres autour du cadavre. Engagez les 2 monstres devant les huttes, éloignez-vous et transformez l'un deux en mouton pendant que vous tuez l'autre, puis tuez le mouton. Récupérez la carcasse au sol
    >> Faites attention comme cette quête peut être difficile
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Revenez en courant, finissez de récolter les fagots
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Parlez au |cRXP_FRIENDLY_Superviseur Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
step
    #label Prowlers
    .xp 9 >> Montez jusqu'au niveau 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Parlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>Tuez les derniers mobss de la quête Protéger la frontière
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,73.973,72.179
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
    >>Commencez à faire le tour de la ferme en tuant les Défias et en les dépouillant pour leur masques
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>Tuez Princesse. Utilisez une Potion de soins inférieure avant si nécessaire. Dépouillez-la pour son collier
    >>Vous pouvez aussi sauter d'un côté puis de l'autre de la clôture de la ferme pour tuer La Princesse et ses gardes
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Mourez et ressuscitez au Gardien des âmes si vous êtes bas en vie, sinon revenez simplement et rendez la quête
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Parlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>Tuez des mobs sur la route pour les Carmines
step
    #softcore
    #sticky
    #completewith next
    +Laissez-vous tuer par les monstres ici
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>Ressuscitez au Gardien des âmes.
    .goto Redridge Mountains,20.8,56.6,100 >>Ressuscitez au Gardien des âmes.
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    #hardcore
    >>Courez vers le trajet de vol. Soyez très prudent et évitez d'attirer les monstres ou de mourir sur la route. Restez sur la route et observez les alentours
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto Elwynn Forest,43.283,65.721
    >>N'attendez pas le temps de son RP
.target William Pestle
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .turnin 112 >> Rendez la quête À la recherche du varech
step
    .goto Elwynn Forest,42.2,65.8
>>Parlez au |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
.target Marshal Dughan
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acceptez la quête La quête d'Elmore
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Parlez à |cRXP_FRIENDLY_William Pilon|r
    .accept 114 >> Acceptez la quête La fuite
step
    >>Sortez de l'auberge et allez vers le sud
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Parlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Parlez à la |cRXP_FRIENDLY_Maman Champierreux|r
    .turnin 88 >> Rendez la quête Princesse doit mourir !
step
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Parlez à |cRXP_FRIENDLY_Fermier Froncebouille|r
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Parlez à |cRXP_FRIENDLY_Verna Froncebouille|r
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Parlez à |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Mourez et ressuscitez au Gardien des âmes ou courez vers la Colline des Sentinelles
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
step
    .goto Westfall,57.002,47.169
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
.target Quartermaster Lewis
>>Parlez à l' |cRXP_FRIENDLY_Intendant Lewis|r
    .accept 6181 >> Acceptez la quête Un message rapide
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >> Montez votre expérience jusqu'à 3750+/8800xp
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
>>Parlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
.target Thor
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .fly Stormwind >> Volez à Stormwind
step
    .goto StormwindClassic,56.2,64.6
    >>Choisissez les fusées. Elles infligent de très bons dégâts et peuvent être utilisées pour engager les mobs seul au loin
.target Morgan Pestle
>>Parlez à |cRXP_FRIENDLY_Morgan Pilon|r
    .turnin 61 >> Rendez la quête Une cargaison pour Hurlevent
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >> Achetez la compétence pour porter des épées à une main
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Parlez à |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    >>Vendez et réparez
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Parlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Parlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Entrez dans le Tram des profondeurs
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
    .goto Ironforge,77.0,51.0,30 >>Entrez dans Ironforge
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >> Apprenez vos sorts de classe
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Quittez Forgefer
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .accept 314 >> Acceptez la quête Protection du troupeau
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >> Montez sur cette partie de la montagne
step
    >>Tuez Vagash. Dépouillez-le pour son Croc
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>Faites attention comme cette quête peut être difficile
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    >>Tuez quelques mobs sur la route
    .goto Dun Morogh,68.6,54.7
    .vendor >>Achetez de la nourriture et de l'eau au marchand
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Tuez les Troggs dans la grotte
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Montez en expérience jusqu'à 6350+/7600xp
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 433 >> Rendez la quête Le serviteur public
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendez votre surplus, achetez 30 boissons de niveau 5 à Kazan
    .trainer >> Apprenez la Cuisine auprès de Ghilm. Vous en aurez besoin pour recevoir 2 quêtes supplémentaires plus tard
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    >>Tuez Griffe galeuse. Dépouillez-le pour sa Griffe
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    .goto Dun Morogh,84.4,31.1,25 >>Allez à travers le tunnel pour le Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 Dun Morogh Mage AoE
#version 1
#group RestedXP Mage Alliance
#defaultfor Dwarf/Gnome
#next 10-12 Loch Modan Mage AoE Avancé
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez << Human
    +Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , mais beaucoup plus rapide
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez << Human
    +Notez que vous avez sélectionné le guide AoE. L'AoE est généralement beaucoup plus difficile qu'un mage jouant en monocible , et est aussi plus lent depuis le bonus d'expérience sur les quêtes de 100%
step
    >>Détruisez votre Pierre de foyer
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>Parlez à |cRXP_FRIENDLY_Sten Rudebras|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
step
    >>Tuez les Loups. Dépouillez-les pour leur Viande
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Montez jusqu'au niveau 2
step
    .goto Dun Morogh,30.0,71.5
    >>Vendez votre surplus. Achetez 15 Eaux. Tuez des loups supplémentaires si vous n'avez pas assez d'argent
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>Parlez à |cRXP_FRIENDLY_Sten Rudebras|r
    .turnin 179 >> Rendez la quête Tailleur chez les nains
.target Sten Stoutarm
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3114 >> Acceptez la quête Note de service glyphée
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Parlez à |cRXP_FRIENDLY_Balir Martel-de-givre|r
    .accept 170 >> Acceptez la quête Une nouvelle menace
step
    #sticky
    #completewith Rockjaw
    >>Tuez les Troggs Mâcherocs normaux que vous croisez
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Tuez les Troggs Mâcherocs Mastocs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>Parlez à |cRXP_FRIENDLY_Talin Oeil-perçant|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
.target Talin Keeneye
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Tuez les Sangliers dans la zone
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Parlez à |cRXP_FRIENDLY_Talin Oeil-perçant|r
    .turnin 183 >> Rendez la quête Chasseur de sangliers
step
    .xp 3+860 >> Montez votre expérience jusqu'à 860+/1400xp
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .turnin 234 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
.target Grelin Whitebeard
    .accept 182 >> Acceptez la quête La caverne des trolls
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    >> Une fois acceptée, un chrono de 5 minutes commencera. Détendez-vous et suivez le guide
step
    .goto Dun Morogh,28.7,77.5
    >>Montez ici et tuez les Troggs si vous n'en avez pas encore tué assez
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Si vous avez été trop lent et avez échoué la quête chronométrée, allez la reprendre à nouveau
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Parlez à |cRXP_FRIENDLY_Durnan Coupefourrure|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>Parlez à |cRXP_FRIENDLY_Durnan Coupefourrure|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
.target Durnan Furcutter
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
step
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Parlez à |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Rendez la quête Note de service glyphée
    .trainer >> Apprenez vos sorts de classe
step
    >>Sortez du bunker
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Parlez à |cRXP_FRIENDLY_Balir Martel-de-givre|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>Au vendeur, achetez 10 eaux
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>Tuez les Jeunes trolls Crins-de-givre
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
step
    .goto Dun Morogh,25.076,75.713
>>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .turnin 182 >> Rendez la quête La caverne des trolls
.target Grelin Whitebeard
    .accept 218 >> Acceptez la quête Le journal volé
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Entrez dans la grotte des trolls. Tuez Grik'nir, puis dépouillez-le pour le journal de Grelin
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Tuez quelques mobs en revenant
    .goto Dun Morogh,25.1,75.8
>>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .turnin 218 >> Rendez la quête Le journal volé
.target Grelin Whitebeard
    .accept 282 >> Acceptez la quête Les observations de Senir
step
    >> Tuez des mobs jusqu'ici
    .goto Dun Morogh,33.484,71.841
>>Parlez au |cRXP_FRIENDLY_Montagnard Thalos|r
    .turnin 282 >> Rendez la quête Les observations de Senir
.target Mountaineer Thalos
    .accept 420 >> Acceptez la quête Les observations de Senir
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Parlez à |cRXP_FRIENDLY_Mano Engrenaressort|r
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>Traversez le tunnel
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
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Montez votre expérience jusqu'à 2415+/2800xp
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >> Mourez et ressuscitez au Gardien des âmes, ou allez à Kharanos en marchant. Assurez-vous que votre zone n'est PAS la Passe des Frigères
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Parlez à |cRXP_FRIENDLY_Senir Blanchebarbe|r
    .turnin 420 >> Rendez la quête Les observations de Senir
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Parlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Montez jusqu'au niveau 6
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Parlez à |cRXP_FRIENDLY_Tannok Martel-de-givre|r
    .turnin 2160 >> Rendez la quête Des provisions pour Tannok
step
    >>En haut des escaliers
    .goto Dun Morogh,47.5,52.1
    .trainer >> Apprenez vos sorts de classe
step
    .goto Dun Morogh,47.4,52.5
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> Achetez autant de boisson de niveau 5 que vous pouvez vous le permettre
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Parlez à |cRXP_FRIENDLY_Tharek Noirepierre|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
step
    .goto Dun Morogh,49.426,48.410
    >>Ne tuez PAS les ours sur la route
.target Pilot Bellowfiz
>>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Parlez au |cRXP_FRIENDLY_Pilote Engrepierre|r
    .accept 313 >> Acceptez la quête L'antre Gris
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Parlez à |cRXP_FRIENDLY_Beldin Grillacier|r
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Parlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>Obtenez les objets pour Ravitailler le Crache-vapeur
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
.target Pilot Bellowfiz
    .accept 318 >> Acceptez la quête L'éternol
step
    >>Retournez dans l'auberge
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Achetez autant de boisson de niveau 5 que vous pouvez vous le permettre
    >>Vous pouvez acheter un Couteau à dépecer à l'extérieur de l'auberge si vous le souhaitez, c'est une meilleure option qu'un bâton jusqu'à ce que vous obteniez une arme avec des stats
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Entrez dans la grotte. Tuez les Wendigos. Dépouillez-les pour leur Peaux de wendigo
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Ramassez la caisse
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Parlez à |cRXP_FRIENDLY_Hegnar Grondetrait|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .vendor >> Vendez et réparez
step
    .xp 7 >> Montez jusqu'au niveau 7
step
    >>Tuez quelques mobs sur la route
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Parlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
step
    .goto Dun Morogh,30.5,46.0
    .vendor >> Vendez. Achetez jusqu'à 20 boissons de niveau 5
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>Parlez à |cRXP_FRIENDLY_Rejold Brasselorge|r
    .turnin 318 >> Rendez la quête L'éternol
.target Rejold Barleybrew
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Parlez à |cRXP_FRIENDLY_Marleth Brasselorge|r
    .accept 310 >> Acceptez la quête Bières rivales
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >> Tuez les Ours, les Sangliers et les Léopards. Allez au nord->ouest->sud
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Terminez de récolter les Côtes de sanglier
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
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
    .goto Dun Morogh,47.4,52.5
    >> Achetez une Bière au malt Rhapsody et une Thunder Ale à Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>Descendez les escaliers, puis parlez à Jarven et donnez-lui la Thunder Ale
    >>Attendez que le tonneau ne soit plus protégé, puis rendez la quête
    .turnin 310 >> Rendez la quête Bières rivales
    .accept 311 >> Acceptez la quête Retour chez Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Parlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
     >>Vendez la recette la prochaine fois que vous vendez votre surplus
step
    .xp 8 >> Montez jusqu'au niveau 8
step
    .goto Dun Morogh,47.5,52.1
    .trainer >> Apprenez vos sorts de classe
    >>Assurez-vous d'apprendre Métamorphose
step
    .goto Dun Morogh,47.4,52.5
    .vendor >> Achetez jusqu'à 30 boissons de niveau 5 à l'aubergiste
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Parlez à |cRXP_FRIENDLY_Senir Blanchebarbe|r
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Parlez au |cRXP_FRIENDLY_Pilote Engrepierre|r
    .turnin 313 >> Rendez la quête L'antre Gris
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet
step
    #era/som
    >>À l'intérieur du bâtiment
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Parlez à |cRXP_FRIENDLY_Esbrouf Fulgurouage|r
    .accept 412 >> Acceptez Opération Recombobulation
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >> Montez la rampe vers les Chatoyantes
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Tuez les mobs dans cette zone. Soyez prudent si vous devez vous occuper du camp au milieu. Vous pouvez engager les mobs dans les huttes et les éliminer en restant cacher (LoS) derrière les huttes si vous avez besoin de 2 mobs supplémentaires. Si vous n'avez pas de chance, dirigez-vous vers l'autre zone
    >>Ramassez les boîtes au sol
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Utilisez Métamorphose sur le Vieux Barbeglace, puis récupérez les viandes
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Parlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> Achetez jusqu'à 20 boissons de niveau 5 supplémentaires
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>Parlez à |cRXP_FRIENDLY_Rejold Brasselorge|r
    .turnin 315 >> Rendez la quête La bière brune parfaite
.target Rejold Barleybrew
    .accept 413 >> Acceptez la quête La Brune scintillante
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Parlez à |cRXP_FRIENDLY_Marleth Brasselorge|r
    .turnin 311 >> Rendez la quête Retour chez Marleth
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Tuez les Gnomes lépreux. Dépouillez-les pour les Rouages et les Engrenages
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Montez jusqu'au niveau 9
step
    .goto Dun Morogh,24.5,50.8,35 >>Entrez dans la grotte
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>Tuez les Chasseurs de têtes à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Descendez avec prudence dans ce petit coin de la grotte
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Remontez dans la grotte
step
    #softcore
    >>Sautez en bas, vous allez mourir immédiatement après
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >> Utilisez votre Foyer si elle est disponible, sinon retournez à Kharanos
step
    .goto Dun Morogh,46.726,53.826
>>Parlez à |cRXP_FRIENDLY_Senir Blanchebarbe|r
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
.target Senir Whitebeard
    .accept 291 >> Acceptez la quête Les rapports
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Parlez à |cRXP_FRIENDLY_Esbrouf Fulgurouage|r
    .turnin 412 >> Rendez Opération Recombobulation
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .accept 314 >> Acceptez la quête Protection du troupeau
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Montez sur cette partie de la montagne
step
    >>Tuez Vagash. Dépouillez-le pour son Croc
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>Faites attention comme cette quête peut être difficile
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Parlez à |cRXP_FRIENDLY_Rudra Distillambre|r
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    >>Tuez quelques mobs sur la route
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendez votre surplus, achetez de la nourriture et de l'eau si nécessaire
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Tuez les Troggs dans la grotte
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 433 >> Rendez la quête Le serviteur public
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >> Montez au niveau 10 avec les Troggs
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendez votre surplus, achetez jusqu'à 30 boissons de niveau 5 à Kazan
    .trainer >> Apprenez la Cuisine auprès de Ghilm. Vous en aurez besoin pour recevoir 2 quêtes supplémentaires plus tard
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
step
    >>Tuez des mobs sur la route
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    >>Tuez Griffe galeuse. Dépouillez-le pour sa Griffe
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    >>Revenez par le tunnel que vous avez traversé
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Parlez au |cRXP_FRIENDLY_Montagnard Brasselorge|r
    .turnin 413 >> Rendez la quête La Brune scintillante
.target Mountaineer Barleybrew
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Loch Modan Mage AoE Avancé
#version 1
#group RestedXP Mage Alliance
#defaultfor Human Mage/Gnome Mage
#next 12-18 Sombrivage Mage AoE
step
    #era/som
    #completewith next
    +Lors de vos quêtes au Loch Modan, conservez TOUS les Morceaux de viande de sanglier que vous obtenez et ne les vendez PAS. Vous en aurez besoin plus tard
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Entrez dans le bunker par l'arrière
.target Captain Rugelfuss
>>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >> Allez à l'entrée des Troggs
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Tuez les Troggs Brisepierres. Dépouillez-les pour leurs Dents
    >>Soyez prudent comme cette quête peut être difficile. Courez si vous en engagez accidentellement 2 à la fois
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Entrez dans le bunker par l'arrière
.target Captain Rugelfuss
>>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .turnin 267 >> Rendez la quête La menace trogg
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendez et réparez
step << Human
    .goto Loch Modan,24.764,18.397
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
    .goto Loch Modan,35.1,47.8,130 >>Tuez des mobs sur la route pour une quête de cuisine à venir
step
    >>Courez jusqu'à Thelsamar. Ne liez PAS votre Pierre de foyer << Gnome
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Parlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
step << Human
    #sticky
    .abandon 1338 >> Abandonnez la quête La mission de Foudrepique. C'est pour débloquer la quête La mission du Montagnard Foudrepique
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Achetez 1-2 sacs à 6 places pour remplir vos emplacements encore libres
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Achetez de la nourriture/de l'eau (essayez d'avoir 40 boissons de niveau 5, et 20 nourritures de niveau 5)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
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
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendez et réparez
step << Gnome
    .goto Loch Modan,24.764,18.397
>>Parlez au |cRXP_FRIENDLY_Montagnard Foudrepique|r
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
.target Mountaineer Stormpike
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>Tuez quelques mobs pour obtenir des Tripes de sanglier, de la Viande d'ours et des Ichors d'araignée sur la route
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Tuez quelques mobs pour obtenir des Tripes de sanglier, de la Viande d'ours et des Ichors d'araignée sur la route
step
    #sticky
    #completewith Gear
    >> Tuez les Rats des tunnels. Dépouillez-les pour leurs Oreilles
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>Allez à l'entrée de la grotte en tuant les rats
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>Récoltez les caisses que vous trouvez dans la grotte. Soyez prudents cela est difficile au niveau 11
    >>Soyez prudents car les Géomanciens lancent Gardien de flammes (Immunité contre le Feu) après quelques secondes
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
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
    .goto Loch Modan,23.3,17.9,60 >>Retournez au bunker en tuant des mobs sur la route
step
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendez et réparez
step
    .goto Loch Modan,24.7,18.3
>>Parlez au |cRXP_FRIENDLY_Montagnard Foudrepique|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique << Human
.target Mountaineer Stormpike
    .accept 1338 >> Acceptez la quête La mission de Foudrepique << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>Tuez les Ours. Dépouillez-les pour leur Viande
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>Tuez les Araignées. Dépouillez-les pour leur Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>Tuez les Sangliers. Dépouillez-les pour leur Tripes
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Trouvez le Montagnard Kadrell. Il patrouille le long de la route vers Thelsamar
.target Mountaineer Kadrell
>>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    .turnin 416 >> Rendez la quête Chasse au rat
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Parlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >> Achetez des sacs à 6 emplacements jusqu'à ce que tous vos emplacements pour les sacs soient pris. Achetez également 1 Silex et amadou, et 2 Bois simple
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Montez jusqu'au niveau 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >> Vérifiez si Aldren a la Ceinture de grand sage. Achetez-la si vous pouvez vous le permettre. Gardez-la pour plus tard
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>Parlez au |cRXP_FRIENDLY_Prospecteur Baguefer|r
    .accept 298 >>Acceptez la quête Compte rendu d'avancement des fouilles
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >> Mourez et ressuscitez pour revenir à Thelsamar
step << Gnome
    #hardcore
    >> Revenez à Thelsamar. Entrez à l'intérieur du bâtiment
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
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
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Parlez à |cRXP_FRIENDLY_Brock Cherchepierre|r
    .accept 6387 >>Acceptez la quête L'honneur des étudiants
>>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >>Rendez la quête Compte rendu d'avancement des fouilles
.target Jern Hornhelm
    .accept 301 >>Acceptez la quête Rapport à Forgefer
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
>>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Rendez la quête L'honneur des étudiants << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Acceptez la quête Voyage vers Forgefer << Gnome
    .fly Ironforge >> Volez à Ironforge
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >> Apprenez vos sorts de classe
step << skip --logout skip << Human
    #completewith next
    +Dirigez-vous vers l'escalier derrière le Maître des paladins à l'arrière de la salle. Montez à mi-hauteur environ, puis positionnez-vous vers le bord des escaliers jusqu'à ce que vous ayez l'air de flotter. Déconnectez-vous, puis reconnectez-vous
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> CLIQUEZ ICI pour un exemple vidéo
    >>Effectuez un Logout skip pour vous retrouver devant Forgefer
step << Human
    .goto Ironforge,12.24,89.17,120 >> Quittez Ironforge
step << Gnome
    .goto Ironforge,74.65,11.74
>>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 301 >>Rendez la quête Rapport à Forgefer
.target Prospector Stormpike
    .accept 302 >>Acceptez la quête De l'explosif pour Baguefer
step << Gnome
    >>Retournez à la La Grande forge, puis tournez à droite et entrez à l'intérieur du bâtiment
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>Parlez à |cRXP_FRIENDLY_Golnir Rochorteil|r
    .turnin 6391 >>Rendez la quête Voyage vers Forgefer
.target Golnir Bouldertoe
    .accept 6388 >>Acceptez la quête Gryth Thurden
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>Parlez au |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
    .turnin 291 >>Rendez la quête Les rapports
step << Gnome
    .goto Ironforge,55.50,47.74
>>Parlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Rendez la quête Gryth Thurden
.target Gryth Thurden
    .accept 6392 >>Acceptez la quête Retourner vers Brock
    .fly Thelsamar >> Volez à Thelsamar
step << Gnome
    >>Entrez dans le bâtiment
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Parlez à |cRXP_FRIENDLY_Brock Cherchepierre|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
.target Jern Hornhelm
>>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 302 >>Rendez la quête De l'explosif pour Baguefer
step << Gnome
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >> Apprenez vos sorts de classe
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Dirigez-vous vers l'emplacement du raccourci
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Ouvrez ce lien et suivez-le sur un autre écran.
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>Évitez les Crocodiles en traversant la mer
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLIQUEZ ICI pour un exemple vidéo
    .goto Wetlands,12.1,60.3,80 >> Voyagez vers le Port de Menethil
step
    #softcore
    .goto Dun Morogh,30.3,37.5,50 >> Courez jusque là.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Montez la montagne vers le nord
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Suivez-la jusqu'ici
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Continuez à courir droit vers le nord, tombez et mourez, puis réapparaissez
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >> Nagez jusqu'au rivage
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >> Si vous avez 8 pièces d'argent, achetez le Tube en bronze à Neal Allen s'il est disponible
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >> Vérifiez si Dewin a des Potions de soins, achetez jusqu'à ce qu'il ne vous reste qu'1 pièce d'argent
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Attendez le bateau ici. Fabriquez un Feu de camp depuis votre grimoire et commencez à cuisiner les morceaux de viande de sanglier que vous aviez gardés auparavant. Vous avez besoin d'une compétence d'au moins 10 en cuisine dès à présent puis de 50 plus tard (cuisinez donc tout ce que vous pouvez).
    .goto Wetlands,4.7,57.3
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

