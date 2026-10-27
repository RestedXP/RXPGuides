if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 1-6 Sombrevallon
#displayname 1-7 Sombrevallon << sod
#version 1
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Elfes de la Nuit. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Acceptez la quête L'Equilibre de la nature
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    >>Dépouillez les mobs que vous tuez, assurez-vous d'avoir de quoi vendre pour au moins 10 pièces de cuivre au vendeur, vous en aurez besoin pour apprendre |T132333:0|t[Cri de guerre]<< Warrior
    .xp 2 >> Montez jusqu'au niveau 2
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r et à |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Acceptez la quête Un bon ami
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Acceptez la quête La protectrice sylvestre
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >> Rendez la quête L'Equilibre de la nature << Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Acceptez la quête L'Equilibre de la nature
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.8,34.1
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Hunter
    #season 0,1
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 610xp pour le niveau 4 (790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << Hunter
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Rendez la quête La protectrice sylvestre
    .target Tarindrella
    .accept 459 >> Acceptez la quête La protectrice sylvestre
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >> Rendez la quête L'Equilibre de la nature
    .target Conservator Ilthalaine
	.accept 3117 >> Acceptez la quête Sceau gravé
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dellylah|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Eau de source]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >> Rendez la quête L'Equilibre de la nature << Hunter
    .turnin 456 >> Rendez la quête L'Equilibre de la nature << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Acceptez la quête L'Equilibre de la nature
	.accept 3116 >> Acceptez la quête Sceau simple << Warrior
	.accept 3117 >> Acceptez la quête Sceau gravé << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Acceptez la quête Sceau béni << Priest
	.accept 3120 >> Acceptez la quête Sceau verdoyant << Druid
step << Warrior
    #season 0
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keina
step << Warrior
    #season 0
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Rendez la quête Sceau simple
    .trainer >> Apprenez vos sorts de classe
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,59.8,34.1
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << !Hunter
    #season 0
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << !Hunter
    #season 0 << Druid/Warrior
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Rendez la quête La protectrice sylvestre
    .target Tarindrella
    .accept 459 >> Acceptez la quête La protectrice sylvestre
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >> Rendez la quête L'Equilibre de la nature
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Rendez la quête Un ami dans le besoin
    .target Dirania Silvershine
    .accept 3521 >> Acceptez la quête Antidote d'Iverron
step << Hunter
    #season 0
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Assurez-vous d'avoir au moins 1 pièce d'argent restante après avoir quitté le vendeur pour apprendre |r |T132204:0|t[|cRXP_FRIENDLY_Morsure de serpent|r]
	.vendor >> |cRXP_BUY_Achetez 2 stacks de|r |T132382:0|t[Flèches grossières]
    .target Keina
step << Druid
    #season 0,1
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dellylah|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 20|r |T132794:0|t[Eau de source]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Acceptez la quête Le venin des Tissebois
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Rendez la quête Sceau gravé
    .train 1978 >>Apprenez [Morsure du serpent]
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Cueillez les |cRXP_LOOT_Moonpetal Lilies|r sur le sol
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step << Hunter
#optional
#season 2
#completewith next
    >>Tuez les|cRXP_ENEMY_Webwood Spiders|r. Dépouillez les pour leur |cRXP_LOOT_Ichor|r et leur |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Tuez les|cRXP_ENEMY_Webwood Spiders|r. Dépouillez les pour leur |cRXP_LOOT_Ichor|r et leur |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << skip --logout skip Warrior
	#hardcore
	#completewith next
    #season 2
	+Effectuez un "Logout skip" sur le rebord derrière les œufs. Déplacez votre personnage jusqu'à ce qu'il semble flotter, puis déconnectez-vous et reconnectez-vous.
	>>Si vous tombez, sortez simplement de la grotte afin de rendre la quête
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUEZ ICI pour un exemple vidéo
step << skip --logout skip Hunter
	#hardcore
    #season 2
	#completewith next
	+Effectuez un "Logout skip" sur le rebord derrière les œufs. Déplacez votre personnage jusqu'à ce qu'il semble flotter, puis déconnectez-vous et reconnectez-vous.
	>>Si vous tombez, sortez simplement de la grotte afin de rendre la quête
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUEZ ICI pour un exemple vidéo
step
    .goto Teldrassil,55.0,43.7
    >>Tuez les |cRXP_ENEMY_Grell|r et les |cRXP_ENEMY_Grellkin|r. Dépouillez les pour leur |cRXP_LOOT_Mushrooms|r et leur |cRXP_LOOT_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    >>ASTUCE : |cRXP_WARN_Prenez la Tunique en récompense de cette quête et équipez-la. Vous l'utiliserez pour graver une rune ultérieurement|r << sod Hunter/sod Rogue/sod Druid/sod Warrior
    >>ASTUCE : |cRXP_WARN_Prenez la Robe en récompense de cette quête et équipez-la. Vous l'utiliserez pour graver une rune ultérieurement|r << sod Priest
    .turnin 917 >> Rendez la quête L'œuf d'araignée Tissebois
    .target Gilshalan Windwalker
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    >>ASTUCE : |cRXP_WARN_Prenez les jambières comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Rendez la quête La protectrice sylvestre
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Rendez la quête Antidote d'Iverron
    .target Dirania Silvershine
    .accept 3522 >> Acceptez la quête Antidote d'Iverron
step << !Priest !Warrior
    #season 0 << Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
	.vendor >> |cRXP_BUY_Achetez 3 ou 4 stacks de|r [Flèche grossière] << Hunter
    .target Keina
step << Warrior
    #season 0
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Apprenez vos sorts de classe
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janna Brillelune|r à l'étage.
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r en haut des escaliers
	.turnin 3119 >> Rendez la quête Sceau béni << !sod
    .turnin 77574 >> Rendez la quête Méditations sur Élune << sod
	.trainer >> Apprenez vos sorts de classe
step
    #season 0 << Warrior
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Rendez la quête Le venin des Tissebois
    .target Gilshalan Windwalker
    .accept 917 >> Acceptez la quête L'œuf d'araignée Tissebois
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Équipez la|r |T135641:0|t[Dague du bois-chardon]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 0,1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Montez l'Arbre Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Rendez la quête Sceau verdoyant
	.train 8921 >>Apprenez [Éclat lunaire]
step
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    >>ASTUCE : |cRXP_WARN_Prenez les pantalons comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << Priest sod
    .turnin 3522 >> Rendez la quête Antidote d'Iverron
step
    #season 0 << Warrior
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entrez dans la Grotte de Sombrefil
step
    .goto Teldrassil,57.0,26.4
    #season 0 << Warrior
    >>Ramassez un |cRXP_LOOT_Webwood Egg|r sur le sol au fond de la Grotte
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << skip --logout skip
	#hardcore
	#completewith next
    #season 0 << Warrior
	+Effectuez un "Logout skip" sur le rebord derrière les œufs. Déplacez votre personnage jusqu'à ce qu'il semble flotter, puis déconnectez-vous et reconnectez-vous.
	>>Si vous tombez, sortez simplement de la grotte afin de rendre la quête
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUEZ ICI pour un exemple vidéo
step
#xprate <1.99
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 917 >> Rendez la quête L'œuf d'araignée Tissebois
    .target Gilshalan Windwalker
    .accept 920 >> Acceptez la quête Les appels de Tenaron
step
#xprate <1.99
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Rendez la quête Les appels de Tenaron
    .target Tenaron Stormgrip
    .accept 921 >> Acceptez la quête La couronne de la Terre
step
#xprate <1.99
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> Utilisez la [Flasque de cristal] au puits de lune
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.8,34.1
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << Hunter
#xprate <1.99
    #requires vial1
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Rendez la quête L'Equilibre de la nature
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Acceptez la quête Au service d'Elune
step
#xprate <1.99
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Rendez la quête La couronne de la Terre
    .target Tenaron Stormgrip
    .accept 928 >> Acceptez la quête La couronne de la Terre
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acceptez la quête Livraison pour Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Sombrivage

step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Acceptez la quête Les commandements de Zenn
step
    #label HCHunterStart --hidden step for #include
step
    #sticky
    #completewith DenlansEarth
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Faites attention car les |cRXP_ENEMY_Nightsabers|r et les |cRXP_ENEMY_Strigid Owls|r se déplacent très rapidement ! |cRXP_ENEMY_Strigid Owls|r vont aussi ramener les autres |cRXP_ENEMY_Owls|r sur leur route si vous êtes déjà en combat avec l'une d'entre elles
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlansEarth
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>Faites en sorte d'avoir 1 emplacement vide dans vos sacs avant d'accepter cette quête
    .accept 997 >> Acceptez la quête La terre de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Acceptez la quête Une brise étrange
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Rendez la quête Au service d'Elune
    .target Laurna Morninglight
    .accept 5621 >> Acceptez la quête Vêtements de la lune
	.trainer >> Apprenez vos sorts de classe
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .vendor >> |cRXP_BUY_Achetez et équipez un|r [Petit couteau de lancer]
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 932 >> Acceptez la quête Haine folle
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
    >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +Équipez l'[Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Glaive] |cRXP_BUY_si vous pouvez vous le permettre(5s 36c), sinon passez cette étape|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Stylet] |cRXP_BUY_si vous pouvez vous le permettre(4s 1c), sinon passez cette étape|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Rendez la quête Livraison pour Dolanaar << Hunter
    .turnin 2159 >> Rendez la quête Livraison pour Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Achetez 10 |cRXP_LOOT_Lait frais|r ou autant que vous le pouvez << Priest
    .home >> Liez votre Pierre de Foyer à Dolanaar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Apprenez [Tir des Arcanes] << era
    .train 5116 >> Apprenez [Trait de choc] << sod
    .target Dazalar
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 929 >> Acceptez la quête La couronne de la Terre
step
    #sticky
    #completewith DenlanStart
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Faites attention car les |cRXP_ENEMY_Nightsabers|r et les |cRXP_ENEMY_Strigid Owls|r se déplacent très rapidement ! |cRXP_ENEMY_Strigid Owls|r vont aussi ramener les autres |cRXP_ENEMY_Owls|r sur leur route si vous êtes déjà en combat avec l'une d'entre elles
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlanStart
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|tL'[Herboristerie] est nécessaire pour récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez oublier ce métier plus tard
    >>Si vous préférez acheter 5 [Terrestrine] à l'Hôtel des Ventes plus tard, passez cette étape
    .train 2366 >> Apprenez [Herboristerie]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|tL'[Herboristerie] est nécessaire pour récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez oublier ce métier plus tard
    .train 2366 >> Apprenez [Herboristerie]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>Montez votre [Herboristerie] à un niveau de 15 pour être capable de récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez l'oublier plus tard
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>|cRXP_WARN_Cueillez 5 [Terrestrine] à l'aide de votre [Herboristerie] ou plus rarement dans les |cRXP_PICK_Battered Chests|r pour une quête de classe à venir|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Ciblez |cRXP_FRIENDLY_Sentinel Shaya|r
    >>Lancez |T135929:0|t[Soins inférieurs (Rang 2)] et |T135987:0|t[Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Rendez la quête La terre de Denalan
    .target Denalan
    .accept 918 >> Acceptez la quête Les graines de sylvain
    .accept 919 >> Acceptez la quête Les pousses de sylvain
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Tuez les |cRXP_ENEMY_Timberlings|r. Dépouillez-les pour leur|cRXP_LOOT_Seeds|r
    >>Ramassez les |cRXP_LOOT_Timberling Sprouts|r sur le sol << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Rendez la quête Les graines de sylvain
    .target Denalan
    .accept 922 >> Acceptez la quête Rellian Vertecime
    .turnin 919 >> Rendez la quête Les pousses de sylvain
step
    #sticky
    #completewith Starbreeze
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Faites attention car les |cRXP_ENEMY_Nightsabers|r et les |cRXP_ENEMY_Strigid Owls|r se déplacent très rapidement ! |cRXP_ENEMY_Strigid Owls|r vont aussi ramener les autres |cRXP_ENEMY_Owls|r sur leur route si vous êtes déjà en combat avec l'une d'entre elles
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Voyagez jusqu'au Village de Brise-stellaire
step
    .goto Teldrassil,68.02,59.66
    >>Ouvrez le |cRXP_PICK_Tallonkai's Dresser|r. Récupérez le |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gaerolas Talvethren|r en haut des escaliers
    .turnin 475 >> Rendez la quête Une brise étrange
    .target Gaerolas Talvethren
    .accept 476 >> Acceptez la quête La corruption des Pins-tordus
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>Utilisez la [Fiole de jade] au puits de lune du Village de Brise-stellaire
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith SeekRedemption
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Gardez vos [Petit oeuf] et vos [Petite pattes d'araignée] pour monter votre niveau de [Cuisine] plus tard
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Rendez la quête Les commandements de Zenn
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Montez jusqu'au niveau 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Montez jusqu'au niveau 7 +2350xp
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Acceptez la quête En quête de rédemption !
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Rendez la quête La corruption des Pins-tordus
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Rendez la quête Vêtements de la lune
	.trainer >> Apprenez vos sorts de classe
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 2438 >> Rendez la quête Le Capturêve d'émeraude
    .target Tallonkai Swiftroot
    .accept 2459 >> Acceptez la quête Ferocitas le Mangeur de rêves
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un |r [Arc courbe en bois de corne] |cRXP_BUY_si vous pouvez vous le permettre(2s 85c), sinon passez cette étape|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Achetez jusqu'à 800|r [Flèche grossière]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    #season 0
    +Équipez l'[Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Apprenez vos sorts de classe
    .target Dazalar
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Glaive] |cRXP_BUY_si vous pouvez vous le permettre(5s 36c), sinon passez cette étape|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Stylet] |cRXP_BUY_si vous pouvez vous le permettre(4s 1c), sinon passez cette étape|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 933 >> Acceptez la quête La couronne de la Terre
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
    #sticky
	#completewith jewel
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Proche d'un petit arbre
    .goto 1438/1,822.200,9948.500,6 >>Sur la petite colline
    .goto 1438/1,809.800,9926.400,6 >>Près de l'arbre massif
    >>Ramassez les 3 |cRXP_LOOT_Gangrenoix|r aux emplacements marqués sur votre carte.
    >>Passez cette étape si aucun d'entre eux n'est présent et que vous n'arrivez pas à remplir cet objectif
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    >>Ils se situent en général près des troncs d'arbre
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Tuez |cRXP_ENEMY_Ferocitas the Dream Eater|r. Dépouillez le pour son [|cRXP_LOOT_Gnarlpine Necklace|r]. Faites attention car il peut utiliser [Rosser] qui vous touchera trois fois en un seul coup
    .use 8049 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gnarlpine Necklace|r] pour récupérer le|r |cRXP_LOOT_Joyau de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
    .isQuestTurnedIn 489
step
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Vendez et réparez votre équipement si nécessaire|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    >>Ils se situent en général près des troncs d'arbre
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
    .isOnQuest 489
step
    #sticky
	#completewith next
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Voyagez jusqu'à Gangreroche
step
    .goto Teldrassil,51.2,50.6
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Acceptez la quête La couronne de la Terre
step
    #sticky
	#completewith spiderLegs
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Voyagez jusqu'au sud-ouest de Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Cliquez sur le |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Acceptez la quête Le fruit luminescent
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Voyagez jusqu'aux bassins d'Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>Utilisez la [Fiole de tourmaline] au puits de lune des bassins d'Arlithrien
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Voyagez jusqu'à Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >> Mourez et ressuscitez au cimetière de Dolanaar, faites en sorte de mourir à l'est du puits de lune, sinon vous risquez de vous retrouver à Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 7383 >> Acceptez la quête La couronne de la Terre
step
	#xprate <1.5
    #label SpiderLegsEnd
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Apprenez la Cuisine
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
    .target Zarrin
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Byancie
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 932 >> Rendez la quête Haine folle
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Si vous n'êtes pas assez avancé, complétez la quête du Seigneur Melenas|r.
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Apprenez vos sorts de classe
    .accept 5629 >>Acceptez la quête Retour à la maison << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .train 5171 >> Apprenez [Débiter] << !sod
    .train 921 >> Apprenez [Vol à la tire] aussi, qui sera nécessaire pour une quête de Voleur au niveau 10
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.trainer >> Apprenez vos sorts de classe
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6102 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Strigid Screecher|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6103 >> Acceptez la quête Entraîner la bête
    .train 1130 >> Faites bien attention à avoir appris la Marque du chasseur. Vous en aurez besoin pour obtenir une rune plus tard
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>La |cRXP_FRIENDLY_Moon Priestess Amara|r patrouille la route à l'ouest de Dolanaar. Elle peut aussi être en train de combattre une embuscade de furlbog et dans ce cas vous devrez attendre qu'elle termine ce combat
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 1684 >> Acceptez la quête Elanaria
    .accept 487 >> Acceptez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Acceptez la quête Pomme d'amour
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>La |cRXP_FRIENDLY_Moon Priestess Amara|r patrouille la route à l'ouest de Dolanaar. Elle peut aussi être en train de combattre une embuscade de furlbog et dans ce cas vous devrez attendre qu'elle termine ce combat
    .accept 487 >> Acceptez la quête La route de Darnassus
    .target Moon Priestess Amara
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Tuez les |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Voyagez jusqu'à la clairière de l'Oracle
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>Utilisez la [Fiole d'améthyste] à la clairière de l'Oracle
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige énormément de dégâts. Essayez de les tuer rapidement
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Cliquez sur les |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Acceptez la quête Les racines flamboyantes
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 2670xp pour le niveau 10 (3830/6500)
    >>|cRXP_WARN_Une fois que vous atteignez ce seuil d'expérience, ignorez la quête des harpies/l'escorte et allez directement à Darnassus. Vous aurez une autre occasion de terminer ces quêtes plus tard|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Gardez en tête qu'il s'agit d'une quête chronométrée, vous devrez la rendre dans les 10 minutes après l'avoir acceptée|r
    .turnin 938 >> Rendez la quête Brume
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Gardez en tête que la quête Brume est chronométrée, vous devrez la rendre dans les 10 minutes après l'avoir acceptée|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
    .turnin 938 >> Rendez la quête Brume
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Finissez la collecte des 7 Petites pattes d'araignée
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>Si vous êtes toujours en retard sur l'expérience, faites la quête des harpies au nord
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes de Darnassus
    >>|cRXP_WARN_Assurez-vous que vous êtes plus proche du cimetière de Darnassus que de celui de Dolanaar, sinon vous pourriez atterrir au mauvais cimetière. Courez jusqu'à sortir complètement de la tanière, puis mourez si vous n'êtes pas sûr de la distance|r << sod Priest
    >>|cRXP_WARN_Assurez-vous que vous êtes plus proche du cimetière de Darnassus que de celui de Dolanaar, sinon vous pourriez atterrir au mauvais cimetière. Courez sur le côté ouest de la rivière, puis mourez si vous n'êtes pas sûr de la distance|r << sod Hunter/sod Warrior/sod Druid
    .target Gardien des âmes
step << !Rogue
    #hardcore
	#xprate < 1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Harpies Plumesangs|r sur la route pour Darnassus. Dépouillez-les pour leur |cRXP_LOOT_Ceintures|r. |cRXP_WARN_Vous n'êtes pas obligé de compléter cet objectif pour le moment|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Rendez la quête Elanaria
    .target Elanaria
    .accept 1683 >> Acceptez la quête Vorlus Vilsabot
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saelienne l'aubergiste|r
    .home >> Liez votre Pierre de foyer à Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Achetez plus de|r |T132815:0|t|cRXP_LOOT_Lait glacé|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r au sommet de l'Arbre
    .turnin 940 >> Rendez la quête Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin -5923 >> Rendez la quête Écouter l’appel
    .accept 5921 >> Acceptez la quête Reflet-de-Lune
	.trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Rendez la quête Entraîner la bête
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>|cRXP_WARN_Il se trouve dans votre grimoire|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 5921 >> Rendez la quête Reflet-de-Lune
    .target Dendrite Starblaze
    .accept 5929 >> Acceptez la quête L'esprit du Grand ours
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>Ceci rendra votre retour plus rapide
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 5929 >> Rendez la quête L'esprit du Grand ours
    .target Dendrite Starblaze
    .accept 5931 >> Acceptez la quête Retour à Darnassus
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Achetez 4 stacks de|r |T132382:0|t[Flèches aiguisées]|cRXP_BUY_. Équipez-les dès que vous atteignez le niveau 10|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Apprenez la Cuisine
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Trouvez la Prêtresse de la lune Amara, elle patrouille sur la route à l'ouest de Dolanaar.
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Rendez la quête La route de Darnassus
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.train 13165 >> Apprenez vos sorts de niveau 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 935 >> Acceptez la quête La couronne de la Terre
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Rendez la quête Les racines flamboyantes
    .turnin 930 >> Rendez la quête Le fruit luminescent
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Rendez la quête Le cœur moussu
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Cliquez sur le |cRXP_LOOT_Pot de Denalan|r
	.turnin 941 >> Rendez la quête Une belle plante
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .train 5171 >> Apprenez [Débiter]
    .train 921 >> Apprenez [Vol à la tire] aussi, qui sera nécessaire pour une quête de Voleur au niveau 10
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.trainer >> Apprenez vos sorts de classe
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6102 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Strigid Screecher|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6103 >> Acceptez la quête Entraîner la bête
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 1684 >> Acceptez la quête Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Acceptez la quête Pomme d'amour
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez une|r |T135145:0|t[Canne de marche]
    >>|cRXP_WARN_Vous l'équiperez plus tard. Passez cette étape si vous trouvez un bâton différent|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Une fois vous avez passé la zone des furbold, mourez volontairement et ressuscitez au cimetière de Darnassus
    .target Gardien des âmes
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r au sommet de l'Arbre
    .turnin -935 >> Rendez la quête La couronne de la Terre
    .turnin -940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Rendez la quête Pomme d'amour
    .target Syurna
    .accept 2242 >> Acceptez la quête L'appel du destin
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Voyagez vers |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Tuez les |cRXP_ENEMY_Vorlus Vilehoof|r. Dépouillez-les pour leur|cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Strigid Hunter|r pour le dompter|r -- .tame 1997
    .train 2981 >> Attaquez des mobs avec celui-ci pour qu'il apprenne [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
	.unitscan Strigid Hunter
step
    #sticky
    #completewith Spinnerets
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>Tuez |cRXP_ENEMY_Lady Sathrah|r. Dépouillez-la pour ses |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Lady Sathrah|r peut apparaître à 3 endroits différents, regardez votre carte pour le chemin que nous vous recommandons de prendre
    >>Dirigez-vous au nord le long de la rivière et vérifiez le premier endroit le plus à l'est. Commencez la quête des [Tumeurs] sur la route
    >>Si elle n'est pas à l'est de la rivière, complétez la quête des [Tumeurs] avant de vous diriger vers l'ouest
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto Teldrassil,41.7,41.8
	>>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>Lancez [Vol à la tire] sur |cRXP_ENEMY_Sethir the Ancient|r
    >>Vous devez être en [Camouflage] pour utiliser [Vol à la tire]
    >>|cRXP_ENEMY_Sethir the Ancient|r marche le long de la grande branche d'arbre
    >>|cRXP_WARN_Évitez d'affronter |cRXP_ENEMY_Sethir the Ancient|r. Laissez le passez devant vous, puis utilisez|r [Camouflage] et ensuite [Vol à la tire] lorsque vous êtes derrière lui
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige énormément de dégâts. Essayez de les tuer rapidement
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    >>|cRXP_WARN_Passez cette quête si le PNJ n'est pas présent|r
    .accept 938 >> Acceptez la quête Brume
step
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Gardez en tête qu'il s'agit d'une quête chronométrée, vous devrez la rendre dans les 10 minutes après l'avoir acceptée|r
    .turnin 938 >> Rendez la quête Brume
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Mourez et ressuscitez au cimetière de Darnassus
    >>Faites bien attention à être du côté ouest de la rivière ou vous risquez de prendre la mauvaise route << sod
    .target Gardien des âmes
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
	.abandon 927 >> Abandonnez la quête Le cœur moussu. Vous n'aurez plus d'opportunité pour la rendre à partir de maintenant
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Rendez la quête Elanaria
    .target Elanaria
    .accept 1683 >> Acceptez la quête Vorlus Vilsabot
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Voyagez vers |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Tuez les |cRXP_ENEMY_Vorlus Vilehoof|r. Dépouillez-les pour leur|cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Mourez volontairement après avoir passé la zone des furbolg et ressuscitez à Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Rendez la quête Vorlus Vilsabot
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5931 >> Rendez la quête Retour à Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acceptez la quête Corps et cœur
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .turnin -935 >> Rendez la quête La couronne de la Terre
    .turnin -940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Rendez la quête Entraîner la bête
step << Hunter
    >>Montez la rampe à la droite de |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Apprenez les compétences de votre familier
    .target Silvaria
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Rendez la quête Tumeurs
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Rendez la quête L’appel du destin
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Rendez la quête Les larmes de la Lune
    .target Priestess A'moora
    .accept 2520 >> Acceptez la quête Sacrifice de Sathrah
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>Utilisez le [Sacrifice de Sathrah] à la fontaine
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Rendez la quête Sacrifice de Sathrah
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firodren Mandelune|r
    .train 2366 >> Apprenez [Herboristerie]
    >>|T136065:0|tL'[Herboristerie] est nécessaire pour récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez oublier ce métier plus tard
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Achetez les objets suivants pour rendre des quêtes directement à Sombrivage plus tard:
    >>|T134187:0|t[Terrestrine] << Druid era
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133972:0|t[Viande de trotteur]
    *Passez cette étape si vous préférez ne pas les acheter.
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCherchez |cRXP_FRIENDLY_Jaeana|r, elle patrouille dans la Terrasse des Marchands
    >>|cRXP_BUY_Achetez-lui un stack de|r |T133972:0|t[Viande séchée coriace] |cRXP_BUY_.
    >>|cRXP_WARN_Vous allez en avoir besoin pour nourrir votre chouette, elles ne mangent que de la viande et il n'y a pas de vendeur de viande à Sombrivage|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .train 227 >>Apprenez la compétence Bâtons << Hunter/Warrior/Priest
    .train 265 >>Apprenez la compétence Arcs << Sod Rogue
    >>Si vous avez un Bâton dans votre sac, équipez-le. << Hunter
    >>Si vous avez un Arc dans votre sac, équipez-le. << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Achetez des|r [Flèche pointue]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton noueux]|cRXP_BUY_. Équipez le au niveau 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton]|cRXP_BUY_. Équipez le au niveau 11|r << era
    >>|cRXP_BUY_Achetez et équipez un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_si vous ne pouvez pas vous offrir un|r |T135147:0|t[Bâton noueux] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Achetez et équipez un|r |T135346:0|t[Sabre d’abordage] |cRXP_BUY_si vous ne pouvez pas vous offrir un|r |T135154:0|t[Bâton de combat]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r au second étage
    >>|cRXP_BUY_Achetez une|r [Dague de lancer équilibrée]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Rendez la quête Nessa Chantelombre
    .target Nessa Shadowsong
    .accept 6341 >> Acceptez la quête Le don de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Rendez la quête Le don de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acceptez la quête Vol vers Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
]])
