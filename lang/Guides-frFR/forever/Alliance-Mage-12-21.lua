if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-18 Sombrivage Mage AoE
#version 1
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun Mage
#defaultfor Alliance Mage
#next 18-21 Carmines Mage AoE

step
    #completewith next
    .goto 1439/1,533.23,6399.77
    .vendor >> Vous pouvez acheter de la nourriture de niveau 5 à un prix très intéressant auprès de Laird (vendeur de poisson)
step
    >>Montez les escaliers jusqu'au dernier étage
    .goto 1439/1,519.48,6405.89
.target Wizbang Cranktoggle
>>Parlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r
    .accept 983 >>Acceptez Buzzbox 827
step
    >>Sautez en bas jusqu'au premier étage
    .goto 1439/1,515.55,6406.32
    .home >> Liez votre Pierre de Foyer à Southshore
step
    .goto 1439/1,497.21,6427.72
.target Barithras Moonshade
>>Parlez à |cRXP_FRIENDLY_Barithras Lunombrage|r
    .accept 947 >>Acceptez la quête La caverne aux champignons
step
    .goto 1439/1,473.63,6439.07
.target Sentinel Glynda Nal'Shea
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >>Accept Les Red Crystal
step
    .goto 1439/1,397.65,6437.76
.target Tharnariun Treetender
>>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .accept 2118 >>Acceptez Plagued Lands
step
    .goto 1439/1,362.93,6434.27
.target Terenthis
>>Parlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Acceptez How Big a Threat?
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accepte Washed Ashore
step
    .goto 1439/1,561.40,6343.01
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
step
    #completewith Bear
     >> Tuez les Clampants le long de la côte
    .complete 983,1 --Crawler Leg (6)
step
    .goto 1439/1,558.78,6111.57
     >> Dépouillez la créature marine
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >> Trouvez un Ours des chardons enragé. Attaquez l'un d'eux et utilisez l'Espoir de Tharnariun dans vos sacs (l'orbe pourpre)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,386.51,5988.430
     >> Allez au camp des furbolgs non loin
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >> Trouvez un Ours des chardons enragé. Attaquez l'un d'eux et utilisez l'Espoir de Tharnariun dans vos sacs (l'orbe pourpre)
    .goto 1439/1,421.88,5804.16
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,543.71,5962.67,150,0
    .goto 1439/1,577.12,6393.66
    >> Tuez les Clampants le long de la côte
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >> Gardez Viande de trotteur x5 pour plus tard
    .collect 5469,5,2178,1
step
    .goto 1439/1,540.44,6313.31
    .turnin 983 >>Rendez Buzzbox 827
    .accept 1001 >>Acceptez la quête Bigobox 411
step
    .goto 1439/1,543.06,6342.57
>>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Rendez Washed Ashore
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Accepte Washed Ashore
step
    .goto 1439/1,535.85,6409.38,40,0
    >>Courez vers les Quais
    .goto 1439/1,600.70,6425.100
.target Cerellean Whiteclaw
>>Parlez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r
    .accept 963 >>Acceptez For Love Eternal
step
    #sticky
    #completewith Thundris
     >> Tuez les Batteurs de Sombrivage dans la mer
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto 1439/1,734.32,6479.68,60 >> Courez jusqu'aux quais, puis sautez dans l'eau à l'intersection
step
    .goto 1439/1,854.84,6310.26
    >>Cliquez sur la tête de la tortue dans l'eau
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,543.06,6342.57
    >>Tuez des Batteurs en retournant au rivage
.target Gwennyth Bly'Leggonde
>>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Rendez Washed Ashore
step
    .goto 1439/1,397.65,6437.76
>>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2118 >> Rendez la quête Terres malades
.target Tharnariun Treetender
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
step
    .goto 1439/1,362.93,6434.27
>>Parlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
.target Terenthis
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
step
    >> Tuez les furbolgs
    .goto 1439/1,332.80,5883.20
    .goto 1439/1,338.70,5985.81,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto 1439/1,362.93,6434.71
>>Parlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Rendez la quête Quelle est l’ampleur de la menace ?
.target Terenthis
    .accept 986 >>Acceptez la quête Un maître perdu
step
    >>Montez à l'étage
    .goto 1439/1,384.55,6431.65
.target Sentinel Elissa Starbreeze
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Elissa Brise-Stellaire|r
    .accept 965 >>Acceptez la quête La Tour d'Althalaxx
step
    .goto 1439/1,445.46,6536.01
.target Gorbold Steelhand
>>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
step
    #label Thundris
    .goto 1439/1,492.62,6580.99
>>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
.target Thundris Windweaver
    .accept 4762 >> Acceptez la quête La Bondissante
    .accept 954 >>Acceptez la quête Bashal'Aran
    .accept 958 >>Acceptez la quête Les outils des Bien-nés
step
     #label Threshers
     #sticky
     >> Nagez le long du rivage en tuant les Batteurs
    .complete 1001,1 --Thresher Eye (3)
step
    .goto 1439/1,391.75,7052.59,40,0
    .goto 1439/1,437.60,7076.17
     >> Entrez dans le 1er navire par l'ouverture dans sa coque, puis dirigez-vous au fond de l'étage inférieur du navire
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto 1439/1,302.02,7124.2,40,0
    .goto 1439/1,345.90,7134.68
     >> Entrez dans le 2ème navire par l'ouverture dans sa coque, puis allez au fond de l'étage inférieur du navire
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,193.29,7082.72
    .turnin 1001 >> Rendez la quête Bigobox 411
    .accept 1002 >> Acceptez la quête Bigobox 323
step
    .goto 1439/1,194.60,6959.14
    .accept 4723 >> Acceptez la quête La créature marine échouée
step
    .goto 1448/1,48.92,6748.85
>>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Rendez la quête Bashal'Aran
.target Asterion
    .accept 955 >> Acceptez la quête Bashal'Aran
step
    .goto 1448/1,-33.31,6660.30
     >> Tuez les Grellides. Dépouillez-les pour leurs Boucles d'oreilles
    .complete 955,1 --Grell Earring (8)
step
    .goto 1448/1,48.92,6748.85
>>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
.target Asterion
    .accept 956 >> Acceptez la quête Bashal'Aran
step
    .goto 1448/1,-60.33,6653.40
     >> Tuez les satyres. Dépouillez-les pour le Sceau
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto 1448/1,48.92,6748.85
>>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
.target Asterion
    .accept 957 >> Acceptez la quête Bashal'Aran
step
    #sticky
    #completewith ReadAndy
     >> Tuez tous les Traquelune. Dépouillez-les pour leurs Crocs
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>Tuez les Ours des chardons enragés que vous croisez. Engagez avec au moins 50% de mana et tuez-les avant qu'ils ne vous donnent la Rage (maladie)
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto 1439/1,-383.77,7222.89
    >>Utilisez le Tube de prélèvement vide dans vos sacs
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Gardez les Petits œufs que vous récoltez pour monter votre niveau de compétence en cuisine plus tard. Conservez TOUTES les Plumes légères que vous obtenez pour plus tard
step
    .goto 1439/1,-144.04,6209.82
     >> Courez jusqu'au cristal rouge dans les montagnes
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .accept 953 >>Acceptez la quête La Chute d'Ameth'Aran
step
    #sticky
    #label anaya
    .goto 1439/1,171.67,5693.25,0
     >> Tuez Anaya Coursaurore. Elle patrouille vers le milieu d'Ameth’Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto 1439/1,147.44,5630.370,0
     >> Tuez les fantômes. Dépouillez-les pour leur reliques
    .complete 958,1 --Highborne Relic (7)
step
    .goto 1448/1,147.82,5576.23
     >> Cliquez sur la tablette au sol
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1448/1,166.22,5634.12
     >> Cliquez sur la torche verte au belvédère
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1448/1,105.84,5771.35
     >> Cliquez sur la tablette au sol
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
step
    .goto 1439/1,398.30,5677.53
    >>Finissez de tuer les Ours chardonnants enragés et obtenez de la Viande de trotteur
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Dépouillez la Tortue de mer
    .goto 1439/1,509.00,5620.76
    .accept 4722 >>Acceptez la quête La tortue de mer échouée
step
    >>Dépouillez la Tortue de mer
    .goto 1439/1,582.36,5242.17
    .accept 4728 >>Acceptez la quête La créature marine échouée
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step
    .goto 1439/1,397.65,6437.33
>>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2138 >>Rendez la quête Nettoyage de l'infection
.target Tharnariun Treetender
    .accept 2139 >>Acceptez la quête Espoir de Tharnariun
step
    .goto 1439/1,445.46,6535.58
.target Gorbold Steelhand
>>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    .turnin 982 >>Rendez la quête Océan profond, mer immense
    .vendor >> Achetez des Épices douces à Gorbold jusqu'à ce que vous en ayez assez pour cuisiner tous vos œufs
step
    .goto 1439/1,472.97,6557.85
    >>Assurez-vous d'avoir au moins 10 points en cuisine sinon vous ne pouvez pas accepter ou rendre la quête
.target Alanndarian Nightsong
>>Parlez à |cRXP_FRIENDLY_Alanndarian Chantenuit|r
    .accept 2178 >>Acceptez Easy Strider Living
    .turnin 2178 >>Rendez Easy Strider Living
step
    .goto 1439/1,491.97,6582.303
>>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 958 >>Rendez la quête Les outils des Bien-nés
    .turnin 4762 >>Rendez la quête La Bondissante
.target Thundris Windweaver
    .accept 4763 >>Acceptez la quête La corruption des Noirbois
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Parlez à l' |cRXP_FRIENDLY_Archéologue Hollee|r
    .accept 729 >>Acceptez la quête Les absences du Prospecteur
step
    .goto 1439/1,471.66,6439.95
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
step
    .goto 1439/1,467.08,6409.38
     >> Remplissez le Tube d'eau vide au puits de lune
    .complete 4812,1
     >> Remplissez le Bol de purification vide au puits de lune
    .collect 12347,1,4763,1
step
    #completewith next
    .goto 1439/1,529.30,6415.93
    .vendor >> Achetez de l'eau niveau 15 à Taldan
step
    >>Retournez au quai
    .goto 1448/1,600.92,6424.93
.target Cerellean Whiteclaw
>>Parlez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r
    .turnin 963 >> Rendez la quête Un amour éternel
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Parlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Rendez la quête La tortue de mer échouée
    .turnin 4723 >>Rendez la quête La créature marine échouée
    .turnin 4728 >>Rendez la quête La créature marine échouée << Gnome
step
    .goto 1439/1,-157.79,6206.770
     >> Cliquez sur le cristal rouge
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
    #sticky
    #label MoonstalkersF
     >> Tuez tous les Traquelune. Dépouillez-les pour leurs Crocs
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto 1439/1,47.88,6748.67
.target Asterion
>>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Rendez la quête Bashal'Aran
step
    .goto 1439/1,-376.56,6805.87
    >>Équipez votre nouvelle baguette
    >>Ramassez l'Échantillon de céréales des Noirbois depuis le tonneau, puis courez vers le sud-est en direction de Mère de la tanière (ne combattez pas les mobs)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    >>Tuez la Mère de la tanière. Faites attention car ses petits peuvent vous faire mettre à terre pendant 2 secondes
    >>Montez au niveau 16 et essayer de nouveau si vous avez du mal
    .goto 1439/1,-430.27,6662.65
    .complete 2139,1 --Den Mother (1)
step
    >>Récupérez l'Echantillon de noix des Noirbois du Tonneau
    .goto 1439/1,-451.23,6870.06
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Récupérez l'Échantillon de fruit des Noirbois depuis le tonneau. Un mob va apparaître devant vous, et entre les cabanes de l'ouest - vous devrez peut-être vous enfuir
    .goto 1439/1,-520.01,6873.99
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Utilisez le Bol de purification rempli dans votre inventaire près du feu de camp. Cela rendra tous les furbolgs aux alentours amicaux
    >>Tuez le Satyre qui apparaît entre les camps et qui court autour du feu. Attaquez-le à portée maximale comme il peut être difficile. Ramassez le panier qui tombe au sol après l'avoir tué
    .goto 1439/1,-489.22,6879.67
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto 1439/1,-659.52,6901.50,35 >> Dirigez-vous à la grotte au-dessus de la cascade
step
    .goto 1439/1,-704.06,6809.80
     >> Restez dans la partie supérieure de la grotte. S'il n'y a pas d'Amanite phalloïde au bout du côté supérieur, descendez et ramassez-en une en bas
     >> La première bleu à l'entrée de la grotte devrait avoir réapparu depuis que le temps où vous aurez ramassé l'Amanite phalloïde
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,-658.87,7246.47
>>Parlez à |cRXP_FRIENDLY_Balthule Frappelombre|r
    .turnin 965 >>Rendez la quête La Tour d'Althalaxx
.target Balthule Shadowstrike
    .accept 966 >>Acceptez la quête La Tour d'Althalaxx
step
    >>Tuez les Fanatiques de la Rive noire. Dépouillez-les pour récupérer les parchemins
    .goto 1439/1,-684.41,7161.32
    .complete 966,1 --Worn Parchment (4)
step
    .goto 1439/1,-658.87,7246.47
>>Parlez à |cRXP_FRIENDLY_Balthule Frappelombre|r
    .turnin 966 >>Rendez la quête La Tour d'Althalaxx
.target Balthule Shadowstrike
    .accept 967 >>Acceptez la quête La Tour d'Althalaxx
step
    #requires MoonstalkersF
    .goto 1439/1,-537.04,7540.35
    .accept 4727 >>Acceptez la quête La tortue de mer échouée
step
    #sticky
    #completewith Turtles
     >> Tuez les Clampants des récifs le long de la côte, ne changez pas trop votre route pour termier cette quête - Ne tuez pas les mobs 4 qui ont plus de 4 niveaux que vous
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto 1439/1,-423.72,7277.04,25,0
    .goto 1439/1,-417.83,7262.19
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
step
    #softcore
    #label Turtles
    >>Laissez certains des murlocs aux alentours en vie, vous allez mourir en les combattant après avoir accepté cette quête
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    #hardcore
    #label Turtles
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    #softcore
    .deathskip >> Mourez et réapparaissez à Auberdine
step
    .goto 1439/1,491.97,6582.303
    >>Équipez votre nouvelle baguette
.target Thundris Windweaver
>>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
step
    .goto 1439/1,397.65,6437.33
.target Tharnariun Treetender
>>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2139 >>Rendez la quête Espoir de Tharnariun
step
    .goto 1439/1,471.66,6439.95
.target Sentinel Glynda Nal'Shea
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4813 >>Rendez la quête Les fragments à l'intérieur
step
    .goto 1439/1,497.21,6427.72
>>Parlez à |cRXP_FRIENDLY_Barithras Lunombrage|r
    .turnin 947 >> Rendez la quête La caverne aux champignons
.target Barithras Moonshade
    .accept 948 >> Acceptez la quête Onu
step
    .goto 1439/1,503.10,6401.96
     >> Cliquez sur l'affiche de recherche à l'extérieur de l'auberge
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .isQuestComplete 1138
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Parlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Rendez la quête Fruit de la mer
step
    #label end
    #requires bowl
    .goto 1448/1,543.42,6342.52
.target Gwennyth Bly'Leggonde
>>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La créature marine échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
step
     #completewith Murkdeep
     >> Tuez tous les Géniteurs traquelune que vous trouvez et les Matriarches si vous êtes à l'aise. Dépouillez-les pour leur Peaux. Ils partagent leur points d'apparition avec les Vieux ours des chardons.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto 1439/1,413.37,4818.17,0
     >> Tuez les Vieux ours des chardons. Dépouillez-les pour leur Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,89.14,5002.00
>>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
.target Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
step
    #completewith next
    .goto 1439/1,79.97,4986.72
    .vendor >> Achetez de l'eau niveau 15 à Tiyani
step << Human
    >>Ramassez les restes
    .goto 1439/1,585.63,5237.370
    .accept 4728 >>Acceptez la quête La créature marine échouée
step
    #label Murkdeep
    .goto 1439/1,549.61,4990.65
    >> Nettoyez le camp de Murloc, restez loin du feu de camp au centre
    >> Une fois que vous avez tout dégagé, déplacez-vous vers le centre du camp pour invoquer Fondeboue
    >> Si vous avez de la chance, Fondeboue pourrait déjà être présent environ 30 mètres au large vers l'ouest (si quelqu'un est mort dessus plus tôt).
    .complete 4740,1 --Murkdeep (1)
step
     >> Tuez des crabes le long de la côte pour des Belles chair de crabe
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Ramassez les restes
    .goto 1439/1,799.82,4808.12
    .accept 4730 >>Acceptez la quête La créature marine échouée
step
    >>Dépouillez les restes. Faites attention, les Oracles lancent des éclairs infligeant 90 dégâts et peuvent utiliser Vague de soins pour se soigner complètement quand ils sont à moins de 55% PV. La tête de tortue permet de vous cacher
    >>Ayez toujours un chemin pour vous enfuir. Les Chasse-marée ne sont pas trop difficiles, mais faites attention à leur poison infligeant de faibles dégâts répétés
    >>Essayez de garder vos potions de soin pour plus tard, surtout les grandes
    .goto 1439/1,865.32,4678.432
    .accept 4731 >>Acceptez la quête La tortue de mer échouée
step
    >>La carapace de tortue sur l'île peut vous permettre de vous cacher
    .goto 1439/1,896.76,4597.21
    .accept 4732 >>Acceptez la quête La tortue de mer échouée
step
    >>Dépouillez-la à son cou, faites attention aux 2 mobs cachés par le terrain (vous ne devriez avoir besoin de tuer que 3 mobs pour récupérer le butin)
    .goto 1439/1,892.83,4517.30
    .accept 4733 >>Acceptez la quête La créature marine échouée
step
    .goto 1439/1,602.01,4678.87
.target Prospector Remtravel
>>Parlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
step
    .goto 1439/1,602.01,4678.87
     >>Cette quête est TRÈS difficile. Faites-la avec un autre joueur si vous le pouvez.
     >> Commencez la quête d'escorte
.target Prospector Remtravel
>>Parlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
step
     >>Escortez le Prospecteur Songerrance
     >>Laissez Songerrance engager tous les mobs (comme les mobs doivent le frapper pour l'agresser), puis lancez des boules de feu sur eux
     >>Songerrance est très fragile, alors essayez de reprendre l'aggro des autres mobs
     >>Lorsque les troggs apparaissent, lancez Métamorphone sur celui qu'il n'attaque pas, puis éliminez l'autre lorsqu'il l'a frappé. Métamorphosez le magicien d'abord qui apparaît près de la fin APRÈS qu'il ait tiré une boule de feu sur le prospecteur
     >>Si vous n'arrivez pas à faire cette quête du premier coup, ignorez-la simplement - elle demande BEAUCOUP d’exécution et dépend de votre chance.
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >> Tuez tous les Géniteurs traquelune que vous trouvez et les Matriarches si vous êtes à l'aise. Dépouillez-les pour leur Peaux. Ils partagent leur points d'apparition avec les Vieux ours des chardons.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>Tuez des Trotteurs. Assurez-vous d'avoir au moins 1 Plume légère pour plus tard.
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto 1439/1,413.37,4818.17,0
     >> Tuez les Vieux ours des chardons. Dépouillez-les pour leur Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>Gardez un oeil pour Les puissances d'en bas. Il s'agit d'une quête tombant rarement, gratuite
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
step
    #label Glaive
    .goto 1439/1,433.02,4529.09
     >> Entrez dans le Glaive du Maître et nettoyez les mobs autour de l'autel au centre
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto 1439/1,410.09,4519.49
.target Therylune
>>Parlez à |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Acceptez la quête L'évasion de Therylune
step
     >> Déposez la Coupe de divination de votre inventaire sur le sol.
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
step
    .goto 1439/1,416.64,4576.69
     >> Cliquez sur le livre au sommet du piédestal. Faites en sorte que Therylune ne s'en aille pas si vous l'avez déjà commencé
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
    .accept 950 >> Acceptez la quête La page qui rend fou
step
    #label Therylune
    #requires TheryluneE
    >> Finissez la quête d'escorte
    >> Quand vous tuez le dernier mob à la sortie du glaive, créez un feu de camp et cuisinez toute la viande/oeufs que vous avez encore pour monter le niveau de compétence de votre cuisine
    >> Vous aurez besoin d'une compétence en cuisine de 50 pour une quête gratuite à Sombre-Comté
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto 1439/1,493.28,4321.68,100,0
    .goto 1439/1,389.79,4836.94,100,0
    .goto 1439/1,71.46,4749.17,100,0
    .goto 1439/1,389.79,4836.94,0
     >> Tuez tous les Géniteurs traquelune que vous trouvez et les Matriarches si vous êtes à l'aise. Dépouillez-les pour leur Peaux. Ils partagent leur points d'apparition avec les Vieux ours des chardons.
     >> Si vous avez beaucoup de malchance avec les réapparition et les taux de drop, vous pouvez passer cette quête
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto 1439/1,413.37,4818.170
     >> Tuez les Vieux ours des chardons un peu partout dans le sud de Sombrivage. Dépouillez-les pour leur Sclaps
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,229.97,4815.55
    .turnin 1003 >> Rendez la quête Bigobox 525
step
    #requires MoonstalkerP
    .goto 1439/1,89.14,5002.00
.target Onu
>>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
step
    #completewith next
    .goto 1439/1,79.97,4987.16
    .vendor >> Achetez de la nourriture/boisson chez Tiyani si nécessaire
step
    >>Acceptez la quête d'escorte de Kerlonian. S'il n'est pas là, passez cette étape
    .goto 1439/1,33.47,4996.33
.target Kerlonian Evershade
>>Parlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    .accept 5321 >>Acceptez la quête Le dormeur s'est éveillé
step
    .isOnQuest 5321
    >>Ouvrez le petit coffre gris à côté de Kerlonian
    .goto 1439/1,33.47,4996.33
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto 1440/1,152.23,3260.72
    >>Courez vers le sud jusqu'à Orneval. Mettez la Corne de l'éveil dans vos barres d'action, et utilisez-la sur Kerlonian lorsqu'il commence à marcher sur place et s'endormir
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto 1440/1,128.01,3305.31
.target Liladris Moonriver
>>Parlez à |cRXP_FRIENDLY_Liladris Ondelune|r
    .turnin 5321 >>Rendez la quête Le dormeur s'est éveillé
step
    .goto 1440/1,189.71,3185.390
.target Delgren the Purifier
>>Parlez à |cRXP_FRIENDLY_Delgren the Purificateur|r
    .turnin 967 >>Rendez la quête La Tour d'Althalaxx
step
    #softcore
    >>Allez la route vers le sud. Dirigez-vous vers Le sanctuaire d'Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Parlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Rendez la quête L'évasion de Therylune
step
    #hardcore
    >>Allez la route vers le sud. Dirigez-vous vers Le sanctuaire d'Aessina
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Parlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Rendez la quête L'évasion de Therylune
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Parlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Rendez la quête Fruit de la mer
step
    .goto 1439/1,543.06,6342.130
.target Gwennyth Bly'Leggonde
>>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Rendez la quête La créature marine échouée
    .turnin 4731 >>Rendez la quête La tortue de mer échouée
    .turnin 4732 >>Rendez la quête La tortue de mer échouée
    .turnin 4733 >>Rendez la quête La créature marine échouée
step
    .goto 1439/1,470.35,6439.07
.target Sentinel Glynda Nal'Shea
>>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4740 >>Rendez la quête On recherche : Fondeboue !
step
    .isQuestComplete 986
    >>Gardez la prochaine partie de la quête dans votre journal de quêtes pour la cape donnant +3 endurance. Abandonnez la quête lorsque vous n'avez plus besoin du manteau.
    .goto 1439/1,362.93,6434.71
>>Parlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Rendez la quête Un maître perdu
.target Terenthis
    .accept 993 >>Acceptez la quête Un maître perdu
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Parlez à l' |cRXP_FRIENDLY_Archéologue Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .isQuestComplete 731
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Parlez à l' |cRXP_FRIENDLY_Archéologue Hollee|r
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Courez jusqu'au quai. Attendez l'arrivée du bateau pour Darnassus.
    .goto 1439/1,555.50,6418.99,30,0
    .goto 1439/1,769.03,6579.24,40
step
    .isOnQuest 741
    .zone Teldrassil >> Prenez le bateau pour Darnassus
step
    .isOnQuest 741
    .goto 1438/1,965.80,8781.63,30 >> Traversez le portail violet
step
    .isOnQuest 741
    .goto 1457/1,2607.74,9642.04
>>Parlez au |cRXP_FRIENDLY_Chef archéologue Grisemoustache|r
    .turnin 741 >>Rendez la quête Les absences du Prospecteur
.target Chief Archaeologist Greywhisker
    .accept 942 >>Acceptez la quête Les absences du Prospecteur
step
    .goto 1438/1,841.05,8641.122
    .fp Teldrassil >> Prenez le chemin de vol de Teldrassil
    .fly Auberdine >> Volez à Auberdine
step
    .goto 1439/1,818.16,6422.92,50,0
    .zone Wetlands >> Prenez le bateau pour Menethil
step
    #completewith next
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    >> Si vous avez 8 pièces d'argent, achetez le Tube en bronze à Neal Allen s'il est disponible. Sinon, passez cette étape.
    .collect 4371,1,175,1
step
    .goto 1437/0,-782.03,-3793.12
    .fly Ironforge >> Volez à Ironforge
step << skip --logout skip
    #completewith next
    .goto 1455/0,-1158.16,-4816.32,0
    +Effectuez un Logout skip en sautant sur l'une des têtes de Griffon et en vous déconnectant, puis en vous reconnectant
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLIQUEZ ICI
step
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Hurlevent
step
    #completewith FlyAndy
    .goto 1453/0,638.8,-8341.95
    .vendor >> Achetez un Tube en bronze si vous n'en avez pas
    >>Il s'agit d'un objet en stock limitée. Passez cette étape si le PNJ n'en a pas.
    .bronzetube
step << Human
    #label FlyAndy
    .goto 1429/0,409.13,-9100.58
    .zone Elwynn Forest >> Voyagez à la Forêt d'Elwynn
step << Gnome
    .goto 1429/0,622.93,-8830.700
    .zone Stormwind City >> Téléportez-vous à Hurlevent
step << Gnome
    #label FlyAndy
    >>Allez à Hurlevent et apprenez le chemin de vol
    .goto 1453/0,606.4,-8812.0,50,0
    .goto 1453/0,490.12,-8835.76
    .fp Stormwind City >> Apprenez le chemin de vol de Hurlevent
step << Gnome
    .goto 1453/0,493.08,-8867.22,12,0
    .goto 1453/0,507.6,-8885.59,18 >> Descendez sur la petite corniche en longeant le mur blanc. Faites attention. Courez le long de celui-ci vers la sortie de Hurlevent
step
    >> Montez à l'étage supérieur de l'auberge de Comté-de-l'Or
    .goto 1429/0,44.00,-9459.11,15,0
    .goto 1429/0,14.84,-9477.86,15,0
    .goto 1429/0,34.28,-9471.61
    .trainer >> Apprenez vos sorts de classe
step
    .goto 1429/0,-1637.62,-9642.89,125,0
    .zone Redridge Mountains >> Courez vers l'est jusqu'aux Carmines. Faites de l'ordre dans vos raccourcis sur la route, en vous assurant que vos sorts sont confortablement placés sur vos toutes vos barres.
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-21 Carmines Mage AoE
#version 1
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun Mage
#defaultfor Alliance Mage
#next 21-22 Bois de la Pénombre Mage AoE

step
    #sticky
    #completewith Gnolls
    +Commencez à AoE des mobs des quêtes dont vous avez besoin en groupe de 3+ que vous croisez
    >>Gardez ce tutoriel ouvert dans un autre onglet pour la section AoE des Carmines si nécessaire :
    .link https://youtu.be/SxMc2GoP33c?t=56 >> CLIQUEZ ICI
step
    >>Parlez au Garde Parker. Il fait des rondes près des carrefours.
    .goto 1429/0,-1902.44,-9609.56
.target Guard Parker
>>Parlez au |cRXP_FRIENDLY_Garde Parker|r
    .accept 244 >>Acceptez la quête Des gnolls encombrants
step
    #sticky
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Feldon|r
    .turnin 244 >>Rendez la quête Des gnolls encombrants
.target Deputy Feldon
    .accept 246 >>Acceptez la quête L'appréciation du danger
step
    .goto 1433/0,-2234.89,-9435.060
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    #requires Gnolls
    .goto 1433/0,-2298.28,-9283.90
.target Marshal Marris
>>Parlez au |cRXP_FRIENDLY_Maréchal Marris|r
    .accept 20 >>Acceptez la quête La menace des Rochenoires
step
    .goto 1433/0,-2268.54,-9279.27
.target Foreman Oslow
>>Parlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .accept 125 >>Acceptez la quête Les outils perdus
step
    .goto 1433/0,-2242.49,-9259.00
.target Verner Osgood
>>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    .accept 118 >>Acceptez la quête Le prix des fers
step
    >>À l'intérieur de l'Hôtel de ville
    .goto 1433/0,-2216.00,-9215.85
.target Bailiff Conacher
>>Parlez à |cRXP_FRIENDLY_Bailli Conacher|r
    .accept 91 >>Acceptez la quête La loi de Salomon
step
    .goto 1433/0,-2221.87,-9218.60
    >>Entrez dans le bâtiment
.target Magistrate Solomon
>>Parlez au |cRXP_FRIENDLY_Magistrat Salomon|r
    .accept 120 >>Acceptez la quête Un message pour Hurlevent
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Parlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .accept 127 >>Acceptez la quête Criée aux poissons
step
    .goto 1433/0,-2151.53,-9247.12
    .accept 180 >>Acceptez la quête On recherche : lieutenant Tripecroc
step
    >>À l'intérieur de l'auberge
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Parlez à |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Acceptez la quête Un repas gratuit
step
    .goto 1433/0,-2157.18,-9223.96
    .home >> Liez votre Pierre de foyer à Comté-du-Lac
step
    .goto 1433/0,-2207.32,-9351.66
.target Shawn
>>Parlez à |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Acceptez la quête Le collier d'Hilary
step
    >>Cherchez le collier de Hilary sous l'eau. Il est dans un tas de boue marron
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto 1433/0,-1906.66,-9478.500,0
    +Tuez les gnolls dans les camps en AoE
step
    .goto 1433/0,-1902.54,-9609.83
>>Parlez au |cRXP_FRIENDLY_Garde Parker|r
    .turnin 129 >>Rendez la quête Un repas gratuit
.target Guard Parker
    .accept 130 >>Acceptez la quête Une visite chez l'herboriste
step
    .goto 1433/0,-2234.89,-9435.21
    .fly Stormwind >> Volez à Stormwind
step
    >>Entrez dans Hurlevent. Allez voir le Maître d'armes
   .goto 1453/0,612.99,-8796.14
   .trainer >> Achetez la compétence pour porter les Épées à une main et les Dagues
step
    #softcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    +Allez à l'Hôtel des ventes. Achetez un Tube en bronze si le prix est correct
    >>S'il n'y en a pas à l'Hôtel des Ventes ou s'ils sont trop chers, vous pouvez aussi en acheter un auprès de Billibub Tournepignon dans le Quartier des Nains
    >>Si vous n'arrivez pas à en trouver un, passez cette étape
    .bronzetube
step
    #hardcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    .vendor >> Vérifiez auprès de Billibub Tournepignon dans le Quartier des Nains pour un Tube en bronze. Achetez-en un s'il est disponible
    .bronzetube
step
    .goto 1453/0,520.77,-8954.16
>>Parlez à |cRXP_FRIENDLY_Général Marcus Jonathan|r
    .turnin 120 >>Rendez la quête Un message pour Hurlevent
.target General Marcus Jonathan
    .accept 121 >>Acceptez la quête Un message pour Hurlevent
step
    >>Allez à Comté-de-l'Or
    .goto 1429/0,87.73,-9456.79
>>Parlez à |cRXP_FRIENDLY_Argus le forgeron|r
    .turnin 118 >>Rendez la quête Le prix des fers
.target Smith Argus
    .accept 119 >>Acceptez la quête Le retour chez Verner
step
    >>Allez à la Colline des Sentinelles
    .goto 1436/0,1045.12,-10508.80
.target Gryan Stoutmantle
>>Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r
    .accept 65 >>Acceptez la quête La Confrérie défias
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >> Utilisez votre Pierre de foyer pour revenir à Comté-du-Lac si elle est disponible
step
    #completewith hsLakeshire
    #label WFFP
    .goto 1436/0,1037.42,-10628.50
    .fp Westfall >> Prenez le chemin de vol de la Marche de l'Ouest << Gnome
    .fly Redridge >> Volez vers les Carmines
step
    #requires WFFP
    .goto 1433/0,-2243.14,-9259.43
>>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    .turnin 119 >>Rendez la quête Le retour chez Verner
.target Verner Osgood
    .accept 122 >>Acceptez la quête Les écailles de dragonnet
    .accept 124 >>Acceptez la quête Le hurlement des gnolls
step
    >>Allez dans le Fort
    .goto 1433/0,-2220.56,-9218.74
>>Parlez au |cRXP_FRIENDLY_Magistrat Salomon|r
    .turnin 121 >>Rendez la quête Un message pour Hurlevent
.target Magistrate Solomon
    .accept 143 >>Acceptez la quête Un message pour la marche de l'Ouest
.target Bailiff Conacher
>>Parlez à |cRXP_FRIENDLY_Bailli Conacher|r
    .accept 91 >>Acceptez la quête La loi de Salomon
step
    >>Montez au dernier étage de l'auberge
    .goto 1433/0,-2145.45,-9231.63
>>Parlez à |cRXP_FRIENDLY_Wiley le noir|r
    .turnin 65 >>Rendez la quête La Confrérie défias
.target Wiley the Black
    .accept 132 >>Acceptez la quête La Confrérie défias
step
    .goto 1433/0,-2205.58,-9351.52
.target Hilary
>>Parlez à |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Rendez la quête Le collier d'Hilary
step
    #era/som
    #completewith Murlocs
    >>Tuez des mobs pour obtenir les 3 premiers objets pour le Goulash des Carmines en faisant d'autres quêtes. Obtenez aussi assez de Morceaux de viande de sanglier pour atteindre une compétence de 50 en cuisine
    >>Focalisez-vous sur les Broche-tripes, ne vous souciez pas vraiment de la viande d'araignée pour le moment
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>Tuez les dragonnets. Dépouillez-les pour leurs écailles
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>Tuez les gnolls en AoE dans la zone. Consultez la vidéo AoE si nécessaire
    >>Restez loin des Braconniers lors d'un pull AoE pour qu'ils ne vous touchent pas
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>Tuez les murlocs en AoE dans la zone. Vous devrez tuer individuellement les Maîtres des flots (éclair + vague de guérison)
    >>Vous pouvez AoE sur les Guerriers des rivages (Charge) et les Dévoreurs (25 dégâts de vol de vie instantané au coup). Usez de votre créativité pour faire des pulls rentables
    >>Gardez 8 Écailles pour plus tard
    .goto 1433/0,-2630.63,-9581.16
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Obtenez la Viande de Condor et les écailles de dragonnets autour de cette zone. Si vous attendez la réapparition des mobs, alors allez à l'est pour obtenir quelques Haches puis revenez ici
    .goto 1433/0,-2895.91,-9697.86
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Obtenez les écailles de dragonnets autour de cette zone. Si vous attendez la réapparition des mobs, alors allez à l'est pour obtenir quelques Haches puis revenez ici
    .goto 1433/0,-2895.91,-9697.86
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>Tuez les orcs avec de l'AoE dans cette zone. Dépouillez-les pour leurs haches. Soyez prudent car les Estafettes utilisent leur Filet et les Renégats font des coups de bouclier
    >>Évitez de tuer les Renégats comme ils sont de haut niveau. Engagez-en 3 max à la fois. Utiliser des sorts AoE ici est très risqué, et moyennement rentable
    >>Ne récoltez pas toutes les haches pour le moment, vous aurez une meilleure occasion de finir cette quête plus tard
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Allez sous l'eau. Ouvrez la boîte grise
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Finissez d'obtenir les Groins de broche-tripes ici
    .goto 1433/0,-2267.02,-9596.36
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto 1433/0,-2238.15,-9443.75
.target Deputy Feldon
>>Parlez à l' |cRXP_FRIENDLY_Adjoint Feldon|r
    .turnin 246 >>Rendez la quête L'appréciation du danger
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Parlez au |cRXP_FRIENDLY_Maréchal Marris|r
    .turnin 20 >>Rendez la quête La menace des Rochenoires
step
    .goto 1433/0,-2268.54,-9279.12
>>Parlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 125 >>Rendez la quête Les outils perdus
.target Foreman Oslow
    .accept 89 >>Acceptez la quête Le pont sur le lac
step
    .goto 1433/0,-2243.36,-9259.43
.target Verner Osgood
>>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    .turnin 122 >>Rendez la quête Les écailles de dragonnet
step
    #level 20
    .goto 1433/0,-2172.59,-9261.02
>>Parlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .turnin 127 >>Rendez la quête Criée aux poissons
.target Dockmaster Baren
    .accept 150 >>Acceptez la quête Les braconniers murlocs
    .turnin 150 >>Rendez la quête Les braconniers murlocs
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Parlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .turnin 127 >>Rendez la quête Criée aux poissons
step
    .goto 1433/0,-2045.38,-9245.82
>>Parlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Rendez la quête Une visite chez l'herboriste
.target Martie Jainrose
    .accept 131 >>Acceptez la quête Bouquet de jonquilles
    .accept 34 >>Acceptez la quête Un invité indésirable
step
    >>Tuez Fouailleventre. Amenez-la au Garde Adams bien engagé dans la ville
    >>Faites attention comme elle cause des tremblements (80 dégâts de zone instantanés) et charge (maintenez-la ralentie et lancez une nova si possible)
    >>Assurez-vous de causer la majorité des dégâts (51%+)
    >>Cette quête est TRÈS difficile
    .goto 1433/0,-1910.79,-9288.97
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto 1433/0,-2045.16,-9245.67
.target Martie Jainrose
>>Parlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Rendez la quête Un invité indésirable
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    >>Tuez les Gnolls. Dépouillez-les pour les Piques et les Rivets
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Tuez les groupes d'Orcs bien proches les uns des autres. Dépouillez-les pour obtenir les haches
    >>Si vous n'avez pas de chance après avoir éliminé les groupes proches, vous aurez une autre occasion de le faire plus tard
    .goto 1433/0,-2375.13,-9228.73,50,0
    .goto 1433/0,-2401.83,-9180.95,50,0
    .goto 1433/0,-2449.15,-9161.70,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto 1433/0,-2639.97,-9149.24,150 >> Courez vers les araignées
step
    #era/som
    >>Tuez les Araignées. Dépouillez-les pour leur viande
    >>Faites attention car leur poison peut causer des dégâts assez importants
    >>Faites attention à Cliqueteuse (rare) qui peut vous étourdir pendant 8 secondes
    .goto 1433/0,-2813.20,-9230.04
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Terminez de tuer les Orcs pour les haches
    .goto 1433/0,-2911.11,-9195.00
    .complete 20,1 --Blackrock Axe (10)
step
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Parlez au |cRXP_FRIENDLY_Maréchal Marris|r
    .turnin 20 >>Rendez la quête La menace des Rochenoires
step
    .goto 1433/0,-2268.76,-9279.27
.target Foreman Oslow
>>Parlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 89 >>Rendez la quête Le pont sur le lac
step
    .goto 1433/0,-2243.36,-9259.57
>>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    .turnin 124 >>Rendez la quête Le hurlement des gnolls
.target Verner Osgood
    .accept 126 >>Acceptez la quête Les collines aux hurlements
step
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Parlez à |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Rendez la quête Bouquet de jonquilles
step
    .goto 1433/0,-2157.18,-9223.81
    .vendor >> Achetez de l'eau de niveau 15
step
    #era/som
    .goto 1433/0,-2063.61,-9212.080
    >>Quittez l'Auberge. Allez vers l'ouest puis allez dans le bâtiment
.target Chef Breanna
>>Parlez au |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
step
    #era/som
    #completewith next
    .goto 1433/0,-2146.97,-9225.110
    +Cuisinez toute la viande de sanglier jusqu'à obtenir une compétence de 50 en cuisine
    >>Si vous n'avez pas assez de viande, tuez quelques sangliers sur la route pour Sombre-Comté
step
    .goto 1433/0,-1711.94,-9895.21,90,0
    .zone Duskwood >> Voyagez au Bois de la Pénombre
]])
