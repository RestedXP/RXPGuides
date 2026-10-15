if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Orcs et les Trolls. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Acceptez la quête Votre place en ce monde
    .target Kaltunk
step << Warrior/Shaman/Warlock/Mage/Priest
    #completewith next
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 35 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warlock
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Sangliers tachetés|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 cuivre à vendre au marchand (en comptant votre équipement)|r << Maget
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Sangliers tachetés|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 50 cuivre à vendre au marchand (en comptant votre équipement)|r << Priest
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Shaman
    .goto 1411/1,-4281.07,-720.15,30,0 << Warlock/Mage/Priest
    .goto 1411/1,-4299.05,-494.9,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto 1411/1,-4214.45,-623.92.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Acceptez la quête Les vils quasits
    .target Ruzan
step << Warrior/Shaman
    .goto 1411/1,-4214.45,-565.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.01
step
    .goto 1411/1,-4198.05,-605.59,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Rendez la quête Votre place en ce monde
    .accept 788 >>Acceptez la quête La dent tranchante
    --.accept 97279 >>Accept Wayward Weapons
    .target Gornek
    --97279 not worth doing, bad xp loot quest, no followup
step << Warrior/Shaman
    .goto 1411/1,-4198.05,-605.59,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Apprenez [Cri de guerre] << Warrior
    .train 8017 >>Apprenez [Arme Croque-roc] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
step << Warlock
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Apprenez [Immolation]
    .target Nartok
step << Hunter/Mage/Priest
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Hunter
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,10,6394,1 << !Hunter --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << skip
    #completewith Boars
    >>Récupérez les |cRXP_PICK_Armes d'entraînement abandonnées|r au sol
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith next
    .goto 1411/1,-4266.26,-563.29,25,0
    >>Tuez des |cRXP_ENEMY_Mottled Boars|r sur la route pour le Convent de la Lame ardente
    >>Essayez de passer au niveau 2 avant d'y arriver
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto 1411/1,-4357.74,-180.47,100 >> Voyagez vers le Convent de la Lame ardente
    .isOnQuest 1485
step << Warlock
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r. Dépouillez-les pour leur |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto 1411/1,-4266.26,-563.29,35,0 << !Warlock
    .goto 1411/1,-4283.18,-512.53,45,0 << !Warlock
    >>Tuez les |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Acceptez la quête Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto 1411/1,-4109.22,-546.370
    >>Tuez |cRXP_ENEMY_Sarkoth|r. Dépouillez-le pour la |cRXP_LOOT_Pince abîmée de Sarkoth|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Rendez la quête Sarkoth
    .accept 804 >>Acceptez la quête Sarkoth
    .target Hana'zua
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Tuez les |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #loop
	.goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+685 >> Montez votre expérience jusqu'à 685+/1400xp
    .mob Mottled Boar
step
    #optional
    #label Boars
step << skip
    .goto 1411/1,-4260.000,-404.200
    >>Récupérez les |cRXP_PICK_Armes d'entraînement abandonnées|r au sol
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    #label Duokna2
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto 1411/1,-4214.400,-624.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Rendez la quête Les vils quasits
    .accept 1499 >>Acceptez la quête Les vils quasits
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>Lancez [Invocation d'un diablotin]
step << Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Rendez la quête Les vils quasits
    .accept 794 >>Acceptez la quête Le médaillon de la Lame-Ardente
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto 1411/1,-4198.05,-605.59,12,0 << Warlock
    .goto 1411/1,-4198.58,-602.41,12,0 << !Warlock
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Rendez la quête La dent tranchante << Shaman
    .turnin 788 >>Rendez la quête La dent tranchante << !Shaman
    .accept 789 >>Acceptez la quête L'aiguillon du scorpide
    .accept 2383 >>Acceptez la quête Parchemin simple << Orc Warrior
    .accept 3065 >>Acceptez la quête Tablette simple << Troll Warrior
    .accept 3082 >>Acceptez la quête Tablette gravée << Troll Hunter
    .accept 3083 >>Acceptez la quête Tablette codée << Troll Rogue
    .accept 3084 >>Acceptez la quête Tablette runique << Troll Shaman
    .accept 3085 >>Acceptez la quête Tablette bénie << Troll Priest
    .accept 3086 >>Acceptez la quête Tablette glyphée << Troll Mage
    .accept 3087 >>Acceptez la quête Parchemin gravé << Orc Hunter
    .accept 3088 >>Acceptez la quête Parchemin codé << Orc Rogue
    .accept 3089 >>Acceptez la quête Parchemin runique << Orc Shaman
    .accept 3090 >>Acceptez la quête Parchemin contaminé << Orc Warlock
    .turnin 804,1 >>Rendez la quête Sarkoth << Shaman
    .turnin 804 >>Rendez la quête Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Voyagez vers |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Rendez la quête Tablette codée << Troll Rogue
    .turnin 3088 >>Rendez la quête Parchemin codé << Orc Rogue
    .train 53 >> Apprenez [Attaque sournoise]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Rendez la quête Tablette codée << Troll Rogue
    .turnin 3088 >>Rendez la quête Parchemin codé << Orc Rogue
    .target Rwag
step << skip
    .goto 1411/1,-4102.400,-588.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kzan Trancheronce|r au fond de la grotte
    .turnin 97279 >>Rendez la quête Armes égarées
    .target Kzan Thornslash
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kzan Trancheronce|r
    .vendor >> Vendez votre camelote. Vendez votre arme si cela vous permet d'acheter un |T135139:0|t[Bâton court] (97 pièces de cuivre)
    .target Kzan Thornslash
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kzan Trancheronce|r
    >>|cRXP_BUY_Achetez-lui un|r |T135139:0|t[Bâton court] |cRXP_BUY_|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0097
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step << Rogue/Warrior
    .goto 1411/1,-4106.000,-593.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norzsh|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .train 2575 >> Apprenez [Minage]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Norzsh
step << Warlock
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Rendez la quête Parchemin contaminé
    .train 172 >> Apprenez [Corruption]
    .target Nartok
step
    #label Galgar
    .goto 1411/1,-4221.85,-561.52,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Acceptez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
step << !Rogue !Shaman
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Rendez la quête Tablette glyphée << Troll
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acceptez la quête Les vils quasits
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acceptez la quête Les péons paresseux
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto 1411/1,-4340.82,-628.50,20,0
    .goto 1411/1,-4375.71,-507.590,45,0
    .goto 1411/1,-4467.19,-506.53,45,0
    >>Utilisez la [Masse de contremaître] sur les |cRXP_FRIENDLY_Lazy Peons qui dorment|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Tuez les |cRXP_ENEMY_Scorpid Workers|r. Dépouillez-les pour leur |cRXP_LOOT_Queue de scorpide ouvrier|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto 1411/1,-4177.96,-248.5,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto 1411/1,-4146.24,-583.03,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto 1411/1,-4177.96,-315.13,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4442.34,-347.2,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Tuez les |cRXP_ENEMY_Scorpid Workers|r. Dépouillez-les pour leur |cRXP_LOOT_Queue de scorpide ouvrier|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto 1411/1,-4340.82,-628.50,0
	.goto 1411/1,-4340.82,-628.50,25,0
	.goto 1411/1,-4375.71,-507.590,25,0
	.goto 1411/1,-4467.19,-506.53,25,0
	.goto 1411/1,-4433.88,-329.93,25,0
	.goto 1411/1,-4452.38,-232.640,25,0
	.goto 1411/1,-4283.71,-228.76,25,0
	.goto 1411/1,-4220.26,-209.73,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>Utilisez la [Masse de contremaître] sur les |cRXP_FRIENDLY_Lazy Peons qui dorment|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 4 >> Montez jusqu'au niveau 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Rendez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto 1411/1,-4198.58,-602.41,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Rendez la quête L'aiguillon du scorpide << Shaman
    .turnin 789 >>Rendez la quête L'aiguillon du scorpide << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto 1411/1,-4204.4,-629.91
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Mai'ah
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.01
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez vos sorts de classe
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.021
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Rendez la quête Les vils quasits
    .accept 794 >>Acceptez la quête Le médaillon de la Lame-Ardente
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .target Frang
    .money <0.01
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Rendez la quête Les péons paresseux
    .accept 6394 >>Acceptez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >> Montez votre expérience jusqu'à 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto 1411/1,-4324.43,-480.10,0
	.goto 1411/1,-4259.92,-411.01,25,0
	.goto 1411/1,-4279.48,-402.55,25,0
	.goto 1411/1,-4333.94,-360.95,25,0
	.goto 1411/1,-4335.53,-294.68,25,0
	.goto 1411/1,-4321.25,-243.220,25,0
	.goto 1411/1,-4366.20,-253.44,25,0
	.goto 1411/1,-4391.05,-328.52,25,0
	.goto 1411/1,-4440.75,-319.36,25,0
	.goto 1411/1,-4462.43,-405.370,25,0
	.goto 1411/1,-4398.98,-411.71,25,0
	.goto 1411/1,-4324.43,-480.10,25,0
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 4+1720 >> Montez votre expérience jusqu'à 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 5 >> Montez jusqu'au niveau 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto 1411/1,-4360.38,-175.18,30 >>Entrez dans la grotte
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto 1411/1,-4361.44,-144.16,15,0
    .goto 1411/1,-4311.74,-113.14,15,0
    .goto 1411/1,-4274.19,-87.76,10 >>Voyagez vers |cRXP_LOOT_Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto 1411/1,-4274.19,-87.76
    >>Ramassez la |cRXP_LOOT_Thazz'ril's Pick|r contre le mur
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto 1411/1,-4220.26,-59.56
    >>Tuez |cRXP_ENEMY_Yarrog Baneshadow|r. Dépouillez-le pour son |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto 1411/1,-4220.26,-59.56,0
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1680 >> Montez votre expérience jusqu'à 1680+/2800xp << !Shaman
    .xp 5+690 >> Monter votre expérience jusqu'à 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1300 >> Montez votre expérience jusqu'à 1300+/2800xp << !Shaman
    .xp 5+310 >> Monter votre expérience jusqu'à 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto 1411/1,-4326.01,-41.23
    .goto 1411/1,-4793.96,233.36,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage au bord du rocher jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLIQUEZ ICI pour un exemple vidéo
step
    #softcore
    #completewith next
    .goto 1411/1,-4326.01,-41.23
    .deathskip >> |cRXP_WARN_Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r près de la flèche|r
    .target Gardien des âmes
step
    #softcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target Gar'thok
step
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Cuisinier Torka|r
    .accept 96825 >>Acceptez la quête Ces fruits pourraient se défendre
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Voyagez vers la tour
step
    #softcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Montez la tour vers Furl
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Acceptez la quête Pour l'honneur
    .target Turroc
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à la Vallée des Épreuves
    .use 6948
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Rendez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Rendez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .isOnQuest 794
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Apprenez [Vague de soins]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .target +Canaga Earthcaller
    .goto 1411/1,-4204.4,-629.91
    .xp <6,1
step << Shaman
    .goto 1411/1,-4204.4,-629.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .target Canaga Earthcaller
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Rendez la quête Le médaillon de la Lame-Ardente
    .accept 805 >>Acceptez la quête Faire un rapport au Village de Sen'jin
    .target Zureetha Fargaze
step
    .goto 1411/1,-4223.800,-631.000
    >>Cliquez sur le |cRXP_PICK_Journal perdu|r sur le tonneau
    .accept 96652 >>Acceptez la quête L'aventurier
    .isQuestTurnedIn 794
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acceptez la quête Au service de la spiritualité
	.train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Ken'jai
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Mai'ah
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Apprenez [Marque du chasseur]
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Apprenez [Parade]
    .train 6343 >>Apprenez [Coup de tonnerre]
    .target Frang
    .money <0.02
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Apprenez [Parade]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Voyagez vers |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .train 1776 >> Apprenez [Suriner]
    .target Rwag
    .money <0.02
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Hraug|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .target Nartok
    .money <0.02
step << Warlock
    #optional
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto 1411/1,-4255.16,-645.07,25,0
    .goto 1411/1,-4245.64,-691.95,25,0
    .goto 1411/1,-4146.77,-787.12,12,0
    .goto 1411/1,-4120.86,-813.21,8,0
    .goto 1411/1,-4220.79,-841.76,10,0
    .goto 1411/1,-4266.26,-853.39,15,0
    .goto 1411/1,-4295.87,-883.36,25 >>Voyagez vers le |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>Utilisez le [Sapta de terre]
    .use 6635
step << Shaman
    #label CallOE1
    .goto 1411/1,-4290.59,-878.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Rendez la quête L'appel de la terre
    .accept 1518 >>Acceptez la quête L'appel de la terre
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Canaga|r
    .goto 1411/1,-4204.4,-629.91
    .turnin 1518 >>Rendez la quête L'appel de la terre
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Apprenez [Vague de soins]
    .target Shikrik
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto 1411/1,-4600.96,-603.82,25 >>Quittez la Vallée des Épreuves
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto 1411/1,-4715.17,-599.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
step
    #completewith next
    .subzone 367 >>Voyagez vers le Village de Sen'jin
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Il patrouille non loin|r
    .accept 786 >>Acceptez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    .goto 1411/1,-4885.200,-852.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xar'Ti|r
    .accept 97223 >>Acceptez la quête La matriarche griffesang
    .target Xar'Ti
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acceptez la quête Proie nécessaire
    .accept 96821 >>Acceptez la quête Toutes pattes dehors
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Acceptez la quête Un esprit parfaitement éduqué
    .accept 97225 >>Acceptez la quête Idoles de Loa oubliées
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.270
    .turnin 805 >>Rendez la quête Faire un rapport au Village de Sen'jin
    .accept 808 >>Acceptez la quête Crâne de Minshina
    .accept 826 >>Acceptez la quête Zalazane
    .accept 823 >>Acceptez la quête Un rapport à Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    #completewith next
    .goto 1411/1,-4931.96,-815.32,8,0
    .goto 1411/1,-4939.89,-793.12,8 >> Entrez dans la grande hutte
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pa'zula|r 
    >>|cRXP_WARN_Cela débloquera une quête. Passez cette étape si vous avez déjà 2 métiers|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    .target Pa'zula
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pa'zula|r 
    .accept 96873 >>Acceptez la quête Une douleur dans la nuque
    .target Pa'zula
    .skill enchanting,<1,1
step << Rogue
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez-lui une |r |T132414:0|t[Hache de jet lestée] |cRXP_BUY_|r
    .collect 3131,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135145:0|t[Bâton de marche] (4 argent 79 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Trayexir|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une |T132401:0|t[Hache large] (4 argent 60 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r |T132401:0|t[Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une |T135421:0|t[Tomahawk] (5 argent 13 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135499:0|t[Arc courbe en bois de corne] (2 argent 71 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Trayexir|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto 1411/1,-4939.36,-838.941
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Un'Thuwa
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto 1411/1,-4722.57,-1117.42,40,0
    >>Descendez sur la plage. Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r. Vous n'avez pas à terminer cette étape maintenant
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto 1411/1,-4722.57,-1117.42,75 >> Allez au bout de la plage
    .isOnQuest 818
step
    #completewith Bonfire
    >>Tuez les |cRXP_ENEMY_Manoeuvres kolkars|r et les |cRXP_ENEMY_Estafettes kolkars|r. Dépouillez-les pour leur |cRXP_LOOT_Morceaux de canevas|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    .goto 1411/1,-4653.84,-983.47,30 >>Entrez dans la base des Kolkar
    .isOnQuest 786
step << Priest
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Commencez à récolter de 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en complétant des quêtes à travers Durotar. Ils sera utilisé pour fabriquer votre baguette plus tard|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà acheté une baguette ou si vous pouvez en obtenir une à moindre coût à l'Hôtel des ventes.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Commencez à récolter de 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en complétant des quêtes à travers Durotar. Ils sera utilisé pour fabriquer votre baguette plus tard|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +Faites attention si |cRXP_ENEMY_Kolkanis|r est présent, c'est un mob rare de niveau 9. Vous allez peut-être utiliser une [Potion de soins mineure] si vous en avez
    .unitscan Warlord Kolkanis
step
    .goto 1411/1,-4596.20,-1057.14
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol à l'intérieur de la tente
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto 1411/1,-4482.52,-917.90
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto 1411/1,-4406.91,-974.30
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #softcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Pal'juh|r n'est pas présent, n'hésitez pas à passer cette étape et à revenir à Sen'jin au Feu de joie|r
    .accept 99123,1 >>Acceptez la quête Perdue dans les ombres
    .target Pal'juh
step
    #hardcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Pal'juh|r n'est pas présent, n'hésitez pas à passer cette étape|r
    .accept 99123,1 >>Acceptez la quête Perdue dans les ombres
    .target Pal'juh
step
    #softcore
    .goto 1411/1,-4681.300,-986.800
    >>Escortez |cRXP_FRIENDLY_Pal'juh|r hors de la combe des Kolkar
    .complete 99123,1 --
    .target Pal'juh
    .isOnQuest 99123
step << skip
    #softcore
    .goto 1411/1,-4417.49,-985.23,-1
    .goto 1411/1,-5002.81,-774.08,-1
    .deathskip >> Mourez au bûcher et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 786
step << skip
    #hardcore
    #completewith next
    .goto 1411/1,-4656.48,-981.35,30 >>Quittez la base Kolkar
    .isQuestComplete 786
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Il patrouille non loin|r
    .turnin 786,1 >>Rendez la quête Déjouer l'agression des Kolkar << Shaman
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step
    .goto 1411/1,-4920.900,-814.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Vornal|r
    .turnin 99123 >>Rendez la quête Perdue dans les ombres
    .target Master Vornal
    .isQuestComplete 99123
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135145:0|t[Bâton de marche] (4 argent 79 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Trayexir|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une |T132401:0|t[Hache large] (4 argent 60 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une |T135421:0|t[Tomahawk] (5 argent 13 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135499:0|t[Arc courbe en bois de corne] (2 argent 71 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Trayexir|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto 1411/1,-4920.86,-813.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 159,20,784,1
    .target K'waii
step << !Warlock !Mage !Priest
    .goto 1411/1,-4903.41,-786.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Achetez-lui des|r |T133974:0|t[Cuissots] |cRXP_BUY_si vous pouvez vous le permettre|r << Warrior/Rogue
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Hai'zan
step
    #softcore
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Il patrouille non loin|r
    .turnin 786,1 >>Rendez la quête Déjouer l'agression des Kolkar << Shaman
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar << !Shaman
    .target Lar Prowltusk
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Rôdeuses noirecrêtes|r et les |cRXP_ENEMY_Rampantes noirecrêtes|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step
    .goto 1411/1,-4565.700,-192.300
    >>Tuez |cRXP_ENEMY_Fléau-d'Ukor|r (élite). Dépouillez-le pour le |T133628:0|t[|cRXP_LOOT_Sac perdu d’Ukor|r]
    >>|cRXP_WARN_Cette quête est difficile ! Trouvez un groupe si possible. Passez cette étape si vous ne pouvez pas le tuer|r
    .collect 275722,1,96876 --Ukor's Lost Pack (x1)
    .accept 96876 >>Acceptez la quête Le sac perdu d’Ukor
    .mob Ukorsbane
step
    .goto 1411/1,-4710.400,-209.400
    >>Tuez les |cRXP_ENEMY_Rôdeuses noirecrêtes|r et les |cRXP_ENEMY_Rampantes noirecrêtes|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step --camp quest
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Rendez la quête L'aventurier
    .accept 96604 >>Acceptez la quête Les grands espaces sauvages
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #hardcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Acceptez la quête Les grands espaces sauvages
    .target Brakk
step
    #hardcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Tapez /assis près du feu de camp et attendez une minute jusqu'à ce que vous obteniez le buff "Avantages du camp"|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Asseyez-vous 
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Rendez la quête Les grands espaces sauvages
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Acceptez la quête Introduction au camping : la cuisine
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #hardcore
    #label Betrayers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .accept 806 >>Acceptez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r
    .train 2550 >>Apprenez la Cuisine
    .turnin 96655 >>Rendez la quête Introduction au camping : la cuisine
    .target Cook Torka
step
    #hardcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Voyagez vers la tour
step
    #hardcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Montez la tour vers Furl
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #completewith AgedEnvelope
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step --south/west of keep
    .goto 1411/1,-4992.700,-234.400
    >>Ramassez l' |cRXP_PICK_Arc d’écumeur|r au sol
    .complete 96822,1 --|1/1 Raider's Bow
step --center in keep
    .goto 1411/1,-4994.900,-182.300
    >>Ramassez la |cRXP_PICK_Hache d’armes d’écumeur|r au sol
    .complete 96822,2 --|1/1 Raider's Battleaxe
step
    #sticky
    #completewith AgedEnvelope
    +Faites attention si |cRXP_ENEMY_Watch Commander Zalaphil|r est présent, c'est un rare de niveau 9. Vous allez peut-être devoir utiliser une [Potions de soins mineure] si vous en avez une
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >> Allez au deuxième étage du donjon
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Tuez |cRXP_ENEMY_Lieutenant Benedict|r. Dépouillez-le pour sa |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto 1411/1,-5124.42,-229.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>Montez les escaliers dans le donjon
    >>Ouvrez |cRXP_PICK_Benedict's Chest|r. Ramassez la [|cRXP_LOOT_Aged Envelope|r]
    >>Utilisez l'[|cRXP_LOOT_Aged Envelope|r] pour commencer la quête
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acceptez la quête Les ordres de l'amiral
    .use 4881
step  --northern tower
    #label AgedEnvelope
    .goto 1411/1,-4951.500,-59.600
    >>Ramassez le |cRXP_PICK_Bouclier d’écumeur|r au sol
    .complete 96822,3 --|1/1 Raider's Shield
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2520 >> Montez votre expérience jusqu'à 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2200 >> Montez votre expérience jusqu'à 2200+/4500xp
    .isOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2070 >> Montez votre expérience jusqu'à 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+1750 >> Montez votre expérience jusqu'à 1750+/4500xp
    .isOnQuest 823
step << skip
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >> Mourez à la tour nord à l'extérieur du Donjon de Tiragarde et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step --camp quest
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Rendez la quête L'aventurier
    .accept 96604 >>Acceptez la quête Les grands espaces sauvages
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #softcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Acceptez la quête Les grands espaces sauvages
    .target Brakk
step
    #softcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Tapez /assis près du feu de camp et attendez une minute jusqu'à ce que vous obteniez le buff "Avantages du camp"|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Asseyez-vous 
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Rendez la quête Les grands espaces sauvages
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Acceptez la quête Introduction au camping : la cuisine
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .accept 806 >>Acceptez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .turnin 96821 >>Rendez la quête Toutes pattes dehors
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    #label RazorTurnins1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .target +Gar'Thok
step
    #softcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r
    .train 2550 >>Apprenez la Cuisine
    .turnin 96655 >>Rendez la quête Introduction au camping : la cuisine
    .target Cook Torka
step
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Voyagez vers la tour
step
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Montez la tour vers Furl
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Rendez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135145:0|t[Bâton de marche] (4 argent 79 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Uhgar|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Uhgar|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour une |T132401:0|t[Hache large] (4 argent 60 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Uhgar|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour une |T135421:0|t[Tomahawk] (5 argent 13 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Uhgar|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Arc courbe en bois de corne] (2s 83c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Ghrawt|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche grossières] |cRXP_BUY_à Ghrawt|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .home >> Liez votre Pierre de Foyer à Tranchecolline
    .bindlocation 362
    .target Innkeeper Grosk
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    >>Gardez 4 pièces d'argent pour vos sorts de classe ! << Rogue/Warrior/Shaman/Warlock
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Priest
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step
    .goto 1411/1,-4815.400,306.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turroc|r
    .turnin 96822 >>Rendez la quête Pour l'honneur
    .target Turroc
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Apprenez vos sorts de classe
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .train 5116 >> Apprenez vos sorts de classe
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Apprenez vos sorts de classe
    .target Kaplak
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Rendez la quête Au service de la spiritualité
    .accept 5648 >> Acceptez la quête Vêtements de la spiritualité
    .train 2052 >> Apprenez [Soins inférieurs Rank 2]
    .target Tai'jin
step << Priest
    .goto 1411/1,-4770.16,170.62
    >>Lancez [Soins inférieurs] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Rendez la quête Vêtements de la spiritualité
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto 1411/1,-4826.74,330.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step
    .goto 1411/1,-4838.37,321.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Achetez une|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto 1411/1,-5238.63,-146.63,0
    .goto 1411/1,-5238.63,-146.63,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    .goto 1411/1,-5263.49,-301.03,20,0
    .goto 1411/1,-5245.51,-330.64,20,0
    .goto 1411/1,-5267.72,-326.41,20,0
    .goto 1411/1,-5306.31,-239.690,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    >>Ramassez les |cRXP_PICK_Gnomish Toolboxes|r autour et à l'intérieur des bateaux
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith MartEgg
    .goto 1411/1,-5510.41,-634.14,100 >> Nagez vers l'Île
step
    #completewith TigerFur
    >>Ramassez les |cRXP_PICK_Taillasher Eggs|r sur le sol
    >>Ils sont gardés en général par un |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #optional
    #completewith MainIsland
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step --center of first small island
    #label MartEgg
    .goto 1411/1,-5599.500,-716.700
    >>Tuez la |cRXP_ENEMY_Matriarche griffesang|r. Dépouillez-la pour les |cRXP_LOOT_Oeufs de la Matriarche griffesang|r
    .complete 97223,1 --|1/1 Bloodtalon Matriarch Eggs
    .mob Bloodtalon Matriarch
step
    #label MainIsland
    .goto 1411/1,-5501.95,-1167.12,150 >>Nagez vers l'île principale
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Tuez les |cRXP_ENEMY_Trolls maléficiés|r et les |cRXP_ENEMY_Trolls vaudous|r. Dépouillez-les pour les |cRXP_LOOT_Pendentifs maléficiés|r
    >>|cRXP_WARN_Utilisez|r |T135952:0|t[Désenchanter] |cRXP_WARN_sur les|r |cRXP_LOOT_Pendentifs maléficiés|r |cRXP_WARN_pour obtenir des|r |T1500915:0|t[|cRXP_LOOT_Résidus lumineux|r]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #completewith ZalazaneKill
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #completewith VooHexTrolls
    >>Ramassez les |cRXP_PICK_Idoles de Loa|r au sol
    >>|cRXP_WARN_Ils se trouvent surtout près des murs de pierre de la zone|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #optional
    #completewith next
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto 1411/1,-5526.27,-1286.62
    >>Ramassez l'un des |cRXP_LOOT_Skulls|r sur le sol
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto 1411/1,-5526.27,-1286.62
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith VooHexTrolls
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Tuez les |cRXP_ENEMY_Trolls maléficiés|r et les |cRXP_ENEMY_Trolls vaudous|r. Dépouillez-les pour les |cRXP_LOOT_Pendentifs maléficiés|r
    >>|cRXP_WARN_Utilisez|r |T135952:0|t[Désenchanter] |cRXP_WARN_sur les|r |cRXP_LOOT_Pendentifs maléficiés|r |cRXP_WARN_pour obtenir des|r |T1500915:0|t[|cRXP_LOOT_Résidus lumineux|r]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #label VooHexTrolls
    #loop
    .goto 1411/1,-5393.900,-1215.300,0
    .goto 1411/1,-5393.900,-1215.300,30,0
    .goto 1411/1,-5373.300,-1153.000,30,0
    .goto 1411/1,-5427.400,-1114.900,30,0
    .goto 1411/1,-5501.500,-1123.600,30,0
    .goto 1411/1,-5587.600,-1212.000,30,0
    .goto 1411/1,-5479.000,-1212.000,30,0
    >>Ramassez les |cRXP_PICK_Idoles de Loa|r au sol
    >>|cRXP_WARN_Ils se trouvent surtout près des murs de pierre de la zone|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #completewith TaillasherEggs
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TigerFur
    #loop
    .goto 1411/1,-5123.90,-1132.93,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label TaillasherEggs
    #loop
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Ramassez les |cRXP_PICK_Taillasher Eggs|r sur le sol
    >>Ils sont gardés en général par un |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #loop
    .goto 1411/1,-5115.96,-794.53,0
    .goto 1411/1,-5115.96,-794.53,60,0
    .goto 1411/1,-5035.07,-916.490,60,0
    .goto 1411/1,-4990.65,-989.81,60,0
    .goto 1411/1,-4905.52,-1028.23,60,0
    .goto 1411/1,-4807.17,-1122.35,60,0
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith next
    .goto 1411/1,-5002.81,-774.08,50,0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou revenez à la marche
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Voyagez vers le Village de Sen'jin
step
    .goto 1411/1,-4948.88,-768.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    >>Sautez dans la hutte
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Trayexir
    .isOnQuest 808
step
    .goto 1411/1,-4960.100,-791.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pa'zula|r
    .turnin 96873 >>Rendez la quête Une douleur dans la nuque
    .target Pa'zula
    .isQuestComplete 96873
    .skill enchanting,<1,1
step << Mage
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Apprenez vos sorts de classe
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Rendez la quête Crâne de Minshina
    .turnin 826,2 >>Rendez la quête Zalazane << Shaman
    .turnin 826 >>Rendez la quête Zalazane << !Shaman
    .turnin 97225 >>Rendez la quête Idoles de Loa oubliées
    .target +Master Gadrin
    .goto 1411/1,-4920.86,-825.90
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto 1411/1,-4920.86,-813.91
    .turnin 817 >>Rendez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
step
    .goto 1411/1,-4885.400,-852.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xar'Ti|r
    .turnin 97223 >>Rendez la quête La matriarche griffesang
    .target Xar'Ti
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Mettez dans vos barres votre|r |T133728:0|t[Crâne au faible rougeoiement] |cRXP_WARN_et la|r |T134712:0|t[Colle très collante]. |cRXP_WARN_Gardez-les pour les situations d'urgence|r
step
    .goto 1411/1,-4715.100,-599.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .turnin 96876 >>Rendez la quête Le sac perdu d’Ukor
    .target Ukor
    .isOnQuest 96876
step --at low lvl razormanes
    #completewith QuilboarsScouts
    >>Ramassez la |cRXP_PICK_Figue de Barbarie|r au sol
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #label QuilboarsScouts
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto 1411/1,-4442.34,112.46,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Tuez les |cRXP_ENEMY_Razormane Quilboars|r et les |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step --at low lvl razormanes
    #loop
    .goto 1411/1,-4543.300,82.500,0
    .goto 1411/1,-4543.300,82.500,40,0
    .goto 1411/1,-4459.000,66.300,40,0
    >>Ramassez la |cRXP_PICK_Figue de Barbarie|r au sol
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #loop
	.goto 1411/1,-4475.12,92.72,0
	.goto 1411/1,-4475.12,92.72,50,0
	.goto 1411/1,-4401.09,205.52,50,0
	.goto 1411/1,-4270.49,260.51,50,0
	.goto 1411/1,-4166.33,233.01,50,0
	.goto 1411/1,-4130.37,182.25,50,0
	.goto 1411/1,-4208.1,98.71,50,0
	.goto 1411/1,-4300.1,57.11,50,0
	.goto 1411/1,-4456.61,65.57,50,0
    .xp 9+4470 >> Montez votre expérience jusqu'à 4470+/6500xp
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .turnin 96825 >>Rendez la quête Ces fruits pourraient se défendre
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 825 >>Rendez la quête Des épaves
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .accept 6062 >>Acceptez la quête Dompter la bête
    .trainer >> Apprenez vos sorts de classe
    .target Thotar
step << Hunter
    .goto 1411/1,-4724.900,287.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil Soulscar|r
    .accept 99048 >>Acceptez la quête Une main en moins
    .target Orgnil Soulscar
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche pointue] |cRXP_BUY_et un|r [Carquois moyen] |cRXP_BUY_à Ghrawt|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèches pointue] |cRXP_BUY_à Ghrawt|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto 1411/1,-4693.49,-183.64,0
    .goto 1411/1,-4699.31,101.88,40,0
    .goto 1411/1,-4696.14,37.73,40,0
    .goto 1411/1,-4693.49,-1.4,40,0
    .goto 1411/1,-4701.42,-66.26,40,0
    .goto 1411/1,-4649.61,-82.83,40,0
    .use 15917 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Dire Mottled Boar|r à la portée maximale
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6062 >>Rendez la quête Dompter la bête
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Dire Mottled Boar|r en faisant un clic droit sur son portrait et en sélectionnant Renvoyer, sinon vous ne pourrez pas dompter un |r |cRXP_ENEMY_Surf Crawler|r
step << Hunter
    #loop
    .goto 1411/1,-5115.44,984.19,0
    .goto 1411/1,-5091.64,809.0,40,0
    .goto 1411/1,-5129.18,877.03,40,0
    .goto 1411/1,-5137.11,934.49,40,0
    >>Ne tuez pas les |cRXP_ENEMY_Armored Scorpids|r que vous verrez. Vous en aurez besoin plus tard
    .use 15919 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Surf Crawler|r à la portée maximale
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-5061.700,201.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heglan Ombredoeil|r
    .turnin 99048 >>Rendez la quête Une main en moins
    .accept 99049 >>Acceptez la quête Une menace venue d’en bas
    .target Heglan Shadeeye
step << Hunter
    .goto 1411/1,-5073.900,244.700
    >>Ramassez la |cRXP_PICK_Dague abandonnée|r par terre
    .complete 99049,1 --|1/1 Orcish Dagger
step << Hunter
    .goto 1411/1,-5140.800,229.100
    >>Ramassez le |cRXP_PICK_Fragment d’arme|r au sol
    .complete 99049,3 --|1/1 Broken Bone Trident
step << Hunter
    .goto 1411/1,-5138.000,314.100
    >>Ramassez les |cRXP_PICK_Débris étranges|r au sol
    .complete 99049,2 --|1/1 Banner Scrap
step << Hunter
    .goto 1411/1,-4725.000,287.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 99049 >>Rendez la quête Une menace venue d’en bas
    --.accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6083 >>Rendez la quête Dompter la bête
    .accept 6082 >>Acceptez la quête Dompter la bête
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Surf Crawler|r en faisant un clic droit sur son portrait et en sélectionnant Renvoyer, sinon vous ne pourrez pas dompter un |r |cRXP_ENEMY_Armored Scorpid|r
step << Hunter
    #loop
    .goto 1411/1,-4862.16,506.2,0
    .goto 1411/1,-4862.16,506.2,40,0
    .goto 1411/1,-4818.28,616.53,40,0
    .goto 1411/1,-4829.38,733.21,40,0
    .goto 1411/1,-4908.17,727.57,40,0
    .goto 1411/1,-4933.55,776.21,40,0
    .goto 1411/1,-4973.73,846.71,40,0
    .goto 1411/1,-4984.31,906.29,40,0
    .use 15920 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Armored Scorpid|r à la portée maximale
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6082 >>Rendez la quête Dompter la bête
    .accept 6081 >>Acceptez la quête Entraîner la bête
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith Rezlak1
    +Mettez [Appriovoiser une bête]|cRXP_WARN_,|r [Renvoyer le familier], et [Appel du familier] sur vos barres d'action
step << Hunter
    .goto 1411/1,-4666.0,305.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Achetez de la|r [Viande séchée coriace] |cRXP_BUY_à Grimtak|r. |cRXP_BUY_Vous l'utiliserez pour nourrir votre familier plus tard|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step << Hunter
    #optional
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
    .xp <10,1
step << Hunter/Shaman
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acceptez la quête L'égaré
    .target Misha Tor'kren
step
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >> Voyagez à Rezlak
step
    #label Rezlak1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step
    #loop
    .goto 1411/1,-4590.39,1036.36,0
    .goto 1411/1,-4590.39,1036.36,40,0
    .goto 1411/1,-4590.39,950.7,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto 1411/1,-4505.79,597.14,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Ramassez les |cRXP_PICK_Sacs de ravitaillement dérobés|r au sol
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step
    #completewith next
    .goto 1411/1,-4327.07,932.02,40,0
    .goto 1411/1,-4198.05,911.22,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Sautez dans les Falaises du Tonnerre << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Renvoyez votre|r |T136218:0|t[Diablotin] |cRXP_WARN_en faisant un clic droit sur son portrait et en cliquant sur renvoyer|r << Warlock
    .cast 2641 >>|cRXP_WARN_Lancez|r |T136095:0|t[Renvoyer le familier] |cRXP_WARN_et ensuite sautez dans les falaises du Tonnerre|r << Hunter
step
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>|cRXP_WARN_N'ayez pas peur de mourir pour la |cRXP_LOOT_Griffe|r comme vous réapparaîtrez au |cRXP_FRIENDLY_Gardien des âmes|r après|r
    >>Tuez le diablotin en premier. Utilisez [Suriner] lorsqu'il lance [Siphon d'âme] << Rogue
    >>Tuez le diablotin en premier. Utilisez [Horion de terre] lorsqu'il lance [Siphon d'âme] << Shaman
    >>Vous pouvez lancer [Métamorph|cRXP_WARN_on|re] sur |cRXP_ENEMY_Fizzle|r et tuez le |cRXP_ENEMY_Imp|r en premier << Mage
    >>Tuez le diablotin en premier << Warrior/Warlock/Priest
    >>Utilisez une [Potion de soins mineur] si vous en avez une et votre [Crâne au faible rougeoiement] si nécessaire << !Warlock
    >>Utilisez une [Potion de soins mineur], [Pierre de soins mineure] si vous l'avez et votre [Crâne au faible rougeoiement] si nécessaire << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>Tuez le diablotin en premier. Utilisez [Suriner] lorsqu'il lance [Siphon d'âme] << Rogue
    >>Tuez le diablotin en premier. Utilisez [Horion de terre] lorsqu'il lance [Siphon d'âme] << Shaman
    >>Vous pouvez lancer [Métamorph|cRXP_WARN_on|re] sur |cRXP_ENEMY_Fizzle|r et tuez le |cRXP_ENEMY_Imp|r en premier << Mage
    >>Tuez le diablotin en premier << Warrior/Warlock/Priest
    >>Utilisez une [Potion de soins mineur] si vous en avez une et votre [Crâne au faible rougeoiement] si nécessaire << !Warlock
    >>Utilisez une [Potion de soins mineur], [Pierre de soins mineure] si vous l'avez et votre [Crâne au faible rougeoiement] si nécessaire << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4449.74,1188.64
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 806
    .xp >10,1
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4035.2,679.63,60 >> Sortez des falaises du Tonnerre en combattant les mobs
    .isQuestComplete 806
    .xp <10,1
step << Hunter/Shaman
    #hardcore
    .goto 1411/1,-4035.2,679.63,60 >> Sortez des falaises du Tonnerre en combattant les mobs
    .isQuestComplete 806
step << Hunter/Shaman
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .target Rhinag
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    .xp 9+2520 >>Tuez des mobs jusqu'à avoir 2520+/6500 xp du niveau 9
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    +Tuez des mobs jusqu'à ce qu'il reste moins de 5 minutes à votre Pierre de foyer
    .cooldown item,6948,<0
step << Hunter/Shaman
    #label EnterOrg
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Hunter/Shaman
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Il est à l'étage dans le bâtiment|r
    .accept 97246 >>Acceptez la quête En souffrance de pitance
    .target Thatog
step << Hunter/Shaman
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Rendez la quête En souffrance de pitance
    .accept 97249 >>Acceptez la quête Son plat préféré
    .target Borstan
step << Hunter/Shaman
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Rendez la quête Le sabot d’Halikor
    .target Kamari
    .isOnQuest 96877
step << Hunter/Shaman
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld|r 
    .accept 97242 >>Acceptez la quête Le mélange de Yelmak
    .target Kor'geld
step << Hunter/Shaman
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Voyagez jusqu'à la Vallée de l'Honneur
step << Hunter/Shaman
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Ramassez |cRXP_PICK_Poignées de roseaux|r et les |cRXP_PICK_Boutures d’herbe polisson|r dans l'eau
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Rendez la quête Entraîner la bête
    .target Ormak Grimshot
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Apprenez les compétences de votre familier
    .target Xao'tsu
step << Hunter
    #completewith FindAntidote
    +Mettez [Dressage des bêtes] (sous l'onglet Général), [Ressusciter le familier], et [Nourrir le familier] sur vos barres d'actions
    >>N'oubliez pas d'entraîner votre familier dès qu'il récupère des points dans le [Dressage des bêtes]
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure] |cRXP_WARN_lorsque vous êtes niveau 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Hunter/Shaman
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Rendez la quête Le mélange de Yelmak
    .target Kor'geld
step << Hunter/Shaman
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Vous devrez peut-être attendre environ 10 secondes avant de pouvoir accepter cette quête|r
    .accept 97275 >>Acceptez la quête Droit au Whuut
    .target Yelmak
step << Hunter/Shaman
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Rendez la quête Droit au Whuut
    .target Whuut
step << Hunter/Shaman
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Rendez la quête Son plat préféré
    .target Migi
step << Hunter/Shaman
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra|r 
    .accept 97326 >>Acceptez la quête Ameublement rocheux
    .target Thra
step << Hunter/Shaman
    .goto 1454/1,-4293.600,1949.900
    >>Ramassez les |cRXP_PICK_Rochers|r oranges par terre
    >>|cRXP_WARN_Passez cette quête s'il y a beaucoup de concurrence ! Il n'y a pas beaucoup de |cRXP_PICK_Rochers|r et ils prennent du temps à réapparaître|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step << Hunter/Shaman
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Rendez la quête Ameublement rocheux
    .target Thra
    .isQuestComplete 97326
step << Hunter/Shaman
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Hunter/Shaman
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
step << Hunter/Shaman
    #label FindAntidote
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'ghan|r dans la Faille de l'Ombre
    .accept 813 >>Acceptez la quête La recherche de l'antidote
    .target Kor'ghan
    .isOnQuest 812
step << Hunter/Shaman
    #completewith RazorTurnins2
    #label NeedACure
    >>Abandonnez Besoin d'un remède. Ceci enlèvera le chronomètre de la quête mais vous pourrez toujours la faire
    .abandon 812 >>Abandonnez Besoin d'un remède
    .isOnQuest 812
step << Priest
    #optional
    #loop
    .goto 1411/1,-4162.63,943.30,40,0--c:Durotar,41.61,24.54
    .goto 1411/1,-4073.80,953.87,40,0--c:Durotar,39.93,24.24
    .goto 1411/1,-4026.21,866.10,40,0--c:Durotar,39.03,26.73
    .goto 1411/1,-4035.20,687.38--c:Durotar,39.20,31.80
    .xp 9+3150 >>Tuez des mobs jusqu'à avoir 3150+/6500 xp du niveau 9
step
    #completewith RazorTurnins2
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0,1
step
    #completewith RazorTurnins2
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
    .isQuestComplete 806
    .cooldown item,6948,<0
step
    #requires NeedACure
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .collect 1179,15,828,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,828,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Hunter
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r, à |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .turnin 96825 >>Rendez la quête Ces fruits pourraient se défendre
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .accept 99048 >>Acceptez la quête Une main en moins << Shaman
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 825 >>Rendez la quête Des épaves
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acceptez la quête Le maléfice de faiblesse << Troll
    .accept 5660 >> Acceptez la quête Toucher de faiblesse << Undead
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .train 13549 >> Apprenez vos sorts de classe
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Troll) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 Les Tarides << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step << Shaman/Hunter
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step << Shaman
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
    .isOnQuest 840,2983,1522,2984,1523
step << Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Dreadmaw Crocolisks|r sur le chemin. Dépouillez-les pour la |cRXP_LOOT_Kron's Amulet|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Prenez le chemin pour monter la montagne et parlez à |cRXP_FRIENDLY_Telf|r
    >>Faites attention à ne pas tomber de la montagne, le chemin est très étroit. Vous pourriez tomber et mourir
step << Shaman
    #label CallofFire3
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Rendez la quête L'appel du feu
    .accept 1525 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << skip --Shaman
    #completewith MargozTurnIn
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    --TODO: Re-add deathskip after ress timer fix
step << Shaman
    .goto 1411/1,-5061.700,201.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heglan Ombredoeil|r
    .turnin 99048 >>Rendez la quête Une main en moins
    .accept 99049 >>Acceptez la quête Une menace venue d’en bas
    .target Heglan Shadeeye
step << Shaman
    .goto 1411/1,-5073.900,244.700
    >>Ramassez la |cRXP_PICK_Dague abandonnée|r par terre
    .complete 99049,1 --|1/1 Orcish Dagger
step << Shaman
    .goto 1411/1,-5140.800,229.100
    >>Ramassez le |cRXP_PICK_Fragment d’arme|r au sol
    .complete 99049,3 --|1/1 Broken Bone Trident
step << Shaman
    .goto 1411/1,-5138.000,314.100
    >>Ramassez les |cRXP_PICK_Débris étranges|r au sol
    .complete 99049,2 --|1/1 Banner Scrap
step << Shaman
    .goto 1411/1,-4725.000,287.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 99049 >>Rendez la quête Une menace venue d’en bas
    --.accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar
step << Hunter
    #completewith MargozTurnIn
    +Domptez un |cRXP_ENEMY_Venomtail Scorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #completewith next
    .subzone 371 >>Voyagez vers la Caverne des Terrevent
step << Shaman
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Cultists|r. Dépouillez-les pour leur |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4939.36,824.51,80,0
    .goto 1411/1,-4945.18,1101.92,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Rendez la quête Margoz
    .accept 827 >>Acceptez la quête Rocher du crâne
    .target Margoz
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4949.41,925.67,50,0
    .goto 1411/1,-4929.32,823.45,50,0
    .goto 1411/1,-4774.39,780.80,50 >> Voyagez vers la Caverne des Terrevent
    .isQuestTurnedIn 828
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4749.01,822.39,12,0
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step
    #label Ravine
    #completewith next
    .subzone 370 >> Descendez dans le Ravin Asséché
step
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Tuez les |cRXP_ENEMY_Dustwind Savages|r et les |cRXP_ENEMY_Dustwind Storm Witches|r
    .use 277661 >>Dépouillez les |cRXP_ENEMY_Sorcières des tempêtes Terrevent|r pour un |T134336:0|t[|cRXP_LOOT_Orbe de tempête émoussé|r]. Utilisez-le pour démarrer une quête
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .collect 277661,1,97281 --Dull Storm Orb (x1)
    .accept 97281 >>Acceptez la quête Une tempête en approche
step << skip
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    --#hardcore
    #completewith next
    .goto 1411/1,-4804.53,830.5,60,0
    .goto 1411/1,-4698.78,842.48,60,0
    .goto 1411/1,-4414.31,999.70,60 >> Avancez dans la grotte vers |cRXP_FRIENDLY_Rezlak|r
step
    #label SecuringLinesTurnIn
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .turnin 97281 >>Rendez la quête Une tempête en approche
    .accept 97282 >>Acceptez la quête Un potentiel houleux
    .target Rezlak
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4010.35,1031.42,0
    .goto 1411/1,-4217.09,1087.47,60,0
    .goto 1411/1,-4100.24,1113.2,60,0
    .goto 1411/1,-4108.7,1229.88,60,0
    .goto 1411/1,-4013.52,1209.08,60,0
    .goto 1411/1,-4010.35,1031.42,60,0
    >>Terminez de tuer les |cRXP_ENEMY_Scorpides queue-venin|r. Dépouillez-les pour leur |cRXP_LOOT_Glandes à venin|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Lézard-tonnerres|r et les |cRXP_ENEMY_Foudroyants|r. Dépouillez-les pour leur |cRXP_LOOT_Organe de lézard-tonnerre chargé|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step
    #loop
    .goto 1411/1,-4248.400,972.300,0
    .goto 1411/1,-4117.500,747.200,0
    .goto 1411/1,-4248.400,972.300,40,0
    .goto 1411/1,-4117.500,747.200,40,0
    >>Tuez |cRXP_ENEMY_Halikor|r (élite). Dépouillez-le pour le |T134061:0|t[|cRXP_LOOT_Sabot d’Halikor|r]
    >>|cRXP_WARN_Cette étape est difficile ! Faites-la au sein d'un groupe si possible. Elle a 800 pv mais ses dégâts sont gérables. Passez cette étape si vous n'arrivez pas à la tuer|r
    >>|cRXP_WARN_Il a deux points de réapparition différents dans les Falaises du Tonnerre|r
    .collect 275723,1,96877 --Halikor's Hoof (x1)
    .accept 96877 >>Acceptez la quête Le sabot d’Halikor
    .mob Halikor
step
    .goto 1411/1,-4047.300,918.400
    >>Tuez les |cRXP_ENEMY_Lézard-tonnerres|r et les |cRXP_ENEMY_Foudroyants|r. Dépouillez-les pour leur |cRXP_LOOT_Organe de lézard-tonnerre chargé|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step << skip
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 1411/1,-4414.500,999.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 97282 >>Rendez la quête Un potentiel houleux
    .target Rezlak
step << Shaman/Hunter
    #completewith next
    .goto 1411/1,-4945.18,1101.92,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Rendez la quête Margoz
    .accept 827 >>Acceptez la quête Rocher du crâne
    .target Margoz
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4876.97,1452.310,60 >> Voyagez vers le rocher du Crâne
step << Shaman/Hunter
    #completewith Gazzuz
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Orcs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r et pour un |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #label Gazzuz
    .goto 1411/1,-4701.42,1455.83
    >>Tuez |cRXP_ENEMY_Gazz'uz|r. Dépouillez-le pour son [|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Eye of Burning Shadow|r] pour commencer la quête|r
    >>|cRXP_WARN_Utilisez votre|r |T134712:0|t[Colle très collante] |cRXP_WARN_sur le|r |cRXP_ENEMY_Marcheur du Vide|r |cRXP_WARN_pour éviter d'être touché, et vos|r |T134829:0|t[Potions de soin] |cRXP_WARN_pour vous soigner. N'hésitez à vous cacher (LoS) pour éviter |rles Traits de l'ombre|cRXP_ENEMY_|r de |cRXP_WARN_Gazz'uz|r 
    >>Vous pouvez aller dans les points d'eau dans la grotte pour vous échapper (evade) des |cRXP_ENEMY_Voidwalker|r après avoir tué |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Faites attention comme il est TRÈS difficile. Vous pouvez passer cette quête si vous en avez besoin|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Acceptez la quête Ombres ardentes
    .use 4903
	.unitscan Gazz'uz
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Orcs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r et pour un |cRXP_LOOT_Lieutenant's Insignia|r
    >>Arrêtez de cherche une |cRXP_LOOT_Lieutenant's Insignia|r si vous n'avez pas de chance et qu'il ne tombe pas
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #completewith Ravine
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Rendez la quête Rocher du crâne
    .accept 829 >>Acceptez la quête Neeru Lamefeu
    .target Margoz
    .isQuestTurnedIn 806
step
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
step << !Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trak'gen|r
    .vendor >> Vendez au marchand
    .target Trak'gen
    .isQuestAvailable 97246
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez-lui une |r |T135419:0|t[Hache de jet aiguisée] |cRXP_BUY_|r
    .collect 3135,1,354,1 --Sharp Throwing Axe (200)
    .vendor >> Vendez au marchand
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Équipez la|r |T135421:0|t[Hache de jet aiguisée] |cRXP_WARN_lorsque vous passez au niveau 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
step
    .goto 1454/1,-4460.000,1598.600
    .goto 1454/1,-4460.600,1584.300,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Il est à l'étage dans le bâtiment|r
    .accept 97246 >>Acceptez la quête En souffrance de pitance
    .target Thatog
step << Shaman
    .goto 1454/1,-4347.54,1634.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,924,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith NeeruFireblade
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Rendez la quête En souffrance de pitance
    .accept 97249 >>Acceptez la quête Son plat préféré
    .target Borstan
step
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Rendez la quête Le sabot d’Halikor
    .target Kamari
    .isOnQuest 96877
step
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld|r 
    .accept 97242 >>Acceptez la quête Le mélange de Yelmak
    .target Kor'geld
step
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Voyagez jusqu'à la Vallée de l'Honneur
step
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Ramassez |cRXP_PICK_Poignées de roseaux|r et les |cRXP_PICK_Boutures d’herbe polisson|r dans l'eau
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14281 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <12,1
step
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Rendez la quête Le mélange de Yelmak
    .target Kor'geld
step
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Vous devrez peut-être attendre environ 10 secondes avant de pouvoir accepter cette quête|r
    .accept 97275 >>Acceptez la quête Droit au Whuut
    .target Yelmak
step
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Rendez la quête Droit au Whuut
    .target Whuut
step
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Rendez la quête Son plat préféré
    .target Migi
step
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra|r 
    .accept 97326 >>Acceptez la quête Ameublement rocheux
    .target Thra
step
    .goto 1454/1,-4293.600,1949.900
    >>Ramassez les |cRXP_PICK_Rochers|r oranges par terre
    >>|cRXP_WARN_Passez cette quête s'il y a beaucoup de concurrence ! Il n'y a pas beaucoup de |cRXP_PICK_Rochers|r et ils prennent du temps à réapparaître|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Rendez la quête Ameublement rocheux
    .target Thra
    .isQuestComplete 97326
step << !Shaman !Hunter
    #label Admiralorders1
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
step
    .goto 1454/1,-4320.700,1750.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kareth|r
    .vendor >>Réparez votre équipement
    .target Kareth
    .isOnQuest 829
step << Rogue
    .goto 1454/1,-4280.21,1773.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acceptez la quête La Main brisée << Orc Rogue/Troll Rogue
    .target Therzok
step << Shaman/Hunter
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Rendez la quête La recherche de l'antidote
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto 1454/1,-4362.13,1834.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Mirket
step << Shaman/Hunter
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .turnin 832 >>Rendez la quête Ombres ardentes
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Shaman !Hunter
    --#hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Shaman/Hunter
    --#hardcore
    #completewith FoundtheCure
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label FoundtheCure
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .turnin 812 >>Rendez la quête Besoin d'un remède
    .target Rhinag
step << Shaman/Hunter
    .goto 1411/1,-3802.55,650.72,50,0
    .goto 1411/1,-3803.08,503.38,50,0
    .goto 1411/1,-3783.51,238.65,50,0
    .goto 1411/1,-3774.53,150.88,50,0
    .goto 1411/1,-3797.79,317.260
    >>Voyagez au sud le long de la rivière vers le poste de Guet-Lointain
    >>Tuez les |cRXP_ENEMY_Dreadmaw Crocolisks|r sur le chemin. Dépouillez-les pour la |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Passez et abandonnez cette quête si elle ne tombe pas|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Rendez la quête L'égaré
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Rendez la quête Ak'Zeloth
    .accept 924 >>Acceptez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Shaman/Hunter
    .goto 1413/1,-3694.2,259.22
    >>Ramassez la [Pierre de puissance imparfaite] près de |cRXP_FRIENDLY_Ak'Zeloth|r. Cet objet a une durée de 30 minutes, donc soyez sûr d'être rapide
    .turnin 926 >>Rendez la quête Pierre de puissance imparfaite
    .isOnQuest 924
step << Rogue/Mage/Priest/Warlock/Warrior
    #label ZeptoUC1
    .goto 1411/1,-4648.55,1321.88,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    >>|cRXP_WARN_Invoquez de l'eau en attendant|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandonnez la quête L'égaré
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Tirisfal (Orc/Troll)
#version 11
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Forêt des Pins argentés << !Hunter !Shaman !Tauren !Skyborne !Undead

step
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Voyagez jusqu'à Brill
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde noir Terrence|r
    .accept 96895 >>Acceptez la quête L’émissaire de l’Aube d’argent
    .target Deathguard Terrence
step << Warrior
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .accept 1885 >>Acceptez la quête Mennet Carkad
    .target Marion Call
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>Cliquez sur le Déclencheur du mausolée sur le sol. Cela va invoquer |cRXP_ENEMY_Ulag.|r. Tuez-le
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .target Coleman Farthing
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .money <0.08
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock/Hunter
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,96897,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,96897,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,96897,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,96897,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .maxlevel 11
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Rendez la quête L’émissaire de l’Aube d’argent
    .accept 96897 >>Acceptez la quête Le Culte des damnés
    .accept 96898 >>Acceptez la quête Les vestiges de la guerre
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Tuez les |cRXP_ENEMY_Massacreurs sombres|r et les |cRXP_ENEMY_Néophytes sombres|r. Dépouillez-les pour leur |cRXP_LOOT_Fragment de cristal nécrotique|r
    >>Les |cRXP_LOOT_Fragments de cristal nécrotiques|r |cRXP_WARN_peuvent aussi se ramasser au sol|r
    >>|cRXP_WARN_Soyez prudent ! Ces mobs frappent fort. Les |cRXP_ENEMY_Massacreurs sombres|r ont aussi une capacité instantanée infligeant 50-70 dégâts|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Rendez la quête Le Culte des damnés
    .turnin 96898 >>Rendez la quête Les vestiges de la guerre
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson
step
    #label LinneaTurnin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #completewith UCflightpath1
    .goto 1420/0,240.75,1877.57,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << !Undead
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto 1458/0,308.89,1667.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Cain|r
    >>|cRXP_BUY_Achetez trois|r |T133884:0|t[Oeil de murloc] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
    .zoneskip Undercity,1
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1478 >> Rendez la quête Les invocations de Halgar
    .accept 1473 >> Acceptez la quête La créature du Vide
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Tirisfal Glades
step << Warlock
    #optional
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Ouvrez le |cRXP_PICK_Coffre de Perrine|r sur le sol pour le |T133733:0|t[Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>Ramassez le |cRXP_PICK_Perrine's Chest|r sur le sol pour le [Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1473 >> Rendez la quête La créature du Vide
    .accept 1471 >> Acceptez la quête Le lien
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,41.99,1704.480
    .cast 9221 >>Utilisez les [Runes d'invocation] au cercle d'invocation
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Rendez la quête Le lien
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Priest
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lavinia Crowe|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.24,1681.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Josef Gregorian|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Transformez toutes vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en|r |T132890:0|t[Rouleaux d'étoffe de lin]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Josef Gregorian|r
    .train 7623 >> Apprenez |T132662:0|t[Robe marron en lin]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Millie Gregorian|r
    >>|cRXP_BUY_Achetez-lui des|r |T132891:0|t[Bobines de fil grossier] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Fabriquez autant de|r |T132662:0|t[Robes marron en lin] |cRXP_WARN_que possible|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Achetez-lui un|r |T133942:0|t[Bâtonnet en cuivre] |cRXP_BUY_et du|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Désenchantez tous les|r |T132662:0|t[Robe marron en lin] |cRXP_WARN_que vous avez tissé et fabriqué un|r |T135225:0|t[Bâtonnet runique en cuivre]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malcomb Wynn|r
    .train 14293 >> Apprenez |T135139:0|t[Baguette magique inférieure]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Créez une|r |T135139:0|t[Baguette magique inférieure]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Équipez la|r |T135139:0|t[Baguette magique inférieure]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1766 >> Apprenez |T132219:0|t[Coup de pied]
    .target Carolyn Ward
    .xp <12,1
    .money <0.08
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 145 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Anastasia Hartwell
    .xp <12,1
    .money <0.08
step << Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 755 >> Apprenez [Captation de vie]
    .target Richard Kerwin
    .xp <12,1
    .money <0.08
step << Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 588 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Father Lazarus
    .xp <12,1
    .money <0.08
step << Warrior
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baltus Fowler|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .target Baltus Fowler
    .xp <12,1
    .money <0.08
step
    #optional
    .abandon 806 >> Abandonnez la quête De sombres orages
step
    #optional
    .abandon 408 >> Abandonnez la quête La crypte familiale
step << Warrior
    #optional
    .abandon 1821 >> Abandonnez la quête L'héritage des Agamand
step
    #optional
    .abandon 375 >>Abandonnez la quête Le frisson de la mort 
step
    #label LeaveUndercity3
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Silverpine Forest
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .zoneskip Silverpine Forest
]])