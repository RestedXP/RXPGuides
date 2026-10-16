if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Sombrevallon
#next 6-10 Teldrassil
#defaultfor NightElf
<<Alliance
step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilthalaine|r
    .accept 28713 >>Acceptez la quête L'Equilibre de la nature
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28713 >>Rendez la quête L'Equilibre de la nature
    .accept 28714 >>Acceptez la quête Les petits bonshommes en gangremousse
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melithar Forteramure|r.
    .accept 28715 >>Acceptez la quête Les démons voleurs
	.target Melithar Staghelm
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Grell|r et les |cRXP_ENEMY_Grellkins|r. Récupérez-les pour leur |cRXP_LOOT_Fel Moss|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Ramassez les |cRXP_LOOT_Melithar's Stolen Bags|r sur le sol
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Tuez les |cRXP_ENEMY_Grell|r et les |cRXP_ENEMY_Grellkins|r. Récupérez-les pour leur |cRXP_LOOT_Fel Moss|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilthalaine|r et au |cRXP_FRIENDLY_Melithar Forteramure|r
    .turnin 28714 >>Rendez la quête Les petits bonshommes en gangremousse
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>Rendez la quête Les démons voleurs
	.target +Melithar Staghelm
    .goto 460,45.93,72.86
    .accept 3116 >> Acceptez la quête Sceau simple << Warrior
    .accept 3117 >> Acceptez la quête Sceau gravé << Hunter
    .accept 3118 >> Acceptez la quête Le cachet codé << Rogue
    .accept 3119 >> Acceptez la quête Sceau béni << Priest
    .accept 3120 >> Acceptez la quête Sceau verdoyant << Druid
    .accept 26841 >> Acceptez la quête Le cachet interdit << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Montez la rampe vers |cRXP_FRIENDLY_Shanda|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >> Montez la rampe vers |cRXP_FRIENDLY_Rhyanda|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >> Rendez la quête Sceau béni
    .accept 26949 >> Acceptez la quête Soins pour le Blessé << cata
    .accept 26949 >> Acceptez la quête Apprendre la parole << !cata
    .train 2061 >> Entraînez-vous |T135907:0|t[Soins rapides] << cata
    .target Shanda
step << Priest cata
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_Lancez|r |T135907:0|t[Soins rapides] |cRXP_WARN_5 fois sur une |cRXP_FRIENDLY_Sentinelle estropiée|r à côté de vous|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest !cata
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Lancez|r |T136207:0|t[Mot de l'ombre : Douleur] |cRXP_WARN_5 fois sur un|r |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 26949,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r
    .turnin 26949 >> Rendez la quête Soins pour le Blessé << cata
    .turnin 26949 >> Rendre la quête Veilleur du puits Solanian << !cata
    .accept 28723 >> Acceptez la quête La prêtresse de la Lune
    .target Shanda
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26841 >> Rendez la quête Le cachet interdit
    .accept 26940 >> Acceptez la quête Projectiles des Arcanes
    .train 5143 >> Apprenez |T136096:0|t[Projectiles des Arcanes] << cata
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Lancez|r |T135812:0|t[Boule de feu] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin d'entraînement|r jusqu'à obtenir un|r |T135731:0|t[(Arcanes) Missles!] |cRXP_WARN_proc, puis lancez|r |T136096:0|t[Projectiles des Arcanes]|cRXP_WARN_. Répétez ceci deux fois|r
    .complete 26940,1 << cata -- Practice Arcane Missles (1)
    .complete 26940,2 << !cata -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Montez la rampe vers |cRXP_FRIENDLY_Rhyanda|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26940 >> Rendez la quête Projectiles des Arcanes
    .accept 28723 >> Acceptez la quête La prêtresse de la Lune
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >> Rendez-vous vers |cRXP_FRIENDLY_Alyissia|r à l'intérieur << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >> Rendez-vous vers |cRXP_FRIENDLY_Frahun Murmombre|r à l'intérieur << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Rendez la quête Sceau simple
    .accept 26945 >> Acceptez la quête Apprendre de nouvelles techniques
	.train 100 >> Apprenez [Charge] << cata
    .target Alyissia
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_Lancez|r |T132337:0|t[À la charge !] |cRXP_WARN_sur le|r |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 26945,1 << cata -- Practice Charge (1)
    .complete 26945,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
    .turnin 26945 >> Rendez la quête Apprendre de nouvelles techniques
    .accept 28723 >> Acceptez la quête La prêtresse de la Lune
    .target Alyissia
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 3118 >> Rendez la quête Le cachet codé
    .accept 26946 >> Acceptez la quête Les avantages du voleur
	.train 2098 >> Entraînez-vous |T132292:0|t[L'éviscération] << cata
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_Lancez|r |T136189:0|t[Attaque pernicieuse] |cRXP_WARN_suivi de|r |T132292:0|t[L'éviscération] |cRXP_WARN_3 fois sur le|r |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 26946,1 << cata -- Practice Eviscerate (1)
    .complete 26946,2 << !cata -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 26946 >> Rendez la quête Les avantages du voleur
    .accept 28723 >> Acceptez la quête La prêtresse de la Lune
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Rendez la quête Sceau gravé
    .accept 26947 >> Acceptez la quête Un entraînement d'elfe des bois
	.train 56641 >> S'entraîner |T132213:0|t[Veilleur du puits Solanian] << cata
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_Lancez|r |T132213:0|t[Tir Stable] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin d'entraînement|r 5 fois|r
    .complete 26947,1 << cata-- Practice Steady Shot (1)
    .complete 26947,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 26947 >> Rendre la quête Un entraînement d'elfe des bois
    .accept 28723 >> Acceptez la quête La prêtresse de la Lune
    .target Ayanna Everstride
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >> Voyagez vers |cRXP_FRIENDLY_Mardant Chênefort|r à l'intérieur
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 3120 >> Rendez la quête Sceau verdoyant
    .accept 26948 >> Acceptez la quête Régénérant Toucher << cata
    .accept 26948 >> Acceptez la quête Éclat lunaire << !cata
	.train 774 >> Apprenez |T136081:0|t[Récupération] << cata
    .target Mardant Strongoak
step << Druid cata
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>Lancez |T136081:0|t[Récupération] |cRXP_WARN_sur une|r |cRXP_FRIENDLY_Sentinelle estropiée|r
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << !cata Druid
    .goto 460,46.003,56.584
    >>|cRXP_WARN_Lancez|r |T136096:0|t[Lune de feu] |cRXP_WARN_sur un|r |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 26948,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 26948 >> Rendre la quête Régénérant Toucher << cata
    .turnin 26948 >> Rendre la quête Eclat lunaire << !cata
    .accept 28723 >> Acceptez la quête La prêtresse de la Lune
    .target Mardant Strongoak
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .turnin 28723 >>Rendez la quête La prêtresse de la Lune
    .accept 28724 >>Acceptez la quête Antidote d'Iverron
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>Cueillez les |cRXP_LOOT_Moonpetal Lilies|r sur le sol
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .turnin 28724 >>Rendez la quête Antidote d'Iverron
    .accept 28725 >>Acceptez la quête La protectrice sylvestre
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,56.34,27.51,5 >> |cRXP_WARN_Entrez dans la grotte puis attendez que |cRXP_FRIENDLY_Tarindrella|r apparaisse|r
step
    .goto 58,56.34,27.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r à la position de la flèche. Elle apparaîtra après quelques secondes
    .turnin 28725 >>Rendez la quête La protectrice sylvestre
    .accept 28726 >>Acceptez la quête La corruption des Tissebois
	.target Tarindrella
step
    .goto 58,41.27,33.22,10,0
    .goto 58,34.81,15.50,15,0
    .waypoint 58,46.33,41.34
    >>Tuez |cRXP_ENEMY_Webwood Araignées|r
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r à côté de vous
    .turnin 28726 >>Rendez la quête La corruption des Tissebois
    .accept 28727 >>Acceptez la quête La vile ennemie
	.target Tarindrella
step
    .goto 58,34.56,23.87,0
    .goto 58,42.81,19.50,10,0
    .goto 58,45.02,31.37
    >>Tuez |cRXP_ENEMY_Githyiss la Vil|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r à côté de vous
    .turnin 28727,1 >>Rendez la quête La vile ennemie
    .accept 28728 >>Acceptez la quête Des signes prémoniteurs
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .goto 460,42.50,50.50
    .turnin 28728 >>Rendez la quête Des signes prémoniteurs
    .accept 28729 >>Acceptez la quête Teldrassil : le toit d’Azeroth
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_Pour activer la liaison de touches pour les objets de quête, suivez ces étapes:|r
    *[1] Appuyez sur la |cRXP_WARN_Echap./Esc.|r touche.
    *[2] Sélectionnez |cRXP_WARN_Options|r.
    *[3] Accédez à |cRXP_WARN_Keybindings|r.
    *[4] Dans |cRXP_WARN_Keybindings|r, trouvez |cRXP_WARN_RestedXP Guides|r.
    *[5] Sélectionnez et liez les |cRXP_WARN_Active Boutons|r.
step
    .goto 460,50.13,34.49
    .use 5185 >>Utilisez la [Flasque de cristal] au puits de lune
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .turnin 28729 >>Rendez la quête Teldrassil : le toit d’Azeroth
    .accept 28730 >>Acceptez la quête Des eaux précieuses
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>Montez la rampe de l'Arbre
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 28730 >>Rendez la quête Des eaux précieuses
    .accept 28731 >>Acceptez la quête Teldrassil : le relais de la conscience
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>|cRXP_WARN_Saut de l'Arbre. Vous avez un buff de ralentissement de chute donc vous ne mourrez pas|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Acceptez la quête Livraison pour Dolanaar
	.target Porthannius
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-10 Teldrassil
#next 10-18 Sombrivage
#defaultfor NightElf

<<Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >>Acceptez la quête Les commandements de Zenn
	.target Zenn Foulhoof
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Webwood Lurkers|r. Ramassez leur |cRXP_LOOT_Webwood Soie d'araignée|r
    >>Tuez |cRXP_ENEMY_Nightsabers|r. Ramassez leur |cRXP_LOOT_Sabre-de-nuit Crochu|r
    >>Tuez |cRXP_ENEMY_Strigid Owls|r. Ramassez leur |cRXP_LOOT_Hibou strigide Plumes|r
    >>|cRXP_WARN_Vous aurez d'autres occasions de terminer cela plus tard|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Viveracine|r.
    .accept 2438 >>Acceptez la quête Le Capturêve d'émeraude
	.target Tallonkai Swiftroot
step << !NightElf
    #completewith next
    .goto 57,55.48,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fidelio|r
    .fp Dolanaar >>Apprenez le trajet de vol vers Dolanaar
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >>Acceptez la quête Une brise étrange
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,1 >>Rendez la quête Livraison pour Dolanaar
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .home >>Liez votre Pierre de Foyer à Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iranis Ombrefleur|r
    .train 2366 >> Apprenez [Herboristerie]
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iranis Ombrefleur|r
    .train 2575 >> Apprenez [Minage]
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irriende|r
    .trainer >> Apprenez vos sorts de classe
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 28731 >>Rendez la quête Teldrassil : le relais de la conscience
    .accept 929 >>Acceptez la quête Teldrassil : le rejet des Aspects
	.target Corithras Moonrage
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
    .trainer >> Apprenez vos sorts de classe
    .target Kal
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Tuez |cRXP_ENEMY_Webwood Lurkers|r. Ramassez leur |cRXP_LOOT_Webwood Soie d'araignée|r
    >>Tuez |cRXP_ENEMY_Nightsabers|r. Ramassez leur |cRXP_LOOT_Sabre-de-nuit Crochu|r
    >>Tuez |cRXP_ENEMY_Strigid Owls|r. Ramassez leur |cRXP_LOOT_Hibou strigide Plumes|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,61.92,50.69
    .use 5619 >>|cRXP_WARN_Utilisez le|r |T134721:0|t[Flasque de jade] |cRXP_WARN_à Moonwell|r
    .complete 929,1 --1/1 Filled Jade Phial
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gaerolas Talvethren|r
    .turnin 475 >>Rendez la quête Une brise étrange
    .accept 476 >>Acceptez la quête La corruption des Pins-tordus
	.target Gaerolas Talvethren
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>Ouvrez |cRXP_PICK_L'armoire de Tallonkai|r. Ramassez-le pour le |cRXP_LOOT_Capteur de rêve d'émeraude|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .subzoneskip 186
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >>Rendez la quête Teldrassil : le rejet des Aspects
	.target Corithras Moonrage
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >>Rendez la quête La corruption des Pins-tordus
	.target Athridas Bearmantle
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai|r
    .turnin 2438 >>Rendez la quête Le Capturêve d'émeraude
    .accept 2459 >>Acceptez la quête Ferocitas le Mangeur de rêves
	.target Tallonkai
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    #loop
    .goto 57,57.48,48.54,50,0
    .goto 57,58.21,49.79,50,0
    .goto 57,58.23,52.16,50,0
    .goto 57,59.97,53.47,50,0
    .goto 57,61.28,51.69,50,0
    .goto 57,60.21,50.03,50,0
    .goto 57,57.48,48.54,50,0
    >>Tuez |cRXP_ENEMY_Webwood Lurkers|r. Ramassez-les pour leur |cRXP_LOOT_Soie d'araignée tissebois|r
    >>Tuez |cRXP_ENEMY_Nightsabers|r. Ramassez-les pour leur |cRXP_LOOT_Nightsaber Crochu|r
    >>Tuez |cRXP_ENEMY_Strigid Owls|r. Ramassez-les pour leurs |cRXP_LOOT_Strigid Owl Plumes|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >>Rendez la quête Les commandements de Zenn
	.target Zenn Foulhoof
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    .goto 57,67.26,46.83
    >>Tuez |cRXP_ENEMY_Ferocitas the Mangeur de rêves|r. Ramassez-le pour le |cRXP_LOOT_Joyau de Tallonkai|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Réduisez votre santé à un bas niveau une fois presque terminé. Vous mourrez et ressusciterez après|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Viveracine|r.
    .turnin 2459 >>Rendez la quête Ferocitas le Mangeur de rêves
	.target Tallonkai Swiftroot
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >>Acceptez la quête En quête de rédemption !
	.target Syral Bladeleaf
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irriende|r
    .trainer >> Apprenez vos sorts de classe
    .target Irriende
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
    .trainer >> Apprenez vos sorts de classe
    .target Kal
step
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >>Rendez la quête En quête de rédemption !
	.target Zenn Foulhoof
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .accept 13946 >>Acceptez la quête Les représailles de la nature
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Viveracine|r.
    .accept 932 >>Acceptez la quête Haine folle
	.target Tallonkai Swiftroot
step
#completewith melenas
    .goto 57,54.45,45.43,40 >> Dirigez-vous vers le nord en direction de la grotte
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    .use 46716 >>|cRXP_WARN_Utilisez le|r |T134217:0|t[Ireroot Seeds] |cRXP_WARN_pour tuer |cRXP_ENEMY_Grellide|r à l'intérieur de la grotte|r
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
step
#label melenas
    .goto 57,51.82,43.85
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    .complete 932,1 --Collect Melenas' Head (x1)
    .mob Lord Melenas
step
    #requires ireroot
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
    .cooldown item,6948,>2,1
step
    .goto 57,55.77,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .turnin 13946 >>Rendez la quête Les représailles de la nature
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Viveracine|r.
    .turnin 932 >>Rendez la quête Haine folle
	.target Tallonkai Swiftroot
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Mantelours|r et |cRXP_FRIENDLY_Sentinelle Kyra Chantétoile|r
    .accept 483 >>Acceptez la quête Les reliques d'éveil
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 13945 >>Acceptez la quête Danger à domicile
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step
    #completewith sleepingd
    >>|cRXP_WARN_Tuez n'importe quel type de |cRXP_ENEMY_Furbolg|r sur votre chemin vers|r |cRXP_FRIENDLY_Oben Grifferage|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,48.61,47.92,100,0
    .goto 57,46.03,47.99,100,0
    .goto 57,45.488,50.760,25 >> Entrez dans le tunnel à l'intérieur de la maison-arbre
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oben Grifferage|r
    .target Oben Rageclaw
    .accept 2541 >>Acceptez la quête Le druide dormant
step
    #label shamans
    #sticky
    >>Tuez |cRXP_ENEMY_Gnarlpine Shamans|r. Ramassez-les pour leur |cRXP_LOOT_Shaman Vaudou Chouchou|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>Tuez |cRXP_ENEMY_Furbolgs|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>|cRXP_WARN_Suivez le chemin plus profondément dans le Refuge des saisons de Ban'ethil. Courez à travers le pont sur l'étage supérieur|r
    >>Ouvrez le |cRXP_PICK_Coffre|r de Nesting. Ramassez-le pour le |cRXP_LOOT_Rune de Nesting|r
    >>|cRXP_WARN_Vous pouvez aussi parler à la |cRXP_FRIENDLY_Sentinelle Chasseresse|r compagne et elle vous montrera le chemin|r
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>|cRXP_WARN_Descendez au niveau inférieur|r
    >>Ouvrez le |cRXP_PICK_Chest of the Noir Feather|r. Ramassez-le pour la |cRXP_LOOT_Black Feather Quill|r
    >>|cRXP_WARN_Vous pouvez aussi parler à la |cRXP_FRIENDLY_Sentinelle Chasseresse|r compagne et elle vous montrera le chemin|r
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>|cRXP_WARN_Allez à la grande salle centrale|r
    >>Ouvrez le |cRXP_PICK_Coffre|r du Ciel. Ramassez-le pour la |cRXP_LOOT_Sapphire of Ciel|r
    >>|cRXP_WARN_Vous pouvez aussi parler à la |cRXP_FRIENDLY_Sentinelle Chasseresse|r compagne et elle vous montrera le chemin|r
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>|cRXP_WARN_Montez sur la plateforme centrale, courez à travers le pont vers l'est|r
    >>Ouvrez le |cRXP_PICK_Coffre|r du Corbeau Griffe. Ramassez-le pour le |cRXP_LOOT_Corbeau Griffe Talisman|r
    >>|cRXP_WARN_Vous pouvez aussi parler à la |cRXP_FRIENDLY_Sentinelle Chasseresse|r compagne et elle vous montrera le chemin|r
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>Dirigez-vous vers la sortie du tunnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oben Grifferage|r
    .target Oben Rageclaw
    .turnin 2541 >>Rendez la quête Le druide dormant
    .accept 2561 >>Acceptez la quête Le druide de la Griffe
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>|cRXP_WARN_Courez à travers le pont de l'autre côté et attendez jusqu'à ce que la porte verrouillée s'ouvre d'elle-même|r
    >>Tuez |cRXP_ENEMY_Grifferage|r
    .use 8149 >>|cRXP_WARN_Utilisez le|r |T132502:0|t[Vaudou Chouchou] |cRXP_WARN_sur le cadavre de |cRXP_ENEMY_Rageclaw|r|r
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>Dirigez-vous vers la sortie du tunnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oben Grifferage|r
    .target Oben Rageclaw
    .turnin 2561 >>Rendez la quête Le druide de la Griffe
step
    .isQuestComplete 483
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
    .cooldown item,6948,>2,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Mantelours|r et |cRXP_FRIENDLY_Sentinelle Kyra Chantétoile|r
    .turnin 483 >>Rendez la quête Les reliques d'éveil
    .accept 486 >>Acceptez la quête Ursal le Marteleur
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .turnin 13945 >>Rendez la quête Danger à domicile
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irriende|r
    .trainer >> Apprenez vos sorts de classe
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
    .trainer >> Apprenez vos sorts de classe
    .target Kal
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .target Moon Priestess Amara
    .accept 487 >>Acceptez la quête La route de Darnassus
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>Tuez |cRXP_ENEMY_Gnarlpine Ambushers|r tandis que vous traversez le sentier de montagne
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob Gnarlpine Ambusher
step
    .goto 57,51.693,39.805
    >>|cRXP_WARN_Suivez le chemin vers le haut de la rampe jusqu'à la grotte au sommet de la montagne|r
    >>Tuez |cRXP_ENEMY_Ursal le Marteleur|r
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .target Moon Priestess Amara
    .turnin 487 >>Rendez la quête La route de Darnassus
step
    #completewith next
    #requires ambushers
    .deathskip >> Mourez et ressuscitez à Dolanaar
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .target Athridas Bearmantle
    .turnin 486 >>Rendez la quête Ursal le Marteleur
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .accept 997 >>Acceptez la quête La terre de Denalan
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 997 >>Rendez la quête La terre de Denalan
    .accept 918 >>Acceptez la quête Les graines de sylvain
    .accept 919 >>Acceptez la quête Les pousses de sylvain
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>Cliquez sur le |cRXP_PICK_Strange Fruited Plant|r
    .accept 930 >>Acceptez la quête Le fruit luminescent
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>Tuez les |cRXP_ENEMY_Timberlings|r. Dépouillez-les pour leur|cRXP_LOOT_Seeds|r
    >>Ramassez les |cRXP_LOOT_Timberling Sprouts|r sur le sol
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 918 >>Rendez la quête Les graines de sylvain
    .turnin 919 >>Rendez la quête Les pousses de sylvain
    .accept 922 >>Acceptez la quête Rellian Vertecime
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 930 >>Rendez la quête Le fruit luminescent
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Acceptez la quête De petits souvenirs de chez soi
	.target Nyoma
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .accept 7383 >>Acceptez la quête Teldrassil : le fardeau des Kaldorei
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fidelio.|r
    .turnin 6344 >>Rendez la quête De petits souvenirs de chez soi
    .accept 6341 >>Acceptez la quête En route vers Darnassus
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .target Rellian Greenspyre
    .turnin 922 >>Rendez la quête Rellian Vertecime
    .accept 923 >>Acceptez la quête Les tumeurs moussues
step << skip
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .target Sentinel Arynia Cloudsbreak
    .accept 937 >>Acceptez la quête La clairière enchantée
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .target Priestess A'moora
    .accept 2518 >>Acceptez la quête Les larmes de la Lune
step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob Timberling Mire Beast
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
step
    >>Tuez |cRXP_ENEMY_Dame Sathrah|r. Ramassez les |cRXP_LOOT_Silvery Spinnerets|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob Lady Sathrah
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>Cliquez sur les |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >>Acceptez la quête Les racines flamboyantes
step
    #loop
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .target Mist
    .accept 938 >>Acceptez la quête Brume
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .target Priestess A'moora
    .turnin 2518 >>Rendez la quête Les larmes de la Lune
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .target Sentinel Arynia Cloudsbreak
    .turnin 937 >>Rendez la quête La clairière enchantée << skip
    .turnin -938 >>Rendez la quête Brume
step
    .goto 57,40.471,29.942
    .use 18152 >>Utilisez la [Fiole d'améthyste] à la clairière de l'Oracle
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Vertecime|r et à |cRXP_FRIENDLY_Denalan|r
    .turnin 923 >>Rendez la quête Les tumeurs moussues
    .target +Rellian Greenspyre
    .goto 57,43.960,44.161
    .turnin 931 >>Rendez la quête Les racines flamboyantes
    .accept 2499 >>Acceptez la quête Froncechêne
    .target +Denalan
    .goto 57,43.936,44.196
step
    .goto 57,47.403,35.829,40,0
    .goto 57,47.39,34.47
    >>Tuez |cRXP_ENEMY_Froncechêne|r. Ramassez la |cRXP_LOOT_Gargantuan Tumor|r
    >>|cRXP_ENEMY_Froncechêne|r |cRXP_WARN_patrouille légèrement|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .mob Oakenscowl
step
    .goto 57,43.936,44.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 2499 >>Rendez la quête Froncechêne
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .turnin 7383 >>Rendez la quête Teldrassil : le fardeau des Kaldorei
    .accept 933 >>Acceptez la quête Teldrassil : l'aube se lève << skip

--skipping following chain. very long rp / bad xphr
step << skip
    .goto 57,43.939,58.534
    .use 5621 >>Utilisez la [Fiole de tourmaline] au puits de lune des bassins d'Arlithrien
	.complete 933,1
step << skip
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 933 >>Rendez la quête Teldrassil : l'aube se lève
    .accept 14005 >>Acceptez la quête La vengeance d'Élune
step << skip
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step << skip
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 14005 >>Rendez la quête La vengeance d'Élune
    .accept 935 >>Acceptez la quête Les eaux de Teldrassil
step << skip
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .turnin 935 >>Rendez la quête Les eaux de Teldrassil
    .accept 14039 >>Acceptez la quête Le foyer des Kaldorei
step
    .goto 89,35.993,50.342
    .zone 89 >> Voyagez jusqu'à Darnassus
    .isOnQuest 6341
step
    #optional
    #label Teldskip
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Acceptez la quête De petits souvenirs de chez soi
	.target Nyoma
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fidelio|r
    .turnin 6344 >>Rendez la quête De petits souvenirs de chez soi
    .accept 6341 >>Acceptez la quête En route vers Darnassus
	.target Fidelio
step
    #completewith end
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fidelio|r
    .fly Darnassus >> Volez à Darnassus
	.target Fidelio
    .zoneskip 89
step << Warrior
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r |T135350:0|t[Claymore] |cRXP_BUY_auprès d'elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ariyell Skyshadow
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_auprès d'elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Ariyell Skyshadow
    .xp >11,1
    .xp <10,1
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez une|r |T132402:0|t[Hachette] |cRXP_BUY_auprès d'elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ariyell Skyshadow
    .xp >12,1
    .xp <11,1
step << Hunter
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_chez elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ariyell Skyshadow
step << Warrior
    #optional
    #completewith end
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #optional
    #completewith end
    +Équipez le [Coutelas] dans votre main droite
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Équipez la|r |T132402:0|t[Hachette] |cRXP_WARN_à votre main principale|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    .goto 89,43.913,76.149
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Cordressa Buissarc|r en haut
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>Acceptez la quête Auberdine au creux de la vague
step
    .isQuestComplete 14039
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tyrande Murmevent|r
    .target Tyrande Whisperwind
    .turnin 14039 >>Rendez la quête Le foyer des Kaldorei
    .isQuestComplete 14039
step
    .isOnQuest 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Aquinne|r
    .target Sister Aquinne
    .turnin 6341 >>Rendez la quête En route vers Darnassus
    .accept 6342 >>Acceptez la quête Le présent inattendu
step
    .isQuestTurnedIn 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Aquinne|r
    .target Sister Aquinne
    .accept 6342 >>Acceptez la quête Le présent inattendu
step
    .isOnQuest 6342
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Leora|r
    .target Leora
    .turnin 6342 >>Rendez la quête Le présent inattendu
step
    .goto 89,35.993,50.342
    .subzone 702 >>Entrez dans le portail violet à côté du maître du Vol
    .zoneskip Darkshore
step
    #label end
    .goto 57,55.406,88.415
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'danel >>Envolez-vous vers Lor’danel
    .zoneskip Darkshore
    .target Vesprystus
]])
