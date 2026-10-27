if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Human Mage
#name 1-10 Forêt d'Elwynn Humain Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Human Mage
#next 1-11 Dun Morogh Humain Mage AoE Avancé


step << !Human Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T133816:0|t[Gravure de gants (Javelot de glace)])
step
    #completewith next
    +Vous avez sélectionné le guide Avancé. Il s'agit du guide le plus rapide pour la classe la plus rapide du jeu (Mage de l'Alliance). En conséquence, il y aura énormément de mécaniques de niche utilisées ainsi que pulls AoE très difficiles. Restez persévérant en apprenant ! Bonne chance !
step
    #completewith next
    .goto 1429/0,-146.20,-8999.660,50,0
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes loups|r. Dépouillez-les jusqu'à avoir l'équivalent de 10 pièces de cuivre à vendre au marchand|r
    .mob Young Wolf
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
    .target Deputy Willem
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    .vendor >> Vendez votre surplus jusqu'à avoir 10+ pièces de cuivre
    .target Brother Danil
step
    .goto 1429/0,-139.61,-8910.09,15,0
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 783 >> Rendez la quête Menace intérieure
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Sautez sur la rampe depuis les escaliers
    .goto 1429/0,-188.20,-8851.76,10 >>Allez en direction de |cRXP_FRIENDLY_Khelden|r à l'étage
step
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
    .target Deputy Willem
step
    #completewith next
    .goto 1429/0,-64.64,-8924.9,70,0
    .goto 1429/0,-81.64,-8850.37
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes loups|r. Dépouillez-les jusqu'à avoir l'équivalent de 50 pièces de cuivre à vendre au marchand (en comptant votre armure)|r
    .mob Young Wolf
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan|r
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
    .target Eagan Peltskinner
step
    #completewith next
    >>Tuez les |cRXP_LOOT_Jeunes loups|r et les |cRXP_LOOT_Loups des bois|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de loup coriace|r
    >>Focalisez-vous sur les |cRXP_LOOT_Jeunes loups|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto 1429/0,-96.22,-8765.43,35,0
	.goto 1429/0,-120.17,-8750.61,35,0
	.goto 1429/0,-193.41,-8752.93,35,0
	.goto 1429/0,-193.75,-8778.16,35,0
	.goto 1429/0,-171.54,-8799.68,35,0
	.goto 1429/0,-96.22,-8765.43,35,0
    >>Tuez les |cRXP_ENEMY_Vermines kobold|r
    >>|cRXP_WARN_Tuez les|cRXP_ENEMY_Vermines kobold|r de niveau 1 si possible|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    >>Tuez les |cRXP_LOOT_Jeunes loups|r et les |cRXP_LOOT_Loups des bois|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de loup coriace|r
    >>Focalisez-vous sur les |cRXP_LOOT_Jeunes loups|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Rendez la quête Les loups derrière la frontière
    .target Eagan Peltskinner
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3104 >> Acceptez la quête Lettre glyphée
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto 1429/0,-104.55,-8782.32,35,0
	.goto 1429/0,-109.41,-8767.51,35,0
	.goto 1429/0,-108.02,-8727.93,35,0
	.goto 1429/0,-71.23,-8689.97,35,0
	.goto 1429/0,-121.91,-8698.07,35,0
	.goto 1429/0,-203.82,-8749.22,35,0
	.goto 1429/0,-104.55,-8782.32,35,0
    >>Tuez les |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    .xp 3+1110 >> Monter votre expérience jusqu'à 1110/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Sautez sur la rampe depuis les escaliers
    .goto 1429/0,-188.20,-8851.76,10 >>Allez en direction de |cRXP_FRIENDLY_Khelden|r à l'étage
step
    #season 0
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .train 116 >> Apprenez [Eclair de givre]
    .target Khelden Bremen
step
    #season 2
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Acceptez la quête Recherches sur les sorts << Human
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .train 116 >> Apprenez [Eclair de givre]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 18 >> Acceptez la quête La confrérie des voleurs
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    >>Tuez les |cRXP_ENEMY_Nervis défais|r. Dépouillez-les pour les |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r
    >>|cRXP_WARN_NOTE : Vous ne pourrez pas vous apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_ici car vous ne pouvez obtenir qu'un seul|r |T133736:0|t[Manuel de compréhension] |cRXP_WARN_dans votre zone de départ|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto 1429/0,-239.57,-9080.44,35,0
	.goto 1429/0,-288.51,-9067.94,35,0
	.goto 1429/0,-332.24,-9052.67,35,0
	.goto 1429/0,-358.96,-9074.19,35,0
	.goto 1429/0,-378.75,-9047.34,35,0
	.goto 1429/0,-365.21,-9003.37,35,0
	.goto 1429/0,-332.24,-8976.29,35,0
	.goto 1429/0,-239.57,-9080.44,35,0
    >>Tuez les |cRXP_ENEMY_Nervis défias|r. Dépouillez-les pour leur |cRXP_LOOT_Masques rouges|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,50,0
    .goto 1429/0,-335.02,-9108.91,50,0
    .goto 1429/0,-376.67,-9073.73,50,0
    .goto 1429/0,-388.47,-9001.28,50,0
    .goto 1429/0,-333.97,-9028.59,50,0
    >>Tuez les |cRXP_ENEMY_Nervis défais|r. Dépouillez-les pour les |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r
    >>|cRXP_WARN_NOTE : Vous ne pourrez pas vous apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_ici car vous ne pouvez obtenir qu'un seul|r |T133736:0|t[Manuel de compréhension] |cRXP_WARN_dans votre zone de départ|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 18,5 >> Rendez la quête La confrérie des voleurs
    .accept 6 >> Acceptez la quête La prime pour Garrick Ladétrousse
    .accept 3903 >> Acceptez la quête Milly Osworth
    .target Deputy Willem
step
    #completewith Laborer
    +Équipez le |T135145:0|t[Bâton de combat de la milice].
    .use 1159
    .itemcount 1159,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.7
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto 1429/0,-122.25,-8671.45,40 >>Entrez dans la mine
step
    #label Laborer
    .goto 1429/0,-130.24,-8649.23,40,0
    .goto 1429/0,-141.69,-8607.11,40,0
    .goto 1429/0,-150.71,-8554.57,40,0
    .goto 1429/0,-198.26,-8535.36,40,0
    .goto 1429/0,-209.37,-8560.59
    >>Tuez les |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Rendez la quête Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Montez votre expérience jusqu'à 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Ramassez les |cRXP_PICK_Seaux de raisins|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-461.01,-9056.37
    >>Tuez |cRXP_ENEMY_Garrick Ladétrousse|r. Dépouillez-le pour la |cRXP_LOOT_Tête de Garrick|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Ramassez les |cRXP_PICK_Seaux de raisins|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Montez votre expérience jusqu'à 1175+/2800xp
    .mob Defias Thug
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Rendez la quête La récolte de Milly
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
    .target Milly Osworth
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 6,1 >> Rendez la quête La prime pour Garrick Ladétrousse
    .target Deputy Willem
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 21,3 >> Rendez la quête La bataille de la Crête aux échos
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-171.54,-8908.00,10,0
    .goto 1429/0,-184.38,-8901.52,10,0
    .goto 1429/0,-178.83,-8888.10,10,0
    .goto 1429/0,-164.60,-8892.50,10,0
    .goto 1429/0,-172.23,-8907.31,10,0
    .goto 1429/0,-185.08,-8899.21,10,0
    .goto 1429/0,-176.75,-8886.94,10,0
    >>Montez à l'étage
    .goto 1429/0,-181.64,-8902.13,10 >> Dirigez-vous vers le |cRXP_FRIENDLY_Frère Neals|r
step
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Neals|r
    .turnin 3905,1 >>Rendez la quête Manifeste des vendanges
    .target Brother Neals
step << Human
    #season 2
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
    .goto 1429/0,-188.23,-8851.58,12 >>Descendez les escaliers, puis allez vers |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r à l'intérieur
    .turnin 77620 >> Rendez la quête Recherches sur les sorts
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto 1429/0,-45.90,-9044.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenrôde|r
    .accept 2158 >> Acceptez la quête Repos et détente
    .target Falkhaan Isenstrider
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r à travers le mur en entrant à l'auberge
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
    .target William Pestle
step
    #completewith next
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
    .turnin 2158,2 >> Rendez la quête Repos et détente
    .vendor 295 >> Vendeur votre surplus. |cRXP_BUY_Achetez du|r |T132815:0|t[Lait glacé] |cRXP_BUY_jusqu'à ce qu'il ne vous reste que 2 pièces d'argent|r
    .target Innkeeper Farley
step
    .goto 1429/0,34.28,-9472.99
    >>Sautez sur le lustre en bas des escaliers
    >>Parlez à |cRXP_FRIENDLY_Zaldimar|r à travers le mur
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang2, Trait de feu)
	.target Zaldimar Wefhellt
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rémi|r
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step
    #completewith BoarMeat1
    >>Tuez le |cRXP_ENEMY_Sanglier Brocheroc|r. Dépouillez-les pour les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bernice|r et à |cRXP_FRIENDLY_Maman|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .accept 88 >> Acceptez la quête Princesse doit mourir !
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
    .target Billy Maclure
step
    #label BoarMeat1
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r à l'intérieur
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez autant de|r |T132815:0|t[Lait glacé] |cRXP_BUY_que vous pouvez vous le permettre auprès de lui|r
    .vendor 258 >>Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Maclure
step
    #completewith next
    >>Tuez le |cRXP_ENEMY_Sanglier Brocheroc|r. Dépouillez-les pour les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Champierreux|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    >>Tuez le |cRXP_ENEMY_Sanglier Brocheroc|r. Dépouillez-les pour les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bernice|r puis à |cRXP_FRIENDLY_Mamie|r à l'intérieur
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .accept 84 >> Acceptez la quête Revenir voir Billy
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target +Gramma Stonefield
    .goto 1429/0,322.71,-9880.59
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
    .target Billy Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez autant de|r |T132815:0|t[Lait glacé] |cRXP_BUY_que vous pouvez vous le permettre auprès de lui|r
    .vendor 258 >>Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto 1429/0,181.79,-9843.79,15 >>Entrez dans la mine de Fargodeep
step
    #completewith Goldtooth
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r et les |cRXP_ENEMY_Mineurs kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto 1429/0,179.36,-9811.39,12,0
    .goto 1429/0,157.15,-9789.40
    >>Entrez dans l'un dans des grands espaces ouverts dans la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto 1429/0,148.82,-9763.71,12,0
    .goto 1429/0,132.16,-9752.60,12,0
    .goto 1429/0,87.04,-9745.65,40 >>Dirigez-vous vers |cRXP_ENEMY_Dent-d'or|r
step
    #label Goldtooth
    .goto 1429/0,87.04,-9745.65
    >>Tuez |cRXP_ENEMY_Goldtooth|r. Dépouillez-le pour le |cRXP_LOOT_Bernice's Necklace|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto 1429/0,176.93,-9857.68,35,0
	.goto 1429/0,176.24,-9902.12,35,0
	.goto 1429/0,223.09,-9916.240,35,0
	.goto 1429/0,259.54,-9865.09,35,0
	.goto 1429/0,215.81,-9830.600,35,0
	.goto 1429/0,176.93,-9857.68,35,0
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r et les |cRXP_ENEMY_Mineurs kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto 1429/0,102.31,-9787.78,-1
    .goto 1429/0,86.34,-9756.30,-1
    .goto 1429/0,80.79,-9740.56,-1
    .goto 1429/0,141.88,-9794.03,-1
    .goto 1429/0,150.55,-9825.04,-1
    .goto 1429/0,117.23,-9819.95,-1
    .goto 1429/0,135.98,-9775.28,-1
    .goto 1429/0,171.38,-9339.44,30 >>|cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte en sautant sur un déchiqueteur, les bûches flottantes, les caisses, ou le chariot dans la grotte, puis déconnectez-vous et reconnectez-vous|r
    >>|cRXP_WARN_Sinon, vous pouvez retourner à Comté-de-l'Or à pieds|r
    >>|cRXP_WARN_NOTE : Itemrack peut actuellement causer des problèmes après un Logout skip où votre interface du jeu se figera. Assurez-vous de désactiver l'addon ou de créer une macro /reload que vous pouvez utiliser si cela se produit|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLIQUEZ ICI pour apprendre à faire le Logout skip|r
step
    #completewith next
    .subzone 87 >> Retourner à Comté-de-l'Or
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rémi|r
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r à travers le mur en entrant à l'auberge
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
    .target William Pestle
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
    >>|cRXP_BUY_Achetez 35|r |T132815:0|t[Lait glacé] |cRXP_BUY_au marchand|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Achetez une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_à Brog|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto 1429/0,34.63,-9466.28,10,0
    .goto 1429/0,47.12,-9456.10,12 >> Quittez l'auberge
step
    .goto 1429/0,-215.62,-9390.60,50,0
    .goto 1429/0,-237.83,-9438.28,50,0
    .goto 1429/0,-292.32,-9442.91,50,0
    .goto 1429/0,-342.3,-9391.75,50,0
    .goto 1429/0,-459.62,-9402.63,50,0
    .goto 1429/0,-421.09,-9478.780
    >>Tuez les |cRXP_ENEMY_Ruisseliers murlocs|r et les |cRXP_ENEMY_Murlocs|r. Dépouillez-les pour les |cRXP_LOOT_Feuilles de varech cristallin|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Ruisseliers murloc|r |T132307:0|tsont très rapides|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto 1429/0,-604.70,-9188.53,12 >>Entrez dans la mine de Jasperlode
step
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-560.97,-9100.58
    >>Suivez le chemin du milieu dans la grotte
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Géomanciens kobold|r qui lancent|r |T135812:0|t[Boule de feu] |cRXP_WARN_(À distance : inflige environ 30 dégâts)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-609.91,-9186.91,15 >>Quittez la mine de Jasperlode
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
    .target Guard Thomas
step
    #completewith next
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-984.06,-9457.950,45,0
    .goto 1429/0,-950.05,-9347.31,50,0
    >>Tuez tous les |cRXP_ENEMY_Jeunes ours des forêts|r que vous croisez et les |cRXP_ENEMY_Rôdeurs|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-986.14,-9335.97
	>>Cliquez sur le |cRXP_PICK_Corps à moitié dévoré|r par terre
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #completewith Bears
    .goto 1429/0,-1198.91,-9350.09,70,0
    >>Tuez tous les |cRXP_ENEMY_Jeunes ours des forêts|r que vous croisez et les |cRXP_ENEMY_Rôdeurs|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Fagots de bois|r en bas des arbres
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1233.96,-9224.41,45 >> Dirigez-vous vers le |cRXP_PICK_Cadavre de Rolf|r
    .isOnQuest 45
step
    .goto 1429/0,-1233.96,-9224.41
    >>Tuez les |cRXP_ENEMY_Rôdeurs murloc|r et les |cRXP_ENEMY_Fourrageurs murloc|r autour du |cRXP_PICK_Cadavre de Rolf|r
    >>|cRXP_WARN_Vous devrez peut-être en tuer un puis réinitialiser le combat|r
    >>Attention car les |cRXP_ENEMY_Rôdeurs murloc|r lancent |T132090:0|t[Attaque sournoise] |cRXP_WARN_(Instantané en mêlée: inflige des dégâts doubles par l'arrière) et les |cRXP_ENEMY_Fourrageurs murloc|r lancent|r |T135915:0|t[Boire une potion mineure] |cRXP_WARN_(Soin d'environ 65 dégâts sur eux-mêmes)|r
	>>Cliquez sur le |cRXP_PICK_Cadavre de Rolf|r par terre
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1230.14,-9150.34,35,0
	.goto 1429/0,-1271.10,-9147.10,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1232.92,-9251.950,35,0
	.goto 1429/0,-1246.46,-9329.03,35,0
	.goto 1429/0,-1249.58,-9362.13,35,0
	.goto 1429/0,-1285.33,-9365.14,35,0
	.goto 1429/0,-1296.09,-9389.44,35,0
	.goto 1429/0,-1338.09,-9331.11,35,0
	.goto 1429/0,-1354.05,-9354.26,35,0
	.goto 1429/0,-1362.03,-9309.59,35,0
	.goto 1429/0,-1302.68,-9309.12,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
    >>Ramassez les |cRXP_PICK_Fagots de bois|r en bas des arbres
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
    .target Sara Timberlain
step
    .goto 1429/0,-1069.44,-9618.58,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34,45,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34
    >>Tuez tous les |cRXP_ENEMY_Jeunes ours des forêts|r que vous croisez et les |cRXP_ENEMY_Rôdeurs|r
    >>|cRXP_WARN_Infligez la majorité des dégâts (51%) ou plus aux |cRXP_ENEMY_Jeunes ours des forêts|r et aux |cRXP_ENEMY_Rôdeurs|r, puis amenez-les sur les |cRXP_FRIENDLY_Gardes de Hurlevent|r pour les tuer plus rapidement|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target Guard Thomas
    .xp <9,1
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto 1429/0,-909.79,-9720.42,40,0
	.goto 1429/0,-848.35,-9714.64,40,0
	.goto 1429/0,-832.73,-9739.87,40,0
	.goto 1429/0,-817.81,-9808.84,40,0
	.goto 1429/0,-841.76,-9853.28,40,0
	.goto 1429/0,-918.81,-9825.51,40,0
	.goto 1429/0,-916.03,-9806.53,40,0
	.goto 1429/0,-946.58,-9767.18,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-942.06,-9716.49,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-909.79,-9720.42,40,0
    >>Tuez les |cRXP_ENEMY_Bandits défias|r. Dépouillez-les pour les |cRXP_LOOT_Masques rouge en lin|r et le |T134939:0|t[|cRXP_LOOT_Titre de propriété de la marche de l'Ouest|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
    .itemcount 1972,1
step
    .goto 1429/0,-890.35,-9780.14
    >>Tuez |cRXP_ENEMY_Princesse|r. Dépouillez-la pour le |cRXP_LOOT_Collier de cuivre|r
    >>|cRXP_WARN_Souvenez-vous de la kite en utilisant la clôture|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto 1433/0,-1779.67,-9608.23
    .zone Redridge Mountains >> Voyagez jusqu'aux Carmines
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Suivez attentivement la route vers |cRXP_FRIENDLY_Ariena|r. Évitez les |cRXP_ENEMY_Tarantules|r et les |cRXP_ENEMY_Dragonnets noirs|r sur la route|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r
    .turnin 112 >> Rendez la quête À la recherche du varech
    .accept 114 >> Acceptez la quête La fuite
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dughan|r et à |cRXP_FRIENDLY_Argus|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target +Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .accept 1097 >> Acceptez la quête La quête d'Elmore
    .target +Smith Argus
    .goto 1429/0,87.87,-9456.65
step
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r à l'intérieur
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maman|r et à |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Rendez la quête Princesse doit mourir !
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .turnin 87 >> Rendez la quête Dent-d'or
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Montez votre expérience jusqu'à 4225+/6500xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Montez votre expérience jusqu'à 4825+/6500xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .target +Verna Furlbrow
    .goto 1436/0,919.82,-9852.90
step
    #completewith next
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r puis à |cRXP_FRIENDLY_Salma|r à l'intérieur
    .accept 9 >>Acceptez la quête Les champs de mort
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
    .target +Salma Saldean
    .goto 1436/0,1041.97,-10112.13
step
    #completewith next
    >>|cRXP_WARN_Faites TRÈS attention aux |cRXP_ENEMY_Gardiens des moissons|r et aux |cRXP_ENEMY_Golems des moissons|r sur la route|r
    .goto 1436/0,1045.12,-10508.80,20 >>Voyagez vers |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan|r, à |cRXP_FRIENDLY_Danuvin|r, puis à |cRXP_FRIENDLY_Lewis|r à l'intérieur
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .accept 12 >> Acceptez la quête La milice du peuple
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
    .target +Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 6181 >> Acceptez la quête Un message rapide
    .goto 1436/0,1021.60,-10500.61
    .target +Quartermaster Lewis
step
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .target Thor
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
	.target Thor
step
    #completewith next
    .goto 1453/0,532.74,-8863.09,20,0
    .goto 1453/0,599.55,-8811.28,20,0
    .goto 1453/0,613.93,-8833.07,20,0
    .goto 1453/0,620.79,-8859.6,12,0
    .goto 1453/0,625.49,-8857.89,12 >>Voyagez vers |cRXP_FRIENDLY_Morgan|r
step
    .goto 1453/0,625.49,-8857.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    .target Morgan Pestle
step
    .goto 1453/0,635.44,-8863.81
    >>Parlez à |cRXP_FRIENDLY_Keldric Boucher|r
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
step << skip
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    .goto 1453/0,861.95,-8990.47,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto 1453/0,861.95,-8990.47
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe (Armure de givre Rang 2, Nova de givre, Métamorphose, Invocation d'eau Rang 1 & Rang 2)
    >>Coût total : 15 pièces d'argent
    >>Souvenez-vous que vous voulez aussi peut-être garder de l'argent pour les Potions de soins (3 pièces d'argent chacune), le Tube en bronze (8 pièces d'argent chacun) et la nourriture de niveau 5 (20 pièces de cuivre pour 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto 1453/0,893.0,-9021.93,6 >>Entrez dans le portail vert
step
    #completewith next
    .goto 1453/0,610.44,-8809.04,10,0
    .goto 1453/0,599.01,-8797.84,12,0
    .goto 1453/0,603.85,-8769.42,12,0
    .goto 1453/0,573.74,-8741.37,12,0
    .goto 1453/0,473.05,-8699.06,12,0
    .goto 1453/0,426.4,-8714.66,12,0
    .goto 1453/0,382.04,-8702.11,12 >>Voyagez vers |cRXP_FRIENDLY_Osric|r
step
    .goto 1453/0,382.04,-8702.11
    >>Parlez à |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    .accept 6261 >> Acceptez la quête Dungar Grangodet
    .target Osric Strang
step
    #completewith next
    .goto 1453/0,450.74,-8644.11,15,0
    .goto 1453/0,479.91,-8639.81,15,0
    .goto 1453/0,514.05,-8608.26,15,0
    .goto 1453/0,507.6,-8541.66,15,0
    .goto 1453/0,683.43,-8397.08,12,0
    .goto 1453/0,685.18,-8387.13,12 >>Voyagez vers |cRXP_FRIENDLY_Grimand|r
step
    .goto 1453/0,685.18,-8387.13
    >>Parlez à |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step
    .goto 1453/0,638.26,-8342.22
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Entrez dans le Tram des profondeurs
step
    #completewith next
    +|cRXP_WARN_Montez dans le Tram des profondeurs tout en lançant en boucle|r |T132794:0|t[Invocation d'eau Rang 2]
step
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Parlez à |cRXP_FRIENDLY_Monty|r après avoir pris le tram
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    >>Utilisez le |T133942:0|t[Pipeau du dératiseur] sur les |cRXP_FRIENDLY_Rats des profondeurs|r dans le Tram des profondeurs
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Parlez à |cRXP_FRIENDLY_Monty|r
--  >>|cRXP_WARN_Wait out the RP|r
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >> Entrez dans Ironforge
    .isQuestAvailable 314
step
    .goto 1455/0,-1249.87,-4793.31
    >>Parlez à |cRXP_FRIENDLY_Tournepignon|r
    .vendor 5175 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1455/0,-1266.48,-4749.31,30,0
    .goto 1455/0,-1211.92,-4728.00,30,0
    .goto 1455/0,-1170.41,-4754.48,30,0
    .goto 1455/0,-1152.31,-4821.12,10 >>Voyagez vers |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Voyagez vers |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Armure de givre Rang 2, Nova de givre, Métamorphose, Invocation d'eau Rang 1 & Rang 2)
    >>Coût total : 15 pièces d'argent
    >>Souvenez-vous que vous voulez aussi peut-être garder de l'argent pour les Potions de soins (3 pièces d'argent chacune), le Tube en bronze (8 pièces d'argent chacun) et la nourriture de niveau 5 (20 pièces de cuivre pour 5)
    .target Dink
step
    #completewith next
    .goto 1455/0,-929.04,-4636.72,20,0
    .goto 1455/0,-892.19,-4770.42,20,0
    .goto 1455/0,-874.88,-4849.87,20,0
    >>Entrez dans le bâtiment
    .goto 1455/0,-857.01,-4840.69,10 >>Voyagez vers |cRXP_FRIENDLY_Brassefeu|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Parlez à |cRXP_FRIENDLY_Brassefeu|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto 1455/0,-974.89,-4902.21,20,0
    .goto 1455/0,-997.66,-4886.49,30 >>Entrez dans la banque de Forgefer
step
    .goto 1455/0,-997.66,-4886.49
    >>Parlez à |cRXP_FRIENDLY_Bailey Mantepierre|r
    .bankdeposit 4371,16115 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T132763:0|t[Caisse d'Osric]
    .target Bailey Stonemantle
step << skip
    .goto 1455/0,-1000.98,-4874.62
    .goto 1426/0,-809.64,-5049.56,10 >>|cRXP_WARN_Sautez en haut sur les côtés du coffre-fort. Effectuez la technique de Logout skip pour retourner à Dun Morogh|r
    .isQuestAvailable 314
step
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Quittez Ironforge
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Human Mage
#name 1-11 Dun Morogh Humain Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Human Mage
#next 10-12 Sombrivage 1 Mage AoE Avancé

step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour le |cRXP_LOOT_Croc de Vagash|r
    >>|cRXP_WARN_Attirez (kite) |cRXP_ENEMY_Vagash|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r au sud du ranch. Assurez-vous d'infliger au moins 51 %+ de dégâts|r
    >>|cRXP_WARN_N'oubliez pas d'obtenir l'expérience de l'exploration des Collines de Tundrid et d'attirer le |cRXP_ENEMY_Léopard des neiges|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r si cela est plus pratique|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_N'oubliez pas de garder vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous obtenez en montant de niveau pour monter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Attirez (kite) l' |cRXP_ENEMY_Ours Griffeglace|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Forgefer|r (assurez-vous d'infliger 51 %+ de dégâts pour qu'il compte pour vous)|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Parlez au |cRXP_FRIENDLY_Cuisinier Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 15|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r et à |cRXP_FRIENDLY_Front-de-pierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    >>|cRXP_WARN_Ne changez pas votre route pour les tuer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Entrez dans la grotte
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Tuez les |cRXP_ENEMY_Briseurs d'os Mâcheroc|r à l'intérieur de la grotte
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132154:0|t[Renverser] |cRXP_WARN_(Attaque en mêlée Instantanée: Étourdit pendant 2 secondes)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Parlez à |cRXP_FRIENDLY_Frast Dokner|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Parlez à |cRXP_FRIENDLY_Front-de-pierre|r et au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Parlez à |cRXP_FRIENDLY_Dank Coupebruine|r
    .train 2575 >> Apprenez [Minage]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Prenez le raccourci derrière |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Attirez (kite) les |cRXP_ENEMY_Embusqués Mâcheroc|r à proximité vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r qui patrouillent le long de la route (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte pour vous)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    >>|cRXP_WARN_ASSUREZ-VOUS d'avoir un emplacement libre dans vos sacs. |cRXP_ENEMY_Griffe galeuse|r ne descendra pas si vous n'acceptez pas la quête suivante|r
    >>|cRXP_WARN_N'OUBLIEZ PAS de kite |cRXP_ENEMY_Griffe galeuse|r en revenant auprès du |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Tuez |cRXP_ENEMY_Griffe galeuse|r. Dépouillez-le pour la |cRXP_LOOT_Griffe galeuse|r
    >>|cRXP_WARN_Attirez-le (kite) jusqu'au |cRXP_FRIENDLY_Pilote Martèlepied|r (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417,1 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Revenez par le tunnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafré|r sur le chemin
    .goto 1426/0,-2347.72,-5483.62,20 >>Prenez le raccourci (skip) par la montagne. Souvenez-vous de vous laisser tomber avec prudence
    .mob Scarred Crag Boar
step
    .goto 1432/0,-2518.11,-5625.83
    >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .zone Loch Modan >> Traversez le tunnel pour le Loch Modan
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_Essayez d'attirer (kite) un |cRXP_ENEMY_Ancien ours noir|r ou une |cRXP_ENEMY_Rôdeuse des forêts|r dans le Bunker avec vous (n'oubliez pas d'infliger au moins 51% de dégâts pour qu'il compte)|r
    >>|cRXP_WARN_Dépouillez les |cRXP_ENEMY_Anciens ours noirs|r pour leur|r |T134027:0|t[|cRXP_LOOT_Viande d'ours|r]
    >>|cRXP_WARN_Dépouillez les |cRXP_ENEMY_Rôdeuses des forêts|r pour leur|r |T134437:0|t[|cRXP_LOOT_Ichor d'araignée|r]
    >>Le |cRXP_FRIENDLY_Montagnard Pave-silex|r|cRXP_WARN_, le |cRXP_FRIENDLY_Montagnard Gravegalle|r, et le |cRXP_FRIENDLY_Montagnard Cognemur|r ne vous aideront pas|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Retournez dans le tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Effectuez un Logout skip depuis le Brasero à l'intérieur du tunnel jusqu'à Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Voyagez à Thelsamar
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    >>Le |cRXP_FRIENDLY_Montagnard Kadrell|r |cRXP_WARN_patrouille le long de la route principale de Thelsamar|r
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Voyagez à Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto 1455/0,-1060.12,-4883.59,20,0
    .goto 1455/0,-1016.16,-4946.11,20,0
    .goto 1455/0,-980.03,-4971.49,10 >>|cRXP_WARN_Voyagez jusqu'à l'emplacement du Logout skip|r
step << skip
    .goto 1455/0,-980.03,-4971.49
    .zone Dun Morogh >>|cRXP_WARN_Positionnez votre personnage jusqu'à ce qu'il semble flotter sur le bord de la balustrade métallique. Effectuez un Logout skip pour retourner à Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Gnome Mage
#name 1-10 Dun Morogh Gnome Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Gnome Mage
#next 10-12 Sombrivage 1 Mage AoE Avancé


step << !Gnome Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T133816:0|t[Gravure de gants (Javelot de glace)])
step
    #completewith next
    +Vous avez sélectionné le guide Avancé. Il s'agit du guide le plus rapide pour la classe la plus rapide du jeu (Mage de l'Alliance). En conséquence, il y aura énormément de mécaniques de niche utilisées ainsi que pulls AoE très difficiles. Restez persévérant en apprenant ! Bonne chance !
step
    #completewith Adlin
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
    .target Sten Stoutarm
step
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Tuez les |cRXP_ENEMY_Jeunes loups décharnés|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de loup coriace|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    >>|cRXP_WARN_Assurez-vous de garder 10c pour plus tard|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Rudebras|r et  à|cRXP_FRIENDLY_Balir Martel-de-givre|r
    .turnin 179,3 >> Rendez la quête Tailleur chez les nains
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3114 >> Acceptez la quête Note de service glyphée
    .target +Sten Stoutarm
    .goto 1426/0,328.18,-6214.85
    .accept 170 >> Acceptez la quête Une nouvelle menace
    .goto 1426/0,338.87,-6216.46
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179,3 >> Rendez la quête Tailleur chez les nains
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3114 >> Acceptez la quête Note de service glyphée
    .target Sten Stoutarm
step
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #season 2
    .goto 1426/0,485.48,-6259.21
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r sur le sol. Récupérez les |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r
    >>|cRXP_WARN_NOTE : Vous ne pourrez pas vous apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_ici car vous ne pouvez obtenir qu'un seul|r |T133736:0|t[Manuel de compréhension] |cRXP_WARN_dans votre zone de départ|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome
    #season 2
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Entrez dans Anvilmar
step
    #season 2
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .accept 77667 >> Acceptez la quête Recherches sur les sorts << Gnome
    .turnin 77667 >> Rendez la quête Recherches sur les sorts << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Marryk Nurribit
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132961:0|t[Gants en étoffe rapiécés] avec|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,1
step
    #season 2
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Tuez les |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Rendez la quête Chasseur de sangliers
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 182 >> Acceptez la quête La caverne des trolls
    .target Grelin Whitebeard
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,485.63,-6494.56,30 >>Entrez dans la grotte
    .isOnQuest 182
step
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r à l'intérieur de la grotte
    >>|cRXP_WARN_Libérez-vous un chemin presque jusqu'à avant la salle du Lac Gelé|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,408.80,-6498.83,50,0
    .goto 1426/0,457.56,-6531.66,40,0
    .goto 1426/0,532.42,-6448.26,40,0
    .goto 1426/0,466.42,-6460.41,40,0
    .goto 1426/0,524.05,-6516.56,40,0
    .goto 1426/0,532.42,-6448.26
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r sur la route pour retourner vers |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << skip
    #completewith next
    +|cRXP_WARN_Si vous ne savez pas comment faire le Logout skip, regardez d'abord cette vidéo|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLIQUEZ ICI pour apprendre à faire le Logout skip|r
step << skip
    >>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r et à |cRXP_FRIENDLY_Nori Fièroblique|r
    >>|cRXP_WARN_Sachez que "Une livraison de thé brûlant" a un chrono de 5 minutes|r
    >>|cRXP_WARN_Assurez-vous d'avoir 3 emplacements libres dans vos sacs pour accepter/rendre les quêtes|r
    .turnin 182,4 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    >>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    >>|cRXP_WARN_Assurez-vous d'avoir 3 emplacements libres dans vos sacs pour accepter/rendre les quêtes|r
    .turnin 182,4 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
    .goto 1426/0,567.09,-6362.99
    .target +Grelin Whitebeard
step
    .goto 1426/0,485.63,-6494.56,40,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,340.84,-6493.24,10 >>|cRXP_WARN_Entrez dans la grotte. Courez à travers le chemin que vous avez dégagé (idéalement sans combattre) vers le Lac Gelé à l'intérieur|r
    .isOnQuest 218
step
    .goto 1426/0,300.94,-6509.00
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r devant vous|r
    >>Tuez |cRXP_ENEMY_Grik'nir le Froid|r. Dépouillez-le pour le |cRXP_LOOT_Journal de Grelin Blanchebarbe|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T135849:0|t[Horion de givre] |cRXP_WARN_(Instantané: Inflige 10 dégâts de Givre) et réduit la vitesse de déplacement de 50% pendant 8 secondes)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto 1426/0,342.81,-6487.330
    .goto 1426/0,336.40,-6164.25,30 >>|cRXP_WARN_Positionnez votre personnage jusqu'à ce que vous ayez l'air de flotter sur le bord de la falaise au-dessus du Lac Gelé, puis faites le Logout skip pour retourner à Courbenclume|r
    .isOnQuest 218
step
    >>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r et à |cRXP_FRIENDLY_Nori Fièroblique|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto 1426/0,384.18,-6143.90,20,0
    .goto 1426/0,392.06,-6123.87,10 >>Entrez dans Anvilmar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto 1426/0,390.58,-6101.21
    >>Parlez à |cRXP_FRIENDLY_Rybrad Rivefroide|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Parlez à |cRXP_FRIENDLY_Durnan Coupefourrure|r et à |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .goto 1426/0,385.16,-6056.23
    .target +Durnan Furcutter
    .turnin 3114 >> Rendez la quête Note de service glyphée
    .trainer >> Apprenez vos sorts de classe (Intelligence des arcanes, Éclair de givre)
    .goto 1426/0,388.17,-6056.10
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto 1426/0,338.87,-6216.46
    >>Parlez à |cRXP_FRIENDLY_Balir Martel-de-givre|r
    .turnin 170,3 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .waypoint 1426,27.858,76.482,50,0
    .waypoint 1426,28.946,77.153,50,0
    .waypoint 1426,29.716,77.605,50,0
    .waypoint 1426,30.727,76.831,50,0
    .waypoint 1426,32.814,75.221,50,0
    .waypoint 1426,31.138,74.048,50,0
    .waypoint 1426,30.077,74.479,50,0
    .waypoint 1426,29.280,75.500,50,0
    >>|cRXP_WARN_Tuez TOUS les |cRXP_ENEMY_Troggs Mâcheroc|r que vous croisez et les |r |cRXP_ENEMY_Troggs Mâcheroc mastocs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label StolenJ
    >>Parlez à |cRXP_FRIENDLY_Nori Fièroblique|r
    -- >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    -- .turnin 218,2 >> Turn in The Stolen Journal
    -- .accept 282 >> Accept Senir's Observations
    -- .goto 1426/0,567.09,-6362.99
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .goto 1426/0,571.82,-6371.10
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto 1426/0,338.87,-6216.46
    >>Parlez à |cRXP_FRIENDLY_Balir Martel-de-givre|r
    .turnin 170,3 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #requires TroggEnd
    #label Observations
    >>Parlez au |cRXP_FRIENDLY_Montagnard Thalos|r et à |cRXP_FRIENDLY_Mano Engrenaressort|r
    .turnin 282 >> Rendez la quête Les observations de Senir
    .accept 420 >> Acceptez la quête Les observations de Senir
    .goto 1426/0,153.00,-6235.86
    .target +Mountaineer Thalos
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
    .goto 1426/0,134.97,-6248.96
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Abandonnez la quête Une nouvelle menace
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Traversez la Passe des Frigères
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto 1426/0,3.97,-5943.61,40,0
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto 1426/0,-67.94,-5908.48,30,0
    .goto 1426/0,-162.50,-5822.79,45 >> |cRXP_WARN_Infligez au moins 51%+ de dégâts aux |cRXP_ENEMY_Jeunes Léopards des neiges|r et aux |cRXP_ENEMY_Jeunes ours noirs|r, puis attirez-les vers le |cRXP_FRIENDLY_Montagnard de Forgefer|r pour les tuer plus efficacement|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto 1426/0,-337.34,-5703.93,50,0
    .goto 1426/0,-371.81,-5605.43,50,0
    .goto 1426/0,-464.45,-5573.78,20 >>Voyagez vers |cRXP_FRIENDLY_Tharek|r
step
    .goto 1426/0,-464.45,-5573.78
    >>Parlez à |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
    .target Tharek Blackstone
step
    #label StockingJ
    .goto 1426/0,-632.15,-5466.540
    >>Kite les |cRXP_ENEMY_Jeunes ours noirs|r en route |cRXP_WARN_(faites en sorte d'infliger au moins 51%+ des dégâts ou plus pour qu'il compte pour vous)|r
    >>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .mob Young Black Bear
    .target Pilot Bellowfiz
step
    >>Parlez au |cRXP_FRIENDLY_Pilote Engrepierre|r, à |cRXP_FRIENDLY_Beldin Grillacier|r et à |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_WARN_Attirez les |cRXP_ENEMY_Jeunes ours noirs|r au |cRXP_FRIENDLY_Montagnard de Forgefer|r si vous en avez kite un (assurez-vous d'infliger au moins 51%+ de dégâts pour qu'il compte pour vous)|r
    .accept 313 >> Acceptez la quête L'antre Gris
    .target +Pilot Stonegear
    .goto 1426/0,-641.80,-5473.18
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .target +Beldin Steelgrill
    .goto 1426/0,-682.58,-5488.87
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
    .isQuestAvailable 312
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56
    >>Tuez les |cRXP_ENEMY_Jeunes ours noirs|r et les |cRXP_ENEMY_Ours Griffeglace|r. Dépouillez-les pour leur |cRXP_LOOT_Fourrures d'ours épaisses|r
    >>|cRXP_WARN_Attirez les |cRXP_ENEMY_Jeunes ours noirs|r et les |cRXP_ENEMY_Ours Griffeglace|r vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r (assurez-vous d'infliger au moins 51%+ de dégâts pour qu'il compte)|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-632.15,-5466.540
    >>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    .xp 5+2690 >> Montez votre expérience jusqu'à 2690+/2800xp
    .mob Young Black Bear
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_Déséquipez votre |r |T135148:0|t[Bâton] actuel
    -- +|cRXP_WARN_Remember the Inn Logout Skip soon. Unequip your current|r |T135148:0|t[Staff]
    -- >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload command you can click when/if that happens|r
step
    #completewith Tannok
    .cast 1459 >> Rafraîchissez votre |T135932:0|t[Intelligence des arcanes]
    .cast 168 >> Rafraîchissez votre |T135843:0|t[Armure de givre]
step
    .goto 1426/0,-504.29,-5596.24
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Entrez à l'intérieur
step
    .goto 1426/0,-523.35,-5590.82
    >>Parlez à |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Entrez à l'intérieur
step
    #sticky
    #label Tannok
    .goto 1426/0,-523.35,-5590.82,0,0
    >>Parlez à |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok
    .target Tannok Frosthammer
step
    .goto 1426/0,-537.29,-5587.04
    >>Parlez à |cRXP_FRIENDLY_Magis|r en haut des escaliers
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang2, Trait de feu)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto 1426/0,-504.29,-5596.24
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 20|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Belm|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 15|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 20|r |T132794:0|t[Eaux de source] |cRXP_BUY_à Belm|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 5|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto 1426/0,-535.32,-5604.120,-1
    .goto 1426/0,-519.07,-5679.96,35 >>|cRXP_WARN_Sautez sur l'un des tonneaux sur le mur derrière |cRXP_FRIENDLY_Belm|r. Effectuez un Logout skip pour revenir à Kharanos|r
step
    #sticky
    #label Golorn
    .goto 1426/0,-501.34,-5640.89,-1
    >>Parlez à |cRXP_FRIENDLY_Golorn Barbe-de-givre|r
    >>|cRXP_BUY_Achetez un|r |T135637:0|t[Couteau à dépecer] |cRXP_BUY_à Golorn|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto 1426/0,-499.17,-5644.37,-1
    >>Parlez à |cRXP_FRIENDLY_Senir|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +Équipez le |T135637:0|t[Couteau à dépecer]
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto 1426/0,-294.49,-5676.350,10,0
	.goto 1426/0,-261.00,-5666.83,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-261.98,-5565.70,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-294.49,-5676.350,10,0
    >>Tuez les |cRXP_ENEMY_Jeunes wendigo|r et les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux de wendigo|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T135848:0|t[Souffle de givre] |cRXP_WARN_(Sort de mêlée : Inflige 6-10 dégâts de Givre) et ont une|r |T135849:0|t[Résistance au Givre]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto 1426/0,-371.32,-5746.94
    >>Ouvrez la |cRXP_PICK_Caisse de munitions|r au sol. Récupérez-y les |cRXP_LOOT_Munitions pour Grondetrait|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Tuez les |cRXP_ENEMY_Sangliers des rochers|r et les |cRXP_ENEMY_Jeunes Léopards des neiges|r sur la route
    >>Dépouillez les |cRXP_ENEMY_Sanglier des rochers|r pour leur |cRXP_LOOT_Côtes de sanglier des rochers|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 25-70 dégâts de mêlée en touchant. Lançable uniquement à distance)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto 1426/0,-201.51,-6015.520,20 >>Voyagez vers |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Tuez les |cRXP_ENEMY_Sangliers des rochers|r et les |cRXP_ENEMY_Jeunes Léopards des neiges|r sur la route
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 25-70 dégâts de mêlée en touchant. Lançable uniquement à distance)|r
    .goto 1426/0,-201.51,-6015.520,20 >>Voyagez vers |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto 1426/0,-197.47,-5920.63,45,0
    .goto 1426/0,-201.51,-6015.520,20 >>Voyagez vers |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto 1426/0,-201.51,-6015.520
    >>Parlez à |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Infligez au moins 51%+ de dégâts aux |cRXP_ENEMY_Jeunes Léopards des neiges|r et aux |cRXP_ENEMY_Jeunes ours noirs|r, puis attirez-les vers le |cRXP_FRIENDLY_Montagnard de Forgefer|r pour les tuer plus efficacement|r
    >>Tuez les |cRXP_ENEMY_Grands sangliers des rochers|r et les |cRXP_ENEMY_Sangliers des rochers|r sur la route. Dépouillez-les pour leurs |cRXP_LOOT_Côtes de sanglier des rochers|r
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Grands sangliers des rochers|r et les |cRXP_ENEMY_Sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 25-70 dégâts de mêlée en touchant. Lançable uniquement à distance)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >> Montez au niveau 7 sur la route vers |cRXP_FRIENDLY_Tundra|r avant de lui parler
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestAvailable 384
step
    #completewith next
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Infligez au moins 51%+ de dégâts aux |cRXP_ENEMY_Jeunes Léopards des neiges|r et aux |cRXP_ENEMY_Jeunes ours noirs|r, puis attirez-les vers le |cRXP_FRIENDLY_Montagnard de Forgefer|r pour les tuer plus efficacement|r
    >>Tuez les |cRXP_ENEMY_Grands sangliers des rochers|r et les |cRXP_ENEMY_Sangliers des rochers|r sur la route
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Grands sangliers des rochers|r et les |cRXP_ENEMY_Sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 25-70 dégâts de mêlée en touchant. Lançable uniquement à distance)|r
    .xp 7 >> Montez au niveau 7 sur la route vers |cRXP_FRIENDLY_Tundra|r avant de lui parler
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto 1426/0,99.51,-5573.25
    >>Parlez à |cRXP_FRIENDLY_Tundra|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_Attirez un |cRXP_ENEMY_Ours Griffeglace|r vers|r |cRXP_FRIENDLY_Rejold Brasselorge|r
    >>|cRXP_WARN_Essayez d'accepter la quête avant que l' |cRXP_ENEMY_Ours Griffeglace|r ne meure pour que sa complétion compte dans la quête|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    >>Faites en sorte de lui infliger au moins 51%+ dégâts pour qu'il compte pour la quête
    .mob Ice Claw Bear
step
    >>Parlez à |cRXP_FRIENDLY_Rejold|r et à |cRXP_FRIENDLY_Marleth|r
    .turnin 318 >> Rendez la quête L'éternol
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
    .target +Rejold Barleybrew
    .goto 1426/0,315.23,-5378.55
    .accept 310 >> Acceptez la quête Bières rivales
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_de plus|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Tuez les |cRXP_ENEMY_Ours Griffeglace|r, les |cRXP_ENEMY_Anciens sangliers des rochers|r et les |cRXP_ENEMY_Léopards des neiges|r sur la route vers la grotte. Dépouillez les |cRXP_ENEMY_Anciens sangliers des rochers|r pour obtenir les |cRXP_LOOT_Côtes de sanglier des rochers|r
    >>|cRXP_WARN_Focalisez-vous sur les|r |cRXP_ENEMY_Léopards des neiges|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Ours Griffeglace|r lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Instantané en mêlée : Inflige 4 dégâts de mêlée supplémentaires), et les |cRXP_ENEMY_Anciens sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée au prochain coup. Peut seulement être lancé à distance)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .mob +Elder Crag Boar
    .isQuestAvailable 384
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Tuez les |cRXP_ENEMY_Ours Griffeglace|r, les |cRXP_ENEMY_Anciens sangliers des rochers|r, et les |cRXP_ENEMY_Léopards des neiges|r sur la route pour la grotte
    >>|cRXP_WARN_Focalisez-vous sur les|r |cRXP_ENEMY_Léopards des neiges|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Ours Griffeglace|r lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Instantané en mêlée : Inflige 4 dégâts de mêlée supplémentaires), et les |cRXP_ENEMY_Anciens sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée au prochain coup. Peut seulement être lancé à distance)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step << skip
    #completewith next
    .goto 1426/0,-69.42,-5281.36,30 >> Entrez à l'intérieur de la grotte
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto 1426/0,-85.18,-5300.74
    .goto 1426/0,-519.07,-5679.96,30 >> |cRXP_WARN_Effectuez un Logout Skip à l'intérieur de la grotte pour revenir à Kharanos|r
    .isOnQuest 319
step
    .goto 1426/0,-499.17,-5644.37
    >>Parlez à |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-522.02,-5585.07,12 >>Entrez à l'intérieur
step
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez une |r|T132800:0|t[Bière au malt Rhapsody] |cRXP_BUY_et une|r |T132800:0|t[Thunder Ale] |cRXP_BUY_à Belm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez-lui une|r [Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto 1426/0,-537.29,-5597.55,8,0
    .goto 1426/0,-548.13,-5598.54,8 >>Descendez les escaliers
step
    #completewith next
    .goto 1426/0,-544.68,-5606.09
    >>Parlez à |cRXP_FRIENDLY_Jarven|r en bas des escaliers
    .turnin 308 >> Rendez la quête Distraire Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-548.13,-5607.400
    >>Continuez à passer votre souris sur le |cRXP_PICK_Tonneau de Thunder Ale gardé|r en bas des escaliers. Attendez que le |cRXP_PICK_Tonneau de Thunder Ale gardé|r ne soit plus gardé
    >>Cliquez sur le |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Rendez la quête Bières rivales
    .accept 311 >> Acceptez la quête Retour chez Marleth
step
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_de plus|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto 1426/0,-522.02,-5585.07,12,0
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-504.29,-5596.24,20 >>Quittez l'auberge
    .isOnQuest 287
step
    .goto 1426/0,-504.29,-5596.24
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto 1426/0,-495.43,-5434.04,40,0
    +|cRXP_WARN_Infligez 51%+ dégâts aux |cRXP_ENEMY_Loups pisteurs des neiges|r, aux |cRXP_ENEMY_Loups blancs|r, et aux |cRXP_ENEMY_Jeunes ours noirs|r. Attirez-les vers le |cRXP_FRIENDLY_Montagnard de Forgefer|r pour les tuer plus efficacement|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Loups pisteurs des neiges|r ont une|r |T132150:0|t[Portée d'aggro accrue] |cRXP_WARN_(La portée d'aggro est augmentée par environ 8 yards)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto 1426/0,-311.23,-5360.16,25,0
    .goto 1426/0,-282.18,-5363.45,45 >> Allez vers la rampe en direction des |cRXP_ENEMY_Prophètes Crins-de-givre|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>Tuez la patrouille du |cRXP_ENEMY_Chasseur de têtes Crins-de-givre|r
    >>|cRXP_WARN_Soyez prudent, car il patrouille entre tous les |rProphètes Crins-de-givre|cRXP_ENEMY_ immobiles|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132222:0|t[Tir] |cRXP_WARN_(À distance : inflige 8-15 dégâts)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto 1426/0,-269.86,-5370.34,40,0
    .goto 1426/0,-271.83,-5342.43,40,0
    .goto 1426/0,-250.16,-5306.32,40,0
    .goto 1426/0,-230.46,-5333.90,20,0
    .goto 1426/0,-240.81,-5354.91,30,0
    .goto 1426/0,-221.11,-5349.99,30,0
    .goto 1426/0,-224.06,-5372.31,40,0
    .goto 1426/0,-184.66,-5283.66,40,0
    .goto 1426/0,-151.66,-5186.15,20,0
    .goto 1426/0,-164.96,-5114.900,20,0
    .goto 1426/0,-258.54,-5046.93
    >>Tuez les |cRXP_ENEMY_Frostmane Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Shimmerweed|r
    >>Ouvrez les |cRXP_PICK_Shimmerweed Baskets|r sur le sol. Récupérez les |cRXP_LOOT_Shimmerweed|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T136048:0|t[Eclair] |cRXP_WARN_(À distance : inflige 15-30 dégâts de nature)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #completewith IBCave
    >>Tuez les |cRXP_ENEMY_Grands sangliers des rochers|r et les |cRXP_ENEMY_Anciens sangliers des rochers|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Côtes de sanglier des rochers|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob Elder Crag Boar
step
    #completewith next
    .goto 1426/0,-190.08,-5427.80,40,0
    .goto 1426/0,-55.63,-5580.48,40,0
    >>Tuez les deux |cRXP_ENEMY_Anciens sangliers des rochers|r sur la route vers la grotte (s'ils sont là)
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25--85 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto 1426/0,-62.03,-5640.56,50 >>Voyagez en direction de la grotte
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Après l'avoir dépouillé, sautez et pivotez pour ne pas lui montrer votre dos pour éviter l'Hébétement et sur le tronc pour l'esquiver temporairement|r
step
    .goto 1426/0,-94.53,-5647.79
    >>|cRXP_WARN_Si le |cRXP_ENEMY_Vieux Barbeglace|r est dans la grotte, attirez-le en montant le long de la paroi, puis jusqu'au sommet. Attendez qu'il s'approche, puis redescendez en sautant et allez vers le fond de la grotte|r
    >>Ouvrez le |cRXP_PICK_Placard à viande de MacGrann|r au sol. Ouvrez-le pour obtenir la |cRXP_LOOT_Viande séchée de MacGrann|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto 1426/0,99.51,-5573.25
    >>Parlez à |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Tuez les |cRXP_ENEMY_Ours Griffeglace|r, les |cRXP_ENEMY_Anciens sangliers des rochers|r et les |cRXP_ENEMY_Léopards des neiges|r. Dépouillez les |cRXP_ENEMY_Anciens sangliers des rochers|r pour obtenir les |cRXP_LOOT_Côtes de sanglier des rochers|r
    >>|cRXP_WARN_Rappelez-vous de ramener les |cRXP_ENEMY_Ours Griffeglace|r ou les |cRXP_ENEMY_Léopards des neiges|r vers le donneur de quête si possible|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Ours Griffeglace|r lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Instantané en mêlée : Inflige 4 dégâts de mêlée supplémentaires), et les |cRXP_ENEMY_Anciens sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_Augmente la vitesse de déplacement pendant 3 secondes, inflige 35-85 dégâts de mêlée au prochain coup. Peut seulement être lancé à distance)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .mob Elder Crag Boar
    .isQuestAvailable 384
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, et les |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Rappelez-vous de ramener les |cRXP_ENEMY_Ours Griffeglace|r ou les |cRXP_ENEMY_Léopards des neiges|r vers le donneur de quête si possible|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Ours Griffeglace|r lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Instantané en mêlée : Inflige 4 dégâts de mêlée supplémentaires), et les |cRXP_ENEMY_Anciens sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_Augmente la vitesse de déplacement pendant 3 secondes, inflige 35-85 dégâts de mêlée au prochain coup. Peut seulement être lancé à distance)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    >>Parlez à |cRXP_FRIENDLY_Rejold|r et à |cRXP_FRIENDLY_Marleth|r
    .turnin 315,1 >> Rendez la quête La bière brune parfaite
    .accept 413 >> Acceptez la quête La Brune scintillante
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
    .goto 1426/0,315.28,-5378.39
    .turnin 311 >> Rendez la quête Retour chez Marleth
    .goto 1426/0,315.42,-5372.02
    .target Rejold Barleybrew
step
    .goto 1426/0,302.42,-5387.74
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto 1426/0,302.42,-5387.74
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_de plus|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 35-85 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto 1426/0,564.92,-5503.65,35,0
    .goto 1426/0,573.79,-5538.78,12 >>Entrez dans la grotte par le côté nord
step
    .goto 1426/0,605.80,-5545.020,40,0
    .goto 1426/0,654.07,-5563.40
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132222:0|t[Tir] |cRXP_WARN_(À distance : inflige 8-15 dégâts)|r
    >>|cRXP_WARN_Faites attention au |cRXP_ENEMY_Chasseur de têtes Crins-de-givre|r qui patrouille à l'intérieur|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto 1426/0,668.84,-5585.73,8,0
    .goto 1426/0,674.26,-5587.37
    >>|cRXP_WARN_MARCHEZ lentement dans la petite zone ci-dessous (ne TOMBEZ PAS). Descendez pas à pas dans l'encoche jusqu'à obtenir la complétion|r
    >>|cRXP_WARN_Faites attention à l' |cRXP_ENEMY_Ecorcheur Crins-de-givre|r en dessous, comme il pourrait être capable de vous attaquer sur l'encoche s'il s'en rapproche|r
    >>|cRXP_WARN_Préparez-vous à utiliser votre|r |T134414:0|t[Pierre de foyer]
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_Rappelez-vous le Logout skip de l'auberge très bientôt !|r
step
    #completewith Senir2
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step
    .goto 1426/0,-531.38,-5601.49
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto 1426/0,-537.29,-5587.04
    >>Parlez à |cRXP_FRIENDLY_Magis|r en haut des escaliers
    .trainer >> Apprenez vos sorts de classe (Éclair de givre Rang 2, Métamorphose)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_N'oubliez pas de garder vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous obtenez en montant de niveau pour monter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
step
    .goto 1426/0,-504.29,-5596.24
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto 1426/0,-499.17,-5644.37
    >>Parlez à |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >> Rafraîchissez votre |T135932:0|t[Intelligence des arcanes]
    .cast 168 >> Rafraîchissez votre |T135843:0|t[Armure de givre]
step
    >>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r et au |cRXP_FRIENDLY_Pilote Engrepierre|r
    .turnin 320,2 >> Rendez la quête Retour vers Claquesoufflet
    .target +Pilot Bellowfiz
    .goto 1426/0,-632.15,-5466.540
    .turnin 313 >> Rendez la quête L'antre Gris
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    #completewith next
    +|cRXP_WARN_Infligez au moins 51%+ de dégâts aux |cRXP_ENEMY_Loups blancs|r à proximité, puis attirez-les vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r qui patrouillent sur la route pour les tuer plus efficacement|r
    >>|cRXP_WARN_Si vous ne voyez pas les |cRXP_FRIENDLY_Montagnards de Forgefer|r, passez cette étape|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour le |cRXP_LOOT_Croc de Vagash|r
    >>|cRXP_WARN_Attirez (kite) |cRXP_ENEMY_Vagash|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r au sud du ranch. Assurez-vous d'infliger au moins 51 %+ de dégâts|r
    >>|cRXP_WARN_N'oubliez pas d'obtenir l'expérience de l'exploration des Collines de Tundrid et d'attirer le |cRXP_ENEMY_Léopard des neiges|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r si cela est plus pratique|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_N'oubliez pas de garder vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous obtenez en montant de niveau pour monter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Attirez (kite) l' |cRXP_ENEMY_Ours Griffeglace|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Forgefer|r (assurez-vous d'infliger 51 %+ de dégâts pour qu'il compte pour vous)|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Parlez au |cRXP_FRIENDLY_Cuisinier Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 15|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Parlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r et à |cRXP_FRIENDLY_Front-de-pierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    >>|cRXP_WARN_Ne changez pas votre route pour les tuer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Entrez dans la grotte
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Tuez les |cRXP_ENEMY_Briseurs d'os Mâcheroc|r à l'intérieur de la grotte
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132154:0|t[Renverser] |cRXP_WARN_(Attaque en mêlée Instantanée: Étourdit pendant 2 secondes)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Parlez à |cRXP_FRIENDLY_Frast Dokner|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Frast Dokner
step
    >>Parlez à |cRXP_FRIENDLY_Front-de-pierre|r et au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Parlez à |cRXP_FRIENDLY_Dank Coupebruine|r
    .train 2575 >> Apprenez [Minage]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Prenez le raccourci derrière |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Attirez (kite) les |cRXP_ENEMY_Embusqués Mâcheroc|r à proximité vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r qui patrouillent le long de la route (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte pour vous)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    >>|cRXP_WARN_ASSUREZ-VOUS d'avoir 1 emplacement libre dans vos sacs pour rendre cette quête|r
    >>|cRXP_WARN_Souvenez-vous que vous allez amener |cRXP_ENEMY_Griffe galeuse|r vers le |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Tuez |cRXP_ENEMY_Griffe galeuse|r. Dépouillez-le pour la |cRXP_LOOT_Griffe galeuse|r
    >>|cRXP_WARN_Attirez-le (kite) jusqu'au |cRXP_FRIENDLY_Pilote Martèlepied|r (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417,1 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Revenez par le tunnel
step
    .goto 1426/0,-2075.37,-5511.20
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Sangliers des rochers balafrés|r et les |cRXP_ENEMY_Anciens sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Lançable seulement à distance), et les |cRXP_ENEMY_Ours Griffeglace|r lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Instantané en mêlée: Inflige 4 dégâts de mêlée supplémentaires)|r
    .xp 9+5450 >> Montez votre expérience jusqu'à 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafré|r sur le chemin
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .goto 1426/0,-2347.72,-5483.62,20 >>Prenez le raccourci (skip) par la montagne. Souvenez-vous de vous laisser tomber avec prudence
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Sangliers des rochers balafrés|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Lançable uniquement à distance)|r
    .xp 9+5990 >> Montez votre expérience jusqu'à 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto 1426/0,-2447.11,-5479.74
    >>Parlez à |cRXP_FRIENDLY_Brasselorge|r
    .turnin 413 >> Rendez la quête La Brune scintillante
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
    .target Mountaineer Barleybrew
step
    .goto 1426/0,-2469.86,-5504.96,40,0
    .goto 1426/0,-2451.15,-5432.07
    .xp 9+6320 >> Montez votre expérience jusqu'à 6320+/6500xp
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Sangliers des rochers balafrés|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Lançable uniquement à distance)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto 1432/0,-2447.50,-5564.39,20,0
    .goto 1432/0,-2534.11,-5642.02,30 >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto 1432/0,-2576.86,-5805.01,35,0
	.goto 1432/0,-2519.49,-5875.65,35,0
	.goto 1432/0,-2570.52,-5916.30,35,0
	.goto 1432/0,-2576.86,-5805.01,35,0
    .xp 10 >> Montez jusqu'au niveau 10
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_Essayez d'attirer (kite) un |cRXP_ENEMY_Ancien ours noir|r ou une |cRXP_ENEMY_Rôdeuse des forêts|r dans le Bunker avec vous (n'oubliez pas d'infliger au moins 51% de dégâts pour qu'il compte)|r
    >>|cRXP_WARN_Dépouillez les |cRXP_ENEMY_Anciens ours noirs|r pour leur|r |T134027:0|t[|cRXP_LOOT_Viande d'ours|r]
    >>|cRXP_WARN_Dépouillez les |cRXP_ENEMY_Rôdeuses des forêts|r pour leur|r |T134437:0|t[|cRXP_LOOT_Ichor d'araignée|r]
    >>Le |cRXP_FRIENDLY_Montagnard Pave-silex|r|cRXP_WARN_, le |cRXP_FRIENDLY_Montagnard Gravegalle|r, et le |cRXP_FRIENDLY_Montagnard Cognemur|r ne vous aideront pas|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Retournez dans le tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Effectuez un Logout skip depuis le Brasero à l'intérieur du tunnel jusqu'à Thelsamar|r
    .isOnQuest 414
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    >>Le |cRXP_FRIENDLY_Montagnard Kadrell|r |cRXP_WARN_patrouille le long de la route principale de Thelsamar|r
    .turnin 414 >>Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Parlez à |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Il peut être à l'intérieur ou à l'extérieur du bâtiment|r
    .accept 6387 >>Acceptez la quête L'honneur des étudiants
    .target Brock Stoneseeker
step
    .goto 1432/0,-2929.93,-5424.95
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .turnin 6387 >>Rendez la quête L'honneur des étudiants
    .accept 6391 >>Acceptez la quête Voyage vers Forgefer
    .target Thorgrum Borrelson
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Voyagez à Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto 1455/0,-1154.84,-4771.58,30,0
    .goto 1455/0,-1123.37,-4726.31,15,0
    .goto 1455/0,-1106.29,-4718.18,12,0
    >>Entrez dans le bâtiment
    .goto 1455/0,-1121.08,-4708.000,10 >>Voyagez vers |cRXP_FRIENDLY_Golnir Rochorteil|r
step
    .goto 1455/0,-1121.08,-4708.000
    >>Parlez à |cRXP_FRIENDLY_Golnir Rochorteil|r
    .turnin 6391 >>Rendez la quête Voyage vers Forgefer
    .accept 6388 >>Acceptez la quête Gryth Thurden
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto 1455/0,-1106.29,-4718.18,12,0
    .goto 1455/0,-1154.84,-4771.58,30,0
    >>Quittez le bâtiment
    .goto 1455/0,-1152.31,-4821.12,10 >>Voyagez vers |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Rendez la quête Gryth Thurden
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1148.99,-4840.22,30,0
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1082.58,-4836.00,20,0
    .goto 1455/0,-1062.42,-4835.00,20,0
    .goto 1455/0,-1026.28,-4872.56,10 >>Voyagez vers le |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
step
    .goto 1455/0,-1026.28,-4872.56
    >>Parlez au |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
    .turnin 291 >>Rendez la quête Les rapports
    .target Senator Barin Redstone
step
    #completewith next
    .goto 1455/0,-1064.87,-4828.19,20,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Voyagez vers |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Armure de givre Rang 2, Nova de givre, Métamorphose, Invocation d'eau Rang 1 & Rang 2)
    >>Coût total : 15 pièces d'argent
    >>Souvenez-vous que vous voulez aussi peut-être garder de l'argent pour les Potions de soins (3 pièces d'argent chacune), le Tube en bronze (8 pièces d'argent chacun) et la nourriture de niveau 5 (20 pièces de cuivre pour 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Souvenez-vous du Logout skip sur les Bougies après avoir lié votre|r |T134414:0|t[Pierre de foyer]
step
    #completewith next
    --.goto 1455/0,-929.04,-4636.72,20,0
    --.goto 1455/0,-892.19,-4770.42,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Entrez dans le bâtiment
    .goto 1455/0,-857.01,-4840.69,10 >>Voyagez vers |cRXP_FRIENDLY_Brassefeu|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Parlez à |cRXP_FRIENDLY_Brassefeu|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
step << skip
    .goto 1455/0,-864.68,-4847.820
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur les Bougies sur la table. Effectuez un Logout skip pour revenir à Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 10-12 Sombrivage 1 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Mage
#next 12-14 Loch Modan Mage AoE Avancé

step
    #completewith DeathlessSkip
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Quittez Ironforge
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Voyagez vers l'emplacement du raccourci. Restez près du côté gauche de la montagne sur la route.
step
    #label DeathlessSkip
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Mangez pour regagner toute votre vie à chaque chute si vous n'êtes pas confiant|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Descendez le flanc de la montagne avec prudence
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Attention à |cRXP_ENEMY_Bouillasseux|r (rare) avant de descendre vers la côte (s'il est là)|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Ecumeurs Branchie-bleue|r à l'ouest lorsque vous atteignez la mer|r
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r lorsque vous traversez la mer. Attendez qu'ils s'éloignent dans leur chemin de patrouille|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Voyagez vers le Port de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Entrez dans l'auberge
step
    .goto 1437/0,-823.8,-3807.180
    >>Sautez sur le lustre en bas des escaliers
    >>Parlez à |cRXP_FRIENDLY_Samor Festivus|r à travers le mur
    >>|cRXP_WARN_NOTE : Pour le faire, liez « Interagir avec la cible » dans Jeu -> Raccourcis clavier dans le menu Options|r
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1457 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Parlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    +|cRXP_WARN_Cuisinez n'importe lequel|r |T133970:0|t|cRXP_LOOT_[Morceau de viande de sanglier]|r |cRXP_WARN_que vous avez depuis l'extérieur (il y a un feu de camp à l'intérieur)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Parlez à |cRXP_FRIENDLY_Dewin Scintillaube|r à travers le mur
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Voyagez vers le bateau pour Sombrivage
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Lancez en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Sautez du bateau quand vous êtes le plus proche possible du rivage
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Attirez 2-3 |cRXP_ENEMY_Clampants des marées pygmées|r vers |cRXP_FRIENDLY_Crackboum Tournelevier|r (N'oubliez pas d'utiliser|r |T135848:0|t[Nova de givre]|cRXP_WARN_) Tuez-les après avoir accepté la quête|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Montez les escaliers jusqu'au dernier étage
    .goto 1439/1,519.48,6405.89,8 >>Voyagez vers |cRXP_FRIENDLY_Crackboum Tournelevier|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Parlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r
    .accept 983 >>Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants des marées pygmées|r que vous avez attiré. Dépouillez-les pour leurs |cRXP_LOOT_Pattes de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Voyagez vers |cRXP_FRIENDLY_Thundris Tissevent|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .accept 954 >>Acceptez la quête Bashal'Aran
    .accept 958 >>Acceptez la quête Les outils des Bien-nés
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Parlez à |cRXP_FRIENDLY_Thundris|r et à |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Acceptez la quête Bashal'Aran
    .accept 958 >>Acceptez la quête Les outils des Bien-nés
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99
    .accept 2178 >>Acceptez Easy Strider Living
    .goto 1439/1,472.97,6557.85
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Voyagez vers |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Acceptez How Big a Threat?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 2118 >>Acceptez Plagued Lands
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
 step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Tuez les |cRXP_ENEMY_Clampants des marées pygmées|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,437.60,6025.99,75,0
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur un |cRXP_ENEMY_Ours des chardons enragé|r. L'objet a une portée de 50 yards|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,393.72,5993.24
    >>Allez vers le camp Furbolg
    >>|cRXP_WARN_Ne tentez pas de combattre le|r |cRXP_ENEMY_Messager du Vent Noirbois|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,411.40,5873.15,60,0
    .goto 1439/1,400.27,5788.0,60,0
    .goto 1439/1,427.78,5680.58,60,0
    .goto 1439/1,415.33,5434.30
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur un |cRXP_ENEMY_Ours des chardons enragé|r. L'objet a une portée de 50 yards|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,302.02,5726.433
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .accept 953 >>Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Évitez d'engager la |cRXP_ENEMY_Dame Mirelune|r (rare) si elle est active|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r. Dépouillez-les pour les |cRXP_LOOT_Reliques de Bien-né|r
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Bien-nées gémissantes|r uniquement s'ils sont sur votre chemin|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,148.09,5575.78
    >>Cliquez sur |cRXP_PICK_La Chute d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .turnin 953 >>Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Bien-nées gémissantes|r uniquement s'ils sont sur votre chemin|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #completewith next
    +|cRXP_WARN_Attirez 2-3 |cRXP_ENEMY_Fées viles|r vers |cRXP_FRIENDLY_Asterion|r (N'oubliez pas d'utiliser|r |T135848:0|t[Nova de givre]|cRXP_WARN_) Tuez-les lorsqque vous acceptez la quête|r
    .mob Vile Sprite
step
    .goto 1439/1,48.53,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Soyez prudents car |cRXP_ENEMY_Licillin|r (rare) peut être là|r
    >>|cRXP_WARN_Il lance|r |T136197:0|t[Trait de l'ombre]|cRXP_WARN_ (À distance: Inflige 55-70 dégâts d'ombre)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Tuez les |cRXP_ENEMY_Fées viles|r et les |cRXP_ENEMY_Grells sauvages|r. Dépouillez-les pour leur |cRXP_LOOT_Boucles d'oreille de grell|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Fées viles|r lancent|r |T136016:0|t[Poison] |cRXP_WARN_(Instantané en mêlée: Inflige 3 dégâts toutes les 3 secondes pendant 15 secondes) et les |cRXP_ENEMY_Grells sauvages|r lancent|r |T136215:0|t[Hystérique] |cRXP_WARN_(Augmente la vitesse d'attaque de 20% à lorsqu'il a moins de 20% de vie)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    >>|cRXP_WARN_Soyez prudents car ils lancent|r |T132222:0|t[Tir]|cRXP_WARN_ (À distance: Inflige 15-25 dégâts)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    .xp 11+1100 >> Montez votre expérience jusqu'à 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 958 >>Rendez la quête Les outils des Bien-nés
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Parlez à |cRXP_FRIENDLY_Alanndarian Chantenuit|r
    .turnin 2178 >>Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Tharnariun|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Parlez à |cRXP_FRIENDLY_Caylais Plumelune|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Gardez les|r |T133884:0|t[Yeux de murloc] |cRXP_WARN_que vous ramassez sur les |cRXP_ENEMY_Cours-la-côtes Grisebrumes|r et les|r |cRXP_ENEMY_Ecumeurs Grisebrumes|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Cours-la-côte Grisebrume|r à proximité|r |T132307:0|t[Se déplacent rapidement]
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,541.75,6313.31
    >>Cliquez sur la |cRXP_PICK_Bigobox 827|r
    .turnin 983 >>Rendez Buzzbox 827
    .accept 1001 >>Acceptez la quête Bigobox 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Rendez Washed Ashore
    .accept 4681 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Parlez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r
    .accept 963 >>Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivages|r
    >>|cRXP_WARN_Ne changez PAS votre route pour les tuer|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Courez le long du quai vers les |cRXP_LOOT_Restes de tortue de mer|r
step
    .goto 1439/1,854.84,6310.26
    >>Nagez sous l'eau
    >>Dépouillez les |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Montez votre expérience jusqu'à 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681,1 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Équipez vos nouvelles bottes (Équipez les |T132537:0|t[Bottes des mareyeurs])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Shaussiy l'aubergiste|r
    >>|cRXP_WARN_Si c'est la première fois que vous faites un "Hearthstone Batch", consultez le guide ci-dessous|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Auberdine à Forgefer au moment où elle s'active (Batch)|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUEZ ICI (il est FORTEMENT conseillé de le faire). Assurez-vous que vous avez défini et testé votre la fenêtre de temps pour le Batching avant afin de réduire le risque d'échec|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang 3, Atténuation de la magie)
    >>Coût total : 12 pièces d'argent
    >>Rappelez-vous que vous pourriez avoir besoin d'argent pour le |T133024:0|t[Tube en bronze] (8 pièce d'argent) et le vol vers Thelsamar (1argent 10cuivre)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Effectuez un Logout skip sur le pilier au-dessus de |cRXP_FRIENDLY_Dink|r pour vérifier si |cRXP_FRIENDLY_Tournepignon|r a un |T133024:0|t[Tube en bronze] si vous le souhaitez
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Volez à Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 10-12 Sombrivage 1 Mage AoE Nouveau serveur Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none none
#next 12-14 Loch Modan Mage AoE Avancé

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_NOTE : La route Nouveau serveur contient des quêtes qui sont TRÈS difficiles à faire seul. Elle concerne les serveurs très peuplés où vous pouvez monter un groupe pour faire les quêtes plus difficiles, OU les joueurs qui touchent les mobs pour les marquer rapidement|r
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Voyagez vers l'emplacement du raccourci. Restez près du côté gauche de la montagne sur la route.
step
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Mangez pour regagner toute votre vie à chaque chute si vous n'êtes pas confiant|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Descendez le flanc de la montagne avec prudence
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Attention à |cRXP_ENEMY_Bouillasseux|r (rare) avant de descendre vers la côte (s'il est là)|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Ecumeurs Branchie-bleue|r à l'ouest lorsque vous atteignez la mer|r
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r lorsque vous traversez la mer. Attendez qu'ils s'éloignent dans leur chemin de patrouille|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Voyagez vers le Port de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Entrez dans l'auberge
step
    .goto 1437/0,-823.8,-3807.180
    >>Sautez sur le lustre en bas des escaliers
    >>Parlez à |cRXP_FRIENDLY_Samor Festivus|r à travers le mur
    >>|cRXP_WARN_NOTE : Pour le faire, liez « Interagir avec la cible » dans Jeu -> Raccourcis clavier dans le menu Options|r
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1457 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Parlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    +|cRXP_WARN_Cuisinez n'importe lequel|r |T133970:0|t|cRXP_LOOT_[Morceau de viande de sanglier]|r |cRXP_WARN_que vous avez depuis l'extérieur (il y a un feu de camp à l'intérieur)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Parlez à |cRXP_FRIENDLY_Dewin Scintillaube|r à travers le mur
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Voyagez vers le bateau pour Sombrivage
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Lancez en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Sautez du bateau quand vous êtes le plus proche possible du rivage
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Attirez 2-3 |cRXP_ENEMY_Clampants des marées pygmées|r vers |cRXP_FRIENDLY_Crackboum Tournelevier|r (N'oubliez pas d'utiliser|r |T135848:0|t[Nova de givre]|cRXP_WARN_) Tuez-les après avoir accepté la quête|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Montez les escaliers jusqu'au dernier étage
    .goto 1439/1,519.48,6405.89,8 >>Voyagez vers |cRXP_FRIENDLY_Crackboum Tournelevier|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Parlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r
    .accept 983 >>Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Tuez les |cRXP_ENEMY_Clampants des marées pygmées|r que vous avez attiré. Dépouillez-les pour leurs |cRXP_LOOT_Pattes de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Voyagez vers |cRXP_FRIENDLY_Terenthis|r
step
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Acceptez How Big a Threat?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27,-1
    .accept 2118 >>Acceptez Plagued Lands
    .goto 1439/1,397.65,6437.76,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Voyagez vers |cRXP_FRIENDLY_Thundris Tissevent|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .accept 954 >>Acceptez la quête Bashal'Aran
    .accept 958 >>Acceptez la quête Les outils des Bien-nés
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Parlez à |cRXP_FRIENDLY_Thundris|r et à |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Acceptez la quête Bashal'Aran
    .accept 958 >>Acceptez la quête Les outils des Bien-nés
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99,-1
    .accept 2178 >>Acceptez Easy Strider Living
    .goto 1439/1,472.97,6557.85,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto 1439/1,-117.84,6820.72
    >>|cRXP_WARN_Si vous trouvez un|cRXP_ENEMY_Ours des chardons enragé|r, utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_puis engagez-le|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #completewith next
    +|cRXP_WARN_Attirez 2-3 |cRXP_ENEMY_Fées viles|r vers |cRXP_FRIENDLY_Asterion|r (N'oubliez pas d'utiliser|r |T135848:0|t[Nova de givre]|cRXP_WARN_) Tuez-les lorsqque vous acceptez la quête|r
    .mob Vile Sprite
step
    #label Bash1
    .goto 1439/1,48.53,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Soyez prudents car |cRXP_ENEMY_Licillin|r (rare) peut être là|r
    >>|cRXP_WARN_Il lance|r |T136197:0|t[Trait de l'ombre]|cRXP_WARN_ (À distance: Inflige 55-70 dégâts d'ombre)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Tuez les |cRXP_ENEMY_Fées viles|r et les |cRXP_ENEMY_Grells sauvages|r. Dépouillez-les pour leur |cRXP_LOOT_Boucles d'oreille de grell|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Fées viles|r lancent|r |T136016:0|t[Poison] |cRXP_WARN_(Instantané en mêlée: Inflige 3 dégâts toutes les 3 secondes pendant 15 secondes) et les |cRXP_ENEMY_Grells sauvages|r lancent|r |T136215:0|t[Hystérique] |cRXP_WARN_(Augmente la vitesse d'attaque de 20% à lorsqu'il a moins de 20% de vie)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    >>|cRXP_WARN_Soyez prudents car ils lancent|r |T132222:0|t[Tir]|cRXP_WARN_ (À distance: Inflige 15-25 dégâts)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto 1439/1,397.65,6437.76
    .xp 10+6625 >> Montez à 6625+/7600xp sur la route pour rejoindre |cRXP_FRIENDLY_Tharnariun|r
step
    .goto 1439/1,397.65,6437.76
    >>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Parlez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r
    .accept 963 >>Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants des marées pygmées|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Parlez à |cRXP_FRIENDLY_Caylais Plumelune|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Gardez les|r |T133884:0|t[Yeux de murloc] |cRXP_WARN_que vous ramassez sur les |cRXP_ENEMY_Cours-la-côtes Grisebrumes|r et les|r |cRXP_ENEMY_Ecumeurs Grisebrumes|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Cours-la-côte Grisebrume|r à proximité|r |T132307:0|t[Se déplacent rapidement]
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto 1439/1,393.72,5993.24
    >>Allez vers le camp Furbolg
    >>|cRXP_WARN_Ne tentez pas de combattre le|r |cRXP_ENEMY_Messager du Vent Noirbois|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,302.02,5726.433
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .accept 953 >>Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Évitez d'engager la |cRXP_ENEMY_Dame Mirelune|r (rare) si elle est active|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto 1439/1,161.19,5684.51,0
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r. Dépouillez-les pour les |cRXP_LOOT_Reliques de Bien-né|r
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Bien-nées gémissantes|r uniquement s'ils sont sur votre chemin|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,166.43,5633.86
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,148.09,5575.78
    >>Cliquez sur |cRXP_PICK_La Chute d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .turnin 953 >>Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Bien-nées gémissantes|r uniquement s'ils sont sur votre chemin|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto 1439/1,161.19,5684.51
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto 1439/1,-22.21,5999.79,30 >>Entrez à l'intérieur de la grotte
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Ours des chardons|r, les |cRXP_ENEMY_Séléniens|r, et les |cRXP_ENEMY_Séléniens déchaînés|r sur la route (si possible)|r
    .isOnQuest 958
step
    .goto 1439/1,-54.96,6015.51
    .goto 1439/1,210.32,6739.501,30 >>Tuez l' |cRXP_WARN_Oracle sélénien|cRXP_ENEMY_ à l'intérieur de la grotte|r --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T136006:0|t[Colère] |cRXP_WARN_(À distance : Inflige 30-45 dégâts de nature),|r |T136096:0|t[Éclat lunaire] |cRXP_WARN_(Instantané : Inflige 20-30 dégâts de nature, puis 44 dégâts de nature sur 12 secondes), et|r |T136085:0|t[Rétablissement] |cRXP_WARN_(Soigne environ 150 points de vie. Rare, mais fuyez si cela se produit)|r
    >>|cRXP_WARN_Vous pouvez vous cacher de sa|r |T136006:0|t[Colère] |cRXP_WARN_derrière les rochers à l'intérieur de la grotte|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto 1439/1,47.88,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Rendez la quête Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 958 >>Rendez la quête Les outils des Bien-nés
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Parlez à |cRXP_FRIENDLY_Alanndarian Chantenuit|r
    .turnin 2178 >>Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto 1439/1,362.93,6434.27
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target Terenthis
step
    .goto 1439/1,541.75,6313.31
    >>Cliquez sur la |cRXP_PICK_Bigobox 827|r
    .turnin 983 >>Rendez Buzzbox 827
    .accept 1001 >>Acceptez la quête Bigobox 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Rendez Washed Ashore
    .accept 4681 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Parlez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r
    .turnin 963 >>Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivages|r
    >>|cRXP_WARN_Ne changez PAS votre route pour les tuer|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Courez le long du quai vers les |cRXP_LOOT_Restes de tortue de mer|r
step
    .goto 1439/1,854.84,6310.26
    >>Nagez sous l'eau
    >>Dépouillez les |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Montez votre expérience jusqu'à 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681,1 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Équipez vos nouvelles bottes (Équipez les |T132537:0|t[Bottes des mareyeurs])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Shaussiy l'aubergiste|r
    >>|cRXP_WARN_Si c'est la première fois que vous faites un "Hearthstone Batch", consultez le guide ci-dessous|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Auberdine à Forgefer au moment où elle s'active (Batch)|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUEZ ICI (il est FORTEMENT conseillé de le faire). Assurez-vous que vous avez défini et testé votre la fenêtre de temps pour le Batching avant afin de réduire le risque d'échec|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang 3, Atténuation de la magie)
    >>Coût total : 12 pièces d'argent
    >>Rappelez-vous que vous pourriez avoir besoin d'argent pour le |T133024:0|t[Tube en bronze] (8 pièce d'argent) et le vol vers Thelsamar (1argent 10cuivre)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Effectuez un Logout skip sur le pilier au-dessus de |cRXP_FRIENDLY_Dink|r pour vérifier si |cRXP_FRIENDLY_Tournepignon|r a un |T133024:0|t[Tube en bronze] si vous le souhaitez
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Volez à Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 12-14 Loch Modan Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Mage
#next 14-16 Sombrivage 2 Mage AoE Avancé
step
    #completewith next
    +|cRXP_WARN_Lors de vos quêtes dans le Loch Modan, gardez TOUS les |T133970:0|t[|cRXP_LOOT_Morceaux de sanglier]|r que vous obtenez pour plus tard|r
step
    .zone Loch Modan >> Voyagez jusqu'au Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto 1432/0,-2602.54,-5832.73
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entrez dans le bunker. Montez à l'étage
step
    .goto 1432/0,-2634.59,-5842.81
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step
    #completewith Rugel2
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2729.40,-5534.96
    >>Tuez les|cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stonesplinter Scouts|r lancent|r [Tirer] (Coup à distance: Inflige 14-20 dégâts)
    >>Il s'agit d'une zone d'hyperspawn. Vous n'aurez pas besoin de bouger d'ici
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto 1432/0,-2602.54,-5832.73
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Rugel2
    .goto 1432/0,-2634.59,-5842.81
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Retournez dans le tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .goto 1432/0,-2881.66,-5351.18,30 >>Effectuez un Logout skip depuis le Brasero à l'intérieur du tunnel jusqu'à Thelsamar
    .isOnQuest 1339
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Voyagez vers le Poste d'Algaz
    .isOnQuest 1339
step
    .goto 1432/0,-2659.34,-4822.300
    >>Parlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto 1432/0,-2676.82,-4825.93
    >>Montez à l'étage
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique << Human
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
    #completewith Entrance
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith Exit
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Tunnel Rat Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto 1432/0,-2972.13,-4836.10,40 >>Voyagez jusqu'à l'entrée de la mine
    .isOnQuest 307
step
    #label Gear
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37,12,0
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37
    >>Ramassez les |cRXP_LOOT_Équipements de mineur|r au sol. |cRXP_WARN_Ils partagent leur points d'apparition|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Géomanciens Rats des tunnels|r lancent|r |T135824:0|t[Gardien de flammes rapide] |cRXP_WARN_(Confère une immunité au feu pendant 10 secondes) et|r |T135824:0|t[Trait de feu] |cRXP_WARN_(Instantané: Inflige 20-30 dégâts de feu)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto 1432/0,-2972.13,-4836.10,40 >>Sortez de la mine
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto 1432/0,-2942.06,-4812.55,40,0
	.goto 1432/0,-2971.30,-4769.69,40,0
	.goto 1432/0,-3018.47,-4681.21,40,0
	.goto 1432/0,-3079.98,-4688.38,40,0
	.goto 1432/0,-3054.60,-4752.95,40,0
	.goto 1432/0,-3087.98,-4820.83,40,0
	.goto 1432/0,-3092.67,-4944.27,40,0
	.goto 1432/0,-3023.71,-4980.88,40,0
	.goto 1432/0,-3018.47,-4938.75,40,0
	.goto 1432/0,-3065.36,-4878.41,40,0
	.goto 1432/0,-3038.88,-4834.81,40,0
	.goto 1432/0,-2942.06,-4812.55,40,0
    >>Tuez les |cRXP_ENEMY_Éclaireurs Rat des tunnels|r, les |cRXP_ENEMY_Vermines Rat des tunnels|r, les |cRXP_ENEMY_Kobolds Rat des tunnels|r, et les |cRXP_ENEMY_Fourrageurs Rat des tunnels|r. Dépouillez-les pour leurs |cRXP_LOOT_Oreilles de Rat des tunnels|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Kobolds Rat des tunnels|r lancent|r |T132152:0|t[Rosser] |cRXP_WARN_(Prépare 2 attaques supplémentaires toutes les 10 secondes)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Voyagez vers le Poste d'Algaz
    .isOnQuest 307
step
    .goto 1432/0,-2659.34,-4822.300
    >>Parlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto 1432/0,-2676.82,-4825.93
    >>Montez à l'étage
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 307,2 >> Rendez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,35,0
	.goto 1432/0,-2895.45,-5014.91,35,0
	.goto 1432/0,-2957.24,-5067.89,35,0
	.goto 1432/0,-3008.26,-5098.06,35,0
	.goto 1432/0,-3087.43,-5091.25,35,0
	.goto 1432/0,-3046.05,-5189.48,35,0
	.goto 1432/0,-2918.62,-5233.08,35,0
	.goto 1432/0,-2817.66,-5471.86,35,0
	.goto 1432/0,-2809.66,-5343.64,35,0
	.goto 1432/0,-2819.87,-5220.39,35,0
	.goto 1432/0,-2740.98,-5225.170,35,0
	.goto 1432/0,-2794.49,-5102.66,35,0
	.goto 1432/0,-2743.74,-5021.16,35,0
	.goto 1432/0,-2704.57,-4958.430,35,0
	.goto 1432/0,-2645.82,-4895.890,35,0
	.goto 1432/0,-2849.11,-4944.45,35,0
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>Tuez les |cRXP_ENEMY_Sangliers des montagnes galeux|r et les |cRXP_ENEMY_Sangliers des montagnes|r. Dépouillez-les pour leurs |cRXP_LOOT_Tripes de sanglier|r
    >>Tuez les |cRXP_ENEMY_Vieux ours noir|r et les |cRXP_ENEMY_Anciens ours noirs|r. Dépouillez-les pour leur |cRXP_LOOT_Viande d'ours|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses des falaises|r et les |cRXP_ENEMY_Rôdeuses des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor d'araignée|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Parlez au |cRXP_FRIENDLY_Grand maréchal Brock|r et à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Ils peuvent être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock << Gnome
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 436 >> Acceptez la quête Les fouilles de Baguefer
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3020.68,-5358.91
    >>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Il peut être à l'intérieur ou à l'extérieur du bâtiment|r
    .accept 436 >> Acceptez la quête Les fouilles de Baguefer
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+8675 >> Montez votre expérience jusqu'à 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6545 >> Montez votre expérience jusqu'à 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto 1432/0,-3266.44,-5656.19,50,0
    .goto 1432/0,-3354.99,-5726.64,50,0
    .goto 1432/0,-3425.60,-5738.42,50,0
    .goto 1432/0,-3781.98,-5702.54,20 >>Voyagez vers |cRXP_FRIENDLY_Aldren Cordon|r
step << Gnome
    #completewith Boast
    .goto 1432/0,-3781.98,-5702.54
    >>Parlez à |cRXP_FRIENDLY_Aldren Cordon|r
    .vendor 1214 >> |cRXP_BUY_Achetez la |r |T132491:0|t[Ceinture de grand sage] |cRXP_BUY_chez lui (si elle est disponible)|r
    .isQuestAvailable 298
step << Gnome
    >>Parlez à |cRXP_FRIENDLY_Baguefer|r et à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target +Prospector Ironband
    .goto 1432/0,-3812.59,-5694.63
    .turnin 436 >> Rendez la quête Les fouilles de Baguefer
    .goto 1432/0,-3783.63,-5713.77
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto 1432/0,-3812.59,-5694.63
    >>Parlez à |cRXP_FRIENDLY_Baguefer|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto 1432/0,-3816.18,-5786.250,30,0
    .goto 1432/0,-4013.68,-5791.58,40,0
    .goto 1432/0,-4124.56,-5742.100,40,0
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Voyagez vers |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto 1432/0,-4296.41,-5694.63
    >>Parlez à |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Acceptez la quête La fanfaronnade d'un chasseur
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto 1432/0,-4197.38,-5699.97,45,0
	.goto 1432/0,-4109.39,-5856.89,45,0
	.goto 1432/0,-4055.33,-5760.68,45,0
	.goto 1432/0,-4118.49,-5601.37,45,0
	.goto 1432/0,-4092.57,-5553.35,45,0
	.goto 1432/0,-4128.42,-5517.30,45,0
	.goto 1432/0,-4190.21,-5588.49,45,0
	.goto 1432/0,-4197.38,-5699.97,45,0
    >>Tuez les |cRXP_ENEMY_Busards des montagnes|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Voyagez vers |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto 1432/0,-4296.41,-5694.63
    >>Parlez à |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Rendez la quête La fanfaronnade d'un chasseur
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    >>Tuez les |cRXP_ENEMY_Sangliers des montagnes galeux|r et les |cRXP_ENEMY_Sangliers des montagnes|r. Dépouillez-les pour leurs |cRXP_LOOT_Tripes de sanglier|r
    >>Tuez les |cRXP_ENEMY_Vieux ours noir|r et les |cRXP_ENEMY_Anciens ours noirs|r. Dépouillez-les pour leur |cRXP_LOOT_Viande d'ours|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses des falaises|r et les |cRXP_ENEMY_Rôdeuses des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor d'araignée|r
    >>|cRXP_WARN_Rappelez de les attirer vers les |cRXP_FRIENDLY_Montagnards|r si nécessaire|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Sangliers des montagnes|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Utilisable uniquement à distance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6780 >> Tuez des mobs jusqu'à ce que votre expérience soit à 6780+/11400xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    >>Le |cRXP_FRIENDLY_Montagnard Kadrell|r |cRXP_WARN_patrouille le long de la route principale de Thelsamar|r
    .turnin 416,2 >> Rendez la quête Chasse au rat
    .target Mountaineer Kadrell
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Parlez au |cRXP_FRIENDLY_Grand maréchal Brock|r et à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Ils peuvent être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .turnin 298 >> Rendez la quête Compte rendu d'avancement des fouilles
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Parlez au |cRXP_FRIENDLY_Grand maréchal Brock|r et à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Ils peuvent être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Parlez à |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Il peut être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto 1432/0,-2966.06,-5365.72,12,0
    .goto 1432/0,-2969.92,-5377.12,12,0
    >>Entrez dans l'auberge
    .goto 1432/0,-2954.42,-5394.10,10 >>Voyagez vers |cRXP_FRIENDLY_Vidra Poêlâtre|r
step
    .goto 1432/0,-2954.42,-5394.10
    >>Parlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    .goto 1432/0,-2952.55,-5381.91
    >>|cRXP_WARN_Ne vous débarrassez PAS de vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .skill cooking,10 >> Cuisinez vos |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r en |T133974:0|t[Viande de sanglier rôtie] jusqu'à ce que votre compétence de |T133971:0|t[Cuisine] soit de 10
step
    .goto 1432/0,-2952.55,-5381.91
    >>Parlez à |cRXP_FRIENDLY_Yanni Rudecoeur|r
    >>|cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 45 pièces d'argent|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #requires Kadrell
    .goto 1432/0,-2929.93,-5424.95
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto 1455/0,-1303.71,-4631.08
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto 1455/0,-1305.14,-4615.09,-1
    .goto 1455/0,-1158.00,-4816.48,-1
    .goto 1455/0,-1317.71,-4839.48,30 >>Effectuez un Logout skip pour arriver à l'extérieur du Tram des profondeurs
step
    .goto 1455/0,-1249.87,-4793.31
    >>Parlez à |cRXP_FRIENDLY_Tournepignon|r
    .vendor 5175 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Entrez dans le Tram des profondeurs
    >>Parlez à |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step << Gnome
    >>Utilisez le |T133942:0|t[Pipeau du dératiseur] sur les |cRXP_FRIENDLY_Rats des profondeurs|r dans le Tram des profondeurs
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Parlez à |cRXP_FRIENDLY_Monty|r
    >>Attendez le temps du RP << Gnome
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs << Gnome
    .timer 13,Chasse au rat dans les profondeurs RP << Gnome
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_Montez dans le Tram des profondeurs tout en lançant en boucle|r |T132794:0|t[Invocation d'eau Rang 2]
    >>Parlez à |cRXP_FRIENDLY_Nipsy|r de l'autre côté du Tram des profondeurs
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >> Entrez dans Hurlevent
    .isOnQuest 1338
step
    #completewith next
    .goto 1453/0,574.95,-8388.30,20,0
    .goto 1453/0,614.33,-8380.77,20,0
    .goto 1453/0,638.26,-8342.22,15 >>Voyagez vers |cRXP_FRIENDLY_Billibub Tournepignon|r
step
    .goto 1453/0,638.26,-8342.22
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto 1453/0,600.08,-8427.20
    >>Parlez à |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
step
    #completewith next
    .goto 1453/0,663.94,-8451.76,20,0
    .goto 1453/0,686.79,-8473.27,20,0
    .goto 1453/0,678.86,-8562.64,20,0
    .goto 1453/0,711.26,-8587.38,20,0
    .goto 1453/0,737.60,-8557.89,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Voyagez vers |cRXP_FRIENDLY_Baros Alexston|r
step
    .goto 1453/0,719.86,-8550.36
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
step
    #completewith next
    .goto 1453/0,739.49,-8661.68,15,0
    .goto 1453/0,720.67,-8699.06,15,0
    .goto 1453/0,728.33,-8718.06,15,0
    .goto 1453/0,699.16,-8743.88,15,0
    .goto 1453/0,674.29,-8775.79,15,0
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto 1453/0,861.95,-8990.47,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Acceptez la quête Le lac Miroir << Gnome
    .trainer >> Apprenez vos sorts de classe (Trait de feu Rang 2, Intelligence des arcanes Rang 2, Explosion des arcanes)
    >>Coût total : 27 pièces d'argent
    >>Rappelez-vous de peut-être garder de l'argent pour vos Potions (1-3 argent chacune) et les Parchemins (50cuivre-3argent chacun)
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sortez de la Tour des mages
    .goto 1453/0,948.65,-8994.50,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >> |cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Adair Gilroy|r
    .money <0.0090
step
    .goto 1453/0,822.16,-8865.60
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Voyagez vers |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto 1453/0,635.44,-8863.81
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Entrez dans la banque de Hurlevent
step
    .goto 1453/0,614.33,-8932.92
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133024:0|t[Tube en bronze]
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    >>|T132620:0|t[Tonneau de merlot]
    >>|T134943:0|t[Parchemins]
    >>|T132832:0|t[Petit œuf]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,4371,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133024:0|t[Tube en bronze]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,730,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,730,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 730,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 7207 >> Déposez l'objet suivant dans votre banque:
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Entrez dans l'auberge
    .goto 1453/0,673.75,-8867.93,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Hurlevent à Auberdine au moment où elle s'active (Batch)|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 14-16 Sombrivage 2 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Mage
#next 16-18 Marche de l'Ouest Mage AoE Avancé


step
    #completewith DeepO
    +|cRXP_WARN_Gardez toutes les |T132917:0|t[Plumes légères] que vous obtenez pour plus tard|r
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Parlez à |cRXP_FRIENDLY_Barithras Lunombrage|r et à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 947 >>Acceptez la quête La caverne aux champignons
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4811 >>Accept Les Red Crystal
    .goto 1439/1,473.63,6439.07
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    .goto 1439/1,492.62,6580.99
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .target Thundris Windweaver
step
    #completewith MistV
    .goto 1439/1,592.18,6666.14,50,0
    .goto 1439/1,565.33,6925.96,50,0
    .goto 1439/1,478.21,6985.78,50,0
    >>Tuez les |cRXP_ENEMY_Batteur de Sombrivage|r dans l'eau. Dépouillez-les pour obtenir leur |cRXP_LOOT_Oeil de batteur|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto 1439/1,438.91,7077.48
--  .goto 1439/1,437.60,7076.17
    >>Ouvrez le |cRXP_LOOT_Coffret de l'Aube argentée|r à travers la paroi du bateau
    >>|cRXP_WARN_Utilisez votre touche "Interagir avec la cible" sous l'eau près de la position de la flèche|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto 1439/1,349.18,7133.81
--  .goto 1439/1,345.90,7134.68
   >>Ouvrez le |cRXP_LOOT_Coffret du Voile de brume|r à travers la paroi du bateau
   >>|cRXP_WARN_Utilisez votre touche "Interagir avec la cible" sous l'eau près de la position de la flèche|r
   >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78,50,0
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78
   >>Tuez les |cRXP_ENEMY_Batteur de Sombrivage|r dans l'eau. Dépouillez-les pour obtenir leur |cRXP_LOOT_Oeil de batteur|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Gardez les|r |T133884:0|t[Oeil de murloc] |cRXP_WARN_que vous obtenez sur les|r |cRXP_ENEMY_Cours-la-côte Grisebrume|r |cRXP_WARN_et les|r |cRXP_ENEMY_Prophètes Grisebrume|r
step
   .goto 1439/1,196.56,6958.71
   >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
   >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   .accept 4723 >> Acceptez la quête La créature marine échouée
step
   .goto 1439/1,193.29,7084.03
   >>Cliquez sur la |cRXP_PICK_Bigobox 411|r
   .turnin 1001 >> Rendez la quête Bigobox 411
   .accept 1002 >> Acceptez la quête Bigobox 323
step
    #completewith SeaTurtle1
    .goto 1439/1,81.28,7118.96,50,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label SeaTurtle1
    .goto 1439/1,46.57,7433.8,80 >>Voyagez vers la |cRXP_LOOT_Tortue de mer échouée|r
    .isQuestAvailable 4725
step
    #completewith next
    +Gardez les |T133884:0|t[Oeil de murloc] que vous obtenez des |cRXP_ENEMY_Guerriers Grisebrume|r et des |cRXP_ENEMY_Pêcheurs Grisebrume|r
step
    .goto 1439/1,46.57,7433.800
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    #completewith River
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith RedC
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label River
    .goto 1439/1,-383.77,7222.89
    >>Utilisez le |T134865:0|t[Tube de prélèvement vide] dans l'eau
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>Tuez les |cRXP_ENEMY_Trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #label RedC
    .goto 1439/1,-144.04,6209.82,400 >>Dirigez-vous vers le |cRXP_PICK_Cristal rouge|r
    .isOnQuest 4811
step
    #completewith Bash
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
    .goto 1439/1,-144.04,6209.82
    >>Dirigez-vous vers le |cRXP_PICK_Cristal rouge|r
    >>|cRXP_WARN_N'oubliez pas d'engager les |cRXP_ENEMY_Séléniens déchaînés|r qui sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto 1439/1,166.43,5633.86,175 >>Voyagez vers la |cRXP_PICK_Flamme antique|r
    .isOnQuest 957
step
    #completewith next
    .goto 1439/1,161.19,5684.51,0
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto 1439/1,166.43,5633.86
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith RBears
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith RBears
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    +Gardez les |T133884:0|t[Oeil de murloc] que vous obtenez sur les |cRXP_ENEMY_Cours-la-côte Grisebrume|r et les |cRXP_ENEMY_Prophètes Grisebrume|r
step
    #label BeachedST
    .goto 1439/1,511.62,5618.58
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto 1439/1,404.20,5796.300,45,0
	.goto 1439/1,327.56,5778.830,45,0
	.goto 1439/1,372.10,5556.130,45,0
	.goto 1439/1,330.18,5437.80,45,0
	.goto 1439/1,322.98,5252.65,45,0
	.goto 1439/1,491.97,5274.48,45,0
	.goto 1439/1,411.40,5376.23,45,0
	.goto 1439/1,419.92,5550.46,45,0
	.goto 1439/1,404.20,5796.300,45,0
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto 1439/1,370.14,5856.56,50,0
	.goto 1439/1,307.91,5877.96,50,0
	.goto 1439/1,324.29,5922.06,50,0
	.goto 1439/1,328.22,5958.74,50,0
	.goto 1439/1,305.95,5998.48,50,0
	.goto 1439/1,373.41,6018.56,50,0
	.goto 1439/1,328.22,5958.74,50,0
    >>Tuez les |cRXP_ENEMY_Guide Noirbois|r et les |cRXP_ENEMY_Messager du vent Noirbois|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Guides Noirbois|r lancent|r |T132152:0|t[Rosser] |cRXP_WARN_(Prépare 2 attaques supplémentaires toutes les 10 secondes), et les |cRXP_ENEMY_Messagers du Vent Noirbois|r lancent|r |T136022:0|t[Bourrasque] |cRXP_WARN_(Étourdissement de zone en mêlée)|r
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith Auberdine
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto 1439/1,411.40,6095.42,50,0
	.goto 1439/1,431.05,6150.00,50,0
	.goto 1439/1,440.88,6218.99,50,0
	.goto 1439/1,404.85,6253.93,50,0
	.goto 1439/1,355.07,6252.62,50,0
	.goto 1439/1,229.97,6275.32,50,0
	.goto 1439/1,212.28,6173.14,50,0
	.goto 1439/1,226.69,6113.32,50,0
	.goto 1439/1,411.40,6095.42,50,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto 1439/1,543.06,6342.57,150 >>Voyagez vers |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .isOnQuest 982
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Parlez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r
    .turnin 963 >>Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +Équipez la |T134797:0|t[Larme de douleur]
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez 15|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez 10|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez 5|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto 1439/1,488.69,6451.300,20,0
    .goto 1439/1,487.38,6481.870,20,0
    .goto 1439/1,489.35,6506.32,15 >>Dirigez-vous vers l' |cRXP_FRIENDLY_Archéologue Hollee|r
step
    .goto 1439/1,489.35,6506.32
    >>Parlez à |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439/1,488.69,6564.830
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto 1439/1,488.69,6564.830
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez une|r |T133634:0|t[Sacoche marron en cuir] |cRXP_BUY_à Dalmond|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto 1439/1,492.62,6580.99
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto 1439/1,472.97,6557.85
    >>Parlez à |cRXP_FRIENDLY_Alanndarian Chantenuit|r
    .accept 2178 >>Acceptez Easy Strider Living
    .turnin 2178 >>Rendez Easy Strider Living
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    .turnin 982,2 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    #completewith next
    .goto 1439/1,476.25,6479.25,15,0
    .goto 1439/1,478.21,6446.50,15,0
    .goto 1439/1,473.63,6439.07,20 >>Voyagez vers la Sentinelle Glynda Nal'Shea
step
    .goto 1439/1,473.63,6439.07
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >>Rendez la quête Le cristal rouge
    .accept 4812 >>Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,465.11,6416.80
    >>Utilisez le |T133748:0|t[Bol de purification vide] et le |T134865:0|t[Tube d'eau vide] au Puits de lune
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r, à |cRXP_FRIENDLY_Terenthis|r, puis à la |cRXP_FRIENDLY_Sentinelle Elissa Brise-stellaire|r à l'étage
    .turnin 2138 >>Rendez la quête Nettoyage de l'infection
    .accept 2139 >>Acceptez la quête Espoir de Tharnariun
    .target +Tharnariun Treetender
    .goto 1439/1,397.65,6437.33
    .turnin 985 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 986 >> Acceptez la quête Un maître perdu
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 965 >>Acceptez la quête La Tour d'Althalaxx
    .goto 1439/1,369.48,6449.99,8,0
    .goto 1439/1,384.55,6431.65
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Équipez la |T132491:0|t[Ceinture de grand sage]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto 1439/1,-157.79,6206.770
    >>Cliquez sur le |cRXP_PICK_Cristal rouge|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>|cRXP_WARN_N'oubliez pas d'engager les |cRXP_ENEMY_Séléniens déchaînés|r qui sont liés ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
    #completewith GrainSample
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto 1439/1,47.88,6748.67
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Rendez la quête Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto 1439/1,-376.56,6805.87
    >>Ouvrez les |cRXP_PICK_Réserves de céréales des Noirbois|r. Récupérez-y les |cRXP_LOOT_Echantillons de céréales des Noirbois|r
    >>|cRXP_WARN_Engagez les ennemis qui le protègent, lancez|r |T135848:0|t[Nova de givre]|cRXP_WARN_, dépouillez l'|cRXP_LOOT_Échantillon de céréales des Noirbois|r, puis enfuyez-vous des ennemis qui apparaissent dans la direction de la |cRXP_ENEMY_Mère de la tanière|r|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    #completewith DenM
    .goto 1439/1,-485.95,6763.95,20,0
    .goto 1439/1,-489.88,6724.22,20,0
    .goto 1439/1,-436.82,6694.96,30 >>Voyagez vers la |cRXP_ENEMY_Mère de la tanière|r
step
    .goto 1439/1,-432.24,6664.39
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Faites attention comme la |cRXP_ENEMY_Mère de la tanière|r et ses |cRXP_ENEMY_Jeunes chardons|r lancent|r |T132141:0|t[Ravage] |cRXP_WARN_(étourdissement de 2 secondes)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto 1439/1,-432.24,6664.39
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Faites attention comme la |cRXP_ENEMY_Mère de la tanière|r et ses |cRXP_ENEMY_Jeunes chardons|r lancent|r |T132141:0|t[Ravage] |cRXP_WARN_(étourdissement de 2 secondes)|r
    >>|cRXP_WARN_Engagez la |cRXP_ENEMY_Mère de la tanière|r seul avec votre|r |T133714:0|t[Dynamite basique]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-451.23,6870.06
    >>Ouvrez les |cRXP_PICK_Réserves de noix des Noirbois|r. Récupérez-y les |cRXP_LOOT_Echantillon de noix des Noirbois|r :3
    >>|cRXP_WARN_Engagez les ennemis qui le protègent, lancez|r |T135848:0|t[Nova de givre]|cRXP_WARN_, ramassez l' |cRXP_LOOT_Echantillon de noix des Noirbois|r, puis dirigez-vous vers le nord|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto 1439/1,-520.01,6873.99
    >>Ouvrez les |cRXP_PICK_Réserves de fruits des Noirbois|r. Récupérez les |cRXP_LOOT_Echantillons de fruit des Noirbois|r
    >>Tuez les |cRXP_ENEMY_Guerriers Noirbois|r qui vous attaquent
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto 1439/1,-497.74,6887.53
    .cast 16072 >>Utilisez le |T134712:0|t[Bol de purification rempli] près du feu de camp pour invoquer |cRXP_ENEMY_Xabraxxis|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .timer 20,La corruption des Noirbois RP
    .use 12347
step
    #label Talisman
    .goto 1439/1,-480.05,6888.84
    >>Attendez le temps du RP
    >>Tuez |cRXP_ENEMY_Xabraxxis|r
    >>Ramassez le |cRXP_PICK_Sac du démon d'Xabraxxis|r qui tombe par terre. Récupérez-y le |cRXP_LOOT_Talisman de corruption|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-417.83,7262.19
    >>Cliquez sur la |cRXP_PICK_Bigobox 323|r
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestComplete 1002
step
    .goto 1439/1,-417.83,7262.19
    >>Cliquez sur la |cRXP_PICK_Bigobox 323|r
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-537.04,7542.970
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4727 >>Acceptez la quête La tortue de mer échouée
step
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-417.83,7262.19
    >>Cliquez sur la |cRXP_PICK_Bigobox 323|r
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
step
    .goto 1439/1,-658.87,7246.47
    >>Parlez à |cRXP_FRIENDLY_Balthule Frappelombre|r
    .turnin 965 >>Rendez la quête La Tour d'Althalaxx
    .accept 966 >>Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90,50,0
    .goto 1439/1,-875.02,7228.570,50,0
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90
    >>Tuez les |cRXP_ENEMY_Fanatiques de la Rive noire|r. Dépouillez-les pour leur |cRXP_LOOT_Parchemins déchirés|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439/1,-658.87,7246.47
    >>Parlez à |cRXP_FRIENDLY_Balthule Frappelombre|r
    .turnin 966 >>Rendez la quête La Tour d'Althalaxx
    .accept 967 >>Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto 1439/1,-660.83,6873.99,30 >>Entrez à l'intérieur de la grotte
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_N'oubliez pas le Logout skip de la grotte que vous allez bientôt effectuer|r
step
    #completewith next
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    >>Cueillez les |cRXP_LOOT_Pédoncules d'amanite|r bleus sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Restez au niveau supérieur de la grotte. Descendez s'il n'y a pas assez de |cRXP_LOOT_Amanite phalloïde|r au niveau supérieur
    >>Cueillez l' |cRXP_LOOT_Amanite phalloïde|r orange au sol à la fin du chemin en haut de la grotte
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67
    >>Cueillez les premiers |cRXP_LOOT_Pédoncules d'amanite|r à l'entrée de la grotte après avoir ramassé l' |cRXP_LOOT_Amanite phalloïde|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto 1439/1,-658.21,6825.96
    .goto 1439/1,210.32,6739.501,30 >> |cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Voyagez vers Auberdine
    .isOnQuest 4763
step
    .goto 1439/1,492.62,6580.99
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4763,1 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto 1439/1,488.69,6564.830
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez une|r |T133634:0|t[Sacoche marron en cuir] |cRXP_BUY_à Dalmond|r
    >>|cRXP_WARN_Ne descendez PAS en dessous de 30 pièces d'argent|r
    .target Dalmond
step
    .goto 1439/1,397.65,6437.33
    >>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2139,1 >>Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r, à |cRXP_FRIENDLY_Barithras|r, et à l' |cRXP_PICK_Affiche de recherche|r
    .turnin 4813,2 >>Rendez la quête Les fragments à l'intérieur
    .target +Sentinel Glynda Nal'Shea
    .goto 1439/1,473.63,6439.07
    .turnin 947 >>Rendez la quête La caverne aux champignons
    .accept 948 >>Acceptez la quête Onu
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,543.06,6342.57
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Shaussiy l'aubergiste|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Auberdine à Hurlevent au moment où elle s'active (Batch)|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 16-18 Marche de l'Ouest Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Mage
#next 18-20 Sombrivage 3 Mage AoE Avancé

step
    #completewith JenneaT
    +|cRXP_WARN_NOTE: Vous avez besoin de 12 stacks de chaque tissu (|r|T132911:0|t[Étoffe de laine]|cRXP_WARN_,|r |T132905:0|t[Étoffe de soie]|cRXP_WARN_,|r |T132892:0|t[Étoffe de tisse-mage]|cRXP_WARN_,|r et |T132903:0|t[Étoffe runique]|cRXP_WARN_) pour rendre les tissus plus tard. Vous les obtiendrez naturellement en montant de niveau|r
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #sticky
    #label Bank2
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankdeposit 17056,5354,2592,6889 >> Déposez les objets suivants dans votre banque:
    >>|T132917:0|t[Plume légère]
    >>|T133469:0|t[Lettre à Delgren]
    >>|T132911:0|t[Étoffe de laine]
    >>|T132832:0|t[Petit œuf]
    .target Newton Burnside
step
    .goto 1453/0,614.33,-8932.92
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 730,7207 >> Récupérez les objets suivants de votre banque: << Gnome
    .bankwithdraw 730,16115 >> Récupérez les objets suivants de votre banque: << Human
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea] << Gnome
    >>|T132763:0|t[Caisse d'Osric] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto 1453/0,861.95,-8990.47,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto 1453/0,861.95,-8990.47
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe (Choc de flammes)
    >>Coût total : 15 pièces d'argent
    .target Jennea Cannon
step
    .goto 1453/0,635.44,-8863.81
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto 1453/0,618.90,-8796.58,12,0
    .goto 1453/0,612.99,-8795.96,10 >>Voyagez vers |cRXP_FRIENDLY_Woo Ping|r
step
    .goto 1453/0,612.99,-8795.96
    >>Parlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Apprenez la compétence pour porter des |T132321:0|t[Dagues]
    .target Woo Ping
step
    #completewith next
    .goto 1453/0,612.45,-8806.18,12,0
    .goto 1453/0,528.43,-8850.28,20,0
    .goto 1453/0,532.20,-8863.72,15,0
    .goto 1453/0,490.12,-8835.67,10 >>Voyagez vers |cRXP_FRIENDLY_Dungar Grangodet|r
step << Human
    .goto 1453/0,490.12,-8835.67
    >>Parlez à |cRXP_FRIENDLY_Dungar Grangodet|r
    .turnin 6261 >> Rendez la quête Dungar Grangodet
    .accept 6285 >> Acceptez la quête Aller voir Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto 1453/0,490.12,-8835.67
    >>Parlez à |cRXP_FRIENDLY_Dungar Grangodet|r
    .fp Stormwind City >> Apprenez le chemin de vol de Hurlevent << Gnome
    .fly Westfall >> Volez vers la Marche de l'Ouest << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Descendez jusqu'à la corniche en dessous de |cRXP_FRIENDLY_Dungar Grangodet|r
step << Gnome
    #completewith next
    .goto 1429/0,421.28,-9104.28,40 >>Quittez Stormwind
step << skip
    #completewith next
    #requires Stormwind1
    .goto 1429/0,44.35,-9458.41,30 >>Voyagez vers l'Auberge de Comté-de-l'Or
step << skip
    #label GoldshireTrain
    .goto 1429/0,34.28,-9472.99
    >>Sautez sur le lustre en bas des escaliers si vous ne l'avez pas appris, sinon sautez depuis la Chaise
    >>Parlez à |cRXP_FRIENDLY_Zaldimar|r à travers le mur
    .accept 1919 >> Acceptez la quête Rendre compte à Jennea
    .trainer >> Apprenez vos sorts de classe (Choc de flammes)
    >>Coût total : 15 pièces d'argent
step << skip
    .goto 1429/0,8.25,-9460.03
    >>Parlez à |cRXP_FRIENDLY_Dobbins le tavernier|r
    >>|cRXP_BUY_Achetez une|r |T132794:0|t[Outre de rhum doux] |cRXP_BUY_à Dobbins|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto 1429/0,16.23,-9462.580
    >>Parlez à |cRXP_FRIENDLY_Aubergiste Farley|r
    >>|cRXP_BUY_Achetez 45|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Farley|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto 1429/0,529.57,-9363.050
    >>Utilisez la |T132788:0|t[Flasque de Jennea] à la cascade
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Parlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step << Gnome
    #completewith Gryan
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    >>Parlez aà |cRXP_FRIENDLY_Saldean le fermier|r puis à |cRXP_FRIENDLY_Salma|r à l'intérieur
    .accept 9 >> Acceptez la quête Les champs de mort
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto 1436/0,1142.77,-10140.13,60,0
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r et les |cRXP_ENEMY_Golem des moissons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Flasques d'huile|r et leur |cRXP_LOOT_Houblon|r
    >>|cRXP_WARN_Rappelez-vous d'utiliser le|r |T135826:0|t[Choc de flammes]|cRXP_WARN_/|r|T136116:0|t[Explosion des arcanes] |cRXP_WARN_en AoE maintenant|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>Tuez les |cRXP_ENEMY_Jeunes Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Foies de broche-tripes|r et les |cRXP_LOOT_Groins de broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Jeunes déchireurs|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande filandreuse de vautour|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
step
    #label Gryan << Gnome
	>> Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et au |cRXP_FRIENDLY_Capitaine Danuvin|r << Gnome
	>> Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r puis à |cRXP_FRIENDLY_Lewis|r à l'intérieur << Human
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel << Gnome
    .accept 65 >> Acceptez la quête La Confrérie défias
    .accept 12 >> Acceptez la quête La milice du peuple << Gnome
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 6285 >> Rendez la quête Aller voir Lewis << Human
    .goto 1436/0,1021.60,-10500.61 << Human
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest << Gnome
    .goto 1436/0,1041.97,-10511.13 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto 1436/0,1127.37,-10636.43
	>>Parlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
	.target Scout Galiaan
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 45|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 40|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 35|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 30|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 25|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 20|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 15|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 10|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto 1436/0,1166.57,-10653.47
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 5|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>Tuez les |cRXP_ENEMY_Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Foies de broche-tripes|r et les |cRXP_LOOT_Groins de broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Eventr'chair|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande filandreuse de vautour|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith Compass
    .goto 1436/0,1635.92,-10621.27,60,0
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Flasques d'huile|r et leur |cRXP_LOOT_Houblon|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>Tuez les |cRXP_ENEMY_Defias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto 1436/0,1748.27,-10672.13
    >>Ouvrez le |cRXP_PICK_Coffre d'Alexston|r. Dépouillez-le pour |cRXP_LOOT_Une simple boussole|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27,60,0
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r et les |cRXP_ENEMY_Golem des moissons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Flasques d'huile|r et leur |cRXP_LOOT_Houblon|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_Cherchez le |cRXP_ENEMY_Vieux Troubloeil|r. Essayez de rester près du bord de la crête pour ne pas le rater|r
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1952.67,-10751.7,60,0
    .goto 1436/0,1991.52,-10927.40,60,0
    .goto 1436/0,1874.97,-10996.000,60,0
    .goto 1436/0,1929.22,-11019.80,60,0
    .goto 1436/0,1917.67,-11086.77,30 >> Tuez les camps de Gnolls en AoE
    >>Tuez les |cRXP_ENEMY_Herboristes Rivepattes|r, les |cRXP_ENEMY_Bâtards Rivepattes|r et les |cRXP_ENEMY_Brutes Rivepattes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Pattes de gnoll|r
    >>Si vous trouvez le |cRXP_ENEMY_Vieux Troubloeil|r, passez cette étape
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_Trouvez le |cRXP_ENEMY_Vieux Troubloeil|r. Attirez-le vers le|r |cRXP_FRIENDLY_Capitaine Grayson|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto 1436/0,1965.97,-11407.13
    >>Parlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .target Captain Grayson
step
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r en AoE. Dépouillez-le pour l' |cRXP_LOOT_Écaille du Vieux Troubloeil|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1965.97,-11407.13
    >>Parlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 103 >> Acceptez la quête Le gardien de la flamme
    .turnin 103,1 >> Rendez la quête Le gardien de la flamme
    .turnin 104,3 >> Rendez la quête Menace sur la côte
    .target Captain Grayson
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Truands défias|r et les |cRXP_ENEMY_Malandrins défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Malandrins défias|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_(inflige le double des dégâts dans le dos)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1454.97,-11272.73
    >>Parlez à |cRXP_FRIENDLY_Tristevin Tonnebière|r
    .accept 117 >> Acceptez la quête La Tonnebière
    .turnin 117 >> Rendez la quête La Tonnebière
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto 1436/0,1309.72,-11213.000,60,0
    .goto 1436/0,1206.12,-11142.30,60,0
    .goto 1436/0,1177.07,-11100.30,60,0
    >>Tuez les |cRXP_ENEMY_Truands défias|r et les |cRXP_ENEMY_Malandrins défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Malandrins défias|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_(inflige le double des dégâts dans le dos)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1193.87,-11078.60,60 >> Voyagez vers l'extrémité des Collines de la dague
    .isOnQuest 153
step
    #completewith Footpads
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>Tuez les |cRXP_ENEMY_Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Foies de broche-tripes|r et les |cRXP_LOOT_Groins de broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Eventr'chair|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande filandreuse de vautour|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Trappeurs défias|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_(inflige le double des dégâts dans le dos) et|r |T132149:0|t[Filet] |cRXP_WARN_(immobilise pendant 9 secondes)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto 1436/0,1383.92,-10636.43,60,0
    .goto 1436/0,1328.97,-10454.90,60,0
    .goto 1436/0,1414.72,-10314.43,60,0
    .goto 1436/0,1389.52,-10270.330,60,0
    .goto 1436/0,1457.77,-10209.90,150 >> Voyagez vers la ferme des Molsen
    .isOnQuest 153
step
    #completewith Watch
    .goto 1436/0,1457.77,-10209.90,60,0
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r en AoE
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>Tuez les |cRXP_ENEMY_Jeunes Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Foies de broche-tripes|r et les |cRXP_LOOT_Groins de broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Eventr'chairs|r et les |cRXP_ENEMY_Jeunes déchireurs|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande filandreuse de vautour|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1471.77,-10022.07,60,0
    .goto 1436/0,1402.12,-10018.80,60,0
    .goto 1436/0,1310.77,-9885.10
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Defias Trappers|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_vous lanceront un|r |T132149:0|t[Filet]
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas au moins 10/15 sur les |cRXP_ENEMY_Trappeurs défias|r et les|r |cRXP_ENEMY_Contrebandiers défias|r
    .complete 153,1,1 --Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
    .complete 12,1 --Defias Trapper (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler (15)
    .mob +Defias Smuggler
step
    #completewith next
    .goto 1436/0,1310.77,-9885.10,60,0
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Defias Trappers|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_vous lanceront un|r |T132149:0|t[Filet]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto 1436/0,1290.12,-9849.40
    >>Ouvrez la |cRXP_PICK_Penderie de Froncebouille|r. Récupérez la |cRXP_LOOT_Montre de Froncebouille|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto 1436/0,1249.17,-9898.87,60,0
    .goto 1436/0,1207.17,-9940.4,60,0
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r en AoE
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1195.97,-9750.00,60,0
    .goto 1436/0,1024.12,-9697.50
    >>Tuez les |cRXP_ENEMY_Éclaireurs Rivepatte|r et les |cRXP_ENEMY_Gnolls Rivepatte|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto 1436/0,1184.07,-9623.77,60,0
    .goto 1436/0,1133.67,-9649.43,60,0
    .goto 1436/0,1058.07,-9591.80
    >>Tuez les |cRXP_ENEMY_Cours-la-côte murloc|r et les |cRXP_ENEMY_Écumeurs murloc|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Oeil de murloc|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto 1436/0,1037.07,-9849.17
    >>Tuez les |cRXP_ENEMY_Defias Footpads|r en AoE et dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Détrousseurs défias|r lancent|r |T132090:0|t[Attaque sournoise]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto 1436/0,1037.07,-9849.17
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Parlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step
    .goto 1436/0,926.47,-10207.80,80,0
    .goto 1436/0,908.27,-10506.000
    >>Tuez les |cRXP_ENEMY_Broche-tripes|r et les |cRXP_ENEMY_Jeunes Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Foies de broche-tripes|r et leur |cRXP_LOOT_Groins de broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Eventr'chairs|r et les |cRXP_ENEMY_Jeunes déchireurs|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande filandreuse de vautour|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1167.27,-10110.73,60,0
    .goto 1436/0,1207.17,-9940.40
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r en AoE
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1207.17,-9940.40
    .xp 17+11890 >> Montez votre expérience jusqu'à 11890+/17700xp
    .isQuestComplete 12
step
    .goto 1436/0,1207.17,-9940.40
    >>|cRXP_WARN_Passez cette étape si vous avez déjà terminé l'objectif de la quête La milice du peuple|r
    .xp 17+12800 >> Montez votre expérience jusqu'à 12800+/17700xp
step
    >>Parlez aà |cRXP_FRIENDLY_Saldean le fermier|r puis à |cRXP_FRIENDLY_Salma|r à l'intérieur
    .turnin 9,1 >> Rendez la quête Les champs de mort
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step
	>> Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .turnin 12 >> Rendez la quête La milice du peuple
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 102,1 >> Rendez la quête Patrouilles dans la marche de l'Ouest
    .goto 1436/0,1041.97,-10511.13
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto 1436/0,1041.97,-10511.13
	>> Parlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .turnin 102,1 >> Rendez la quête Patrouilles dans la marche de l'Ouest
	.target Captain Danuvin
step
    .goto 1436/0,1127.37,-10636.43
	>>Parlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .turnin 153,2 >> Rendez la quête Les masques en cuir rouge
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
	>>Parlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
	.target Thor
step
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto 1453/0,861.95,-8990.47,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Rendez la quête Le lac Miroir
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang 4)
    >>Coût total : 18 pièces d'argent
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sortez de la Tour des mages
    .goto 1453/0,948.65,-8994.50,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >> |cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,958.74,-8987.870,20,0
    .goto 1453/0,941.80,-8918.49,20,0
    .goto 1453/0,916.79,-8891.960,20,0
    .goto 1453/0,948.65,-8816.30,20,0
    .goto 1453/0,946.64,-8803.31,20,0
    .goto 1453/0,970.57,-8772.740,20,0
    .goto 1453/0,1030.92,-8747.20,20,0
    .goto 1453/0,1049.34,-8750.330,20,0
    .goto 1453/0,1093.16,-8779.020,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Argos Murmenuit|r
step
    .goto 1453/0,1093.16,-8779.020
    >>Parlez à |cRXP_FRIENDLY_Argos Murmenuit|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
step
    .goto 1453/0,822.16,-8865.60
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step
    .goto 1453/0,681.28,-8888.01
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Voyagez vers |cRXP_FRIENDLY_Keldric|r
step
    .goto 1453/0,635.44,-8863.81
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto 1453/0,637.59,-8889.81,10 >>Entrez dans la banque de Hurlevent
step
    #sticky
    #label Bank4
    .goto 1453/0,614.33,-8932.92
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 769,5354,6889 >> Récupérez les objets suivants de votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133469:0|t[Lettre à Delgren]
    >>|T132832:0|t[Petit œuf]
step
    #label Bank3
    .goto 1453/0,614.33,-8932.92
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    >>|cRXP_WARN_NOTE: Vous avez besoin de 12 stacks de chaque tissu (|r|T132911:0|t[Étoffe de laine]|cRXP_WARN_,|r |T132905:0|t[Étoffe de soie]|cRXP_WARN_,|r |T132892:0|t[Étoffe de tisse-mage]|cRXP_WARN_,|r et |T132903:0|t[Étoffe runique]|cRXP_WARN_) pour rendre les tissus plus tard. Vous les obtiendrez naturellement en montant de niveau|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T134943:0|t[Parchemins]
    >>|T132917:0|t[Plume légère]
    >>|T132911:0|t[Étoffe de laine]
    >>|T134377:0|t[Une simple boussole]
    >>|T132620:0|t[Tonneau de merlot]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Entrez dans l'auberge
    .goto 1453/0,673.75,-8867.93,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Hurlevent à Auberdine au moment où elle s'active (Batch)|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 18-20 Sombrivage 3 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Mage
#next 20-22 Carmines 1 Mage AoE Avancé

step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 45|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Farley|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 40|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 35|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 30|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 25|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 20|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 15|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 10|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto 1439/1,529.30,6415.93
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 5|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto 1439/1,533.23,6399.77
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>SUPPRIMEZ CETTE ÉTAPE PLUS TARD
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,577.77,6371.39
    >>Parlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Acceptez la quête Fruit de la mer
    .target Gubber Blump
step
    .goto 1439/1,89.14,5002.00
    >>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Parlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Kerlonian|r n'est pas là, passez cette étape|r
    .accept 5321 >>Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Ouvrez le |cRXP_PICK_Coffre de Kerlonian|r. Récupérez-y la |cRXP_LOOT_Corne de l'éveil|r
    >>|cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_sur |cRXP_FRIENDLY_Kerlonian Eternombre|r  lorsqu'il s'endort|r
    >>|cRXP_WARN_Ils ont tous les deux un temps d'incantation de 5 secondes|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
   .complete 986,1 --Fine Moonstalker Pelt (5)
   .mob Moonstalker Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob Grizzled Thistle Bear
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto 1439/1,410.09,4519.49
    >>Voyagez jusqu'à le Glaive du Maître
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>Tuez les |cRXP_ENEMY_Disciples du crépuscules|r et les |cRXP_ENEMY_Nervis du crépuscule|r. Dépouillez-les pour le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en bas|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Placez la |T134715:0|t[Fiole de divination] sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto 1439/1,410.09,4519.49
    >>Parlez à |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Therylune|r n'est pas présent, tuez les |cRXP_ENEMY_Disciples du crépuscule|r et les |cRXP_ENEMY_Nervis du crépuscule|r en AoE pour le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en bas|r] jusqu'à ce qu'elle apparaisse|r
   .accept 945 >> Acceptez la quête L'évasion de Therylune
   .target Therylune
   .use 13536
   .isOnQuest 5321
step
    #completewith Tome1
    >>Escortez |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
    .isOnQuest 5321
step
   .goto 1439/1,416.64,4576.69
   >>Placez la |T134715:0|t[Fiole de divination] sur le sol
   >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
   .turnin 944 >> Rendez la quête Le Glaive du Maître
   .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto 1439/1,416.64,4576.69
    >>Cliquez sur le |cRXP_PICK_Tome du crépuscule|r
   .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
   .accept 950 >> Acceptez la quête La page qui rend fou
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>Escortez |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_Assurez-vous que |cRXP_FRIENDLY_Therylune|r reste non loin de vous sinon vous échouerez la quête|r
   .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto 1439/1,602.01,4678.87
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r pour commencer l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,892.83,4517.30
    >>Escortez le |cRXP_FRIENDLY_Prospecteur Songerrancel|r
    >>Lorsque le |cRXP_ENEMY_Briseur d'os des Gravières|r et les |cRXP_ENEMY_Géomanciens des Gravières|r apparaissent, laissez le |cRXP_ENEMY_Géomancien des Gravières|r lancer |T135812:0|t[Boule de feu] sur le |cRXP_FRIENDLY_Prospecteur Songerrance|r, puis lancez |T136071:0|t[Métamorphose] sur lui. Tuez d'abord le |cRXP_ENEMY_Briseur d'os des Gravières|r, puis le |cRXP_ENEMY_Géomancien des Gravières|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +À partir de maintenant, ne réveillez plus |cRXP_FRIENDLY_Kerlonian Eternombre|r
    >>Gardez un oeil ouvert pour la |cRXP_ENEMY_Matriarche trotteuse|r
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto 1439/1,892.83,4517.30
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Dépouillez-la sur son Cou|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4733 >>Acceptez la quête La créature marine échouée
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >> Abandonnez la quête Le dormeur s'est éveillé
    .isOnQuest 950
step
    .goto 1439/1,896.76,4597.21
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4732 >>Acceptez la quête La tortue de mer échouée
    .isOnQuest 950
step
    #completewith SeaCreature
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto 1439/1,865.32,4678.432
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4731 >>Acceptez la quête La tortue de mer échouée
    .isOnQuest 950
step
    #label SeaCreature
    .goto 1439/1,799.82,4808.12
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4730 >>Acceptez la quête La créature marine échouée
    .isOnQuest 950
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto 1439/1,549.61,4990.65
   >>Nettoyez le camp de murlocs sans vous déplacer vers le centre de celui-ci
   >>Une fois que vous avez tué les murlocs du camp, déplacez-vous vers son centre pour lancer 3 vagues de murlocs (3 Cours-la-côte, 2 Guerriers, Fondeboue et un Chasseur)
   >>|cRXP_WARN_Si vous avez de la chance, |cRXP_ENEMY_Fondeboue|r peut déjà être présent à environ 30 mètres de la côte vers l'ouest (si un joueur est déjà mort en l'affrontant auparavant)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,621.66,5210.29,60,0
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto 1439/1,585.63,5237.370
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4728 >>Acceptez la quête La créature marine échouée
    .isOnQuest 950
step
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label Onu2
    .goto 1439/1,89.14,5002.00
    >>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto 1439/1,585.63,5237.370
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4728 >>Acceptez la quête La créature marine échouée
step
    #completewith next
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,549.61,4990.65
    >>Nettoyez le camp de murlocs sans vous déplacer vers le centre de celui-ci
    >>Une fois que vous avez tué les murlocs du camp, déplacez-vous vers son centre pour lancer 3 vagues de murlocs (3 Cours-la-côte, 2 Guerriers, Fondeboue et un Chasseur)
    >>|cRXP_WARN_Si vous avez de la chance, |cRXP_ENEMY_Fondeboue|r peut déjà être présent à environ 30 mètres de la côte vers l'ouest (si un joueur est déjà mort en l'affrontant auparavant)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00,60,0
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,799.82,4808.12
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4730 >>Acceptez la quête La créature marine échouée
step
    .goto 1439/1,793.27,4764.89,60,0
    .goto 1439/1,840.43,4696.77
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,865.32,4678.432
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4731 >>Acceptez la quête La tortue de mer échouée
step
    .goto 1439/1,896.76,4597.21
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4732 >>Acceptez la quête La tortue de mer échouée
step
    .goto 1439/1,892.83,4517.30
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Dépouillez-la sur son Cou|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4733 >>Acceptez la quête La créature marine échouée
step
    #completewith Remtravel3
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith Remtravel3
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #completewith next
    +À partir de maintenant, ne réveillez plus |cRXP_FRIENDLY_Kerlonian Eternombre|r
    >>Gardez un oeil ouvert pour la |cRXP_ENEMY_Matriarche trotteuse|r
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto 1439/1,602.01,4678.87
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r pour commencer l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,410.09,4519.49
    >>Escortez le |cRXP_FRIENDLY_Prospecteur Songerrancel|r
    >>Lorsque le |cRXP_ENEMY_Briseur d'os des Gravières|r et les |cRXP_ENEMY_Géomanciens des Gravières|r apparaissent, laissez le |cRXP_ENEMY_Géomancien des Gravières|r lancer |T135812:0|t[Boule de feu] sur le |cRXP_FRIENDLY_Prospecteur Songerrance|r, puis lancez |T136071:0|t[Métamorphose] sur lui. Tuez d'abord le |cRXP_ENEMY_Briseur d'os des Gravières|r, puis le |cRXP_ENEMY_Géomancien des Gravières|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label Glaive2
   .goto 1439/1,410.09,4519.49
    >>Voyagez jusqu'à le Glaive du Maître
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>Tuez les |cRXP_ENEMY_Disciples du crépuscules|r et les |cRXP_ENEMY_Nervis du crépuscule|r. Dépouillez-les pour le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en bas|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Placez la |T134715:0|t[Fiole de divination] sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    .goto 1439/1,410.09,4519.49
    >>Parlez à |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Therylune|r n'est pas présent, tuez les |cRXP_ENEMY_Disciples du crépuscule|r et les |cRXP_ENEMY_Nervis du crépuscule|r en AoE pour le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en bas|r] jusqu'à ce qu'elle apparaisse|r
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    #completewith Tome2
    >>Escortez |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto 1439/1,416.64,4576.69
    >>Placez la |T134715:0|t[Fiole de divination] sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    #label Tome2
    .goto 1439/1,416.64,4576.69
    >>Cliquez sur le |cRXP_PICK_Tome du crépuscule|r
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
    .accept 950 >> Acceptez la quête La page qui rend fou
    .use 13536
step
    #label Therylune2
    >>Escortez |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Assurez-vous que |cRXP_FRIENDLY_Therylune|r reste non loin de vous sinon vous échouerez la quête|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith Onu3
    #label Scalps2
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #requires Scalps2
    #completewith next
    .goto 1439/1,229.97,4815.55,-1
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r
    .turnin 1003 >> Rendez la quête Bigobox 525
step
    #label Onu3
    .goto 1439/1,89.14,5002.00,-1
    >>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Parlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Kerlonian|r n'est pas là, passez cette étape|r
    .accept 5321 >>Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Ouvrez le |cRXP_PICK_Coffre de Kerlonian|r. Récupérez-y la |cRXP_LOOT_Corne de l'éveil|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>Tuez en AoE les |cRXP_ENEMY_Géniteurs traquelune|r. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11,60,0
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto 1439/1,229.97,4815.55
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r
    .turnin 1003 >> Rendez la quête Bigobox 525
    .use 13536
step
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02,70,0
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02
    >>Tuez les |cRXP_ENEMY_Matriarches traquelune|r et les |cRXP_ENEMY_Géniteurs traquelune|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Belles peaux de traquelune|r
    >>Les |cRXP_ENEMY_Géniteurs traquelune|r partagent leur réapparition avec les |cRXP_ENEMY_Vieil ours des chardons|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .unitscan Moonstalker Matriarch
    .use 13536
step
    #completewith Sleeper
    .xp 19+4635 >> Montez votre expérience jusqu'à 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>Tuez les |cRXP_ENEMY_Coureurs Patte-fantôme|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Steaks de loup|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto 1440/1,128.01,3305.31
    >>Parlez à |cRXP_FRIENDLY_Liladris Ondelune|r
    .turnin 5321,1 >>Rendez la quête Le dormeur s'est éveillé
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto 1440/1,189.71,3185.390
    >>Parlez à |cRXP_FRIENDLY_Delgren le Purificateur|r
    .turnin 967 >>Rendez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    .goto 1440/1,394.43,2677.63
    >>Parlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Rendez la quête L'évasion de Therylune
    .target Therysil
step
    .goto 1440/1,-284.31,2828.30
    .xp 19+8720 >> Montez votre expérience jusqu'à 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #completewith next
    .goto 1440/1,-284.31,2828.30
    >>Parlez à |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Volez à Auberdine
    .target Daelyshia
step
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r et à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 4728 >>Rendez la quête La créature marine échouée
    .turnin 4730 >>Rendez la quête La créature marine échouée
    .turnin 4731 >>Rendez la quête La tortue de mer échouée
    .turnin 4732 >>Rendez la quête La tortue de mer échouée
    .turnin 4733 >>Rendez la quête La créature marine échouée
    .target +Gwennyth Bly'Leggonde
    .goto 1439/1,543.06,6342.130
    .turnin 1138,2 >>Rendez la quête Fruit de la mer
    .goto 1439/1,577.77,6371.39
    .target +Gubber Blump
step
    .goto 1439/1,470.35,6439.07
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4740 >>Rendez la quête On recherche : Fondeboue !
    .target Sentinel Glynda Nal'Shea
step
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Gershala Murmenuit|r
    .turnin 986 >>Rendez la quête Un maître perdu
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto 1439/1,362.93,6434.71
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .goto 1439/1,431.71,6453.92
    .target +Gershala Nightwhisper
step
    .goto 1439/1,445.46,6536.01
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 20|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 15|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 10|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 5|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto 1439/1,488.69,6564.830
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Achetez un|r |T135435:0|t[Bois simple] |cRXP_BUY_et un|r|T135237:0|t[Silex et amadou] |cRXP_BUY_au marchand|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto 1439/1,489.35,6506.32
    >>Parlez à |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto 1439/1,487.38,6479.68,20,0
    .goto 1439/1,489.35,6454.36,20,0
    .goto 1439/1,527.99,6409.82,20,0
    .goto 1439/1,782.79,6504.57,20,0
    .goto 1439/1,765.10,6590.60,50 >>Voyagez vers le bateau pour Darnassus
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >> Lancez |T135805:0|t[Feu de camp basique] sur le Bateau (ou sur le quai si vous ne voyez pas encore le bateau arriver)
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +Cuisinez n'importe quel |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r en |T133974:0|t[Viande de sanglier rôtie]
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_Lancez en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible|r
step
    #label Teldrassil
    .goto 1438/1,1018.75,8564.77,100 >> Prenez le bateau pour Teldrassil
step
    #completewith next
    .goto 1438/1,987.69,8651.99,60,0
    .goto 1438/1,922.52,8678.46,40,0
    .goto 1438/1,888.40,8676.08,20,0
    .goto 1438/1,841.05,8641.121,20 >>Voyagez vers |cRXP_FRIENDLY_Vesprystus|r
step
    .goto 1438/1,841.05,8641.121
    >>Parlez à |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Prenez le chemin de vol du village de Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step
    #completewith next
    .goto 1457/1,2536.83,9898.58,30,0
    .goto 1457/1,2534.08,9772.82,30,0
    .goto 1457/1,2549.00,9727.09,30,0
    .goto 1457/1,2607.74,9642.04,20 >>Voyagez vers le |cRXP_FRIENDLY_Chef archéologue Grisemoustache|r
step
    .goto 1457/1,2607.74,9642.04
    >>Parlez au |cRXP_FRIENDLY_Chef archéologue Grisemoustache|r
    .turnin 741,3 >>Rendez la quête Les absences du Prospecteur
    .accept 942 >>Acceptez la quête Les absences du Prospecteur
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 20-22 Carmines 1 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none Mage
#next 22-26 Les Paluns 1 Mage AoE Avancé

step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Hurlevent
    .zoneskip Stormwind City
step
    .goto 1453/0,635.44,-8863.81
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> Vendeur votre surplus. |cRXP_BUY_Achetez des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_au marchand (si elles sont disponibles)|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Entrez dans la banque de Hurlevent
step
    #sticky
    #label Bank1
    .goto 1453/0,614.33,-8932.92
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Récupérez les objets suivants de votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T134943:0|t[Parchemins]
    >>|T132620:0|t[Tonneau de merlot]
    >>|T134377:0|t[Une simple boussole]
    .target Newton Burnside
step
    #label Bank
    .goto 1453/0,614.33,-8932.92
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    >>|cRXP_WARN_NOTE: Vous avez besoin de 12 stacks de chaque tissu (|r|T132911:0|t[Étoffe de laine]|cRXP_WARN_,|r |T132905:0|t[Étoffe de soie]|cRXP_WARN_,|r |T132892:0|t[Étoffe de tisse-mage]|cRXP_WARN_,|r et |T132903:0|t[Étoffe runique]|cRXP_WARN_) pour rendre les tissus plus tard. Vous les obtiendrez naturellement en montant de niveau|r
    .bankdeposit 17056,2592,1015,4654 >> Déposez les objets suivants dans votre banque:
    >>|T132917:0|t[Plume légère]
    >>|T132911:0|t[Étoffe de laine]
    >>|T133970:0|t[Steak de loup]
    >>|T134431:0|t[Mystérieux fossile]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto 1453/0,679.80,-8829.57,12,0
    .goto 1453/0,716.77,-8847.23,12,0
    .goto 1453/0,693.24,-8891.33,12 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step
    #requires Bank1
    .goto 1453/0,681.28,-8888.01
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto 1453/0,861.95,-8990.47,10 >>Voyagez vers |cRXP_FRIENDLY_Larimaine Purdue|r
step
    #requires Bank1
    .goto 1453/0,847.43,-8991.99
    >>Parlez à |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
    >>Coût total : 20 pièces d'argent
    .target Larimaine Purdue
step
    .goto 1453/0,861.95,-8990.47
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe (Transfert, Évocation, Armure de givre Rang 3, Bouclier de mana, Invocation d'eau Rang 3)
    >>|cRXP_WARN_N'apprenez PAS encore Blizzard|r
    >>Coût total : 1 pièce d'argent
    .target Jennea Cannon
step
    #completewith Charys
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sortez de la Tour des mages
    .goto 1453/0,948.65,-8994.50,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    >>|cRXP_BUY_Achetez 2|r |T134419:0|t[Runes de téléportation]|cRXP_BUY_,|r des |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 18 pièces d'argent et 31 pièces de cuivres|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    >>|cRXP_BUY_Achetez deux|r |T134419:0|t[Runes de téléportation]|cRXP_BUY_,|r des |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 26 pièces d'argent et 31 pièces de cuivres|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Adair Gilroy|r
step
    .goto 1453/0,822.16,-8865.60
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 18 pièces d'argent et 31 pièces de cuivres|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto 1453/0,822.16,-8865.60
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 26 pièces d'argent et 31 pièces de cuivres|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Courez le long du bord du mur au lieu de faire le tour
step
    .goto 1453/0,766.64,-8623.23
    >>Parlez au |cRXP_FRIENDLY_Frère Kristoff|r
    .accept 343 >> Acceptez la quête En parlant de fermeté
    .target Brother Kristoff
step
    #completewith next
    .goto 1453/0,737.74,-8571.69,15,0
    .goto 1453/0,736.26,-8558.06,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Voyagez vers |cRXP_FRIENDLY_Baros Alexston|r
step
    .goto 1453/0,719.86,-8550.36
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
step
    .goto 1453/0,638.26,-8342.22
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto 1453/0,453.16,-8533.33,30,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,383.66,-8345.63,12 >>Voyagez vers |cRXP_FRIENDLY_Milton|r
step
    .goto 1453/0,383.66,-8345.63
    >>Parlez à |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Rendez la quête En parlant de fermeté
    .accept 344 >> Acceptez la quête Frère Paxton
    .target Milton Sheaf
step
    #completewith next
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,450.74,-8539.51,30,0
    .goto 1453/0,551.02,-8658.37,20,0
    .goto 1453/0,509.88,-8819.71,12,0
    .goto 1453/0,518.35,-8822.040,12 >>Voyagez vers |cRXP_FRIENDLY_Felicia|r
step
    .goto 1453/0,518.35,-8822.040
    >>Parlez à |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Achetez les|r |T133849:0|t[Herbes aromatiques de Hurlevent] |cRXP_BUY_à Felicia|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto 1453/0,508.41,-8803.04,30,0
    .goto 1453/0,575.62,-8741.370,30,0
    .goto 1453/0,603.58,-8771.67,30,0
    .goto 1453/0,530.45,-8847.41,20,0
    .goto 1453/0,532.33,-8863.54,20,0
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Descendez jusqu'à la corniche en dessous de |cRXP_FRIENDLY_Dungar Grangodet|r
step
    #completewith next
    .goto 1429/0,44.35,-9458.41,30 >>Voyagez vers l'Auberge de Comté-de-l'Or
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto 1429/0,398.72,-9085.76,50,0
    .goto 1429/0,125.22,-9079.98,20,0
    .goto 1429/0,-139.95,-8910.09,50,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    >>Prenez le chemin de Montagne vers le |cRXP_FRIENDLY_Frère Paxton|r
    .goto 1429/0,-186.46,-8874.91,10 >>Allez vers le |cRXP_FRIENDLY_Frère Paxton|r
step
    .goto 1429/0,8.25,-9460.03
    >>Parlez à |cRXP_FRIENDLY_Dobbins le tavernier|r
    >>|cRXP_BUY_Achetez une|r |T132794:0|t[Outre de rhum doux] |cRXP_BUY_à Dobbins|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto 1429/0,16.23,-9462.580,0,0
    >>Parlez à |cRXP_FRIENDLY_Aubergiste Farley|r
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Allez vers le |cRXP_FRIENDLY_Frère Paxton|r
step
    #requires FarleyHome
    .goto 1429/0,-186.46,-8874.91
    >>Parlez au |cRXP_FRIENDLY_Frère Paxton|r
    .turnin 344 >> Rendez la quête Frère Paxton
    .accept 345 >> Acceptez la quête Provisions d'encre
    .target Brother Paxton
step
    #completewith Theo
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-140.30,-8916.57,10,0
    .goto 1429/0,-464.48,-9142.47,30,0
    .goto 1429/0,-701.54,-9538.960,15 >>Prenez le chemin de montagne vers la Tour d'Azora
step
    #sticky
    #label Dawn
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Parlez à |cRXP_FRIENDLY_Aurore|r à l'étage
    .vendor 958 >> |cRXP_BUY_Achetez des|r |T134943:0|t[Parchemins]|cRXP_BUY_qui ne donnent pas de l'Intelligence,|r des |T134850:0|t[Potions de mana mineures]|cRXP_BUY_, et des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_au marchand (s'ils sont en stock)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 11 pièces d'argent et 38 pièces de cuivres|r
    .money <0.1138
    .target Aurore Brillétoile
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Parlez à |cRXP_FRIENDLY_Aurore|r à l'étage
    .vendor 958 >> |cRXP_BUY_Achetez des|r |T134943:0|t[Parchemins]|cRXP_BUY_qui ne donnent pas de l'Intelligence,|r des |T134850:0|t[Potions de mana mineures]|cRXP_BUY_, et des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_au marchand (s'ils sont en stock)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 19 pièces d'argent et 38 pièces de cuivres|r
    .money <0.1938
    .target Aurore Brillétoile
    .itemcount 4371,<1
step
    #label Theo
    .goto 1429/0,-728.26,-9553.08
    >>Montez à l'étage
    >>Parlez à |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Acceptez la quête L'œil attentif
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto 1431/0,-1159.00,-10544.31,20,0
    .goto 1431/0,-1164.94,-10533.15,10 >>Entrez dans l'auberge
step
    #requires Dawn2
    .goto 1431/0,-1159.54,-10509.03
    >>Parlez à |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Achetez la|r |T132798:0|t[Bouteille de tord-boyaux] |cRXP_BUY_au marchand|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto 1431/0,-1164.94,-10533.15,10,0
    .goto 1431/0,-1159.00,-10544.31,10 >>Quittez l'auberge
step
    #completewith next
    .goto 1431/0,-1197.61,-10585.35,12 >>Entrez dans le bâtiment
step
    .goto 1431/0,-1200.85,-10593.99
    >>Parlez à |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Acceptez la quête Colline-aux-Corbeaux
    .accept 164 >>Acceptez la quête Livraison à Sven
    .accept 165 >>Acceptez la quête L'ermite
    .target Elaine Carevin
step
    .goto 1431/0,-1272.67,-10586.073
    >>Parlez à |cRXP_FRIENDLY_Herbel Brimborion|r
    .vendor 3133 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto 1431/0,-1320.73,-10581.75
    >>Parlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Acceptez la quête Un œil dans les étoiles
    .turnin 174 >> Rendez la quête Un œil dans les étoiles
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto 1431/0,-1320.73,-10581.75
    >>Parlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1366.09,-10779.03
    >>Parlez à |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Rendez la quête Un œil dans les étoiles
    .accept 177 >> Acceptez la quête Un œil dans les étoiles
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1258.63,-10513.89
    >>Parlez à |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Prenez le chemin de vol du Bois de la Pénombre
    .target Felicia Mane
step
    #completewith Kzixx
    .goto 1431/0,-1236.49,-10139.49,60,0
    .goto 1431/0,-1375.81,-10072.35,20 >>Dirigez-vous vers |cRXP_FRIENDLY_Kzixx|r
step
    .goto 1431/0,-1375.81,-10072.35
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto 1431/0,-1375.81,-10072.35
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_au marchand (si elles sont disponibles et si vous en avez besoin)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>Tuez les |cRXP_ENEMY_Tarantules|r en AoE. Dépouillez-les pour les |cRXP_LOOT_Chairs croustillantes d'araignée|r
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour les |cRXP_LOOT_Groins de grand Broche-tripes|r et les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls
    >>Tuez les |cRXP_ENEMY_Tarantules|r en AoE. Dépouillez-les pour les |cRXP_LOOT_Chairs croustillantes d'araignée|r
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Parlez au |cRXP_FRIENDLY_Garde Parker|r
    .accept 244 >>Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << skip
    #label AoE1
    .goto 1433/0,-1912.31,-9479.51,60 >>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r et les |cRXP_ENEMY_Braconniers des Carmines|r en AoE
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour les |cRXP_LOOT_Groins de grand Broche-tripes|r et les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step << skip
    #completewith next
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,50
step
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
    >>Parlez à l' |cRXP_FRIENDLY_Adjoint Feldon|r
    .turnin 244 >>Rendez la quête Des gnolls encombrants
    .accept 246 >>Acceptez la quête L'appréciation du danger
    .target Deputy Feldon
step
    .goto 1433/0,-2234.89,-9435.060
    >>Parlez à |cRXP_FRIENDLY_Ariena Plumorage|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    >>Parlez à |cRXP_FRIENDLY_Nathanos Marris|r et au |cRXP_FRIENDLY_Contremaître Oslow|r
    .accept 20 >>Acceptez la quête La menace des Rochenoires
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .accept 125 >>Acceptez la quête Les outils perdus
    .turnin 345 >>Rendez la quête Provisions d'encre
    .accept 347 >>Acceptez la quête Minerai de rethban
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2219.70,-9260.73
    >>Parlez à |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    >>|cRXP_WARN_Vous en aurez besoin pour plus tard|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Parlez à |cRXP_FRIENDLY_Bailli Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto 1433/0,-2221.87,-9218.60
    .accept 91 >>Acceptez la quête La loi de Salomon
    .goto 1433/0,-2216.00,-9215.85
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Parlez à |cRXP_FRIENDLY_Baren|r et à l' |cRXP_PICK_Affiche de recherche|r
    .accept 127 >>Acceptez la quête Criée aux poissons
    .goto 1433/0,-2172.59,-9261.02
    .accept 180 >>Acceptez la quête On recherche : lieutenant Tripecroc
    .goto 1433/0,-2151.53,-9247.12
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto 1433/0,-2155.22,-9225.84,0,0
    >>Entrez dans l'auberge
    >>Parlez à |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Acceptez la quête Un repas gratuit
    .target Darcy
step
    .goto 1433/0,-2145.89,-9211.36
    >>À l'intérieur de l'auberge
    >>Parlez à |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Acceptez la quête Régime sec
    .turnin 116 >>Rendez la quête Régime sec
    .target Barkeep Daniels
step
    .goto 1433/0,-2145.45,-9231.34
    >>À l'intérieur de l'auberge
    >>Parlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r en sautant de la rampe en bas des escaliers
    .turnin 65 >>Rendez la quête La Confrérie défias
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1433/0,-2207.32,-9351.66
    >>Parlez à |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Acceptez la quête Le collier d'Hilary
    .target Shawn
step
    .goto 1433/0,-2250.09,-9360.78,90,0
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97
    >>|cRXP_WARN_Nagez sous l'eau et vérifiez les emplacements où il peut apparaître. Il y a 8 emplacements avec 2 apparitions en même temps|r.
    >>Ouvrez la |cRXP_PICK_Boue luisante|r. Récupérez le |cRXP_LOOT_Collier d'Hilary|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2205.58,-9351.52
    >>Parlez à |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Rendez la quête Le collier d'Hilary
    .target Hilary
step
    #completewith Gnolls2
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour les |cRXP_LOOT_Groins de grand Broche-tripes|r et les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto 1433/0,-1912.31,-9479.51
    >>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r et les |cRXP_ENEMY_Braconniers des Carmines|r en AoE
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>Tuez les |cRXP_ENEMY_Tarantules|r en AoE. Dépouillez-les pour les |cRXP_LOOT_Chairs croustillantes d'araignée|r
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour les |cRXP_LOOT_Groins de grand Broche-tripes|r et les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>Tuez les |cRXP_ENEMY_Tarantules|r en AoE. Dépouillez-les pour les |cRXP_LOOT_Chairs croustillantes d'araignée|r
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Parlez au |cRXP_FRIENDLY_Garde Parker|r
    .turnin 129 >>Rendez la quête Un repas gratuit
    .accept 130 >>Acceptez la quête Une visite chez l'herboriste
    .target Guard Parker
step
    #label Gnolls3
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17,60,0
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17
    >>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r, les |cRXP_ENEMY_Vandales des Carmines|r, et les |cRXP_ENEMY_Braconniers des Carmines|r en AoE
    >>|cRXP_WARN_N'oubliez pas de rester dans la zone morte des|r |cRXP_ENEMY_Braconniers des Carmines|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto 1433/0,-2238.15,-9443.60
    >>Parlez à l' |cRXP_FRIENDLY_Adjoint Feldon|r
    .turnin 246 >>Rendez la quête L'appréciation du danger
    .target Deputy Feldon
step
    .goto 1433/0,-2472.16,-9366.72,-1
    >>Allez sous l'eau
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto 1433/0,-2445.68,-9240.75,60,0
    >>Tuez les |cRXP_ENEMY_Dévoreurs murlocs|r et les |cRXP_ENEMY_Eclaireurs murlocs|r. Dépouillez-les pour obtenir quelques |cRXP_LOOT_Poisson-lune|r et |cRXP_LOOT_Écailles de murlocs|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 1433/0,-2268.54,-9279.12
    >>Parlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 125 >>Rendez la quête Les outils perdus
    .accept 89 >>Acceptez la quête Le pont sur le lac
    .target Foreman Oslow
step
    .goto 1433/0,-2240.10,-9248.14
    >>Parlez à |cRXP_FRIENDLY_Dorin Lame-chantante|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto 1433/0,-2205.58,-9232.350,10,0
    .goto 1433/0,-2197.99,-9224.68,8 >>Entrez à l'intérieur de l'Hôtel de ville
step
    .goto 1433/0,-2377.51,-9229.460,60,0
    .goto 1433/0,-2403.56,-9173.57,60,0
    .goto 1433/0,-2415.07,-9034.28,60,0
    .goto 1433/0,-2509.72,-9067.73,60,0
    .goto 1433/0,-2599.16,-9078.44,60,0
    .goto 1433/0,-2772.39,-9226.85,60,0
    .goto 1433/0,-2808.64,-9313.58,60,0
    .goto 1433/0,-2791.71,-9355.86,60,0
    .goto 1433/0,-2838.17,-9350.50,60,0
    .goto 1433/0,-2840.12,-9220.92,60,0
    .goto 1433/0,-2854.01,-9211.65,60,0
    .goto 1433/0,-2867.69,-9183.27,60,0
    .goto 1433/0,-2924.13,-9179.65,60,0
    .goto 1433/0,-2928.91,-9231.77,60,0
    >>Tuez les |cRXP_ENEMY_Estafettes Rochenoire|r, les |cRXP_ENEMY_Renégats Rochenoire|r et les |cRXP_ENEMY_Grunts Rochenoire|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Haches détériorées|r
    >>Tuez les |cRXP_ENEMY_Maîtres des flots murlocs|r et les |cRXP_ENEMY_Eclaireurs murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Poisson-lune|r et |cRXP_LOOT_Écailles de murlocs|r
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>Tuez les |cRXP_ENEMY_Grandes tarentules|r. Dépouillez-les pour leur |cRXP_LOOT_Chair croustillante d'araignée|r
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Mystiques des Carmines|r et les |cRXP_ENEMY_Brutes des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets en fer|r
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Estafettes Rochenoire|r lancent un|r |T132149:0|t[Filet]|cRXP_WARN_, et les |cRXP_ENEMY_Condors redoutables|r lancent|r |T132154:0|t[Renverser]n
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto 1433/0,-2377.51,-9229.460,30,0
	.goto 1433/0,-2403.56,-9173.57,30,0
	.goto 1433/0,-2441.12,-9163.43,30,0
	.goto 1433/0,-2501.90,-9143.45,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
	.goto 1433/0,-2868.77,-9183.85,30,0
	.goto 1433/0,-2929.34,-9175.31,30,0
	.goto 1433/0,-2929.12,-9233.51,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto 1433/0,-2831.22,-9328.06,40,0
    .goto 1433/0,-2809.95,-9313.87,40,0
    .goto 1433/0,-2789.11,-9350.36,40,0
    .goto 1433/0,-2831.22,-9328.06
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto 1433/0,-2509.72,-9067.73,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2655.60,-9061.500,30,0
	.goto 1433/0,-2697.5,-9150.55,30,0
	.goto 1433/0,-2760.67,-9163.72,30,0
	.goto 1433/0,-2758.28,-9225.55,30,0
	.goto 1433/0,-2821.88,-9247.99,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto 1433/0,-2705.31,-9104.36,30,0
	.goto 1433/0,-2744.82,-9129.26,30,0
	.goto 1433/0,-2764.36,-9158.65,30,0
	.goto 1433/0,-2803.65,-9173.86,30,0
	.goto 1433/0,-2813.85,-9264.210,30,0
	.goto 1433/0,-2759.58,-9234.96,30,0
	.goto 1433/0,-2714.21,-9193.69,30,0
	.goto 1433/0,-2667.1,-9176.61,30,0
	.goto 1433/0,-2705.31,-9104.36,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto 1433/0,-2415.07,-9034.28
    .mob Blackrock Outrunner
    .mob Blackrock Grunt
    .mob Blackrock Renegade
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .mob Dire Condor
    .mob Greater Tarantula
    .mob Great Goretusk
    .mob Redridge Mystic
    .mob Redridge Brute
step
    #completewith Herbalist
    .goto 1433/0,-2366.23,-9110.87,60,0
    .goto 1433/0,-2270.06,-9155.47,60,0
    >>Tuez les |cRXP_ENEMY_Mystiques des Carmines|r et les |cRXP_ENEMY_Brutes des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets en fer|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-2063.18,-9209.62
    >>Entrez à l'intérieur
    >>Parlez à la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .target Chef Breanna
    .itemcount 1080,5
    .itemcount 1081,5
    .itemcount 2296,5
step
    #label Herbalist
    .goto 1433/0,-2045.38,-9245.82
    >>Parlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Rendez la quête Une visite chez l'herboriste
    .accept 131 >>Acceptez la quête Bouquet de jonquilles
    .accept 34 >>Acceptez la quête Un invité indésirable
    .target Martie Jainrose
step
    #completewith next
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto 1433/0,-1910.79,-9288.97
    >>Tuez |cRXP_ENEMY_Fouailleventre|r
    >>|cRXP_WARN_Attirez-la vers la clôture au nord de |cRXP_FRIENDLY_Lamar Veisilli|r. Sautez d'un côté et de l'autre pour rester en zone sûre et ne pas subir de dégâts|r
    >>Soyez prudent car |cRXP_ENEMY_Fouailleventre|r lance |T132337:0|t[Charge] et |T136025:0|t[Secousse]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto 1433/0,-2045.38,-9245.82
    >>Parlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Rendez la quête Un invité indésirable
    .target Martie Jainrose
step
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto 1433/0,-2034.31,-9101.17,60,0
    >>Tuez les |cRXP_ENEMY_Mystiques des Carmines|r et les |cRXP_ENEMY_Brutes des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets en fer|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-1994.15,-9037.03,60,0
    .goto 1433/0,-2017.59,-8984.62,40 >>Dirigez-vous vers les Cavernes de Rethban
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    >>Tuez les |cRXP_ENEMY_Manouvriers des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Minerai de rethban|r, leur |cRXP_LOOT_Clous en fer|r, et leur |cRXP_LOOT_Rivets en fer|r
    >>Tuez les |cRXP_ENEMY_Cogneurs des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets en fer|r
    >>Minez les |cRXP_PICK_Filons de cuivre|r dans la grotte. Récupérez-y le |cRXP_LOOT_Minerai de rethban|r
    .complete 347,1 --Rethban Ore (5)
    .mob +Redridge Drudger
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Basher
    .complete 89,2 --Iron Rivet (5)
    .mob +Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+14365 >> Montez votre expérience jusqu'à 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+15715 >> Montez votre expérience jusqu'à 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto 1433/0,-1978.73,-8775.39,-1
    .goto 1433/0,-2049.28,-8823.17,-1
    .goto 1433/0,-1970.27,-8924.38,-1
    .goto 1433/0,-2033.00,-8923.37,-1
    .goto 1433/0,-1930.76,-8878.63,-1
    .goto 1433/0,-2305.01,-9271.01,30 >>Effectuez un Logout skip pour sortie de la grotte (dans le côté EST) et retourner à Comté-du-Lac
step
    #completewith next
    .subzone 69 >> Retournez à Comté-du-Lac
step
    >>Parlez à |cRXP_FRIENDLY_Nathanos Marris|r et au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 20 >>Rendez la quête La menace des Rochenoires
    .accept 19 >>Acceptez la quête Tharil'zun
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .turnin 89,1 >>Rendez la quête Le pont sur le lac
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2242.49,-9259.00
    >>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    .accept 118 >>Acceptez la quête Le prix des fers
    .target Verner Osgood
step
    .goto 1433/0,-2172.59,-9261.02
    >>Parlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .turnin 127 >> Rendez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
    .turnin 150 >> Rendez la quête Les braconniers murlocs
    .goto 1433/0,-2172.59,-9261.02
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto 1433/0,-2158.69,-9234.38,0,0
    .vendor >> Vendez votre surplus. Vous pouvez vendre la |T134708:0|t[Pioche de mineur] maintenant si vous le souhaitez
    .target Kimberly Hiett
step
    .goto 1433/0,-2155.22,-9225.84
    >>Entrez dans l'auberge
    >>Parlez à |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Rendez la quête Bouquet de jonquilles
    .target Darcy
step
    #completewith next
    .goto 1433/0,-2146.54,-9246.54,12,0
    .goto 1433/0,-2067.09,-9220.34,12,0
    >>Allez vers la |cRXP_FRIENDLY_Chef Breanna|r
step
    .goto 1433/0,-2063.18,-9209.62
    >>Entrez à l'intérieur
    >>Parlez à la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .target Chef Breanna
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto 1429/0,87.73,-9456.79
    >>Parlez à |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Rendez la quête Le prix des fers
    .accept 119 >>Acceptez la quête Le retour chez Verner
    .target Smith Argus
step
    #completewith next
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Allez vers le |cRXP_FRIENDLY_Frère Paxton|r
step
    .goto 1429/0,-186.46,-8874.91
    >>Parlez au |cRXP_FRIENDLY_Frère Paxton|r
    .turnin 347 >> Rendez la quête Minerai de rethban
    .accept 346 >> Acceptez la quête Retourner voir Frère Kristoff
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >> Lancez |T135763:0|t[Téléportation : Hurlevent]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===ATTENTION===|r
    +|cRXP_WARN_Changez votre spécialisation pour la spécialisation Givre AoE|r
    .xp <22,1
step
    .goto 1453/0,867.06,-9012.61
    >>Parlez à |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Apprenez Blizzard
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sortez de la Tour des mages
    .goto 1453/0,948.65,-8994.50,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    #completewith BankDeposit
    +|cRXP_WARN_Ne descendez PAS à moins de 19 pièces d'or et, 43 pièces d'argent et 30 pièces de cuivre|r
    .xp >22,1
step
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto 1453/0,948.65,-8994.50
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_au marchand (si elles sont disponibles et si vous en avez besoin)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Adair Gilroy|r
step
    #label AdairX
    .goto 1453/0,822.16,-8865.60
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Courez le long du bord du mur au lieu de faire le tour
step
    .goto 1453/0,766.64,-8623.23
    >>Parlez au |cRXP_FRIENDLY_Frère Kristoff|r
    .turnin 346 >> Rendez la quête Retourner voir Frère Kristoff
    .target Brother Kristoff
step
    .goto 1453/0,638.26,-8342.22
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Entrez dans le Tram des profondeurs
step
    #completewith next
    +|cRXP_WARN_Montez dans le Tram des profondeurs tout en lançant en boucle|r |T132816:0|t[Invocation d'eau Rang 3]
step
    .zone Ironforge >> Prenez le Tram des profondeurs pour aller à Forgefer
step
    .goto 1455/0,-1249.87,-4793.31
    >>Parlez à |cRXP_FRIENDLY_Tournepignon|r
    .vendor 5175>>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto 1455/0,-977.98,-4904.59,30 >>Entrez dans la banque de Forgefer
step
    .goto 1455/0,-997.66,-4886.49
    >>Parlez à |cRXP_FRIENDLY_Bailey Mantepierre|r
    >>|cRXP_WARN_NOTE: Vous avez besoin de 12 stacks de chaque tissu (|r|T132911:0|t[Étoffe de laine]|cRXP_WARN_,|r |T132905:0|t[Étoffe de soie]|cRXP_WARN_,|r |T132892:0|t[Étoffe de tisse-mage]|cRXP_WARN_,|r et |T132903:0|t[Étoffe runique]|cRXP_WARN_) pour rendre les tissus plus tard. Vous les obtiendrez naturellement en montant de niveau|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >> Déposez les objets suivants dans votre banque:
    >>|T132917:0|t[Plume légère]
    >>|T132911:0|t[Étoffe de laine]
    >>|T133970:0|t[Steak de loup]
    >>|T133277:0|t[Glyphe d'Azora]
    >>|T133849:0|t[Herbes aromatiques de Hurlevent]
    >>|T133629:0|t[Fournitures pour Sven]
    >>|T132761:0|t[Caisse de fers à cheval]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto 1455/0,-997.66,-4886.49
    .bankwithdraw 4654 >> Récupérez les objets suivants de votre banque:
    >>|T134431:0|t[Mystérieux fossile]
    .target Bailey Stonemantle
step
    .goto 1455/0,-915.2,-4606.38
    >>Parlez à |cRXP_FRIENDLY_Milituus Cyclonoeil|r
    .train 3562 >> Apprenez [Téléportation : Ironforge]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===ATTENTION===|r
    +|cRXP_WARN_Changez votre spécialisation pour la spécialisation Givre AoE|r
step
    .goto 1455/0,-928.48,-4614.620
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .train 10 >> Apprenez Blizzard
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132816:0|t[Invocation d'eau Rang 3] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #completewith next
    #label FlyMene
    .goto 1455/0,-1152.39,-4820.914
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Volez au Port de Menethil
    .target Gryth Thurden
step
    .zone Wetlands >> Voyagez aux Paluns
]])
