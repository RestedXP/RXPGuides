if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Forêt d'Elwynn Humain Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage
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
    .goto Elwynn Forest,48.45,45.80,50,0
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes loups|r. Dépouillez-les jusqu'à avoir l'équivalent de 10 pièces de cuivre à vendre au marchand|r
    .mob Young Wolf
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
    .target Deputy Willem
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    .vendor >> Vendez votre surplus jusqu'à avoir 10+ pièces de cuivre
    .target Brother Danil
step
    .goto Elwynn Forest,48.26,41.93,15,0
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 783 >> Rendez la quête Menace intérieure
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Sautez sur la rampe depuis les escaliers
    .goto Elwynn Forest,49.66,39.41,10 >>Allez en direction de |cRXP_FRIENDLY_Khelden|r à l'étage
step
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
    .target Deputy Willem
step
    #completewith next
    .goto Elwynn Forest,46.10,42.57,70,0
    .goto Elwynn Forest,46.59,39.35
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes loups|r. Dépouillez-les jusqu'à avoir l'équivalent de 50 pièces de cuivre à vendre au marchand (en comptant votre armure)|r
    .mob Young Wolf
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.94,40.16
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
	.goto Elwynn Forest,47.01,35.68,35,0
	.goto Elwynn Forest,47.70,35.04,35,0
	.goto Elwynn Forest,49.81,35.14,35,0
	.goto Elwynn Forest,49.82,36.23,35,0
	.goto Elwynn Forest,49.18,37.16,35,0
	.goto Elwynn Forest,47.01,35.68,35,0
    >>Tuez les |cRXP_ENEMY_Vermines kobold|r
    >>|cRXP_WARN_Tuez les|cRXP_ENEMY_Vermines kobold|r de niveau 1 si possible|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    >>Tuez les |cRXP_LOOT_Jeunes loups|r et les |cRXP_LOOT_Loups des bois|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de loup coriace|r
    >>Focalisez-vous sur les |cRXP_LOOT_Jeunes loups|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Rendez la quête Les loups derrière la frontière
    .target Eagan Peltskinner
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3104 >> Acceptez la quête Lettre glyphée
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto Elwynn Forest,47.25,36.41,35,0
	.goto Elwynn Forest,47.39,35.77,35,0
	.goto Elwynn Forest,47.35,34.06,35,0
	.goto Elwynn Forest,46.29,32.42,35,0
	.goto Elwynn Forest,47.75,32.77,35,0
	.goto Elwynn Forest,50.11,34.98,35,0
	.goto Elwynn Forest,47.25,36.41,35,0
    >>Tuez les |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    .xp 3+1110 >> Monter votre expérience jusqu'à 1110/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Sautez sur la rampe depuis les escaliers
    .goto Elwynn Forest,49.66,39.41,10 >>Allez en direction de |cRXP_FRIENDLY_Khelden|r à l'étage
step
    #season 0
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .train 116 >> Apprenez [Eclair de givre]
    .target Khelden Bremen
step
    #season 2
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Acceptez la quête Recherches sur les sorts << Human
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .train 116 >> Apprenez [Eclair de givre]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .accept 18 >> Acceptez la quête La confrérie des voleurs
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
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
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto Elwynn Forest,51.14,49.29,35,0
	.goto Elwynn Forest,52.55,48.75,35,0
	.goto Elwynn Forest,53.81,48.09,35,0
	.goto Elwynn Forest,54.58,49.02,35,0
	.goto Elwynn Forest,55.15,47.86,35,0
	.goto Elwynn Forest,54.76,45.96,35,0
	.goto Elwynn Forest,53.81,44.79,35,0
	.goto Elwynn Forest,51.14,49.29,35,0
    >>Tuez les |cRXP_ENEMY_Nervis défias|r. Dépouillez-les pour leur |cRXP_LOOT_Masques rouges|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
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
    .goto Elwynn Forest,48.171,42.943
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
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Danil|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto Elwynn Forest,47.76,31.62,40 >>Entrez dans la mine
step
    #label Laborer
    .goto Elwynn Forest,47.99,30.66,40,0
    .goto Elwynn Forest,48.32,28.84,40,0
    .goto Elwynn Forest,48.58,26.57,40,0
    .goto Elwynn Forest,49.95,25.74,40,0
    .goto Elwynn Forest,50.27,26.83
    >>Tuez les |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Rendez la quête Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >> Montez votre expérience jusqu'à 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Ramassez les |cRXP_PICK_Seaux de raisins|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.52,48.25
    >>Tuez |cRXP_ENEMY_Garrick Ladétrousse|r. Dépouillez-le pour la |cRXP_LOOT_Tête de Garrick|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Ramassez les |cRXP_PICK_Seaux de raisins|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >> Montez votre expérience jusqu'à 1175+/2800xp
    .mob Defias Thug
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Rendez la quête La récolte de Milly
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
    .target Milly Osworth
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Willem|r
    .turnin 6,1 >> Rendez la quête La prime pour Garrick Ladétrousse
    .target Deputy Willem
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal McBride|r à l'intérieur
    .turnin 21,3 >> Rendez la quête La bataille de la Crête aux échos
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,49.18,41.84,10,0
    .goto Elwynn Forest,49.55,41.56,10,0
    .goto Elwynn Forest,49.39,40.98,10,0
    .goto Elwynn Forest,48.98,41.17,10,0
    .goto Elwynn Forest,49.20,41.81,10,0
    .goto Elwynn Forest,49.57,41.46,10,0
    .goto Elwynn Forest,49.33,40.93,10,0
    >>Montez à l'étage
    .goto Elwynn Forest,49.471,41.586,10 >> Dirigez-vous vers le |cRXP_FRIENDLY_Frère Neals|r
step
    .goto Elwynn Forest,49.471,41.586
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
    .goto Elwynn Forest,49.661,39.402,12 >>Descendez les escaliers, puis allez vers |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r à l'intérieur
    .turnin 77620 >> Rendez la quête Recherches sur les sorts
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto Elwynn Forest,45.56,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenrôde|r
    .accept 2158 >> Acceptez la quête Repos et détente
    .target Falkhaan Isenstrider
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r à travers le mur en entrant à l'auberge
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
    .target William Pestle
step
    #completewith next
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
    .turnin 2158,2 >> Rendez la quête Repos et détente
    .vendor 295 >> Vendeur votre surplus. |cRXP_BUY_Achetez du|r |T132815:0|t[Lait glacé] |cRXP_BUY_jusqu'à ce qu'il ne vous reste que 2 pièces d'argent|r
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.25,66.25
    >>Sautez sur le lustre en bas des escaliers
    >>Parlez à |cRXP_FRIENDLY_Zaldimar|r à travers le mur
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang2, Trait de feu)
	.target Zaldimar Wefhellt
step
    .goto Elwynn Forest,42.14,67.26
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
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Acceptez la quête Princesse doit mourir !
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
    .target Billy Maclure
step
    #label BoarMeat1
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r à l'intérieur
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    .goto Elwynn Forest,42.36,89.37
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
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Champierreux|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    >>Tuez le |cRXP_ENEMY_Sanglier Brocheroc|r. Dépouillez-les pour les |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bernice|r puis à |cRXP_FRIENDLY_Mamie|r à l'intérieur
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .accept 84 >> Acceptez la quête Revenir voir Billy
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target +Gramma Stonefield
    .goto Elwynn Forest,34.94,83.86
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
    .target Billy Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez autant de|r |T132815:0|t[Lait glacé] |cRXP_BUY_que vous pouvez vous le permettre auprès de lui|r
    .vendor 258 >>Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto Elwynn Forest,39.00,82.27,15 >>Entrez dans la mine de Fargodeep
step
    #completewith Goldtooth
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r et les |cRXP_ENEMY_Mineurs kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto Elwynn Forest,39.07,80.87,12,0
    .goto Elwynn Forest,39.71,79.92
    >>Entrez dans l'un dans des grands espaces ouverts dans la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto Elwynn Forest,39.95,78.81,12,0
    .goto Elwynn Forest,40.43,78.33,12,0
    .goto Elwynn Forest,41.73,78.03,40 >>Dirigez-vous vers |cRXP_ENEMY_Dent-d'or|r
step
    #label Goldtooth
    .goto Elwynn Forest,41.73,78.03
    >>Tuez |cRXP_ENEMY_Goldtooth|r. Dépouillez-le pour le |cRXP_LOOT_Bernice's Necklace|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto Elwynn Forest,39.14,82.87,35,0
	.goto Elwynn Forest,39.16,84.79,35,0
	.goto Elwynn Forest,37.81,85.40,35,0
	.goto Elwynn Forest,36.76,83.19,35,0
	.goto Elwynn Forest,38.02,81.70,35,0
	.goto Elwynn Forest,39.14,82.87,35,0
    >>Tuez les |cRXP_ENEMY_Tunneliers kobold|r et les |cRXP_ENEMY_Mineurs kobold|r. Dépouillez-les pour la |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Bougies de kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte en sautant sur un déchiqueteur, les bûches flottantes, les caisses, ou le chariot dans la grotte, puis déconnectez-vous et reconnectez-vous|r
    >>|cRXP_WARN_Sinon, vous pouvez retourner à Comté-de-l'Or à pieds|r
    >>|cRXP_WARN_NOTE : Itemrack peut actuellement causer des problèmes après un Logout skip où votre interface du jeu se figera. Assurez-vous de désactiver l'addon ou de créer une macro /reload que vous pouvez utiliser si cela se produit|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLIQUEZ ICI pour apprendre à faire le Logout skip|r
step
    #completewith next
    .subzone 87 >> Retourner à Comté-de-l'Or
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rémi|r
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Dughan|r
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r à travers le mur en entrant à l'auberge
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
    .target William Pestle
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Farley|r
    >>|cRXP_BUY_Achetez 35|r |T132815:0|t[Lait glacé] |cRXP_BUY_au marchand|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Achetez une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_à Brog|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto Elwynn Forest,43.24,65.96,10,0
    .goto Elwynn Forest,42.88,65.52,12 >> Quittez l'auberge
step
    .goto Elwynn Forest,50.45,62.69,50,0
    .goto Elwynn Forest,51.09,64.75,50,0
    .goto Elwynn Forest,52.66,64.95,50,0
    .goto Elwynn Forest,54.10,62.74,50,0
    .goto Elwynn Forest,57.48,63.21,50,0
    .goto Elwynn Forest,56.37,66.50
    >>Tuez les |cRXP_ENEMY_Ruisseliers murlocs|r et les |cRXP_ENEMY_Murlocs|r. Dépouillez-les pour les |cRXP_LOOT_Feuilles de varech cristallin|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Ruisseliers murloc|r |T132307:0|tsont très rapides|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto Elwynn Forest,61.66,53.96,12 >>Entrez dans la mine de Jasperlode
step
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,60.40,50.16
    >>Suivez le chemin du milieu dans la grotte
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Géomanciens kobold|r qui lancent|r |T135812:0|t[Boule de feu] |cRXP_WARN_(À distance : inflige environ 30 dégâts)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,61.81,53.89,15 >>Quittez la mine de Jasperlode
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
    .target Guard Thomas
step
    #completewith next
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,72.59,65.60,45,0
    .goto Elwynn Forest,71.61,60.82,50,0
    >>Tuez tous les |cRXP_ENEMY_Jeunes ours des forêts|r que vous croisez et les |cRXP_ENEMY_Rôdeurs|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,72.65,60.33
	>>Cliquez sur le |cRXP_PICK_Corps à moitié dévoré|r par terre
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #completewith Bears
    .goto Elwynn Forest,78.78,60.94,70,0
    >>Tuez tous les |cRXP_ENEMY_Jeunes ours des forêts|r que vous croisez et les |cRXP_ENEMY_Rôdeurs|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Fagots de bois|r en bas des arbres
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,79.79,55.51,45 >> Dirigez-vous vers le |cRXP_PICK_Cadavre de Rolf|r
    .isOnQuest 45
step
    .goto Elwynn Forest,79.79,55.51
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
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,79.68,52.31,35,0
	.goto Elwynn Forest,80.86,52.17,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,79.76,56.70,35,0
	.goto Elwynn Forest,80.15,60.03,35,0
	.goto Elwynn Forest,80.24,61.46,35,0
	.goto Elwynn Forest,81.27,61.59,35,0
	.goto Elwynn Forest,81.58,62.64,35,0
	.goto Elwynn Forest,82.79,60.12,35,0
	.goto Elwynn Forest,83.25,61.12,35,0
	.goto Elwynn Forest,83.48,59.19,35,0
	.goto Elwynn Forest,81.77,59.17,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
    >>Ramassez les |cRXP_PICK_Fagots de bois|r en bas des arbres
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
    .target Sara Timberlain
step
    .goto Elwynn Forest,75.05,72.54,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85,45,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85
    >>Tuez tous les |cRXP_ENEMY_Jeunes ours des forêts|r que vous croisez et les |cRXP_ENEMY_Rôdeurs|r
    >>|cRXP_WARN_Infligez la majorité des dégâts (51%) ou plus aux |cRXP_ENEMY_Jeunes ours des forêts|r et aux |cRXP_ENEMY_Rôdeurs|r, puis amenez-les sur les |cRXP_FRIENDLY_Gardes de Hurlevent|r pour les tuer plus rapidement|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target Guard Thomas
    .xp <9,1
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto Elwynn Forest,70.45,76.94,40,0
	.goto Elwynn Forest,68.68,76.69,40,0
	.goto Elwynn Forest,68.23,77.78,40,0
	.goto Elwynn Forest,67.80,80.76,40,0
	.goto Elwynn Forest,68.49,82.68,40,0
	.goto Elwynn Forest,70.71,81.48,40,0
	.goto Elwynn Forest,70.63,80.66,40,0
	.goto Elwynn Forest,71.51,78.96,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,71.38,76.77,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,70.45,76.94,40,0
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
    .goto Elwynn Forest,69.89,79.52
    >>Tuez |cRXP_ENEMY_Princesse|r. Dépouillez-la pour le |cRXP_LOOT_Collier de cuivre|r
    >>|cRXP_WARN_Souvenez-vous de la kite en utilisant la clôture|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto Redridge Mountains,9.62,71.36
    .zone Redridge Mountains >> Voyagez jusqu'aux Carmines
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Suivez attentivement la route vers |cRXP_FRIENDLY_Ariena|r. Évitez les |cRXP_ENEMY_Tarantules|r et les |cRXP_ENEMY_Dragonnets noirs|r sur la route|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto Redridge Mountains,30.59,59.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto Elwynn Forest,43.283,65.721
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
    .goto Elwynn Forest,42.105,65.927
    .accept 1097 >> Acceptez la quête La quête d'Elmore
    .target +Smith Argus
    .goto Elwynn Forest,41.706,65.544
step
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r à l'intérieur
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maman|r et à |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Rendez la quête Princesse doit mourir !
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.482
    .turnin 87 >> Rendez la quête Dent-d'or
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >> Montez votre expérience jusqu'à 4225+/6500xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >> Montez votre expérience jusqu'à 4825+/6500xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto Elwynn Forest,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Adjoint Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .target +Verna Furlbrow
    .goto Westfall,59.91,19.41
step
    #completewith next
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r puis à |cRXP_FRIENDLY_Salma|r à l'intérieur
    .accept 9 >>Acceptez la quête Les champs de mort
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
    .target +Salma Saldean
    .goto Westfall,56.42,30.52
step
    #completewith next
    >>|cRXP_WARN_Faites TRÈS attention aux |cRXP_ENEMY_Gardiens des moissons|r et aux |cRXP_ENEMY_Golems des moissons|r sur la route|r
    .goto Westfall,56.33,47.52,20 >>Voyagez vers |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan|r, à |cRXP_FRIENDLY_Danuvin|r, puis à |cRXP_FRIENDLY_Lewis|r à l'intérieur
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .accept 12 >> Acceptez la quête La milice du peuple
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
    .target +Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 6181 >> Acceptez la quête Un message rapide
    .goto Westfall,57.002,47.169
    .target +Quartermaster Lewis
step
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .target Thor
step
    #completewith next
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
	.target Thor
step
    #completewith next
    .goto StormwindClassic,63.10,65.18,20,0
    .goto StormwindClassic,58.13,59.40,20,0
    .goto StormwindClassic,57.06,61.83,20,0
    .goto StormwindClassic,56.55,64.79,12,0
    .goto StormwindClassic,56.20,64.60,12 >>Voyagez vers |cRXP_FRIENDLY_Morgan|r
step
    .goto StormwindClassic,56.20,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    .target Morgan Pestle
step
    .goto Stormwind City,55.46,65.26
    >>Parlez à |cRXP_FRIENDLY_Keldric Boucher|r
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
step << skip
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    .goto Stormwind City,38.61,79.39,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto Stormwind City,38.61,79.39
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe (Armure de givre Rang 2, Nova de givre, Métamorphose, Invocation d'eau Rang 1 & Rang 2)
    >>Coût total : 15 pièces d'argent
    >>Souvenez-vous que vous voulez aussi peut-être garder de l'argent pour les Potions de soins (3 pièces d'argent chacune), le Tube en bronze (8 pièces d'argent chacun) et la nourriture de niveau 5 (20 pièces de cuivre pour 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto Stormwind City,36.30,82.90,6 >>Entrez dans le portail vert
step
    #completewith next
    .goto StormwindClassic,57.32,59.15,10,0
    .goto StormwindClassic,58.17,57.90,12,0
    .goto StormwindClassic,57.81,54.73,12,0
    .goto StormwindClassic,60.05,51.60,12,0
    .goto StormwindClassic,67.54,46.88,12,0
    .goto StormwindClassic,71.01,48.62,12,0
    .goto StormwindClassic,74.31,47.22,12 >>Voyagez vers |cRXP_FRIENDLY_Osric|r
step
    .goto StormwindClassic,74.31,47.22
    >>Parlez à |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    .accept 6261 >> Acceptez la quête Dungar Grangodet
    .target Osric Strang
step
    #completewith next
    .goto StormwindClassic,69.20,40.75,15,0
    .goto StormwindClassic,67.03,40.27,15,0
    .goto StormwindClassic,64.49,36.75,15,0
    .goto StormwindClassic,64.97,29.32,15,0
    .goto StormwindClassic,51.89,13.19,12,0
    .goto StormwindClassic,51.76,12.08,12 >>Voyagez vers |cRXP_FRIENDLY_Grimand|r
step
    .goto StormwindClassic,51.76,12.08
    >>Parlez à |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step
    .goto Stormwind City,55.25,7.07
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >> Entrez dans le Tram des profondeurs
step
    #completewith next
    +|cRXP_WARN_Montez dans le Tram des profondeurs tout en lançant en boucle|r |T132794:0|t[Invocation d'eau Rang 2]
step
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
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
    .goto Ironforge,67.83,42.47
    >>Parlez à |cRXP_FRIENDLY_Tournepignon|r
    .vendor 5175 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Ironforge,69.93,34.13,30,0
    .goto Ironforge,63.03,30.09,30,0
    .goto Ironforge,57.78,35.11,30,0
    .goto Ironforge,55.49,47.74,10 >>Voyagez vers |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Voyagez vers |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Armure de givre Rang 2, Nova de givre, Métamorphose, Invocation d'eau Rang 1 & Rang 2)
    >>Coût total : 15 pièces d'argent
    >>Souvenez-vous que vous voulez aussi peut-être garder de l'argent pour les Potions de soins (3 pièces d'argent chacune), le Tube en bronze (8 pièces d'argent chacun) et la nourriture de niveau 5 (20 pièces de cuivre pour 5)
    .target Dink
step
    #completewith next
    .goto Ironforge,27.25,12.79,20,0
    .goto Ironforge,22.59,38.13,20,0
    .goto Ironforge,20.40,53.19,20,0
    >>Entrez dans le bâtiment
    .goto Ironforge,18.14,51.45,10 >>Voyagez vers |cRXP_FRIENDLY_Brassefeu|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Parlez à |cRXP_FRIENDLY_Brassefeu|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto Ironforge,33.05,63.11,20,0
    .goto Ironforge,35.93,60.13,30 >>Entrez dans la banque de Forgefer
step
    .goto Ironforge,35.93,60.13
    >>Parlez à |cRXP_FRIENDLY_Bailey Mantepierre|r
    .bankdeposit 4371,16115 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T132763:0|t[Caisse d'Osric]
    .target Bailey Stonemantle
step << skip
    .goto Ironforge,36.35,57.88
    .goto Dun Morogh,53.03,35.71,10 >>|cRXP_WARN_Sautez en haut sur les côtés du coffre-fort. Effectuez la technique de Logout skip pour retourner à Dun Morogh|r
    .isQuestAvailable 314
step
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Quittez Ironforge
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-11 Dun Morogh Humain Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage
#next 10-12 Sombrivage 1 Mage AoE Avancé

step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour le |cRXP_LOOT_Croc de Vagash|r
    >>|cRXP_WARN_Attirez (kite) |cRXP_ENEMY_Vagash|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r au sud du ranch. Assurez-vous d'infliger au moins 51 %+ de dégâts|r
    >>|cRXP_WARN_N'oubliez pas d'obtenir l'expérience de l'exploration des Collines de Tundrid et d'attirer le |cRXP_ENEMY_Léopard des neiges|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r si cela est plus pratique|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_N'oubliez pas de garder vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous obtenez en montant de niveau pour monter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Attirez (kite) l' |cRXP_ENEMY_Ours Griffeglace|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Forgefer|r (assurez-vous d'infliger 51 %+ de dégâts pour qu'il compte pour vous)|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Parlez au |cRXP_FRIENDLY_Cuisinier Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 15|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
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
    .goto Dun Morogh,68.67,55.97
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    >>|cRXP_WARN_Ne changez pas votre route pour les tuer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Entrez dans la grotte
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Tuez les |cRXP_ENEMY_Briseurs d'os Mâcheroc|r à l'intérieur de la grotte
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132154:0|t[Renverser] |cRXP_WARN_(Attaque en mêlée Instantanée: Étourdit pendant 2 secondes)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Parlez à |cRXP_FRIENDLY_Frast Dokner|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Parlez à |cRXP_FRIENDLY_Front-de-pierre|r et au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Parlez à |cRXP_FRIENDLY_Dank Coupebruine|r
    .train 2575 >> Apprenez [Minage]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto Dun Morogh,70.52,54.75,12 >>Prenez le raccourci derrière |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Attirez (kite) les |cRXP_ENEMY_Embusqués Mâcheroc|r à proximité vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r qui patrouillent le long de la route (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte pour vous)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    >>|cRXP_WARN_ASSUREZ-VOUS d'avoir un emplacement libre dans vos sacs. |cRXP_ENEMY_Griffe galeuse|r ne descendra pas si vous n'acceptez pas la quête suivante|r
    >>|cRXP_WARN_N'OUBLIEZ PAS de kite |cRXP_ENEMY_Griffe galeuse|r en revenant auprès du |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Tuez |cRXP_ENEMY_Griffe galeuse|r. Dépouillez-le pour la |cRXP_LOOT_Griffe galeuse|r
    >>|cRXP_WARN_Attirez-le (kite) jusqu'au |cRXP_FRIENDLY_Pilote Martèlepied|r (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417,1 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Revenez par le tunnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafré|r sur le chemin
    .goto Dun Morogh,84.26,48.93,20 >>Prenez le raccourci (skip) par la montagne. Souvenez-vous de vous laisser tomber avec prudence
    .mob Scarred Crag Boar
step
    .goto Loch Modan,19.01,61.88
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
    .goto Loch Modan,22.071,73.127
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Retournez dans le tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Effectuez un Logout skip depuis le Brasero à l'intérieur du tunnel jusqu'à Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Voyagez à Thelsamar
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    >>Le |cRXP_FRIENDLY_Montagnard Kadrell|r |cRXP_WARN_patrouille le long de la route principale de Thelsamar|r
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Voyagez à Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto Ironforge,43.83,59.58,20,0
    .goto Ironforge,38.27,71.43,20,0
    .goto Ironforge,33.70,76.24,10 >>|cRXP_WARN_Voyagez jusqu'à l'emplacement du Logout skip|r
step << skip
    .goto Ironforge,33.70,76.24
    .zone Dun Morogh >>|cRXP_WARN_Positionnez votre personnage jusqu'à ce qu'il semble flotter sur le bord de la balustrade métallique. Effectuez un Logout skip pour retourner à Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 Dun Morogh Gnome Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Gnome Mage
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
    .goto Dun Morogh,29.927,71.201
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
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto Dun Morogh,30.087,71.563
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
    .goto Dun Morogh,29.927,71.201
    .accept 170 >> Acceptez la quête Une nouvelle menace
    .goto Dun Morogh,29.71,71.25
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto Dun Morogh,29.927,71.201
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
    .goto Dun Morogh,26.733,72.552
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
    .goto Dun Morogh,28.709,66.366
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
    .goto Dun Morogh,22.601,71.433
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
    .goto Dun Morogh,22.601,71.433
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
    .goto Dun Morogh,26.73,79.72,30 >>Entrez dans la grotte
    .isOnQuest 182
step
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r à l'intérieur de la grotte
    >>|cRXP_WARN_Libérez-vous un chemin presque jusqu'à avant la salle du Lac Gelé|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,28.29,79.85,50,0
    .goto Dun Morogh,27.30,80.85,40,0
    .goto Dun Morogh,25.78,78.31,40,0
    .goto Dun Morogh,27.12,78.68,40,0
    .goto Dun Morogh,25.95,80.39,40,0
    .goto Dun Morogh,25.78,78.31
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
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    >>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r
    >>|cRXP_WARN_Assurez-vous d'avoir 3 emplacements libres dans vos sacs pour accepter/rendre les quêtes|r
    .turnin 182,4 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
    .goto Dun Morogh,25.076,75.713
    .target +Grelin Whitebeard
step
    .goto Dun Morogh,26.73,79.72,40,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,29.67,79.68,10 >>|cRXP_WARN_Entrez dans la grotte. Courez à travers le chemin que vous avez dégagé (idéalement sans combattre) vers le Lac Gelé à l'intérieur|r
    .isOnQuest 218
step
    .goto Dun Morogh,30.48,80.16
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r devant vous|r
    >>Tuez |cRXP_ENEMY_Grik'nir le Froid|r. Dépouillez-le pour le |cRXP_LOOT_Journal de Grelin Blanchebarbe|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T135849:0|t[Horion de givre] |cRXP_WARN_(Instantané: Inflige 10 dégâts de Givre) et réduit la vitesse de déplacement de 50% pendant 8 secondes)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto Dun Morogh,29.63,79.50
    .goto Dun Morogh,29.76,69.66,30 >>|cRXP_WARN_Positionnez votre personnage jusqu'à ce que vous ayez l'air de flotter sur le bord de la falaise au-dessus du Lac Gelé, puis faites le Logout skip pour retourner à Courbenclume|r
    .isOnQuest 218
step
    >>Parlez à |cRXP_FRIENDLY_Grelin Blanchebarbe|r et à |cRXP_FRIENDLY_Nori Fièroblique|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto Dun Morogh,28.79,69.04,20,0
    .goto Dun Morogh,28.63,68.43,10 >>Entrez dans Anvilmar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto Dun Morogh,28.66,67.74
    >>Parlez à |cRXP_FRIENDLY_Rybrad Rivefroide|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Parlez à |cRXP_FRIENDLY_Durnan Coupefourrure|r et à |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .goto Dun Morogh,28.77,66.37
    .target +Durnan Furcutter
    .turnin 3114 >> Rendez la quête Note de service glyphée
    .trainer >> Apprenez vos sorts de classe (Intelligence des arcanes, Éclair de givre)
    .goto Dun Morogh,28.709,66.366
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto Dun Morogh,29.71,71.25
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
    -- .goto Dun Morogh,25.076,75.713
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .goto Dun Morogh,24.98,75.96
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto Dun Morogh,29.71,71.25
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
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Abandonnez la quête Une nouvelle menace
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Traversez la Passe des Frigères
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto Dun Morogh,36.51,62.94,40,0
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto Dun Morogh,37.97,61.87,30,0
    .goto Dun Morogh,39.89,59.26,45 >> |cRXP_WARN_Infligez au moins 51%+ de dégâts aux |cRXP_ENEMY_Jeunes Léopards des neiges|r et aux |cRXP_ENEMY_Jeunes ours noirs|r, puis attirez-les vers le |cRXP_FRIENDLY_Montagnard de Forgefer|r pour les tuer plus efficacement|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto Dun Morogh,43.44,55.64,50,0
    .goto Dun Morogh,44.14,52.64,50,0
    .goto Dun Morogh,46.021,51.676,20 >>Voyagez vers |cRXP_FRIENDLY_Tharek|r
step
    .goto Dun Morogh,46.021,51.676
    >>Parlez à |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
    .target Tharek Blackstone
step
    #label StockingJ
    .goto Dun Morogh,49.426,48.410
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
    .goto Dun Morogh,49.622,48.612
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .target +Beldin Steelgrill
    .goto Dun Morogh,50.45,49.09
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .goto Dun Morogh,50.084,49.420
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
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38
    >>Tuez les |cRXP_ENEMY_Jeunes ours noirs|r et les |cRXP_ENEMY_Ours Griffeglace|r. Dépouillez-les pour leur |cRXP_LOOT_Fourrures d'ours épaisses|r
    >>|cRXP_WARN_Attirez les |cRXP_ENEMY_Jeunes ours noirs|r et les |cRXP_ENEMY_Ours Griffeglace|r vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r (assurez-vous d'infliger au moins 51%+ de dégâts pour qu'il compte)|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25-70 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>Parlez au |cRXP_FRIENDLY_Pilote Claquesoufflet|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
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
    .goto Dun Morogh,46.83,52.36
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Entrez à l'intérieur
step
    .goto Dun Morogh,47.217,52.195
    >>Parlez à |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Entrez à l'intérieur
step
    #sticky
    #label Tannok
    .goto Dun Morogh,47.217,52.195,0,0
    >>Parlez à |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.50,52.08
    >>Parlez à |cRXP_FRIENDLY_Magis|r en haut des escaliers
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang2, Trait de feu)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto Dun Morogh,46.83,52.36
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 20|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Belm|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 15|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 20|r |T132794:0|t[Eaux de source] |cRXP_BUY_à Belm|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez 5|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto Dun Morogh,47.46,52.60,-1
    .goto Dun Morogh,47.13,54.91,35 >>|cRXP_WARN_Sautez sur l'un des tonneaux sur le mur derrière |cRXP_FRIENDLY_Belm|r. Effectuez un Logout skip pour revenir à Kharanos|r
step
    #sticky
    #label Golorn
    .goto Dun Morogh,46.77,53.72,-1
    >>Parlez à |cRXP_FRIENDLY_Golorn Barbe-de-givre|r
    >>|cRXP_BUY_Achetez un|r |T135637:0|t[Couteau à dépecer] |cRXP_BUY_à Golorn|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto Dun Morogh,46.726,53.826,-1
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
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Tuez les |cRXP_ENEMY_Jeunes wendigo|r et les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux de wendigo|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T135848:0|t[Souffle de givre] |cRXP_WARN_(Sort de mêlée : Inflige 6-10 dégâts de Givre) et ont une|r |T135849:0|t[Résistance au Givre]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Ouvrez la |cRXP_PICK_Caisse de munitions|r au sol. Récupérez-y les |cRXP_LOOT_Munitions pour Grondetrait|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Tuez les |cRXP_ENEMY_Sangliers des rochers|r et les |cRXP_ENEMY_Jeunes Léopards des neiges|r sur la route
    >>Dépouillez les |cRXP_ENEMY_Sanglier des rochers|r pour leur |cRXP_LOOT_Côtes de sanglier des rochers|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 25-70 dégâts de mêlée en touchant. Lançable uniquement à distance)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto Dun Morogh,40.682,65.130,20 >>Voyagez vers |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Tuez les |cRXP_ENEMY_Sangliers des rochers|r et les |cRXP_ENEMY_Jeunes Léopards des neiges|r sur la route
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 25-70 dégâts de mêlée en touchant. Lançable uniquement à distance)|r
    .goto Dun Morogh,40.682,65.130,20 >>Voyagez vers |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto Dun Morogh,40.60,62.24,45,0
    .goto Dun Morogh,40.682,65.130,20 >>Voyagez vers |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto Dun Morogh,40.682,65.130
    >>Parlez à |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
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
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
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
    .goto Dun Morogh,34.57,51.66
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
    .goto Dun Morogh,30.19,45.73
    .accept 310 >> Acceptez la quête Bières rivales
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto Dun Morogh,30.45,46.01,0,0
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
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
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
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
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
    .goto Dun Morogh,38.00,42.77,30 >> Entrez à l'intérieur de la grotte
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto Dun Morogh,38.32,43.36
    .goto Dun Morogh,47.13,54.91,30 >> |cRXP_WARN_Effectuez un Logout Skip à l'intérieur de la grotte pour revenir à Kharanos|r
    .isOnQuest 319
step
    .goto Dun Morogh,46.726,53.826
    >>Parlez à |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.19,52.02,12 >>Entrez à l'intérieur
step
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez une |r|T132800:0|t[Bière au malt Rhapsody] |cRXP_BUY_et une|r |T132800:0|t[Thunder Ale] |cRXP_BUY_à Belm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez-lui une|r [Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto Dun Morogh,47.50,52.40,8,0
    .goto Dun Morogh,47.72,52.43,8 >>Descendez les escaliers
step
    #completewith next
    .goto Dun Morogh,47.65,52.66
    >>Parlez à |cRXP_FRIENDLY_Jarven|r en bas des escaliers
    .turnin 308 >> Rendez la quête Distraire Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.72,52.70
    >>Continuez à passer votre souris sur le |cRXP_PICK_Tonneau de Thunder Ale gardé|r en bas des escaliers. Attendez que le |cRXP_PICK_Tonneau de Thunder Ale gardé|r ne soit plus gardé
    >>Cliquez sur le |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Rendez la quête Bières rivales
    .accept 311 >> Acceptez la quête Retour chez Marleth
step
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_de plus|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto Dun Morogh,47.19,52.02,12,0
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,46.83,52.36,20 >>Quittez l'auberge
    .isOnQuest 287
step
    .goto Dun Morogh,46.83,52.36
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto Dun Morogh,46.65,47.42,40,0
    +|cRXP_WARN_Infligez 51%+ dégâts aux |cRXP_ENEMY_Loups pisteurs des neiges|r, aux |cRXP_ENEMY_Loups blancs|r, et aux |cRXP_ENEMY_Jeunes ours noirs|r. Attirez-les vers le |cRXP_FRIENDLY_Montagnard de Forgefer|r pour les tuer plus efficacement|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Loups pisteurs des neiges|r ont une|r |T132150:0|t[Portée d'aggro accrue] |cRXP_WARN_(La portée d'aggro est augmentée par environ 8 yards)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto Dun Morogh,42.91,45.17,25,0
    .goto Dun Morogh,42.32,45.27,45 >> Allez vers la rampe en direction des |cRXP_ENEMY_Prophètes Crins-de-givre|r
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
    .goto Dun Morogh,42.07,45.48,40,0
    .goto Dun Morogh,42.11,44.63,40,0
    .goto Dun Morogh,41.67,43.53,40,0
    .goto Dun Morogh,41.27,44.37,20,0
    .goto Dun Morogh,41.48,45.01,30,0
    .goto Dun Morogh,41.08,44.86,30,0
    .goto Dun Morogh,41.14,45.54,40,0
    .goto Dun Morogh,40.34,42.84,40,0
    .goto Dun Morogh,39.67,39.87,20,0
    .goto Dun Morogh,39.94,37.70,20,0
    .goto Dun Morogh,41.84,35.63
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
    .goto Dun Morogh,40.45,47.23,40,0
    .goto Dun Morogh,37.72,51.88,40,0
    >>Tuez les deux |cRXP_ENEMY_Anciens sangliers des rochers|r sur la route vers la grotte (s'ils sont là)
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 25--85 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto Dun Morogh,37.85,53.71,50 >>Voyagez en direction de la grotte
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Après l'avoir dépouillé, sautez et pivotez pour ne pas lui montrer votre dos pour éviter l'Hébétement et sur le tronc pour l'esquiver temporairement|r
step
    .goto Dun Morogh,38.51,53.93
    >>|cRXP_WARN_Si le |cRXP_ENEMY_Vieux Barbeglace|r est dans la grotte, attirez-le en montant le long de la paroi, puis jusqu'au sommet. Attendez qu'il s'approche, puis redescendez en sautant et allez vers le fond de la grotte|r
    >>Ouvrez le |cRXP_PICK_Placard à viande de MacGrann|r au sol. Ouvrez-le pour obtenir la |cRXP_LOOT_Viande séchée de MacGrann|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto Dun Morogh,34.57,51.66
    >>Parlez à |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
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
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
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
    .goto Dun Morogh,30.189,45.725
    .turnin 311 >> Rendez la quête Retour chez Marleth
    .goto Dun Morogh,30.186,45.531
    .target Rejold Barleybrew
step
    .goto Dun Morogh,30.45,46.01
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto Dun Morogh,30.45,46.01
    >>Parlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 5|r |T132815:0|t[Lait glacé] |cRXP_BUY_de plus|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 35-85 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto Dun Morogh,25.12,49.54,35,0
    .goto Dun Morogh,24.94,50.61,12 >>Entrez dans la grotte par le côté nord
step
    .goto Dun Morogh,24.29,50.80,40,0
    .goto Dun Morogh,23.31,51.36
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132222:0|t[Tir] |cRXP_WARN_(À distance : inflige 8-15 dégâts)|r
    >>|cRXP_WARN_Faites attention au |cRXP_ENEMY_Chasseur de têtes Crins-de-givre|r qui patrouille à l'intérieur|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto Dun Morogh,23.01,52.04,8,0
    .goto Dun Morogh,22.90,52.09
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
    .goto Dun Morogh,47.38,52.52
    >>Parlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.50,52.08
    >>Parlez à |cRXP_FRIENDLY_Magis|r en haut des escaliers
    .trainer >> Apprenez vos sorts de classe (Éclair de givre Rang 2, Métamorphose)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_N'oubliez pas de garder vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous obtenez en montant de niveau pour monter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
step
    .goto Dun Morogh,46.83,52.36
    >>Parlez à |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto Dun Morogh,46.726,53.826
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
    .goto Dun Morogh,49.426,48.410
    .turnin 313 >> Rendez la quête L'antre Gris
    .goto Dun Morogh,49.622,48.612
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
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour le |cRXP_LOOT_Croc de Vagash|r
    >>|cRXP_WARN_Attirez (kite) |cRXP_ENEMY_Vagash|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r au sud du ranch. Assurez-vous d'infliger au moins 51 %+ de dégâts|r
    >>|cRXP_WARN_N'oubliez pas d'obtenir l'expérience de l'exploration des Collines de Tundrid et d'attirer le |cRXP_ENEMY_Léopard des neiges|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Dun Morogh|r si cela est plus pratique|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Parlez à |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_N'oubliez pas de garder vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous obtenez en montant de niveau pour monter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Attirez (kite) l' |cRXP_ENEMY_Ours Griffeglace|r vers le bas jusqu'au |cRXP_FRIENDLY_Montagnard de Forgefer|r (assurez-vous d'infliger 51 %+ de dégâts pour qu'il compte pour vous)|r
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Coup en mêlée Instantané : Inflige 4 dégâts de mêlée supplémentaires)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Parlez au |cRXP_FRIENDLY_Cuisinier Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 15|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Parlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    >>|cRXP_BUY_Achetez 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_à Kazan|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
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
    .goto Dun Morogh,68.67,55.97
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    >>|cRXP_WARN_Ne changez pas votre route pour les tuer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Entrez dans la grotte
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Tuez les |cRXP_ENEMY_Briseurs d'os Mâcheroc|r à l'intérieur de la grotte
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132154:0|t[Renverser] |cRXP_WARN_(Attaque en mêlée Instantanée: Étourdit pendant 2 secondes)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Parlez à |cRXP_FRIENDLY_Frast Dokner|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Frast Dokner
step
    >>Parlez à |cRXP_FRIENDLY_Front-de-pierre|r et au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Parlez à |cRXP_FRIENDLY_Dank Coupebruine|r
    .train 2575 >> Apprenez [Minage]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto Dun Morogh,70.52,54.75,12 >>Prenez le raccourci derrière |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Attirez (kite) les |cRXP_ENEMY_Embusqués Mâcheroc|r à proximité vers les |cRXP_FRIENDLY_Montagnards de Forgefer|r qui patrouillent le long de la route (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte pour vous)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    >>|cRXP_WARN_ASSUREZ-VOUS d'avoir 1 emplacement libre dans vos sacs pour rendre cette quête|r
    >>|cRXP_WARN_Souvenez-vous que vous allez amener |cRXP_ENEMY_Griffe galeuse|r vers le |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Tuez |cRXP_ENEMY_Griffe galeuse|r. Dépouillez-le pour la |cRXP_LOOT_Griffe galeuse|r
    >>|cRXP_WARN_Attirez-le (kite) jusqu'au |cRXP_FRIENDLY_Pilote Martèlepied|r (assurez-vous d'infliger au moins 51% de dégâts pour qu'il compte)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Parlez au |cRXP_FRIENDLY_Pilote Martèlepied|r
    .turnin 417,1 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Revenez par le tunnel
step
    .goto Dun Morogh,78.73,49.77
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Sangliers des rochers balafrés|r et les |cRXP_ENEMY_Anciens sangliers des rochers|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Lançable seulement à distance), et les |cRXP_ENEMY_Ours Griffeglace|r lancent|r |T135853:0|t[Griffeglace] |cRXP_WARN_(Instantané en mêlée: Inflige 4 dégâts de mêlée supplémentaires)|r
    .xp 9+5450 >> Montez votre expérience jusqu'à 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafré|r sur le chemin
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .goto Dun Morogh,84.26,48.93,20 >>Prenez le raccourci (skip) par la montagne. Souvenez-vous de vous laisser tomber avec prudence
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Sangliers des rochers balafrés|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Lançable uniquement à distance)|r
    .xp 9+5990 >> Montez votre expérience jusqu'à 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto Dun Morogh,86.278,48.812
    >>Parlez à |cRXP_FRIENDLY_Brasselorge|r
    .turnin 413 >> Rendez la quête La Brune scintillante
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
    .target Mountaineer Barleybrew
step
    .goto Dun Morogh,86.74,49.58,40,0
    .goto Dun Morogh,86.36,47.36
    .xp 9+6320 >> Montez votre expérience jusqu'à 6320+/6500xp
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Sangliers des rochers balafrés|r lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 40-100 dégâts de mêlée. Lançable uniquement à distance)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto Loch Modan,16.45,58.54,20,0
    .goto Loch Modan,19.59,62.76,30 >>Attirez (kite) un |cRXP_ENEMY_Sanglier des rochers balafrés|r à travers le tunnel
    >>|cRXP_WARN_Soyez prudent car ils lancent|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané: Augmente la vitesse de déplacement pendant 3 secondes, inflige 40-100 dégâts de mêlée en touchant. Utilisable uniquement à distance)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto Loch Modan,21.14,71.62,35,0
	.goto Loch Modan,19.06,75.46,35,0
	.goto Loch Modan,20.91,77.67,35,0
	.goto Loch Modan,21.14,71.62,35,0
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
    .goto Loch Modan,22.071,73.127
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Retournez dans le tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLIQUEZ ICI si vous n'y arrivez pas|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Effectuez un Logout skip depuis le Brasero à l'intérieur du tunnel jusqu'à Thelsamar|r
    .isOnQuest 414
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    >>Le |cRXP_FRIENDLY_Montagnard Kadrell|r |cRXP_WARN_patrouille le long de la route principale de Thelsamar|r
    .turnin 414 >>Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Parlez à |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Il peut être à l'intérieur ou à l'extérieur du bâtiment|r
    .accept 6387 >>Acceptez la quête L'honneur des étudiants
    .target Brock Stoneseeker
step
    .goto Loch Modan,33.94,50.96
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .turnin 6387 >>Rendez la quête L'honneur des étudiants
    .accept 6391 >>Acceptez la quête Voyage vers Forgefer
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Voyagez à Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto Ironforge,55.81,38.35,30,0
    .goto Ironforge,51.83,29.77,15,0
    .goto Ironforge,49.67,28.23,12,0
    >>Entrez dans le bâtiment
    .goto Ironforge,51.54,26.30,10 >>Voyagez vers |cRXP_FRIENDLY_Golnir Rochorteil|r
step
    .goto Ironforge,51.54,26.30
    >>Parlez à |cRXP_FRIENDLY_Golnir Rochorteil|r
    .turnin 6391 >>Rendez la quête Voyage vers Forgefer
    .accept 6388 >>Acceptez la quête Gryth Thurden
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto Ironforge,49.67,28.23,12,0
    .goto Ironforge,55.81,38.35,30,0
    >>Quittez le bâtiment
    .goto Ironforge,55.49,47.74,10 >>Voyagez vers |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Rendez la quête Gryth Thurden
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,55.07,51.36,30,0
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,46.67,50.56,20,0
    .goto Ironforge,44.12,50.37,20,0
    .goto Ironforge,39.55,57.49,10 >>Voyagez vers le |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
step
    .goto Ironforge,39.55,57.49
    >>Parlez au |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
    .turnin 291 >>Rendez la quête Les rapports
    .target Senator Barin Redstone
step
    #completewith next
    .goto Ironforge,44.43,49.08,20,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Voyagez vers |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
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
    --.goto Ironforge,27.25,12.79,20,0
    --.goto Ironforge,22.59,38.13,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Entrez dans le bâtiment
    .goto Ironforge,18.14,51.45,10 >>Voyagez vers |cRXP_FRIENDLY_Brassefeu|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Parlez à |cRXP_FRIENDLY_Brassefeu|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
step << skip
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur les Bougies sur la table. Effectuez un Logout skip pour revenir à Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Sombrivage 1 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage/Gnome Mage
#next 12-14 Loch Modan Mage AoE Avancé

step
    #completewith DeathlessSkip
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Quittez Ironforge
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Voyagez vers l'emplacement du raccourci. Restez près du côté gauche de la montagne sur la route.
step
    #label DeathlessSkip
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Mangez pour regagner toute votre vie à chaque chute si vous n'êtes pas confiant|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto Dun Morogh,60.65,11.38,20 >>Descendez le flanc de la montagne avec prudence
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Attention à |cRXP_ENEMY_Bouillasseux|r (rare) avant de descendre vers la côte (s'il est là)|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Ecumeurs Branchie-bleue|r à l'ouest lorsque vous atteignez la mer|r
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r lorsque vous traversez la mer. Attendez qu'ils s'éloignent dans leur chemin de patrouille|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto Wetlands,12.69,60.97,15 >> Voyagez vers le Port de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Entrez dans l'auberge
step
    .goto Wetlands,10.50,60.20
    >>Sautez sur le lustre en bas des escaliers
    >>Parlez à |cRXP_FRIENDLY_Samor Festivus|r à travers le mur
    >>|cRXP_WARN_NOTE : Pour le faire, liez « Interagir avec la cible » dans Jeu -> Raccourcis clavier dans le menu Options|r
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1457 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Parlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    +|cRXP_WARN_Cuisinez n'importe lequel|r |T133970:0|t|cRXP_LOOT_[Morceau de viande de sanglier]|r |cRXP_WARN_que vous avez depuis l'extérieur (il y a un feu de camp à l'intérieur)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Parlez à |cRXP_FRIENDLY_Dewin Scintillaube|r à travers le mur
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Voyagez vers le bateau pour Sombrivage
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Lancez en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Sautez du bateau quand vous êtes le plus proche possible du rivage
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Attirez 2-3 |cRXP_ENEMY_Clampants des marées pygmées|r vers |cRXP_FRIENDLY_Crackboum Tournelevier|r (N'oubliez pas d'utiliser|r |T135848:0|t[Nova de givre]|cRXP_WARN_) Tuez-les après avoir accepté la quête|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Montez les escaliers jusqu'au dernier étage
    .goto Darkshore,36.98,44.14,8 >>Voyagez vers |cRXP_FRIENDLY_Crackboum Tournelevier|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
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
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Voyagez vers |cRXP_FRIENDLY_Thundris Tissevent|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
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
    .goto Darkshore,37.39,40.13
    .accept 2178 >>Acceptez Easy Strider Living
    .goto Darkshore,37.69,40.66
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Voyagez vers |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Acceptez How Big a Threat?
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 2118 >>Acceptez Plagued Lands
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
 step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Tuez les |cRXP_ENEMY_Clampants des marées pygmées|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,38.23,52.84,75,0
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur un |cRXP_ENEMY_Ours des chardons enragé|r. L'objet a une portée de 50 yards|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,38.90,53.59
    >>Allez vers le camp Furbolg
    >>|cRXP_WARN_Ne tentez pas de combattre le|r |cRXP_ENEMY_Messager du Vent Noirbois|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,38.63,56.34,60,0
    .goto Darkshore,38.80,58.29,60,0
    .goto Darkshore,38.38,60.75,60,0
    .goto Darkshore,38.57,66.39
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur un |cRXP_ENEMY_Ours des chardons enragé|r. L'objet a une portée de 50 yards|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,40.30,59.73
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
    .goto Darkshore,42.65,63.15
    >>Cliquez sur |cRXP_PICK_La Chute d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .turnin 953 >>Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
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
    .goto Darkshore,44.17,36.29
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
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Tuez les |cRXP_ENEMY_Fées viles|r et les |cRXP_ENEMY_Grells sauvages|r. Dépouillez-les pour leur |cRXP_LOOT_Boucles d'oreille de grell|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Fées viles|r lancent|r |T136016:0|t[Poison] |cRXP_WARN_(Instantané en mêlée: Inflige 3 dégâts toutes les 3 secondes pendant 15 secondes) et les |cRXP_ENEMY_Grells sauvages|r lancent|r |T136215:0|t[Hystérique] |cRXP_WARN_(Augmente la vitesse d'attaque de 20% à lorsqu'il a moins de 20% de vie)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    >>|cRXP_WARN_Soyez prudents car ils lancent|r |T132222:0|t[Tir]|cRXP_WARN_ (À distance: Inflige 15-25 dégâts)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    .xp 11+1100 >> Montez votre expérience jusqu'à 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 958 >>Rendez la quête Les outils des Bien-nés
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
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
    .goto Darkshore,39.37,43.49
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Parlez à |cRXP_FRIENDLY_Caylais Plumelune|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
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
    .goto Darkshore,36.38,50.88
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Cours-la-côte Grisebrume|r à proximité|r |T132307:0|t[Se déplacent rapidement]
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto Darkshore,36.64,46.26
    >>Cliquez sur la |cRXP_PICK_Bigobox 827|r
    .turnin 983 >>Rendez Buzzbox 827
    .accept 1001 >>Acceptez la quête Bigobox 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Rendez Washed Ashore
    .accept 4681 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >> Courez le long du quai vers les |cRXP_LOOT_Restes de tortue de mer|r
step
    .goto Darkshore,31.86,46.33
    >>Nagez sous l'eau
    >>Dépouillez les |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >> Montez votre expérience jusqu'à 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
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
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Shaussiy l'aubergiste|r
    >>|cRXP_WARN_Si c'est la première fois que vous faites un "Hearthstone Batch", consultez le guide ci-dessous|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Auberdine à Forgefer au moment où elle s'active (Batch)|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUEZ ICI (il est FORTEMENT conseillé de le faire). Assurez-vous que vous avez défini et testé votre la fenêtre de temps pour le Batching avant afin de réduire le risque d'échec|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang 3, Atténuation de la magie)
    >>Coût total : 12 pièces d'argent
    >>Rappelez-vous que vous pourriez avoir besoin d'argent pour le |T133024:0|t[Tube en bronze] (8 pièce d'argent) et le vol vers Thelsamar (1argent 10cuivre)
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >> Effectuez un Logout skip sur le pilier au-dessus de |cRXP_FRIENDLY_Dink|r pour vérifier si |cRXP_FRIENDLY_Tournepignon|r a un |T133024:0|t[Tube en bronze] si vous le souhaitez
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Volez à Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Sombrivage 1 Mage AoE Nouveau serveur Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor none
#next 12-14 Loch Modan Mage AoE Avancé

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_NOTE : La route Nouveau serveur contient des quêtes qui sont TRÈS difficiles à faire seul. Elle concerne les serveurs très peuplés où vous pouvez monter un groupe pour faire les quêtes plus difficiles, OU les joueurs qui touchent les mobs pour les marquer rapidement|r
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Voyagez vers l'emplacement du raccourci. Restez près du côté gauche de la montagne sur la route.
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Mangez pour regagner toute votre vie à chaque chute si vous n'êtes pas confiant|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto Dun Morogh,60.65,11.38,20 >>Descendez le flanc de la montagne avec prudence
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Attention à |cRXP_ENEMY_Bouillasseux|r (rare) avant de descendre vers la côte (s'il est là)|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Ecumeurs Branchie-bleue|r à l'ouest lorsque vous atteignez la mer|r
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r lorsque vous traversez la mer. Attendez qu'ils s'éloignent dans leur chemin de patrouille|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo (il est FORTEMENT recommandé de le regarder)|r
    .goto Wetlands,12.69,60.97,15 >> Voyagez vers le Port de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Entrez dans l'auberge
step
    .goto Wetlands,10.50,60.20
    >>Sautez sur le lustre en bas des escaliers
    >>Parlez à |cRXP_FRIENDLY_Samor Festivus|r à travers le mur
    >>|cRXP_WARN_NOTE : Pour le faire, liez « Interagir avec la cible » dans Jeu -> Raccourcis clavier dans le menu Options|r
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1457 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Parlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    +|cRXP_WARN_Cuisinez n'importe lequel|r |T133970:0|t|cRXP_LOOT_[Morceau de viande de sanglier]|r |cRXP_WARN_que vous avez depuis l'extérieur (il y a un feu de camp à l'intérieur)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Parlez à |cRXP_FRIENDLY_Dewin Scintillaube|r à travers le mur
    >>|cRXP_WARN_Si le bateau vient d'arriver, passez cette étape|r
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Voyagez vers le bateau pour Sombrivage
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Lancez en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Sautez du bateau quand vous êtes le plus proche possible du rivage
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Attirez 2-3 |cRXP_ENEMY_Clampants des marées pygmées|r vers |cRXP_FRIENDLY_Crackboum Tournelevier|r (N'oubliez pas d'utiliser|r |T135848:0|t[Nova de givre]|cRXP_WARN_) Tuez-les après avoir accepté la quête|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Montez les escaliers jusqu'au dernier étage
    .goto Darkshore,36.98,44.14,8 >>Voyagez vers |cRXP_FRIENDLY_Crackboum Tournelevier|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Parlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r
    .accept 983 >>Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Tuez les |cRXP_ENEMY_Clampants des marées pygmées|r que vous avez attiré. Dépouillez-les pour leurs |cRXP_LOOT_Pattes de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Voyagez vers |cRXP_FRIENDLY_Terenthis|r
step
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Acceptez How Big a Threat?
    .target +Terenthis
    .goto Darkshore,39.37,43.49,-1
    .accept 2118 >>Acceptez Plagued Lands
    .goto Darkshore,38.84,43.41,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Voyagez vers |cRXP_FRIENDLY_Thundris Tissevent|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
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
    .goto Darkshore,37.39,40.13,-1
    .accept 2178 >>Acceptez Easy Strider Living
    .goto Darkshore,37.69,40.66,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto Darkshore,46.71,34.64
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
    .goto Darkshore,44.17,36.29
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
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Tuez les |cRXP_ENEMY_Fées viles|r et les |cRXP_ENEMY_Grells sauvages|r. Dépouillez-les pour leur |cRXP_LOOT_Boucles d'oreille de grell|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Fées viles|r lancent|r |T136016:0|t[Poison] |cRXP_WARN_(Instantané en mêlée: Inflige 3 dégâts toutes les 3 secondes pendant 15 secondes) et les |cRXP_ENEMY_Grells sauvages|r lancent|r |T136215:0|t[Hystérique] |cRXP_WARN_(Augmente la vitesse d'attaque de 20% à lorsqu'il a moins de 20% de vie)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    >>|cRXP_WARN_Soyez prudents car ils lancent|r |T132222:0|t[Tir]|cRXP_WARN_ (À distance: Inflige 15-25 dégâts)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,38.84,43.41
    .xp 10+6625 >> Montez à 6625+/7600xp sur la route pour rejoindre |cRXP_FRIENDLY_Tharnariun|r
step
    .goto Darkshore,38.84,43.41
    >>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,36.62,45.59
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Parlez à |cRXP_FRIENDLY_Caylais Plumelune|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
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
    .goto Darkshore,36.38,50.88
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Cours-la-côte Grisebrume|r à proximité|r |T132307:0|t[Se déplacent rapidement]
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto Darkshore,38.90,53.59
    >>Allez vers le camp Furbolg
    >>|cRXP_WARN_Ne tentez pas de combattre le|r |cRXP_ENEMY_Messager du Vent Noirbois|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,40.30,59.73
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .accept 953 >>Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Évitez d'engager la |cRXP_ENEMY_Dame Mirelune|r (rare) si elle est active|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto Darkshore,42.45,60.66,0
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
    .goto Darkshore,42.37,61.82
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.65,63.15
    >>Cliquez sur |cRXP_PICK_La Chute d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r au sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Tysha Lamelune|r
    .turnin 953 >>Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Bien-nées gémissantes|r uniquement s'ils sont sur votre chemin|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto Darkshore,42.45,60.66
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto Darkshore,45.25,53.44,30 >>Entrez à l'intérieur de la grotte
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Ours des chardons|r, les |cRXP_ENEMY_Séléniens|r, et les |cRXP_ENEMY_Séléniens déchaînés|r sur la route (si possible)|r
    .isOnQuest 958
step
    .goto Darkshore,45.75,53.08
    .goto Darkshore,41.70,36.51,30 >>Tuez l' |cRXP_WARN_Oracle sélénien|cRXP_ENEMY_ à l'intérieur de la grotte|r --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T136006:0|t[Colère] |cRXP_WARN_(À distance : Inflige 30-45 dégâts de nature),|r |T136096:0|t[Éclat lunaire] |cRXP_WARN_(Instantané : Inflige 20-30 dégâts de nature, puis 44 dégâts de nature sur 12 secondes), et|r |T136085:0|t[Rétablissement] |cRXP_WARN_(Soigne environ 150 points de vie. Rare, mais fuyez si cela se produit)|r
    >>|cRXP_WARN_Vous pouvez vous cacher de sa|r |T136006:0|t[Colère] |cRXP_WARN_derrière les rochers à l'intérieur de la grotte|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto Darkshore,44.18,36.29
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Rendez la quête Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 958 >>Rendez la quête Les outils des Bien-nés
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>Parlez à |cRXP_FRIENDLY_Alanndarian Chantenuit|r
    .turnin 2178 >>Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto Darkshore,39.37,43.49
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target Terenthis
step
    .goto Darkshore,36.64,46.26
    >>Cliquez sur la |cRXP_PICK_Bigobox 827|r
    .turnin 983 >>Rendez Buzzbox 827
    .accept 1001 >>Acceptez la quête Bigobox 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Rendez Washed Ashore
    .accept 4681 >>Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >> Courez le long du quai vers les |cRXP_LOOT_Restes de tortue de mer|r
step
    .goto Darkshore,31.86,46.33
    >>Nagez sous l'eau
    >>Dépouillez les |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >> Montez votre expérience jusqu'à 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
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
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Shaussiy l'aubergiste|r
    >>|cRXP_WARN_Si c'est la première fois que vous faites un "Hearthstone Batch", consultez le guide ci-dessous|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Auberdine à Forgefer au moment où elle s'active (Batch)|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUEZ ICI (il est FORTEMENT conseillé de le faire). Assurez-vous que vous avez défini et testé votre la fenêtre de temps pour le Batching avant afin de réduire le risque d'échec|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang 3, Atténuation de la magie)
    >>Coût total : 12 pièces d'argent
    >>Rappelez-vous que vous pourriez avoir besoin d'argent pour le |T133024:0|t[Tube en bronze] (8 pièce d'argent) et le vol vers Thelsamar (1argent 10cuivre)
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >> Effectuez un Logout skip sur le pilier au-dessus de |cRXP_FRIENDLY_Dink|r pour vérifier si |cRXP_FRIENDLY_Tournepignon|r a un |T133024:0|t[Tube en bronze] si vous le souhaitez
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Volez à Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-14 Loch Modan Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage/Gnome Mage
#next 14-16 Sombrivage 2 Mage AoE Avancé
step
    #completewith next
    +|cRXP_WARN_Lors de vos quêtes dans le Loch Modan, gardez TOUS les |T133970:0|t[|cRXP_LOOT_Morceaux de sanglier]|r que vous obtenez pour plus tard|r
step
    .zone Loch Modan >> Voyagez jusqu'au Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto Loch Modan,22.071,73.127
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entrez dans le bunker. Montez à l'étage
step
    .goto Loch Modan,23.233,73.675
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
    .goto Loch Modan,26.67,56.94
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
    .goto Loch Modan,22.071,73.127
    >>Parlez au |cRXP_FRIENDLY_Montagnard Pave-silex|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Rugel2
    .goto Loch Modan,23.233,73.675
    >>Parlez au |cRXP_FRIENDLY_Capitaine Rudagite|r
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Retournez dans le tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .goto Loch Modan,32.19,46.95,30 >>Effectuez un Logout skip depuis le Brasero à l'intérieur du tunnel jusqu'à Thelsamar
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
    .goto Loch Modan,23.57,17.93,30 >>Voyagez vers le Poste d'Algaz
    .isOnQuest 1339
step
    .goto Loch Modan,24.13,18.20
    >>Parlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto Loch Modan,24.764,18.397
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
    .goto Loch Modan,35.47,18.95,40 >>Voyagez jusqu'à l'entrée de la mine
    .isOnQuest 307
step
    #label Gear
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89,12,0
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89
    >>Ramassez les |cRXP_LOOT_Équipements de mineur|r au sol. |cRXP_WARN_Ils partagent leur points d'apparition|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Géomanciens Rats des tunnels|r lancent|r |T135824:0|t[Gardien de flammes rapide] |cRXP_WARN_(Confère une immunité au feu pendant 10 secondes) et|r |T135824:0|t[Trait de feu] |cRXP_WARN_(Instantané: Inflige 20-30 dégâts de feu)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto Loch Modan,35.47,18.95,40 >>Sortez de la mine
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto Loch Modan,34.38,17.67,40,0
	.goto Loch Modan,35.44,15.34,40,0
	.goto Loch Modan,37.15,10.53,40,0
	.goto Loch Modan,39.38,10.92,40,0
	.goto Loch Modan,38.46,14.43,40,0
	.goto Loch Modan,39.67,18.12,40,0
	.goto Loch Modan,39.84,24.83,40,0
	.goto Loch Modan,37.34,26.82,40,0
	.goto Loch Modan,37.15,24.53,40,0
	.goto Loch Modan,38.85,21.25,40,0
	.goto Loch Modan,37.89,18.88,40,0
	.goto Loch Modan,34.38,17.67,40,0
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
    .goto Loch Modan,23.57,17.93,30 >>Voyagez vers le Poste d'Algaz
    .isOnQuest 307
step
    .goto Loch Modan,24.13,18.20
    >>Parlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto Loch Modan,24.764,18.397
    >>Montez à l'étage
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 307,2 >> Rendez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,35,0
	.goto Loch Modan,32.69,28.67,35,0
	.goto Loch Modan,34.93,31.55,35,0
	.goto Loch Modan,36.78,33.19,35,0
	.goto Loch Modan,39.65,32.82,35,0
	.goto Loch Modan,38.15,38.16,35,0
	.goto Loch Modan,33.53,40.53,35,0
	.goto Loch Modan,29.87,53.51,35,0
	.goto Loch Modan,29.58,46.54,35,0
	.goto Loch Modan,29.95,39.84,35,0
	.goto Loch Modan,27.09,40.10,35,0
	.goto Loch Modan,29.03,33.44,35,0
	.goto Loch Modan,27.19,29.01,35,0
	.goto Loch Modan,25.77,25.60,35,0
	.goto Loch Modan,23.64,22.20,35,0
	.goto Loch Modan,31.01,24.84,35,0
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
    .goto Loch Modan,37.18,47.13,10,0
    >>Parlez au |cRXP_FRIENDLY_Grand maréchal Brock|r et à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Ils peuvent être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock << Gnome
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 436 >> Acceptez la quête Les fouilles de Baguefer
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.23,47.37
    >>Parlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Il peut être à l'intérieur ou à l'extérieur du bâtiment|r
    .accept 436 >> Acceptez la quête Les fouilles de Baguefer
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+8675 >> Montez votre expérience jusqu'à 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6545 >> Montez votre expérience jusqu'à 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto Loch Modan,46.14,63.53,50,0
    .goto Loch Modan,49.35,67.36,50,0
    .goto Loch Modan,51.91,68.00,50,0
    .goto Loch Modan,64.83,66.05,20 >>Voyagez vers |cRXP_FRIENDLY_Aldren Cordon|r
step << Gnome
    #completewith Boast
    .goto Loch Modan,64.83,66.05
    >>Parlez à |cRXP_FRIENDLY_Aldren Cordon|r
    .vendor 1214 >> |cRXP_BUY_Achetez la |r |T132491:0|t[Ceinture de grand sage] |cRXP_BUY_chez lui (si elle est disponible)|r
    .isQuestAvailable 298
step << Gnome
    >>Parlez à |cRXP_FRIENDLY_Baguefer|r et à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target +Prospector Ironband
    .goto Loch Modan,65.94,65.62
    .turnin 436 >> Rendez la quête Les fouilles de Baguefer
    .goto Loch Modan,64.89,66.66
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto Loch Modan,65.94,65.62
    >>Parlez à |cRXP_FRIENDLY_Baguefer|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto Loch Modan,66.07,70.60,30,0
    .goto Loch Modan,73.23,70.89,40,0
    .goto Loch Modan,77.25,68.20,40,0
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Voyagez vers |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto Loch Modan,83.48,65.62
    >>Parlez à |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Acceptez la quête La fanfaronnade d'un chasseur
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto Loch Modan,79.89,65.91,45,0
	.goto Loch Modan,76.70,74.44,45,0
	.goto Loch Modan,74.74,69.21,45,0
	.goto Loch Modan,77.03,60.55,45,0
	.goto Loch Modan,76.09,57.94,45,0
	.goto Loch Modan,77.39,55.98,45,0
	.goto Loch Modan,79.63,59.85,45,0
	.goto Loch Modan,79.89,65.91,45,0
    >>Tuez les |cRXP_ENEMY_Busards des montagnes|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Voyagez vers |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto Loch Modan,83.48,65.62
    >>Parlez à |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Rendez la quête La fanfaronnade d'un chasseur
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
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
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6780 >> Tuez des mobs jusqu'à ce que votre expérience soit à 6780+/11400xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Parlez au |cRXP_FRIENDLY_Montagnard Kadrell|r
    >>Le |cRXP_FRIENDLY_Montagnard Kadrell|r |cRXP_WARN_patrouille le long de la route principale de Thelsamar|r
    .turnin 416,2 >> Rendez la quête Chasse au rat
    .target Mountaineer Kadrell
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Parlez au |cRXP_FRIENDLY_Grand maréchal Brock|r et à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Ils peuvent être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .turnin 298 >> Rendez la quête Compte rendu d'avancement des fouilles
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Parlez au |cRXP_FRIENDLY_Grand maréchal Brock|r et à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    >>|cRXP_WARN_Ils peuvent être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Parlez à |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Il peut être à l'intérieur ou à l'extérieur du bâtiment|r
    .turnin 6392 >>Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto Loch Modan,35.25,47.74,12,0
    .goto Loch Modan,35.39,48.36,12,0
    >>Entrez dans l'auberge
    .goto Loch Modan,34.828,49.283,10 >>Voyagez vers |cRXP_FRIENDLY_Vidra Poêlâtre|r
step
    .goto Loch Modan,34.828,49.283
    >>Parlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.76,48.62
    >>|cRXP_WARN_Ne vous débarrassez PAS de vos|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .skill cooking,10 >> Cuisinez vos |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r en |T133974:0|t[Viande de sanglier rôtie] jusqu'à ce que votre compétence de |T133971:0|t[Cuisine] soit de 10
step
    .goto Loch Modan,34.76,48.62
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
    .goto Loch Modan,33.94,50.96
    >>Parlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto Ironforge,74.64,11.72
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Foudrepique|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto Ironforge,74.82,8.69,-1
    .goto Ironforge,56.21,46.86,-1
    .goto Ironforge,76.41,51.22,30 >>Effectuez un Logout skip pour arriver à l'extérieur du Tram des profondeurs
step
    .goto Ironforge,67.83,42.47
    >>Parlez à |cRXP_FRIENDLY_Tournepignon|r
    .vendor 5175 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
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
    .goto Stormwind City,59.96,12.21,20,0
    .goto Stormwind City,57.03,11.37,20,0
    .goto Stormwind City,55.25,7.07,15 >>Voyagez vers |cRXP_FRIENDLY_Billibub Tournepignon|r
step
    .goto Stormwind City,55.25,7.07
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto Stormwind City,58.09,16.55
    >>Parlez à |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
step
    #completewith next
    .goto Stormwind City,53.34,19.29,20,0
    .goto Stormwind City,51.64,21.69,20,0
    .goto Stormwind City,52.23,31.66,20,0
    .goto Stormwind City,49.82,34.42,20,0
    .goto Stormwind City,47.86,31.13,12,0
    .goto Stormwind City,49.18,30.29,12 >>Voyagez vers |cRXP_FRIENDLY_Baros Alexston|r
step
    .goto Stormwind City,49.18,30.29
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
step
    #completewith next
    .goto Stormwind City,47.72,42.71,15,0
    .goto Stormwind City,49.12,46.88,15,0
    .goto Stormwind City,48.55,49.00,15,0
    .goto Stormwind City,50.72,51.88,15,0
    .goto Stormwind City,52.57,55.44,15,0
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto Stormwind City,38.61,79.39,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Acceptez la quête Le lac Miroir << Gnome
    .trainer >> Apprenez vos sorts de classe (Trait de feu Rang 2, Intelligence des arcanes Rang 2, Explosion des arcanes)
    >>Coût total : 27 pièces d'argent
    >>Rappelez-vous de peut-être garder de l'argent pour vos Potions (1-3 argent chacune) et les Parchemins (50cuivre-3argent chacun)
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Sortez de la Tour des mages
    .goto Stormwind City,32.16,79.84,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >> |cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Adair Gilroy|r
    .money <0.0090
step
    .goto Stormwind City,41.57,65.46
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Voyagez vers |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto Stormwind City,55.46,65.26
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Entrez dans la banque de Hurlevent
step
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,4371,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133024:0|t[Tube en bronze]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,730,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,730,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 730,7207 >> Déposez les objets suivants dans votre banque:
    >>|T133884:0|t[Oeil de murloc]
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 7207 >> Déposez l'objet suivant dans votre banque:
    >>|T132788:0|t[Flasque de Jennea]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>Entrez dans l'auberge
    .goto Stormwind City,52.61,65.72,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Hurlevent à Auberdine au moment où elle s'active (Batch)|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 14-16 Sombrivage 2 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage/Gnome Mage
#next 16-18 Marche de l'Ouest Mage AoE Avancé


step
    #completewith DeepO
    +|cRXP_WARN_Gardez toutes les |T132917:0|t[Plumes légères] que vous obtenez pour plus tard|r
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Parlez à |cRXP_FRIENDLY_Barithras Lunombrage|r et à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 947 >>Acceptez la quête La caverne aux champignons
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4811 >>Accept Les Red Crystal
    .goto Darkshore,37.68,43.38
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    .goto Darkshore,37.39,40.13
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .target Thundris Windweaver
step
    #completewith MistV
    .goto Darkshore,35.87,38.18,50,0
    .goto Darkshore,36.28,32.23,50,0
    .goto Darkshore,37.61,30.86,50,0
    >>Tuez les |cRXP_ENEMY_Batteur de Sombrivage|r dans l'eau. Dépouillez-les pour obtenir leur |cRXP_LOOT_Oeil de batteur|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto Darkshore,38.21,28.76
--  .goto Darkshore,38.23,28.79
    >>Ouvrez le |cRXP_LOOT_Coffret de l'Aube argentée|r à travers la paroi du bateau
    >>|cRXP_WARN_Utilisez votre touche "Interagir avec la cible" sous l'eau près de la position de la flèche|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto Darkshore,39.58,27.47
--  .goto Darkshore,39.63,27.45
   >>Ouvrez le |cRXP_LOOT_Coffret du Voile de brume|r à travers la paroi du bateau
   >>|cRXP_WARN_Utilisez votre touche "Interagir avec la cible" sous l'eau près de la position de la flèche|r
   >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86,50,0
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86
   >>Tuez les |cRXP_ENEMY_Batteur de Sombrivage|r dans l'eau. Dépouillez-les pour obtenir leur |cRXP_LOOT_Oeil de batteur|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Gardez les|r |T133884:0|t[Oeil de murloc] |cRXP_WARN_que vous obtenez sur les|r |cRXP_ENEMY_Cours-la-côte Grisebrume|r |cRXP_WARN_et les|r |cRXP_ENEMY_Prophètes Grisebrume|r
step
   .goto Darkshore,41.91,31.48
   >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
   >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
   .accept 4723 >> Acceptez la quête La créature marine échouée
step
   .goto Darkshore,41.96,28.61
   >>Cliquez sur la |cRXP_PICK_Bigobox 411|r
   .turnin 1001 >> Rendez la quête Bigobox 411
   .accept 1002 >> Acceptez la quête Bigobox 323
step
    #completewith SeaTurtle1
    .goto Darkshore,43.67,27.81,50,0
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
    .goto Darkshore,44.20,20.60,80 >>Voyagez vers la |cRXP_LOOT_Tortue de mer échouée|r
    .isQuestAvailable 4725
step
    #completewith next
    +Gardez les |T133884:0|t[Oeil de murloc] que vous obtenez des |cRXP_ENEMY_Guerriers Grisebrume|r et des |cRXP_ENEMY_Pêcheurs Grisebrume|r
step
    .goto Darkshore,44.20,20.60
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
    .goto Darkshore,50.77,25.43
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
    .goto Darkshore,47.11,48.63,400 >>Dirigez-vous vers le |cRXP_PICK_Cristal rouge|r
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
    .goto Darkshore,47.11,48.63
    >>Dirigez-vous vers le |cRXP_PICK_Cristal rouge|r
    >>|cRXP_WARN_N'oubliez pas d'engager les |cRXP_ENEMY_Séléniens déchaînés|r qui sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto Darkshore,42.37,61.82,175 >>Voyagez vers la |cRXP_PICK_Flamme antique|r
    .isOnQuest 957
step
    #completewith next
    .goto Darkshore,42.45,60.66,0
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,42.37,61.82
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41
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
    .goto Darkshore,37.10,62.17
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto Darkshore,38.74,58.10,45,0
	.goto Darkshore,39.91,58.50,45,0
	.goto Darkshore,39.23,63.60,45,0
	.goto Darkshore,39.87,66.31,45,0
	.goto Darkshore,39.98,70.55,45,0
	.goto Darkshore,37.40,70.05,45,0
	.goto Darkshore,38.63,67.72,45,0
	.goto Darkshore,38.50,63.73,45,0
	.goto Darkshore,38.74,58.10,45,0
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>|cRXP_WARN_Faites attention car ils peuvent vous infliger|r |T135914:0|t[Rage] |cRXP_WARN_(réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto Darkshore,39.26,56.72,50,0
	.goto Darkshore,40.21,56.23,50,0
	.goto Darkshore,39.96,55.22,50,0
	.goto Darkshore,39.90,54.38,50,0
	.goto Darkshore,40.24,53.47,50,0
	.goto Darkshore,39.21,53.01,50,0
	.goto Darkshore,39.90,54.38,50,0
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
	.goto Darkshore,38.63,51.25,50,0
	.goto Darkshore,38.33,50.00,50,0
	.goto Darkshore,38.18,48.42,50,0
	.goto Darkshore,38.73,47.62,50,0
	.goto Darkshore,39.49,47.65,50,0
	.goto Darkshore,41.40,47.13,50,0
	.goto Darkshore,41.67,49.47,50,0
	.goto Darkshore,41.45,50.84,50,0
	.goto Darkshore,38.63,51.25,50,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto Darkshore,36.62,45.59,150 >>Voyagez vers |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .isOnQuest 982
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_BUY_à Laird|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez 15|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez 10|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez 5|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto Darkshore,37.45,43.10,20,0
    .goto Darkshore,37.47,42.40,20,0
    .goto Darkshore,37.44,41.84,15 >>Dirigez-vous vers l' |cRXP_FRIENDLY_Archéologue Hollee|r
step
    .goto Darkshore,37.44,41.84
    >>Parlez à |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto Darkshore,37.45,40.50
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_dont vous avez besoin/que vous pouvez|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto Darkshore,37.45,40.50
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez une|r |T133634:0|t[Sacoche marron en cuir] |cRXP_BUY_à Dalmond|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto Darkshore,37.39,40.13
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto Darkshore,37.69,40.66
    >>Parlez à |cRXP_FRIENDLY_Alanndarian Chantenuit|r
    .accept 2178 >>Acceptez Easy Strider Living
    .turnin 2178 >>Rendez Easy Strider Living
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    .turnin 982,2 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    #completewith next
    .goto Darkshore,37.64,42.46,15,0
    .goto Darkshore,37.61,43.21,15,0
    .goto Darkshore,37.68,43.38,20 >>Voyagez vers la Sentinelle Glynda Nal'Shea
step
    .goto Darkshore,37.68,43.38
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >>Rendez la quête Le cristal rouge
    .accept 4812 >>Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.81,43.89
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
    .goto Darkshore,38.84,43.42
    .turnin 985 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 986 >> Acceptez la quête Un maître perdu
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 965 >>Acceptez la quête La Tour d'Althalaxx
    .goto Darkshore,39.27,43.13,8,0
    .goto Darkshore,39.04,43.55
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Équipez la |T132491:0|t[Ceinture de grand sage]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto Darkshore,47.32,48.70
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
    .goto Darkshore,44.18,36.29
    >>Parlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Rendez la quête Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto Darkshore,50.66,34.98
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
    .goto Darkshore,52.33,35.94,20,0
    .goto Darkshore,52.39,36.85,20,0
    .goto Darkshore,51.58,37.52,30 >>Voyagez vers la |cRXP_ENEMY_Mère de la tanière|r
step
    .goto Darkshore,51.51,38.22
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Faites attention comme la |cRXP_ENEMY_Mère de la tanière|r et ses |cRXP_ENEMY_Jeunes chardons|r lancent|r |T132141:0|t[Ravage] |cRXP_WARN_(étourdissement de 2 secondes)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto Darkshore,51.51,38.22
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
    .goto Darkshore,51.80,33.51
    >>Ouvrez les |cRXP_PICK_Réserves de noix des Noirbois|r. Récupérez-y les |cRXP_LOOT_Echantillon de noix des Noirbois|r :3
    >>|cRXP_WARN_Engagez les ennemis qui le protègent, lancez|r |T135848:0|t[Nova de givre]|cRXP_WARN_, ramassez l' |cRXP_LOOT_Echantillon de noix des Noirbois|r, puis dirigez-vous vers le nord|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto Darkshore,52.85,33.42
    >>Ouvrez les |cRXP_PICK_Réserves de fruits des Noirbois|r. Récupérez les |cRXP_LOOT_Echantillons de fruit des Noirbois|r
    >>Tuez les |cRXP_ENEMY_Guerriers Noirbois|r qui vous attaquent
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.51,33.11
    .cast 16072 >>Utilisez le |T134712:0|t[Bol de purification rempli] près du feu de camp pour invoquer |cRXP_ENEMY_Xabraxxis|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .timer 20,La corruption des Noirbois RP
    .use 12347
step
    #label Talisman
    .goto Darkshore,52.24,33.08
    >>Attendez le temps du RP
    >>Tuez |cRXP_ENEMY_Xabraxxis|r
    >>Ramassez le |cRXP_PICK_Sac du démon d'Xabraxxis|r qui tombe par terre. Récupérez-y le |cRXP_LOOT_Talisman de corruption|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,51.29,24.53
    >>Cliquez sur la |cRXP_PICK_Bigobox 323|r
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestComplete 1002
step
    .goto Darkshore,51.29,24.53
    >>Cliquez sur la |cRXP_PICK_Bigobox 323|r
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,53.11,18.10
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4727 >>Acceptez la quête La tortue de mer échouée
step
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,51.29,24.53
    >>Cliquez sur la |cRXP_PICK_Bigobox 323|r
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
step
    .goto Darkshore,54.97,24.89
    >>Parlez à |cRXP_FRIENDLY_Balthule Frappelombre|r
    .turnin 965 >>Rendez la quête La Tour d'Althalaxx
    .accept 966 >>Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01,50,0
    .goto Darkshore,58.27,25.30,50,0
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01
    >>Tuez les |cRXP_ENEMY_Fanatiques de la Rive noire|r. Dépouillez-les pour leur |cRXP_LOOT_Parchemins déchirés|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.97,24.89
    >>Parlez à |cRXP_FRIENDLY_Balthule Frappelombre|r
    .turnin 966 >>Rendez la quête La Tour d'Althalaxx
    .accept 967 >>Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto Darkshore,55.00,33.42,30 >>Entrez à l'intérieur de la grotte
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_N'oubliez pas le Logout skip de la grotte que vous allez bientôt effectuer|r
step
    #completewith next
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    >>Cueillez les |cRXP_LOOT_Pédoncules d'amanite|r bleus sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Restez au niveau supérieur de la grotte. Descendez s'il n'y a pas assez de |cRXP_LOOT_Amanite phalloïde|r au niveau supérieur
    >>Cueillez l' |cRXP_LOOT_Amanite phalloïde|r orange au sol à la fin du chemin en haut de la grotte
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58
    >>Cueillez les premiers |cRXP_LOOT_Pédoncules d'amanite|r à l'entrée de la grotte après avoir ramassé l' |cRXP_LOOT_Amanite phalloïde|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto Darkshore,54.96,34.52
    .goto Darkshore,41.70,36.51,30 >> |cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Voyagez vers Auberdine
    .isOnQuest 4763
step
    .goto Darkshore,37.39,40.13
    >>Parlez à |cRXP_FRIENDLY_Thundris Tissevent|r
    .turnin 4763,1 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto Darkshore,37.45,40.50
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Achetez une|r |T133634:0|t[Sacoche marron en cuir] |cRXP_BUY_à Dalmond|r
    >>|cRXP_WARN_Ne descendez PAS en dessous de 30 pièces d'argent|r
    .target Dalmond
step
    .goto Darkshore,38.84,43.42
    >>Parlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 2139,1 >>Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r, à |cRXP_FRIENDLY_Barithras|r, et à l' |cRXP_PICK_Affiche de recherche|r
    .turnin 4813,2 >>Rendez la quête Les fragments à l'intérieur
    .target +Sentinel Glynda Nal'Shea
    .goto Darkshore,37.68,43.38
    .turnin 947 >>Rendez la quête La caverne aux champignons
    .accept 948 >>Acceptez la quête Onu
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.62,45.59
    >>Parlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Shaussiy l'aubergiste|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Auberdine à Hurlevent au moment où elle s'active (Batch)|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 16-18 Marche de l'Ouest Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage/Gnome Mage
#next 18-20 Sombrivage 3 Mage AoE Avancé

step
    #completewith JenneaT
    +|cRXP_WARN_NOTE: Vous avez besoin de 12 stacks de chaque tissu (|r|T132911:0|t[Étoffe de laine]|cRXP_WARN_,|r |T132905:0|t[Étoffe de soie]|cRXP_WARN_,|r |T132892:0|t[Étoffe de tisse-mage]|cRXP_WARN_,|r et |T132903:0|t[Étoffe runique]|cRXP_WARN_) pour rendre les tissus plus tard. Vous les obtiendrez naturellement en montant de niveau|r
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step << skip
    .goto Stormwind City,52.05,67.96
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
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto Stormwind City,38.61,79.39,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto Stormwind City,38.61,79.39
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe (Choc de flammes)
    >>Coût total : 15 pièces d'argent
    .target Jennea Cannon
step
    .goto Stormwind City,55.46,65.26
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto Stormwind City,56.69,57.76,12,0
    .goto Stormwind City,57.13,57.69,10 >>Voyagez vers |cRXP_FRIENDLY_Woo Ping|r
step
    .goto Stormwind City,57.13,57.69
    >>Parlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Apprenez la compétence pour porter des |T132321:0|t[Dagues]
    .target Woo Ping
step
    #completewith next
    .goto Stormwind City,57.17,58.83,12,0
    .goto Stormwind City,63.42,63.75,20,0
    .goto Stormwind City,63.14,65.25,15,0
    .goto Stormwind City,66.27,62.12,10 >>Voyagez vers |cRXP_FRIENDLY_Dungar Grangodet|r
step << Human
    .goto Stormwind City,66.27,62.12
    >>Parlez à |cRXP_FRIENDLY_Dungar Grangodet|r
    .turnin 6261 >> Rendez la quête Dungar Grangodet
    .accept 6285 >> Acceptez la quête Aller voir Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto Stormwind City,66.27,62.12
    >>Parlez à |cRXP_FRIENDLY_Dungar Grangodet|r
    .fp Stormwind City >> Apprenez le chemin de vol de Hurlevent << Gnome
    .fly Westfall >> Volez vers la Marche de l'Ouest << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Descendez jusqu'à la corniche en dessous de |cRXP_FRIENDLY_Dungar Grangodet|r
step << Gnome
    #completewith next
    .goto Elwynn Forest,32.10,50.32,40 >>Quittez Stormwind
step << skip
    #completewith next
    #requires Stormwind1
    .goto Elwynn Forest,42.96,65.62,30 >>Voyagez vers l'Auberge de Comté-de-l'Or
step << skip
    #label GoldshireTrain
    .goto Elwynn Forest,43.25,66.25
    >>Sautez sur le lustre en bas des escaliers si vous ne l'avez pas appris, sinon sautez depuis la Chaise
    >>Parlez à |cRXP_FRIENDLY_Zaldimar|r à travers le mur
    .accept 1919 >> Acceptez la quête Rendre compte à Jennea
    .trainer >> Apprenez vos sorts de classe (Choc de flammes)
    >>Coût total : 15 pièces d'argent
step << skip
    .goto Elwynn Forest,44.00,65.69
    >>Parlez à |cRXP_FRIENDLY_Dobbins le tavernier|r
    >>|cRXP_BUY_Achetez une|r |T132794:0|t[Outre de rhum doux] |cRXP_BUY_à Dobbins|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto Elwynn Forest,43.77,65.80
    >>Parlez à |cRXP_FRIENDLY_Aubergiste Farley|r
    >>|cRXP_BUY_Achetez 45|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Farley|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto Elwynn Forest,28.98,61.50
    >>Utilisez la |T132788:0|t[Flasque de Jennea] à la cascade
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Parlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.91,19.41
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
    .goto Westfall,56.04,31.23
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto Westfall,53.54,31.72,60,0
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
    .goto Westfall,56.33,47.52
    .turnin 6285 >> Rendez la quête Aller voir Lewis << Human
    .goto Westfall,57.002,47.169 << Human
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest << Gnome
    .goto Westfall,56.42,47.62 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto Westfall,53.98,52.99
	>>Parlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
	.target Scout Galiaan
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 45|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 40|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 35|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 30|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 25|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 20|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 15|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto Westfall,52.86,53.72
	>>Parlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez 10|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Heather|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto Westfall,52.86,53.72
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
    .goto Westfall,39.45,52.34,60,0
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
    .goto Westfall,36.24,54.52
    >>Ouvrez le |cRXP_PICK_Coffre d'Alexston|r. Dépouillez-le pour |cRXP_LOOT_Une simple boussole|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34,60,0
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34
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
    .goto Westfall,30.40,57.93,60,0
    .goto Westfall,29.29,65.46,60,0
    .goto Westfall,32.62,68.40,60,0
    .goto Westfall,31.07,69.42,60,0
    .goto Westfall,31.40,72.29,30 >> Tuez les camps de Gnolls en AoE
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
    .goto Westfall,30.02,86.02
    >>Parlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .target Captain Grayson
step
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r en AoE. Dépouillez-le pour l' |cRXP_LOOT_Écaille du Vieux Troubloeil|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.02,86.02
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
    .goto Westfall,44.62,80.26
    >>Parlez à |cRXP_FRIENDLY_Tristevin Tonnebière|r
    .accept 117 >> Acceptez la quête La Tonnebière
    .turnin 117 >> Rendez la quête La Tonnebière
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto Westfall,48.77,77.70,60,0
    .goto Westfall,51.73,74.67,60,0
    .goto Westfall,52.56,72.87,60,0
    >>Tuez les |cRXP_ENEMY_Truands défias|r et les |cRXP_ENEMY_Malandrins défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Malandrins défias|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_(inflige le double des dégâts dans le dos)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,52.08,71.94,60 >> Voyagez vers l'extrémité des Collines de la dague
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
    .goto Westfall,46.65,52.99,60,0
    .goto Westfall,48.22,45.21,60,0
    .goto Westfall,45.77,39.19,60,0
    .goto Westfall,46.49,37.30,60,0
    .goto Westfall,44.54,34.71,150 >> Voyagez vers la ferme des Molsen
    .isOnQuest 153
step
    #completewith Watch
    .goto Westfall,44.54,34.71,60,0
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
    .goto Westfall,44.14,26.66,60,0
    .goto Westfall,46.13,26.52,60,0
    .goto Westfall,48.74,20.79
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
    .goto Westfall,48.74,20.79,60,0
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Defias Trappers|r lancent|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_vous lanceront un|r |T132149:0|t[Filet]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto Westfall,49.33,19.26
    >>Ouvrez la |cRXP_PICK_Penderie de Froncebouille|r. Récupérez la |cRXP_LOOT_Montre de Froncebouille|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto Westfall,50.50,21.38,60,0
    .goto Westfall,51.70,23.16,60,0
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r en AoE
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,52.02,15.00,60,0
    .goto Westfall,56.93,12.75
    >>Tuez les |cRXP_ENEMY_Éclaireurs Rivepatte|r et les |cRXP_ENEMY_Gnolls Rivepatte|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto Westfall,52.36,9.59,60,0
    .goto Westfall,53.80,10.69,60,0
    .goto Westfall,55.96,8.22
    >>Tuez les |cRXP_ENEMY_Cours-la-côte murloc|r et les |cRXP_ENEMY_Écumeurs murloc|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Oeil de murloc|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto Westfall,56.56,19.25
    >>Tuez les |cRXP_ENEMY_Defias Footpads|r en AoE et dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Détrousseurs défias|r lancent|r |T132090:0|t[Attaque sournoise]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto Westfall,56.56,19.25
    >>Ouvrez les |cRXP_PICK_Sac d'avoine|r au sol. Dépouillez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Parlez au |cRXP_FRIENDLY_Fermier Froncebouille|r et à |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
step
    .goto Westfall,59.72,34.62,80,0
    .goto Westfall,60.24,47.40
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
    .goto Westfall,52.84,30.46,60,0
    .goto Westfall,51.70,23.16
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r en AoE
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,51.70,23.16
    .xp 17+11890 >> Montez votre expérience jusqu'à 11890+/17700xp
    .isQuestComplete 12
step
    .goto Westfall,51.70,23.16
    >>|cRXP_WARN_Passez cette étape si vous avez déjà terminé l'objectif de la quête La milice du peuple|r
    .xp 17+12800 >> Montez votre expérience jusqu'à 12800+/17700xp
step
    >>Parlez aà |cRXP_FRIENDLY_Saldean le fermier|r puis à |cRXP_FRIENDLY_Salma|r à l'intérieur
    .turnin 9,1 >> Rendez la quête Les champs de mort
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step
	>> Parlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .turnin 12 >> Rendez la quête La milice du peuple
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 102,1 >> Rendez la quête Patrouilles dans la marche de l'Ouest
    .goto Westfall,56.42,47.62
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto Westfall,56.42,47.62
	>> Parlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .turnin 102,1 >> Rendez la quête Patrouilles dans la marche de l'Ouest
	.target Captain Danuvin
step
    .goto Westfall,53.98,52.99
	>>Parlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .turnin 153,2 >> Rendez la quête Les masques en cuir rouge
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #completewith next
    .goto Westfall,56.56,52.64
	>>Parlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
	.target Thor
step
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto Stormwind City,38.61,79.39,10 >>Voyagez vers |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Rendez la quête Le lac Miroir
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Apprenez vos sorts de classe (Boule de feu Rang 4)
    >>Coût total : 18 pièces d'argent
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Sortez de la Tour des mages
    .goto Stormwind City,32.16,79.84,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >> |cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,31.41,79.10,20,0
    .goto Stormwind City,32.67,71.36,20,0
    .goto Stormwind City,34.53,68.40,20,0
    .goto Stormwind City,32.16,59.96,20,0
    .goto Stormwind City,32.31,58.51,20,0
    .goto Stormwind City,30.53,55.10,20,0
    .goto Stormwind City,26.04,52.25,20,0
    .goto Stormwind City,24.67,52.60,20,0
    .goto Stormwind City,21.41,55.80,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Argos Murmenuit|r
step
    .goto Stormwind City,21.41,55.80
    >>Parlez à |cRXP_FRIENDLY_Argos Murmenuit|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
step
    .goto Stormwind City,41.57,65.46
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step
    .goto Stormwind City,52.05,67.96
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Voyagez vers |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto Stormwind City,55.30,68.16,10 >>Entrez dans la banque de Hurlevent
step
    #sticky
    #label Bank4
    .goto Stormwind City,57.03,72.97
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 769,5354,6889 >> Récupérez les objets suivants de votre banque:
    >>|T133970:0|t[Morceau de viande de sanglier]
    >>|T133469:0|t[Lettre à Delgren]
    >>|T132832:0|t[Petit œuf]
step
    #label Bank3
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,53.45,64.92,10,0
    >>Entrez dans l'auberge
    .goto Stormwind City,52.61,65.72,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===ATTENTION===|r
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Ouvrez le menu "Faites de cette auberge votre foyer", puis lancez|r |T134414:0|t[Pierre de foyer]
    .hs >> |cRXP_WARN_Liez votre Pierre de foyer de Hurlevent à Auberdine au moment où elle s'active (Batch)|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-20 Sombrivage 3 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage/Gnome Mage
#next 20-22 Carmines 1 Mage AoE Avancé

step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 45|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Farley|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 40|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 35|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 30|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 25|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 20|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 15|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 10|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto Darkshore,36.83,43.91
    >>Parlez à |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Achetez 5|r |T132796:0|t[Jus de melon] |cRXP_BUY_à Taldan|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto Darkshore,36.77,44.28
    >>Parlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez jusqu'à 40|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_au marchand|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>SUPPRIMEZ CETTE ÉTAPE PLUS TARD
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.09,44.93
    >>Parlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Acceptez la quête Fruit de la mer
    .target Gubber Blump
step
    .goto Darkshore,43.55,76.29
    >>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Parlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Kerlonian|r n'est pas là, passez cette étape|r
    .accept 5321 >>Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
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
   .goto Darkshore,38.65,87.34
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
    .goto Darkshore,38.65,87.34
    >>Placez la |T134715:0|t[Fiole de divination] sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto Darkshore,38.65,87.34
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
   .goto Darkshore,38.55,86.03
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
   .goto Darkshore,38.55,86.03
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
    .goto Darkshore,35.72,83.69
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r pour commencer l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,31.28,87.39
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
    .goto Darkshore,31.28,87.39
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
    .goto Darkshore,31.22,85.56
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
    .goto Darkshore,31.70,83.72
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4731 >>Acceptez la quête La tortue de mer échouée
    .isOnQuest 950
step
    #label SeaCreature
    .goto Darkshore,32.70,80.73
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
   .goto Darkshore,36.52,76.55
   >>Nettoyez le camp de murlocs sans vous déplacer vers le centre de celui-ci
   >>Une fois que vous avez tué les murlocs du camp, déplacez-vous vers son centre pour lancer 3 vagues de murlocs (3 Cours-la-côte, 2 Guerriers, Fondeboue et un Chasseur)
   >>|cRXP_WARN_Si vous avez de la chance, |cRXP_ENEMY_Fondeboue|r peut déjà être présent à environ 30 mètres de la côte vers l'ouest (si un joueur est déjà mort en l'affrontant auparavant)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,35.42,71.52,60,0
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto Darkshore,35.97,70.90
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4728 >>Acceptez la quête La créature marine échouée
    .isOnQuest 950
step
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71
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
    .goto Darkshore,43.55,76.29
    >>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto Darkshore,35.97,70.90
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4728 >>Acceptez la quête La créature marine échouée
step
    #completewith next
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,36.52,76.55
    >>Nettoyez le camp de murlocs sans vous déplacer vers le centre de celui-ci
    >>Une fois que vous avez tué les murlocs du camp, déplacez-vous vers son centre pour lancer 3 vagues de murlocs (3 Cours-la-côte, 2 Guerriers, Fondeboue et un Chasseur)
    >>|cRXP_WARN_Si vous avez de la chance, |cRXP_ENEMY_Fondeboue|r peut déjà être présent à environ 30 mètres de la côte vers l'ouest (si un joueur est déjà mort en l'affrontant auparavant)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71,60,0
    >>Tuez les |cRXP_ENEMY_Clampants des récifs|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,32.70,80.73
    >>Dépouillez la |cRXP_LOOT_Créature marine échouée|r sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4730 >>Acceptez la quête La créature marine échouée
step
    .goto Darkshore,32.80,81.72,60,0
    .goto Darkshore,32.08,83.28
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r en AoE. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,31.70,83.72
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4731 >>Acceptez la quête La tortue de mer échouée
step
    .goto Darkshore,31.22,85.56
    >>Dépouillez la |cRXP_LOOT_Tortue de mer échouée|r sur le sol
    >>|cRXP_WARN_La carapace de Tortue vous permet de vous cacher|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .accept 4732 >>Acceptez la quête La tortue de mer échouée
step
    .goto Darkshore,31.28,87.39
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
    .goto Darkshore,35.72,83.69
    >>Parlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r pour commencer l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,38.65,87.34
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
   .goto Darkshore,38.65,87.34
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
    .goto Darkshore,38.65,87.34
    >>Placez la |T134715:0|t[Fiole de divination] sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    .goto Darkshore,38.65,87.34
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
    .goto Darkshore,38.55,86.03
    >>Placez la |T134715:0|t[Fiole de divination] sur le sol
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    >>Cliquez sur la |cRXP_PICK_Fiole de divination|r au sol
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    #label Tome2
    .goto Darkshore,38.55,86.03
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
    .goto Darkshore,41.40,80.56,-1
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r
    .turnin 1003 >> Rendez la quête Bigobox 525
step
    #label Onu3
    .goto Darkshore,43.55,76.29,-1
    >>Parlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Parlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Kerlonian|r n'est pas là, passez cette étape|r
    .accept 5321 >>Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
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
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57,60,0
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57
    >>Tuez les |cRXP_ENEMY_Vieil ours des chardons|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Scalps vieillis|r
    >>Les |cRXP_ENEMY_Vieil ours des chardons|r partagent leurs points d'apparition avec les |cRXP_ENEMY_Géniteurs traquelune|r et les |cRXP_ENEMY_Trotteurs des forêts géants|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto Darkshore,41.40,80.56
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r
    .turnin 1003 >> Rendez la quête Bigobox 525
    .use 13536
step
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03,70,0
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03
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
    .goto Ashenvale,27.26,35.58
    >>Parlez à |cRXP_FRIENDLY_Liladris Ondelune|r
    .turnin 5321,1 >>Rendez la quête Le dormeur s'est éveillé
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto Ashenvale,26.19,38.70
    >>Parlez à |cRXP_FRIENDLY_Delgren le Purificateur|r
    .turnin 967 >>Rendez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,22.64,51.91
    >>Parlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Rendez la quête L'évasion de Therylune
    .target Therysil
step
    .goto Ashenvale,34.41,47.99
    .xp 19+8720 >> Montez votre expérience jusqu'à 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132794:0|t[Invocation d'eau Rang 2] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #completewith next
    .goto Ashenvale,34.41,47.99
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
    .goto Darkshore,36.62,45.60
    .turnin 1138,2 >>Rendez la quête Fruit de la mer
    .goto Darkshore,36.09,44.93
    .target +Gubber Blump
step
    .goto Darkshore,37.73,43.38
    >>Parlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4740 >>Rendez la quête On recherche : Fondeboue !
    .target Sentinel Glynda Nal'Shea
step
    >>Parlez à |cRXP_FRIENDLY_Terenthis|r et à |cRXP_FRIENDLY_Gershala Murmenuit|r
    .turnin 986 >>Rendez la quête Un maître perdu
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .goto Darkshore,38.32,43.04
    .target +Gershala Nightwhisper
step
    .goto Darkshore,38.11,41.16
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 20|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 15|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 10|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Parlez à |cRXP_FRIENDLY_Gorbold Main-d'acier|r
    >>|cRXP_BUY_Achetez 5|r |T134059:0|t[Épices douces] |cRXP_BUY_à Gorbold|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto Darkshore,37.45,40.50
    >>Parlez à |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Achetez un|r |T135435:0|t[Bois simple] |cRXP_BUY_et un|r|T135237:0|t[Silex et amadou] |cRXP_BUY_au marchand|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto Darkshore,37.44,41.84
    >>Parlez à |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto Darkshore,37.47,42.45,20,0
    .goto Darkshore,37.44,43.03,20,0
    .goto Darkshore,36.85,44.05,20,0
    .goto Darkshore,32.96,41.88,20,0
    .goto Darkshore,33.23,39.91,50 >>Voyagez vers le bateau pour Darnassus
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
    .goto Teldrassil,54.91,96.25,100 >> Prenez le bateau pour Teldrassil
step
    #completewith next
    .goto Teldrassil,55.52,93.68,60,0
    .goto Teldrassil,56.80,92.90,40,0
    .goto Teldrassil,57.47,92.97,20,0
    .goto Teldrassil,58.40,94.01,20 >>Voyagez vers |cRXP_FRIENDLY_Vesprystus|r
step
    .goto Teldrassil,58.40,94.01
    >>Parlez à |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Prenez le chemin de vol du village de Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step
    #completewith next
    .goto Darnassus,37.94,48.14,30,0
    .goto Darnassus,38.20,65.96,30,0
    .goto Darnassus,36.79,72.44,30,0
    .goto Darnassus,31.24,84.49,20 >>Voyagez vers le |cRXP_FRIENDLY_Chef archéologue Grisemoustache|r
step
    .goto Darnassus,31.24,84.49
    >>Parlez au |cRXP_FRIENDLY_Chef archéologue Grisemoustache|r
    .turnin 741,3 >>Rendez la quête Les absences du Prospecteur
    .accept 942 >>Acceptez la quête Les absences du Prospecteur
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 20-22 Carmines 1 Mage AoE Avancé
#version 2
#group RestedXP Alliance Mage AoE Avancé
#defaultfor Human Mage/Gnome Mage
#next 22-26 Les Paluns 1 Mage AoE Avancé

step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Hurlevent
    .zoneskip Stormwind City
step
    .goto Stormwind City,55.46,65.26
    >>Parlez à |cRXP_FRIENDLY_Keldric|r à travers le mur
    .vendor 1257 >> Vendeur votre surplus. |cRXP_BUY_Achetez des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_au marchand (si elles sont disponibles)|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Entrez dans la banque de Hurlevent
step
    #sticky
    #label Bank1
    .goto Stormwind City,57.03,72.97
    >>Parlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Récupérez les objets suivants de votre banque:
    >>|T133024:0|t[Tube en bronze]
    >>|T134943:0|t[Parchemins]
    >>|T132620:0|t[Tonneau de merlot]
    >>|T134377:0|t[Une simple boussole]
    .target Newton Burnside
step
    #label Bank
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,52.16,61.44,12,0
    .goto Stormwind City,49.41,63.41,12,0
    .goto Stormwind City,51.16,68.33,12 >>Voyagez vers |cRXP_FRIENDLY_Roberto Pupellyverbos|r
step
    #requires Bank1
    .goto Stormwind City,52.05,67.96
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Roberto Pupellyverbos|r
    >>|cRXP_BUY_Achetez un|r |T132620:0|t[Tonneau de merlot] |cRXP_BUY_à Roberto|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Sautez sur la torche, puis descendez pour passer sous Hurlevent|r
    >>|cRXP_WARN_Avec les Ombres en "Moyen" ou en "Faible", posez-vous au milieu des pieds de Derek le Dinosaure (la partie la plus claire de la terre) juste avant le vide bleu, puis marchez droit devant vous|r
    >>|cRXP_WARN_NOTE : Il existe une petite chance de mourir en utilisant cette méthode. Vous pouvez également marcher vers la Tour des mages normalement si vous le souhaitez|r
    .link https://youtu.be/gV8-wgQEomc >> CLIQUEZ ICI pour un guide
    .goto Stormwind City,38.61,79.39,10 >>Voyagez vers |cRXP_FRIENDLY_Larimaine Purdue|r
step
    #requires Bank1
    .goto Stormwind City,39.69,79.56
    >>Parlez à |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
    >>Coût total : 20 pièces d'argent
    .target Larimaine Purdue
step
    .goto Stormwind City,38.61,79.39
    >>Parlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe (Transfert, Évocation, Armure de givre Rang 3, Bouclier de mana, Invocation d'eau Rang 3)
    >>|cRXP_WARN_N'apprenez PAS encore Blizzard|r
    >>Coût total : 1 pièce d'argent
    .target Jennea Cannon
step
    #completewith Charys
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Sortez de la Tour des mages
    .goto Stormwind City,32.16,79.84,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    >>|cRXP_BUY_Achetez 2|r |T134419:0|t[Runes de téléportation]|cRXP_BUY_,|r des |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 18 pièces d'argent et 31 pièces de cuivres|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    >>|cRXP_BUY_Achetez deux|r |T134419:0|t[Runes de téléportation]|cRXP_BUY_,|r des |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_chez elle (si elles sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 26 pièces d'argent et 31 pièces de cuivres|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Adair Gilroy|r
step
    .goto Stormwind City,41.57,65.46
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 18 pièces d'argent et 31 pièces de cuivres|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto Stormwind City,41.57,65.46
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 26 pièces d'argent et 31 pièces de cuivres|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Courez le long du bord du mur au lieu de faire le tour
step
    .goto Stormwind City,45.70,38.42
    >>Parlez au |cRXP_FRIENDLY_Frère Kristoff|r
    .accept 343 >> Acceptez la quête En parlant de fermeté
    .target Brother Kristoff
step
    #completewith next
    .goto Stormwind City,47.85,32.67,15,0
    .goto Stormwind City,47.96,31.15,12,0
    .goto Stormwind City,49.18,30.29,12 >>Voyagez vers |cRXP_FRIENDLY_Baros Alexston|r
step
    .goto Stormwind City,49.18,30.29
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
step
    .goto Stormwind City,55.25,7.07
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto Stormwind City,69.02,28.39,30,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,74.19,7.45,12 >>Voyagez vers |cRXP_FRIENDLY_Milton|r
step
    .goto Stormwind City,74.19,7.45
    >>Parlez à |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Rendez la quête En parlant de fermeté
    .accept 344 >> Acceptez la quête Frère Paxton
    .target Milton Sheaf
step
    #completewith next
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.20,29.08,30,0
    .goto Stormwind City,61.74,42.34,20,0
    .goto Stormwind City,64.80,60.34,12,0
    .goto Stormwind City,64.17,60.60,12 >>Voyagez vers |cRXP_FRIENDLY_Felicia|r
step
    .goto Stormwind City,64.17,60.60
    >>Parlez à |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Achetez les|r |T133849:0|t[Herbes aromatiques de Hurlevent] |cRXP_BUY_à Felicia|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto Stormwind City,64.91,58.48,30,0
    .goto Stormwind City,59.91,51.60,30,0
    .goto Stormwind City,57.83,54.98,30,0
    .goto Stormwind City,63.27,63.43,20,0
    .goto Stormwind City,63.13,65.23,20,0
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Descendez jusqu'à la corniche en dessous de |cRXP_FRIENDLY_Dungar Grangodet|r
step
    #completewith next
    .goto Elwynn Forest,42.96,65.62,30 >>Voyagez vers l'Auberge de Comté-de-l'Or
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto Elwynn Forest,32.75,49.52,50,0
    .goto Elwynn Forest,40.63,49.27,20,0
    .goto Elwynn Forest,48.27,41.93,50,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    >>Prenez le chemin de Montagne vers le |cRXP_FRIENDLY_Frère Paxton|r
    .goto Elwynn Forest,49.61,40.41,10 >>Allez vers le |cRXP_FRIENDLY_Frère Paxton|r
step
    .goto Elwynn Forest,44.00,65.69
    >>Parlez à |cRXP_FRIENDLY_Dobbins le tavernier|r
    >>|cRXP_BUY_Achetez une|r |T132794:0|t[Outre de rhum doux] |cRXP_BUY_à Dobbins|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto Elwynn Forest,43.77,65.80,0,0
    >>Parlez à |cRXP_FRIENDLY_Aubergiste Farley|r
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Allez vers le |cRXP_FRIENDLY_Frère Paxton|r
step
    #requires FarleyHome
    .goto Elwynn Forest,49.61,40.41
    >>Parlez au |cRXP_FRIENDLY_Frère Paxton|r
    .turnin 344 >> Rendez la quête Frère Paxton
    .accept 345 >> Acceptez la quête Provisions d'encre
    .target Brother Paxton
step
    #completewith Theo
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,48.28,42.21,10,0
    .goto Elwynn Forest,57.62,51.97,30,0
    .goto Elwynn Forest,64.45,69.10,15 >>Prenez le chemin de montagne vers la Tour d'Azora
step
    #sticky
    #label Dawn
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Parlez à |cRXP_FRIENDLY_Aurore|r à l'étage
    .vendor 958 >> |cRXP_BUY_Achetez des|r |T134943:0|t[Parchemins]|cRXP_BUY_qui ne donnent pas de l'Intelligence,|r des |T134850:0|t[Potions de mana mineures]|cRXP_BUY_, et des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_au marchand (s'ils sont en stock)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 11 pièces d'argent et 38 pièces de cuivres|r
    .money <0.1138
    .target Aurore Brillétoile
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Parlez à |cRXP_FRIENDLY_Aurore|r à l'étage
    .vendor 958 >> |cRXP_BUY_Achetez des|r |T134943:0|t[Parchemins]|cRXP_BUY_qui ne donnent pas de l'Intelligence,|r des |T134850:0|t[Potions de mana mineures]|cRXP_BUY_, et des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_au marchand (s'ils sont en stock)|r
    >>|cRXP_WARN_Ne descendez PAS à moins de 19 pièces d'argent et 38 pièces de cuivres|r
    .money <0.1938
    .target Aurore Brillétoile
    .itemcount 4371,<1
step
    #label Theo
    .goto Elwynn Forest,65.22,69.71
    >>Montez à l'étage
    >>Parlez à |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Acceptez la quête L'œil attentif
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto Duskwood,73.79,45.98,20,0
    .goto Duskwood,74.01,45.36,10 >>Entrez dans l'auberge
step
    #requires Dawn2
    .goto Duskwood,73.81,44.02
    >>Parlez à |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Achetez la|r |T132798:0|t[Bouteille de tord-boyaux] |cRXP_BUY_au marchand|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto Duskwood,74.01,45.36,10,0
    .goto Duskwood,73.79,45.98,10 >>Quittez l'auberge
step
    #completewith next
    .goto Duskwood,75.22,48.26,12 >>Entrez dans le bâtiment
step
    .goto Duskwood,75.34,48.74
    >>Parlez à |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Acceptez la quête Colline-aux-Corbeaux
    .accept 164 >>Acceptez la quête Livraison à Sven
    .accept 165 >>Acceptez la quête L'ermite
    .target Elaine Carevin
step
    .goto Duskwood,78.00,48.33
    >>Parlez à |cRXP_FRIENDLY_Herbel Brimborion|r
    .vendor 3133 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto Duskwood,79.78,48.06
    >>Parlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Acceptez la quête Un œil dans les étoiles
    .turnin 174 >> Rendez la quête Un œil dans les étoiles
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto Duskwood,79.78,48.06
    >>Parlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>Parlez à |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Rendez la quête Un œil dans les étoiles
    .accept 177 >> Acceptez la quête Un œil dans les étoiles
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,77.48,44.29
    >>Parlez à |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Prenez le chemin de vol du Bois de la Pénombre
    .target Felicia Mane
step
    #completewith Kzixx
    .goto Duskwood,76.66,23.49,60,0
    .goto Duskwood,81.82,19.76,20 >>Dirigez-vous vers |cRXP_FRIENDLY_Kzixx|r
step
    .goto Duskwood,81.82,19.76
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Parlez à |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto Duskwood,81.82,19.76
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
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Parlez au |cRXP_FRIENDLY_Garde Parker|r
    .accept 244 >>Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << skip
    #label AoE1
    .goto Redridge Mountains,15.73,62.47,60 >>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r et les |cRXP_ENEMY_Braconniers des Carmines|r en AoE
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
    .goto Redridge Mountains,30.74,59.99
    >>Parlez à l' |cRXP_FRIENDLY_Adjoint Feldon|r
    .turnin 244 >>Rendez la quête Des gnolls encombrants
    .accept 246 >>Acceptez la quête L'appréciation du danger
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.59,59.40
    >>Parlez à |cRXP_FRIENDLY_Ariena Plumorage|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
step
    >>Parlez à |cRXP_FRIENDLY_Nathanos Marris|r et au |cRXP_FRIENDLY_Contremaître Oslow|r
    .accept 20 >>Acceptez la quête La menace des Rochenoires
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .accept 125 >>Acceptez la quête Les outils perdus
    .turnin 345 >>Rendez la quête Provisions d'encre
    .accept 347 >>Acceptez la quête Minerai de rethban
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,29.89,47.36
    >>Parlez à |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    >>|cRXP_WARN_Vous en aurez besoin pour plus tard|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Parlez à |cRXP_FRIENDLY_Bailli Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto Redridge Mountains,29.99,44.45
    .accept 91 >>Acceptez la quête La loi de Salomon
    .goto Redridge Mountains,29.72,44.26
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Parlez à |cRXP_FRIENDLY_Baren|r et à l' |cRXP_PICK_Affiche de recherche|r
    .accept 127 >>Acceptez la quête Criée aux poissons
    .goto Redridge Mountains,27.72,47.38
    .accept 180 >>Acceptez la quête On recherche : lieutenant Tripecroc
    .goto Redridge Mountains,26.75,46.42
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto Redridge Mountains,26.92,44.95,0,0
    >>Entrez dans l'auberge
    >>Parlez à |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Acceptez la quête Un repas gratuit
    .target Darcy
step
    .goto Redridge Mountains,26.49,43.95
    >>À l'intérieur de l'auberge
    >>Parlez à |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Acceptez la quête Régime sec
    .turnin 116 >>Rendez la quête Régime sec
    .target Barkeep Daniels
step
    .goto Redridge Mountains,26.47,45.33
    >>À l'intérieur de l'auberge
    >>Parlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r en sautant de la rampe en bas des escaliers
    .turnin 65 >>Rendez la quête La Confrérie défias
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto Redridge Mountains,29.32,53.64
    >>Parlez à |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Acceptez la quête Le collier d'Hilary
    .target Shawn
step
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_Nagez sous l'eau et vérifiez les emplacements où il peut apparaître. Il y a 8 emplacements avec 2 apparitions en même temps|r.
    >>Ouvrez la |cRXP_PICK_Boue luisante|r. Récupérez le |cRXP_LOOT_Collier d'Hilary|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto Redridge Mountains,29.24,53.63
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
    .goto Redridge Mountains,15.73,62.47
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
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Parlez au |cRXP_FRIENDLY_Garde Parker|r
    .turnin 129 >>Rendez la quête Un repas gratuit
    .accept 130 >>Acceptez la quête Une visite chez l'herboriste
    .target Guard Parker
step
    #label Gnolls3
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01,60,0
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01
    >>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r, les |cRXP_ENEMY_Vandales des Carmines|r, et les |cRXP_ENEMY_Braconniers des Carmines|r en AoE
    >>|cRXP_WARN_N'oubliez pas de rester dans la zone morte des|r |cRXP_ENEMY_Braconniers des Carmines|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto Redridge Mountains,30.74,59.99
    >>Parlez à l' |cRXP_FRIENDLY_Adjoint Feldon|r
    .turnin 246 >>Rendez la quête L'appréciation du danger
    .target Deputy Feldon
step
    .goto Redridge Mountains,41.52,54.68,-1
    >>Allez sous l'eau
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    >>|cRXP_WARN_Ceci a un temps d'incantation de 5 secondes|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto Redridge Mountains,40.30,45.98,60,0
    >>Tuez les |cRXP_ENEMY_Dévoreurs murlocs|r et les |cRXP_ENEMY_Eclaireurs murlocs|r. Dépouillez-les pour obtenir quelques |cRXP_LOOT_Poisson-lune|r et |cRXP_LOOT_Écailles de murlocs|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto Redridge Mountains,32.14,48.63
    >>Parlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 125 >>Rendez la quête Les outils perdus
    .accept 89 >>Acceptez la quête Le pont sur le lac
    .target Foreman Oslow
step
    .goto Redridge Mountains,30.83,46.49
    >>Parlez à |cRXP_FRIENDLY_Dorin Lame-chantante|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto Redridge Mountains,29.24,45.40,10,0
    .goto Redridge Mountains,28.89,44.87,8 >>Entrez à l'intérieur de l'Hôtel de ville
step
    .goto Redridge Mountains,37.16,45.20,60,0
    .goto Redridge Mountains,38.36,41.34,60,0
    .goto Redridge Mountains,38.89,31.72,60,0
    .goto Redridge Mountains,43.25,34.03,60,0
    .goto Redridge Mountains,47.37,34.77,60,0
    .goto Redridge Mountains,55.35,45.02,60,0
    .goto Redridge Mountains,57.02,51.01,60,0
    .goto Redridge Mountains,56.24,53.93,60,0
    .goto Redridge Mountains,58.38,53.56,60,0
    .goto Redridge Mountains,58.47,44.61,60,0
    .goto Redridge Mountains,59.11,43.97,60,0
    .goto Redridge Mountains,59.74,42.01,60,0
    .goto Redridge Mountains,62.34,41.76,60,0
    .goto Redridge Mountains,62.56,45.36,60,0
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
	.goto Redridge Mountains,37.16,45.20,30,0
	.goto Redridge Mountains,38.36,41.34,30,0
	.goto Redridge Mountains,40.09,40.64,30,0
	.goto Redridge Mountains,42.89,39.26,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
	.goto Redridge Mountains,59.79,42.05,30,0
	.goto Redridge Mountains,62.58,41.46,30,0
	.goto Redridge Mountains,62.57,45.48,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto Redridge Mountains,58.06,52.01,40,0
    .goto Redridge Mountains,57.08,51.03,40,0
    .goto Redridge Mountains,56.12,53.55,40,0
    .goto Redridge Mountains,58.06,52.01
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto Redridge Mountains,43.25,34.03,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,49.97,33.60,30,0
	.goto Redridge Mountains,51.90,39.75,30,0
	.goto Redridge Mountains,54.81,40.66,30,0
	.goto Redridge Mountains,54.70,44.93,30,0
	.goto Redridge Mountains,57.63,46.48,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto Redridge Mountains,52.26,36.56,30,0
	.goto Redridge Mountains,54.08,38.28,30,0
	.goto Redridge Mountains,54.98,40.31,30,0
	.goto Redridge Mountains,56.79,41.36,30,0
	.goto Redridge Mountains,57.26,47.60,30,0
	.goto Redridge Mountains,54.76,45.58,30,0
	.goto Redridge Mountains,52.67,42.73,30,0
	.goto Redridge Mountains,50.50,41.55,30,0
	.goto Redridge Mountains,52.26,36.56,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto Redridge Mountains,38.89,31.72
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
    .goto Redridge Mountains,36.64,37.01,60,0
    .goto Redridge Mountains,32.21,40.09,60,0
    >>Tuez les |cRXP_ENEMY_Mystiques des Carmines|r et les |cRXP_ENEMY_Brutes des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets en fer|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,22.68,43.83
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
    .goto Redridge Mountains,21.86,46.33
    >>Parlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Rendez la quête Une visite chez l'herboriste
    .accept 131 >>Acceptez la quête Bouquet de jonquilles
    .accept 34 >>Acceptez la quête Un invité indésirable
    .target Martie Jainrose
step
    #completewith next
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto Redridge Mountains,15.66,49.31
    >>Tuez |cRXP_ENEMY_Fouailleventre|r
    >>|cRXP_WARN_Attirez-la vers la clôture au nord de |cRXP_FRIENDLY_Lamar Veisilli|r. Sautez d'un côté et de l'autre pour rester en zone sûre et ne pas subir de dégâts|r
    >>Soyez prudent car |cRXP_ENEMY_Fouailleventre|r lance |T132337:0|t[Charge] et |T136025:0|t[Secousse]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto Redridge Mountains,21.86,46.33
    >>Parlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Rendez la quête Un invité indésirable
    .target Martie Jainrose
step
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r en AoE. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto Redridge Mountains,21.35,36.34,60,0
    >>Tuez les |cRXP_ENEMY_Mystiques des Carmines|r et les |cRXP_ENEMY_Brutes des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets en fer|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,19.50,31.91,60,0
    .goto Redridge Mountains,20.58,28.29,40 >>Dirigez-vous vers les Cavernes de Rethban
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
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
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+14365 >> Montez votre expérience jusqu'à 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+15715 >> Montez votre expérience jusqu'à 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto Redridge Mountains,18.79,13.84,-1
    .goto Redridge Mountains,22.04,17.14,-1
    .goto Redridge Mountains,18.40,24.13,-1
    .goto Redridge Mountains,21.29,24.06,-1
    .goto Redridge Mountains,16.58,20.97,-1
    .goto Redridge Mountains,33.82,48.07,30 >>Effectuez un Logout skip pour sortie de la grotte (dans le côté EST) et retourner à Comté-du-Lac
step
    #completewith next
    .subzone 69 >> Retournez à Comté-du-Lac
step
    >>Parlez à |cRXP_FRIENDLY_Nathanos Marris|r et au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 20 >>Rendez la quête La menace des Rochenoires
    .accept 19 >>Acceptez la quête Tharil'zun
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .turnin 89,1 >>Rendez la quête Le pont sur le lac
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,30.94,47.24
    >>Parlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    .accept 118 >>Acceptez la quête Le prix des fers
    .target Verner Osgood
step
    .goto Redridge Mountains,27.72,47.38
    >>Parlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .turnin 127 >> Rendez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
    .turnin 150 >> Rendez la quête Les braconniers murlocs
    .goto Redridge Mountains,27.72,47.38
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto Redridge Mountains,27.08,45.54,0,0
    .vendor >> Vendez votre surplus. Vous pouvez vendre la |T134708:0|t[Pioche de mineur] maintenant si vous le souhaitez
    .target Kimberly Hiett
step
    .goto Redridge Mountains,26.92,44.95
    >>Entrez dans l'auberge
    >>Parlez à |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Rendez la quête Bouquet de jonquilles
    .target Darcy
step
    #completewith next
    .goto Redridge Mountains,26.52,46.38,12,0
    .goto Redridge Mountains,22.86,44.57,12,0
    >>Allez vers la |cRXP_FRIENDLY_Chef Breanna|r
step
    .goto Redridge Mountains,22.68,43.83
    >>Entrez à l'intérieur
    >>Parlez à la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .target Chef Breanna
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step
    .goto Elwynn Forest,41.71,65.55
    >>Parlez à |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Rendez la quête Le prix des fers
    .accept 119 >>Acceptez la quête Le retour chez Verner
    .target Smith Argus
step
    #completewith next
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Allez vers le |cRXP_FRIENDLY_Frère Paxton|r
step
    .goto Elwynn Forest,49.61,40.41
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
    .goto Stormwind City,38.23,81.86
    >>Parlez à |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Apprenez Blizzard
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Sortez de la Tour des mages
    .goto Stormwind City,32.16,79.84,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Charys Yserian|r
step
    #completewith BankDeposit
    +|cRXP_WARN_Ne descendez PAS à moins de 19 pièces d'or et, 43 pièces d'argent et 30 pièces de cuivre|r
    .xp >22,1
step
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures] |cRXP_BUY_et des|r |T134831:0|t[Potions de soins] |cRXP_BUY_chez lui (si elles sont disponibles)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto Stormwind City,32.16,79.84
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Charys Yserian|r
    .vendor 1307 >>|cRXP_BUY_Achetez des|r |T134851:0|t[Potions de mana inférieures]|cRXP_BUY_,|r des |T134831:0|t[Potions de soins]|cRXP_BUY_, et une|r |T132515:0|t[Ceinture en étoffe] |cRXP_BUY_au marchand (si elles sont disponibles et si vous en avez besoin)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Dirigez-vous vers |cRXP_FRIENDLY_Adair Gilroy|r
step
    #label AdairX
    .goto Stormwind City,41.57,65.46
    >>Entrez dans le bâtiment
    >>Parlez à |cRXP_FRIENDLY_Adair Gilroy|r
    .vendor 1316 >> |cRXP_BUY_Achetez-lui des|r |T134943:0|t[Parchemins] ne donnant pas d'Intelligence |cRXP_BUY_(s'ils sont disponibles)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Courez le long du bord du mur au lieu de faire le tour
step
    .goto Stormwind City,45.70,38.42
    >>Parlez au |cRXP_FRIENDLY_Frère Kristoff|r
    .turnin 346 >> Rendez la quête Retourner voir Frère Kristoff
    .target Brother Kristoff
step
    .goto Stormwind City,55.25,7.07
    >>Parlez à |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >> Entrez dans le Tram des profondeurs
step
    #completewith next
    +|cRXP_WARN_Montez dans le Tram des profondeurs tout en lançant en boucle|r |T132816:0|t[Invocation d'eau Rang 3]
step
    .zone Ironforge >> Prenez le Tram des profondeurs pour aller à Forgefer
step
    .goto Ironforge,67.83,42.47
    >>Parlez à |cRXP_FRIENDLY_Tournepignon|r
    .vendor 5175>>|cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto Ironforge,33.44,63.56,30 >>Entrez dans la banque de Forgefer
step
    .goto Ironforge,35.93,60.13
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
    .goto Ironforge,35.93,60.13
    .bankwithdraw 4654 >> Récupérez les objets suivants de votre banque:
    >>|T134431:0|t[Mystérieux fossile]
    .target Bailey Stonemantle
step
    .goto Ironforge,25.50,7.04
    >>Parlez à |cRXP_FRIENDLY_Milituus Cyclonoeil|r
    .train 3562 >> Apprenez [Téléportation : Ironforge]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===ATTENTION===|r
    +|cRXP_WARN_Changez votre spécialisation pour la spécialisation Givre AoE|r
step
    .goto Ironforge,27.18,8.60
    >>Parlez à |cRXP_FRIENDLY_Dink|r
    .train 10 >> Apprenez Blizzard
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Commencez à lancer en boucle|r |T132816:0|t[Invocation d'eau Rang 3] |cRXP_WARN_pour invoquer autant d'eau que possible avant de prendre le vol|r
step
    #completewith next
    #label FlyMene
    .goto Ironforge,55.50,47.74
    >>Parlez à |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Volez au Port de Menethil
    .target Gryth Thurden
step
    .zone Wetlands >> Voyagez aux Paluns
]])
