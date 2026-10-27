if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#season 0,1
<< Alliance
#name 1-6 Sombrevallon
#displayname 1-7 Sombrevallon << sod
#version 1
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Elfes de la Nuit. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Acceptez la quête L'Equilibre de la nature
step << !Druid
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << !Druid
    >>Dépouillez les mobs que vous tuez, assurez-vous d'avoir de quoi vendre pour au moins 10 pièces de cuivre au vendeur, vous en aurez besoin pour apprendre |T132333:0|t[Cri de guerre]<< Warrior
    .xp 2 >> Montez jusqu'au niveau 2
step << Druid
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto 1438/1,669.500,10387.300
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Druid
    #completewith next
    +|cRXP_WARN_Gardez bien 96 cuivre à vendre au marchand avec votre camelote|r, vous pouvez y ajouter votre bâton qui se vend pour 9 cuivre
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r et à |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Acceptez la quête Un bon ami
    .target +Dirania Silvershine
    .goto 1438/1,713.81,10407.20
    .accept 458 >> Acceptez la quête La protectrice sylvestre
	.goto 1438/1,763.45,10389.79
    .target +Melithar Staghelm
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dellylah|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Eau de source]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step << !Druid
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
    .trainer >> Apprenez [Cri de guerre]
step << Hunter/Warrior
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 610xp pour le niveau 4 (790/1400)
step << Hunter/Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << Hunter/Warrior
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << Hunter/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Rendez la quête La protectrice sylvestre
    .target Tarindrella
    .accept 459 >> Acceptez la quête La protectrice sylvestre
    .accept 97977 >>Acceptez la quête L’appel de la nature
step << Druid
	.goto 1438/1,820.68,10487.33--c:Teldrassil,58.8,39.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khardan Proudblade|r
    >>|cRXP_WARN_Vendez tout votre équipement et votre bâton|r ! Achetez-lui un |T135139:0|t[|cRXP_LOOT_Bâton court|r]
	.collect 2132 --Short Staff (1)
	.use 2132 >> Équipez le Bâton court
	.target Khardan Proudblade
step << !Priest !Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
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
step << !Hunter !Druid !Warrior
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sangliers des chardons|r en rejoignant Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter !Druid !Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << !Hunter !Druid !Warrior
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << !Hunter !Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    --@TODO add herbalism note for druid for earthroot
    .turnin 458 >> Rendez la quête La protectrice sylvestre
    .target Tarindrella
    .accept 459 >> Acceptez la quête La protectrice sylvestre
    .accept 97977 >>Acceptez la quête L’appel de la nature
step << Priest/Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456 >> Rendez la quête L'Equilibre de la nature
    .target Conservator Ilthalaine
	.accept 3119 >> Acceptez la quête Sceau béni << Priest
step << Druid
    #completewith next
    +|cRXP_WARN_Lancez|r |T136006:0|t[|cRXP_LOOT_Colère|r] |cRXP_WARN_jusqu'à ne plus avoir de mana, puis faites des attaques en |r |T135158:0|t[|cRXP_LOOT_Mêlée|r] |cRXP_WARN_jusqu'à avoir récupéré tout votre mana puis continuez|r
step << Druid
    .goto 1438/1,964.300,10272.800,10,0
    .goto 1438/1,1030.200,10339.800
    >>Tuez les |cRXP_ENEMY_Grells|r et les |cRXP_ENEMY_Grellides|r. Dépouillez-les pour leur |cRXP_LOOT_Gangremousse|r
    >>Ramassez les |T134460:0|t[|cRXP_LOOT_Totems pin-tordu|r] des les camps de Grell
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sangliers des chardons|r en rejoignant Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Druid
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << Druid
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << Druid
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    >>ASTUCE : |cRXP_WARN_Prenez les jambières comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459,1 >> Rendez la quête La protectrice sylvestre
    .turnin 97977 >>Rendez la quête L’appel de la nature
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Rendez la quête Un ami dans le besoin
    .target Dirania Silvershine
    .accept 3521 >> Acceptez la quête Antidote d'Iverron
step << Warrior
    .xp 4-40
step << Hunter/Druid/Warrior
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Assurez-vous d'avoir au moins 1 pièce d'argent restante après avoir quitté le vendeur pour apprendre |r |T132204:0|t[|cRXP_FRIENDLY_Morsure de serpent|r] << Hunter
	.vendor >> |cRXP_BUY_Achetez 2 stacks de|r |T132382:0|t[Flèches grossières] << Hunter
    .vendor >> |cRXP_BUY_Vendez votre camelote|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Rendez la quête Sceau simple
    .trainer >> Apprenez vos sorts de classe
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dellylah|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez jusqu'à 25|r |T132794:0|t[Eau de source]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step
    #optional
    .xp 3
step
    .goto 1438/1,871.24,10417.65
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Acceptez la quête Le venin des Tissebois
step << Hunter/Druid
    .xp 4-40
step << Druid
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Montez l'Arbre Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Rendez la quête Sceau verdoyant
	.train 8921 >>Apprenez [Éclat lunaire]
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Rendez la quête Sceau gravé
    .train 1978 >>Apprenez [Morsure du serpent]
    .target Ayanna Everstride
step << Druid
    #completewith IchorVenomSac
    +|cRXP_WARN_Arrêtez complètement d'utiliser|cRXP_LOOT_ |T136006:0|t[|rColère|r] ! Utilisez uniquement des attaques en mêlée |T135158:0|t[|cRXP_LOOT_Mêlée|r] et |T136096:0|t[|cRXP_LOOT_Eclat lunaire|r] à partir de maintenant
    >>Essayez de n'utiliser Eclat lunaire qu'après une attaque en mêlée |cRXP_WARN_pour ne pas réinitialiser votre swing timer !|r
step
    .goto 1438/1,863.96,10534.840,10,0
    .goto 1438/1,873.64,10566.40,10,0
    .goto 1438/1,850.72,10595.920,10,0
    .goto 1438/1,820.17,10547.39,10,0
    .goto 1438/1,863.96,10534.840
    >>Cueillez les |cRXP_LOOT_Moonpetal Lilies|r sur le sol
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>Tuez les|cRXP_ENEMY_Webwood Spiders|r. Dépouillez les pour leur |cRXP_LOOT_Ichor|r et leur |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sangliers des chardons|r sur la route vers les Grells
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Druid
    .goto 1438/1,1014.17,10348.18
    >>Tuez les |cRXP_ENEMY_Grell|r et les |cRXP_ENEMY_Grellkin|r. Dépouillez les pour leur |cRXP_LOOT_Mushrooms|r et leur |cRXP_LOOT_Fel Moss|r
    >>Ramassez les |T134460:0|t[|cRXP_PICK_Totems pin-tordu|r] des les camps de Grell
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    .goto 1438/1,1014.17,10348.18
    >>Tuez les |cRXP_ENEMY_Grells|r et les |cRXP_ENEMY_Grellides|r. Dépouillez-les pour leur |cRXP_LOOT_Champignon|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    >>ASTUCE : |cRXP_WARN_Prenez les jambières comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Rendez la quête La protectrice sylvestre
    .turnin 97977 >>Rendez la quête L’appel de la nature
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sangliers des chardons|r en rejoignant Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Rendez la quête Antidote d'Iverron
    .target Dirania Silvershine
    .accept 3522 >> Acceptez la quête Antidote d'Iverron
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dellylah|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez jusqu'à 25|r |T132794:0|t[Eau de source]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step << !Priest
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
	.vendor >> |cRXP_BUY_Achetez 3 ou 4 stacks de|r [Flèche grossière] << Hunter
    .target Keina
step
    .goto 1438/1,871.24,10417.65
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
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sangliers des chardons|r en rejoignant Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,1034.89,10711.58
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    >>ASTUCE : |cRXP_WARN_Prenez les pantalons comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << Priest sod
    .turnin 3522 >> Rendez la quête Antidote d'Iverron
step
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >> Entrez dans la Grotte de Sombrefil
step
    .goto 1438/1,912.33,10935.30
    >>Tuez |cRXP_ENEMY_Githyiss la Vile|r et dépouillez-la pour son |T134298:0|t[|cRXP_LOOT_Crochet|r]
    >>Ramassez un |cRXP_LOOT_Webwood Egg|r sur le sol au fond de la Grotte
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile
step
	#softcore
	#completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << skip --logout skip
	#hardcore
	#completewith next
	+Effectuez un "Logout skip" sur le rebord derrière les œufs. Déplacez votre personnage jusqu'à ce qu'il semble flotter, puis déconnectez-vous et reconnectez-vous.
	>>Si vous tombez, sortez simplement de la grotte afin de rendre la quête
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUEZ ICI pour un exemple vidéo
step
	.goto 1438/1,871.24,10417.65
    >>Utilisez le |T134298:0|t[|cRXP_LOOT_Crochet de Githyiss|r] pour lancer une quête
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 97236 >> Acceptez la quête Crochet de Githyiss
    .turnin 97236 >> Rendez la quête Crochet de Githyiss
    .turnin 917 >> Rendez la quête L'œuf d'araignée Tissebois
    .target Gilshalan Windwalker
    .accept 920 >> Acceptez la quête Les appels de Tenaron
    .use 277190
step
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Rendez la quête Les appels de Tenaron
    .target Tenaron Stormgrip
    .accept 921 >> Acceptez la quête La couronne de la Terre
step
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >> Utilisez la [Flasque de cristal] au puits de lune
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter/Druid/Warrior/Priest
    .goto 1438/1,769.77,10673.98
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << Hunter/Druid
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Rendez la quête L'Equilibre de la nature
step
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Rendez la quête La couronne de la Terre
    .target Tenaron Stormgrip
    .accept 928 >> Acceptez la quête La couronne de la Terre
step
    .goto 1438/1,805.500,10491.800
    >>Cliquez sur le [|cRXP_PICK_Livre|r] à gauche de |cRXP_FRIENDLY_Tenaron|r
    .accept 96630 >>Acceptez la quête L'aventurier
step << Priest
    #completewith next
    .goto 1438/1,787.28,10438.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janna Brillelune|r à l'étage.
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Janna Brightmoon
step << Priest
	.goto 1438/1,801.64,10458.75
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r en haut des escaliers
	.turnin 3119 >> Rendez la quête Sceau béni
    .accept 97979 >> Acceptez la quête La déesse pourvoyeuse
    .accept 5622 >> Acceptez la quête Au service d'Elune
	.trainer >> Apprenez vos sorts de classe
step << Priest
    >>Lancez |T132089:0|t[|cRXP_LOOT_Camouflage dans l'ombre|r] et |T136057:0|t[|cRXP_LOOT_Lumière d’Élune|r]
    .complete 97979,1
    .complete 97979,2
step << Priest
    .goto 1438/1,800.500,10454.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda::3595|r
    .target Shanda::3595
    .turnin 97979 >>Rendez la quête La déesse pourvoyeuse
step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Rendez la quête L'Equilibre de la nature
    .isQuestComplete 457
step
    .goto 1438/1,700.57,10214.33
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acceptez la quête Livraison pour Dolanaar
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Sombrivage

step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Acceptez la quête Les commandements de Zenn
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
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyreena Lamebrune|r
    .turnin 96630 >> Rendez la quête L'aventurier
    .accept 96606 >> Acceptez la quête Les grands espaces sauvages
    .target Lyreena Duskblade
step
    .goto 1438/1,882.300,9909.101
    >>Utilisez l'émote |cRXP_WARN_/assis|r à côté du feu de camp et |cRXP_WARN_restez immobile pendant 1 minute|r afin de compléter l'objectif
    .complete 96606,2 --Gain the Boosted Rest buff
step
    .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyreena Lamebrune|r
    .turnin 96606 >> Rendez la quête Les grands espaces sauvages
    .accept 96634 >> Acceptez la quête Introduction au camping : la cuisine
    .target Lyreena Duskblade
step
    #label DenlansEarth
    .goto 1438/1,959.18,9872.38
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>Faites en sorte d'avoir 1 emplacement vide dans vos sacs avant d'accepter cette quête
    .accept 997 >> Acceptez la quête La terre de Denalan
step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Acceptez la quête Une brise étrange
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Rendez la quête Au service d'Elune
    .target Laurna Morninglight
    .accept 5621 >> Acceptez la quête Vêtements de la lune
	.trainer >> Apprenez vos sorts de classe
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .accept 87288 >> Acceptez la quête Fourrures soyeuses de sabre-de-nuit
    .vendor >> |cRXP_BUY_Achetez et équipez une|r |T135641:0|t[Dague de lancer équilibrée]
    .target Aldia
step << !Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .accept 87288 >> Acceptez la quête Fourrures soyeuses de sabre-de-nuit
    .target Aldia
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 932 >> Acceptez la quête Haine folle
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
    >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +Équipez l'[Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Kyra Starsong::2081|r
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>Acceptez la quête La messagère égarée
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r |T135145:0|t[Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (4 argent 79 cuivre), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Rendez la quête Livraison pour Dolanaar << Hunter
    .turnin 2159 >> Rendez la quête Livraison pour Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Achetez 10 |cRXP_LOOT_Lait frais|r ou autant que vous le pouvez << Priest
    .home >> Liez votre Pierre de Foyer à Dolanaar
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Apprenez [Tir des Arcanes] << era
    .train 5116 >> Apprenez [Trait de choc] << sod
    .target Dazalar
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
    >>Arrêtez d'apprendre |T136006:0|t[|cRXP_LOOT_Colère|r] si vous n'avez pas assez d'argent. Apprenez en priorité |T136104:0|t[|cRXP_LOOT_Epines|r]
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 929 >> Acceptez la quête La couronne de la Terre
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Apprenez la Cuisine
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 96634 >> Rendez la quête Introduction au camping : la cuisine
    .target Zarrin
    .money <0.0094
step
    .goto 1438/1,902.15,9754.27--c:Teldrassil,57.2,61.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyoma|r
    +Achetez-lui 5 |T134059:0|t[Épices douces], utilisez votre |T133971:0|t[|cRXP_FRIENDLY_Cuisine|r] pour préparer des |T132834:0|t[|cRXP_LOOT_Oeufs aux herbes|r] jusqu'à ne plus avoir de |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith DenlanStart
    +Mangez les |T132834:0|t[|cRXP_LOOT_Oeufs aux herbes|r] pendant 10 secondes afin de recevoir un |cRXP_WARN_buff d'expérience de 5% sur les mobs tués pendant 15 minutes|r.
    >>|cRXP_WARN_N'oubliez pas de réappliquer ce buff de nourriture lorsqu'il expire|r
    .itemcount 6888,1
step
    #sticky
    #completewith DenlanStart
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Faites attention car les |cRXP_ENEMY_Nightsabers|r et les |cRXP_ENEMY_Strigid Owls|r se déplacent très rapidement ! |cRXP_ENEMY_Strigid Owls|r vont aussi ramener les autres |cRXP_ENEMY_Owls|r sur leur route si vous êtes déjà en combat avec l'une d'entre elles
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
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
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    .skill herbalism,15 >>Montez votre [Herboristerie] à un niveau de 15 pour être capable de récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez l'oublier plus tard
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    >>|cRXP_WARN_Cueillez 5 [Terrestrine] à l'aide de votre [Herboristerie] ou plus rarement dans les |cRXP_PICK_Battered Chests|r pour une quête de classe à venir|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto 1438/1,900.01,9675.85
    >>Ciblez |cRXP_FRIENDLY_Sentinel Shaya|r
    >>Lancez |T135929:0|t[Soins inférieurs (Rang 2)] et |T135987:0|t[Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Rendez la quête La terre de Denalan
    .target Denalan
    .accept 918 >> Acceptez la quête Les graines de sylvain
    .accept 919 >> Acceptez la quête Les pousses de sylvain
step
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Tuez les |cRXP_ENEMY_Timberlings|r. Dépouillez-les pour leur|cRXP_LOOT_Seeds|r
    >>Ramassez les |cRXP_LOOT_Timberling Sprouts|r sur le sol << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Rendez la quête Les graines de sylvain
    .target Denalan
    .accept 922 >> Acceptez la quête Rellian Vertecime
    .turnin 919 >> Rendez la quête Les pousses de sylvain
step
    #sticky
    #completewith Starbreeze
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Faites attention car les |cRXP_ENEMY_Nightsabers|r et les |cRXP_ENEMY_Strigid Owls|r se déplacent très rapidement ! |cRXP_ENEMY_Strigid Owls|r vont aussi ramener les autres |cRXP_ENEMY_Owls|r sur leur route si vous êtes déjà en combat avec l'une d'entre elles
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
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
    .goto 1438/1,351.23,9806.54,120 >> Voyagez jusqu'au Village de Brise-stellaire
step
    .goto 1438/1,351.23,9806.54
    >>Ouvrez le |cRXP_PICK_Tallonkai's Dresser|r. Récupérez le |cRXP_LOOT_Emerald Dreamcatcher|r
    >>|cRXP_WARN_Essayez de terminer|r de récupérer les |cRXP_LOOT_Plumes de Hibou Strigid|r sur les hiboux à côté des furlbogs
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .disablecheckbox
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gaerolas Talvethren|r en haut des escaliers
    .turnin 475 >> Rendez la quête Une brise étrange
    .target Gaerolas Talvethren
    .accept 476 >> Acceptez la quête La corruption des Pins-tordus
step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>Utilisez la [Fiole de jade] au puits de lune du Village de Brise-stellaire
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith GnarlpineCorruption
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Gardez vos [Petit oeuf] et vos [Petite pattes d'araignée] pour monter votre niveau de [Cuisine] plus tard
    >>===========================================
    >>|cRXP_WARN_Passez cette étape si vous ne trouvez pas de mob à proximité pour compléter l'objectif !|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Rendez la quête Les commandements de Zenn
    .isQuestComplete 488
step
    #completewith GnarlpineCorruption
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Acceptez la quête En quête de rédemption !
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #label SeekRedemption
step
    #label GnarlpineCorruption
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Rendez la quête La corruption des Pins-tordus
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Rendez la quête Vêtements de la lune
	.trainer >> Apprenez vos sorts de classe
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .turnin 87288 >> Rendez la quête Fourrures soyeuses de sabre-de-nuit
    .target Aldia
    .isQuestComplete 87288
step
    .goto 1438/1,984.94,9898.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 2438 >> Rendez la quête Le Capturêve d'émeraude
    .target Tallonkai Swiftroot
    .accept 2459 >> Acceptez la quête Ferocitas le Mangeur de rêves
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un |r [Arc courbe en bois de corne] |cRXP_BUY_si vous pouvez vous le permettre(2s 85c), sinon passez cette étape|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Achetez jusqu'à 800|r [Flèche grossière]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +Équipez l'[Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Apprenez vos sorts de classe
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
    .xp <8,1
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 933 >> Acceptez la quête La couronne de la Terre
    .xp <8,1
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
    .xp <8,1
step << Druid
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step << Druid
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Voyagez jusqu'à Gangreroche
step << Druid
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #completewith jewel
    +Mangez les |T132834:0|t[|cRXP_LOOT_Oeufs aux herbes|r] pendant 10 secondes afin de recevoir un |cRXP_WARN_buff d'expérience de 5% sur les mobs tués pendant 15 minutes|r.
    >>|cRXP_WARN_N'oubliez pas de réappliquer ce buff de nourriture lorsqu'il expire|r
    .itemcount 6888,1
step
    #sticky
    #completewith jewel
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses Tissebois|r. Dépouillez-les pour leur |cRXP_LOOT_Soie|r et leur |cRXP_LOOT_Pattes|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob +Webwood Lurker
    .isOnQuest 488
step
    #completewith jewel
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isNotOnQuest 488
step
    #sticky
	#completewith jewel
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .isNotOnQuest 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Proche d'un petit arbre
    .goto 1438/1,822.200,9948.500,6 >>Sur la petite colline
    .goto 1438/1,809.800,9926.400,6 >>Près de l'arbre massif
    >>Ramassez les 3 |cRXP_LOOT_Gangrenoix|r aux emplacements marqués sur votre carte.
    >>Passez cette étape si aucun d'entre eux n'est présent et que vous n'arrivez pas à remplir cet objectif
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
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
	.goto 1438/1,282.49,10018.65
	>>Tuez |cRXP_ENEMY_Ferocitas the Dream Eater|r. Dépouillez le pour son [|cRXP_LOOT_Gnarlpine Necklace|r]. Faites attention car il peut utiliser [Rosser] qui vous touchera trois fois en un seul coup
    .use 8049 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gnarlpine Necklace|r] pour récupérer le|r |cRXP_LOOT_Joyau de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto 1438/1,332.90,10064.46,30,0
    .goto 1438/1,282.49,10018.65
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step
    #softcore
    .goto 1438/1,953.07,9788.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Vendez et réparez votre équipement si nécessaire|r
    .target Brannol Eaglemoon
step
    #completewith spiderLegs
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Acceptez la quête La couronne de la Terre
step
    #sticky
    #completewith spiderLegs
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
    .isOnQuest 488
step
    #sticky
	#completewith spiderLegs
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1655.21,9555.06,50 >> Voyagez jusqu'aux bassins d'Arlithrien
step
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>Utilisez la [Fiole de tourmaline] au puits de lune des bassins d'Arlithrien
	.complete 933,1
step
    .goto 1438/1,1539.12,9437.98,40,0
    .goto 1438/1,1529.44,9325.64
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1645.02,9245.89,50 >> Voyagez jusqu'au sud-ouest de Teldrassil
step
    #label spiderLegs
	.goto 1438/1,1645.02,9245.89
	>>Cliquez sur le |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Acceptez la quête Le fruit luminescent
step
    #hardcore
    #completewith next
    .goto 1438/1,956.02,9736.83,90 >> Voyagez jusqu'à Dolanaar
step
    #softcore
	#completewith next
    .goto 1438/1,1599.71,9509.25
    .deathskip >> Mourez et ressuscitez au cimetière de Dolanaar
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 7383 >> Acceptez la quête La couronne de la Terre
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà appris vos sorts de niveau 8|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
    .xp <8,1
step
    #label SpiderLegsEnd
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Apprenez la Cuisine
    .turnin 96634 >> Rendez la quête Introduction au camping : la cuisine
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
    .target Zarrin
step
    .goto 1438/1,902.1500,9754.2750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyoma|r
    +Achetez-lui 5 |T134059:0|t[Épices douces], utilisez votre |T133971:0|t[|cRXP_FRIENDLY_Cuisine|r] pour préparer des |T132834:0|t[|cRXP_LOOT_Oeufs aux herbes|r] jusqu'à ne plus avoir de |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith Melenas
    +Mangez les |T132834:0|t[|cRXP_LOOT_Oeufs aux herbes|r] pendant 10 secondes afin de recevoir un |cRXP_WARN_buff d'expérience de 5% sur les mobs tués pendant 15 minutes|r.
    >>|cRXP_WARN_N'oubliez pas de réappliquer ce buff de nourriture lorsqu'il expire|r
    .itemcount 6888,1
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà appris vos sorts de niveau 8|r
	.trainer >> Apprenez vos sorts de classe
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà appris vos sorts de niveau 8|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà appris vos sorts de niveau 8|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
    .xp <8,1
step
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Gardez vos [Petit oeuf] et vos [Petite pattes d'araignée] pour monter votre niveau de [Cuisine] plus tard
    >>====================================================================================
    >>|cRXP_WARN_Passez cette étape si vous ne trouvez pas de mob à proximité pour compléter l'objectif !|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber <<Druid
    .disablecheckbox << !Druid --Druids need the extra xp to get to 10 before going to Darn
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Rendez la quête Les commandements de Zenn
    .isQuestComplete 488
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Acceptez la quête En quête de rédemption !
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Byancie
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà appris vos sorts de niveau 8|r
	.trainer >> Apprenez vos sorts de classe
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Voyagez jusqu'à Gangreroche
step
    #optional
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>Vous pouvez utiliser la |T134296:0|t[|cRXP_FRIENDLY_Griffe de Vaudou abîmée|r] sur lui pour réduire fortement ses dégâts !
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,1
step
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,<1
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Proche d'un petit arbre
    .goto 1438/1,822.200,9948.500,6 >>Sur la petite colline
    .goto 1438/1,809.800,9926.400,6 >>Près de l'arbre massif
    >>Ramassez les 3 |cRXP_LOOT_Gangrenoix|r aux emplacements marqués sur votre carte.
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
    .itemcount 3418,3
    .isOnQuest 489
step << Priest/Druid
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .turnin 87288 >> Rendez la quête Fourrures soyeuses de sabre-de-nuit
    .target Aldia
    .isQuestComplete 87288
step << Priest/Druid
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 932 >> Rendez la quête Haine folle
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves
step
    #optional
    #completewith Ambushers
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>La |cRXP_FRIENDLY_Moon Priestess Amara|r patrouille la route à l'ouest de Dolanaar. Elle peut aussi être en train de combattre une embuscade de furlbog et dans ce cas vous devrez attendre qu'elle termine ce combat
    .accept 487 >> Acceptez la quête La route de Darnassus
    .target Moon Priestess Amara
step
    #label Ambushers
    .goto 1438/1,1441.87,10032.56
    >>Tuez les |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid/Priest
    .goto 1438/1,1172.01,9917.17
    >>Trouvez la Prêtresse de la lune Amara, elle patrouille sur la route à l'ouest de Dolanaar.
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Rendez la quête La route de Darnassus
step
    #completewith next
    .goto 1438/1,1899.700,10582.900,50 >> Voyagez jusqu'à la clairière de l'Oracle
step
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Eralya Feuillombre::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99046 >>Rendez la quête La messagère égarée
    .accept 99047 >>Acceptez la quête Toujours en vie
step
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>Utilisez la [Fiole d'améthyste] à la clairière de l'Oracle
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)

--with the new quests, druids can go straight to 10, a 5 minute save later down the road
step << Druid/Priest
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige énormément de dégâts. Essayez de les tuer rapidement
    >>|cRXP_WARN_Évitez-les autant que possible|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << Druid/Priest
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Gardez en tête qu'il s'agit d'une quête chronométrée, vous devrez la rendre dans les 10 minutes après l'avoir acceptée|r
    .turnin 938 >> Rendez la quête Brume
step
    #completewith xp10 <<!Druid !Priest
	#label harpies
    .goto 1438/1,2102.82,10819.27,0,0
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige énormément de dégâts. Essayez de les tuer rapidement
    >>|cRXP_WARN_Évitez-les autant que possible|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .accept 98392 >> Acceptez la quête Les ténèbres dans la clairière
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>Tuez |cRXP_ENEMY_Hurlehaine|r. Dépouillez-la pour son |T133288:0|t[|cRXP_LOOT_Amulette|r]
    .complete 98392,1
    .mob Hatescreech
step << Druid/Priest
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>Tuez la |cRXP_ENEMY_Maîtresse des vents Gaedress|r. Dépouillez-la pour son |T133333:0|t[|cRXP_LOOT_Amulette|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step << Druid/Priest
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Tuez la |cRXP_ENEMY_Mère sorcière Arysa|r. Dépouillez-la pour son |T133324:0|t[|cRXP_LOOT_Amulette|r]
    >>La |cRXP_ENEMY_Mère sorcière Arysa|r et les |cRXP_ENEMY_Matriarches Plumesang|r |cRXP_WARN_lancent|r |T136052:0|t[Vague de soins] |cRXP_WARN_et|r |T136048:0|t[Eclair] |cRXP_WARN_qui inflige beaucoup de dégâts. Essayez de les tuer rapidement|r
    >>|cRXP_WARN_Évitez les Matriarches autant que possible|r
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,2052.36,10854.19
    >>Cliquez sur les |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Acceptez la quête Les racines flamboyantes
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 98392 >> Rendez la quête Les ténèbres dans la clairière
    .accept 98398 >> Acceptez la quête L’arbre de l’Oracle
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,1932.400,10673.500
    >>Dirigez-vous vers l' |cRXP_FRIENDLY_Écorce de l'arbre de l'Oracle|r
    .turnin 98398 >> Rendez la quête L’arbre de l’Oracle
    .accept 940 >> Acceptez la quête Teldrassil
step << Druid/Priest
    #label xp10
    .xp 10-900 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 900xp pour le niveau 10 (5600/6500)
step << Hunter
    #completewith xp10
    #label mist1
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << Hunter
    #sticky
    #label xp10
    .xp 9+800 >> Tuez des mobs jusqu'à avoir 800xp dans le niveau 9
    >>|cRXP_WARN_Une fois que vous atteignez ce seuil d'expérience, ignorez la quête des harpies/l'escorte et allez directement à Darnassus. Vous aurez une autre occasion de terminer ces quêtes plus tard|r
step << Hunter
    #completewith xp10
    #requires mist1
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Gardez en tête qu'il s'agit d'une quête chronométrée, vous devrez la rendre dans les 10 minutes après l'avoir acceptée|r
    .turnin 938 >> Rendez la quête Brume
step << Hunter
    #completewith xp10
	#requires harpies
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
step << !Rogue
    #softcore
    #requires xp10
    .deathskip >> Mourez et ressuscitez au Gardien des âmes de Darnassus
    .target Gardien des âmes
step << !Rogue
    #hardcore
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
    .goto 1457/1,2070.42,9979.310,100 >> Voyagez jusqu'à Darnassus
step << Hunter
    #requires xp10
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    .vendor >>|cRXP_BUY_Vendez votre camelote|r
    .target Ariyell Skyshadow
step << Hunter
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossipid 96881
    .train 227 >>Apprenez la compétence Bâtons
    >>Si vous avez un Bâton dans votre sac, équipez-le.
    .target Ilyenia Moonfire
step << Priest
    #ah
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_WARN_Passez cette étape si vous préférez acheter la|r |T135139:0|t[|cRXP_FRIENDLY_Baguette magique inférieure|r] |cRXP_WARN_à l'Hôtel des ventes|r
    >>Vérifiez s'il vend l' |T132867:0|t[|cRXP_FRIENDLY_Essence de magie inférieure|r]. Si c'est le cas, achetez-la. Vous en aurez besoin pour fabriquer une |T135139:0|t[|cRXP_LOOT_Baguette|r]
    .collect 10938,1 --Lesser Magic Essence
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
    .target Vaean
step << Priest
    #ssf
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vaean|r
    >>Vérifiez s'il vend une |T132867:0|t[|cRXP_FRIENDLY_Essence de magie inférieure|r]. Si c'est le cas, achetez-la. Vous en aurez besoin pour fabriquer une |T135139:0|t[|cRXP_LOOT_Baguette|r]
    .collect 10938,1 --Lesser Magic Essence
    .target Vaean
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << Priest
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lalina Summermoon|r
    .train 7411 >>Apprenez le métier |T136244:0|t[|cRXP_LOOT_Enchantement|r]. Vous en aurez besoin pour fabriquer une |T135139:0|t[|cRXP_LOOT_Baguette|r]
    .target Lalina Summermoon
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_BUY_Achetez-lui les composants suivants :|r
    .collect 6217,1 --Copper Rod (1)
    .collect 247786,9 --Mote of Magic (9)
    .collect 4470,9 --Simple Wood (9)
    .target Vaean
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Utilisez l' |T136244:0|t[|cRXP_LOOT_Enchantement|r] dans votre |cRXP_WARN_onglet de métiers|r pour fabriquer un |T135225:0|t[|cRXP_LOOT_Bâtonnet runique en cuivre|r]
    .collect 6218,1 --Runed Copper Rod
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    +Utilisez l' |T136244:0|t[|cRXP_LOOT_Enchantement|r] dans votre |cRXP_WARN_onglet de métiers|r pour fabriquer des |T135645:0|t[|cRXP_LOOT_Baguettes d’entraînement de novice|r] |cRXP_WARN_jusqu'à atteindre un niveau de 10 en enchantement|r
    .skill enchanting,10,1
step << Priest
    #optional
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lalina Summermoon|r
    .train 14293 >>Apprenez auprès d'elle |T135139:0|t[|cRXP_FRIENDLY_Baguette magique inférieure|r]
    .target Lalina Summermoon
    .skill enchanting,<10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Utilisez l' |T136244:0|t[|cRXP_LOOT_Enchantement|r] dans votre |cRXP_WARN_onglet de métier|r pour fabriquer une |T135139:0|t[|cRXP_FRIENDLY_Baguette magique inférieure|r]
    .collect 11287,1 --Lesser Magic Wand
    .skill enchanting,<10,1
step << Priest
    #optional
    #completewith next
    +|cRXP_WARN_Équipez la|r |T135139:0|t[|cRXP_FRIENDLY_Baguette magique inférieure|r]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12
step << Priest
    #ah
    #optional
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>L' |T134711:0|t[Huile de sorcier mineure] |cRXP_WARN_et la|r |T133906:0|t[Sagerelle fumée] |cRXP_WARN_augmenteront fortement vos dégâts dans les premiers niveaux|r
    >>|cRXP_WARN_Regardez aussi si vous pouvez trouver une|r |T132317:0|t[Baguette] |cRXP_WARN_avec un DPS important que vous pouvez équiper maintenant/bientôt|r
    *|cRXP_WARN_Passez cette étape si vous préférez ne pas les acheter.|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << !Rogue
    #requires xp10
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << Druid NightElf/Priest NightElf
    #optional
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .turnin 940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
    .xp 10,1
step << Druid NightElf
    .goto 1457/1,2572.300,10185.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denatharion::4218|r
    .target Denatharion::4218
    .accept 5923 >>Acceptez la quête Écouter l'appel
    .isNotOnQuest 5925
step << Druid NightElf
    .isOnQuest 5923
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5923 >> Rendez la quête Écouter l’appel
    .accept 5921 >> Acceptez la quête Reflet-de-Lune
	.trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .isOnQuest 5925
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5925 >> Rendez la quête Écouter l’appel
    .accept 5921 >> Acceptez la quête Reflet-de-Lune
	.trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .accept 5921 >> Acceptez la quête Reflet-de-Lune
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Dalia Sunblade|r
    .accept 98067 >>Acceptez la quête Regard des Sentinelles
    .target Sentinel Dalia Sunblade
step << !Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse A'moora|r en haut des escaliers
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Priest
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Alathea|r en haut des escaliers
    .accept 5627 >>Acceptez la quête Etoiles d'Elune
    .turnin 5627 >>Rendez la quête Etoiles d'Elune
    .target Priestess Alathea
step << Druid NightElf
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>|cRXP_WARN_Il se trouve dans votre grimoire|r
	.zoneskip Moonglade
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 5921 >> Rendez la quête Reflet-de-Lune
    .target Dendrite Starblaze
    .accept 5929 >> Acceptez la quête L'esprit du Grand ours
step << Druid NightElf
    .goto 1450/1,-2422.77,8079.37,15,0
    .goto 1450/1,-2285.42,8069.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid NightElf
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>Ceci rendra votre retour plus rapide
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 5929 >> Rendez la quête L'esprit du Grand ours
    .target Dendrite Starblaze
    .accept 5931 >> Acceptez la quête Retour à Darnassus
step
    #requires xp10 << Rogue
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
    .subzoneskip 186
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99047 >>Rendez la quête Toujours en vie
    .accept 99050 >>Acceptez la quête La bonté du Grand arbre << !Druid
step << !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narret Shadowgrove|r
    .goto 1438/1,1000.400,9891.900
    >>|cRXP_BUY_Achetez-lui une|r |T134864:0|t[Fiole vide] |cRXP_BUY_|r
    .collect 3371,1 --Empty Vial
    .target Narret Shadowgrove
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .turnin 87288 >> Rendez la quête Fourrures soyeuses de sabre-de-nuit
    .target Aldia
    .isQuestComplete 87288
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 932 >> Rendez la quête Haine folle
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves
step
    >>Tuez les |cRXP_ENEMY_Sabres-de-nuit sauvages|r et dépouillez-les pour leurs |cRXP_LOOT_Crocs|r et |cRXP_LOOT_Fourrures|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>Gardez vos [Petit oeuf] et vos [Petite pattes d'araignée] pour monter votre niveau de [Cuisine] plus tard
    >>====================================================================================
    >>|cRXP_WARN_Passez cette étape si vous ne trouvez pas de mob à proximité pour compléter l'objectif !|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Rendez la quête Les commandements de Zenn
    .isQuestComplete 488
step
    .abandon 488 >>Abandonnez la quête Les commandements de Zenn
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Acceptez la quête En quête de rédemption !
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Proche d'un petit arbre
    .goto 1438/1,822.200,9948.500,6 >>Sur la petite colline
    .goto 1438/1,809.800,9926.400,6 >>Près de l'arbre massif
    >>Ramassez les 3 |cRXP_LOOT_Gangrenoix|r aux emplacements marqués sur votre carte.
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
    .itemcount 3418,3
    .isOnQuest 489
step << Hunter
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Achetez 4 stacks de|r |T132382:0|t[Flèches aiguisées]|cRXP_BUY_. Équipez-les dès que vous atteignez le niveau 10|r
    .target Jeena Featherbow
step << Hunter/Warrior/Rogue
    .goto 1438/1,1172.01,9917.17
    >>Trouvez la Prêtresse de la lune Amara, elle patrouille sur la route à l'ouest de Dolanaar.
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Rendez la quête La route de Darnassus
	.xp 9.56,1 --Only Turn in early if needed to ding 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto 1438/1,928.83,9812.34
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
    .goto 1438/1,764.68,9835.73
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 935 >> Acceptez la quête La couronne de la Terre
step << !Druid
    #completewith DenalanEnd
    >>Tuez toutes les |cRXP_ENEMY_Jeunes pousses de flagellant|r que vous croisez sur le chemin vers Denalan. Dépouillez-les pour leur |T237424:0|t[|cRXP_LOOT_Frondes de flagellant humide|r]
    .complete 99050,1
    .mob Lasher Sproutling
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Rendez la quête Les racines flamboyantes
    .turnin 930 >> Rendez la quête Le fruit luminescent
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Rendez la quête Le cœur moussu
    .isOnQuest 927
step
	.goto 1438/1,719.87,9503.48
	>>Cliquez sur le |cRXP_LOOT_Pot de Denalan|r
	.turnin 941 >> Rendez la quête Une belle plante
	.isQuestTurnedIn 927
step
    .goto 1438/1,719.400,9503.900
    >>Attendez que |cRXP_FRIENDLY_Denalan|r finisse son RP. Tuez les |cRXP_ENEMY_Boglings|r pour leur |T134187:0|t[|cRXP_LOOT_Racine d'agression|r] et récupérez la |cRXP_PICK_Racine éclose|r
    >>Les |T134184:0|t[Racines écloses] |cRXP_WARN_que vous recevez en récompense sont des objets vous soignant instantanément qui ne partagent pas le même temps CD que les potions !|r
    .accept 2399 >>Acceptez la quête Les racines ont poussé
    .turnin 2399 >>Rendez la quête Les racines ont poussé
step
    #label DenalanEnd
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Terminez de tuer les |cRXP_ENEMY_Jeunes pousses de flagellant|r. Dépouillez-les pour leur |T237424:0|t[|cRXP_LOOT_Frondes de flagellant humide|r]
    .complete 99050,1
    .isOnQuest 6101 << Hunter --Hunter only finishes here if already on the cat quest
    .mob Lasher Sproutling
step
    #label L10
    .xp 10-850 << !Hunter !Druid
    .xp 10 << Hunter
    .itemcount 280087,<6
step
#optional
    #label L10
    .xp 10-1475 << !Hunter
    .xp 10-625 << Hunter
    .isQuestComplete 87288
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
    .xp >10,1
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Rendez la quête La bonté du Grand arbre
    .accept 99073 >>Acceptez la quête Soulager le mal
    .xp >10,1
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .turnin 87288 >> Rendez la quête Fourrures soyeuses de sabre-de-nuit
    .target Aldia
    .isQuestComplete 87288
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
    .accept 1684 >> Acceptez la quête Elanaria
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .train 5171 >> Apprenez [Débiter]
    .train 921 >> Apprenez [Vol à la tire] aussi, qui sera nécessaire pour une quête de Voleur au niveau 10
    .target Jannok Breezesong
step << Hunter
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.trainer >> Apprenez vos sorts de classe
step << Hunter
    .goto 1438/1,764.68,9835.73
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step << Hunter
    #completewith next
    >>Tuez toutes les |cRXP_ENEMY_Jeunes pousses de flagellant|r que vous croisez sur le chemin vers le chat. Dépouillez-les pour leur |T237424:0|t[|cRXP_LOOT_Frondes de flagellant humide|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Terminez de tuer les |cRXP_ENEMY_Jeunes pousses de flagellant|r. Dépouillez-les pour leur |T237424:0|t[|cRXP_LOOT_Frondes de flagellant humide|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6102 >> Acceptez la quête Dompter la bête
step << Hunter
    .goto 1438/1,520.28,9567.62
    .use 15923 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Strigid Screecher|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6103 >> Acceptez la quête Entraîner la bête
step << Warrior
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 1684 >> Acceptez la quête Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto 1438/1,943.85,9790.28
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Acceptez la quête Pomme d'amour
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step << Hunter
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Rendez la quête La bonté du Grand arbre
    .accept 99073 >>Acceptez la quête Soulager le mal
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step
    #optional
    .abandon 87288 >> Abandonnez la quête Fourrures soyeuses de sabre-de-nuit si vous ne voulez pas revenir à Dolanaar
step << Rogue
    #softcore
    #completewith next
    .goto 1438/1,1574.25,9978.26
    .deathskip >>Une fois vous avez passé la zone des furbold, mourez volontairement et ressuscitez au cimetière de Darnassus
    .target Gardien des âmes
step << Rogue
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Voyagez jusqu'à Darnassus
step << Rogue
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Rendez la quête Pomme d'amour
    .target Syurna
    .accept 2242 >> Acceptez la quête L'appel du destin
step << Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Dalia Sunblade|r
    .accept 98067 >>Acceptez la quête Regard des Sentinelles
    .target Sentinel Dalia Sunblade
step << Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Rogue
    .goto 1457/1,2009.100,9986.601
    >>Dirigez-vous vers les Portes de Darnassus et utilisez le |T133298:0|t[|cRXP_LOOT_Pendentif lunaire|r]
    .complete 98067,4
    .use 279378
step << Hunter
    #sticky
	.goto 1438/1,1716.82,10324.42,0
	.goto 1438/1,1564.07,10480.54,0
	.goto 1438/1,1492.78,10765.61,0
	.goto 1438/1,1900.12,10853.85,0
    >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Strigid Hunter|r pour le dompter|r -- .tame 1997
    .train 2981 >> Attaquez des mobs avec celui-ci pour qu'il apprenne [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
	.unitscan Strigid Hunter
step
    .goto 1438/1,1691.36,10412.66
	>>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto 1438/1,1828.600,10964.800
    >>Tuez |cRXP_ENEMY_Lady Sathrah|r. Dépouillez-la pour ses |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Lady Sathrah|r peut apparaître à 3 endroits différents, regardez votre carte pour le chemin que nous vous recommandons de prendre
    >>Dirigez-vous au nord le long de la rivière et vérifiez le premier endroit le plus à l'est. Commencez la quête des [Tumeurs] sur la route
    >>Si elle n'est pas à l'est de la rivière, complétez la quête des [Tumeurs] avant de vous diriger vers l'ouest
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto 1438/1,1864.47,10667.19
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step << Rogue
    .goto 1438/1,1879.75,10976.02
    >>Lancez [Vol à la tire] sur |cRXP_ENEMY_Sethir the Ancient|r
    >>Vous devez être en [Camouflage] pour utiliser [Vol à la tire]
    >>|cRXP_ENEMY_Sethir the Ancient|r marche le long de la grande branche d'arbre
    >>|cRXP_WARN_Évitez d'affronter |cRXP_ENEMY_Sethir the Ancient|r. Laissez le passez devant vous, puis utilisez|r [Camouflage] et ensuite [Vol à la tire] lorsque vous êtes derrière lui
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto 1438/1,2102.82,10819.27,0,0
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
    .goto 1438/1,2208.67,10758.15
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    >>|cRXP_WARN_Passez cette quête si le PNJ n'est pas présent|r
    .accept 938 >> Acceptez la quête Brume
step
    .goto 1438/1,1864.47,10663.80
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Gardez en tête qu'il s'agit d'une quête chronométrée, vous devrez la rendre dans les 10 minutes après l'avoir acceptée|r
    .turnin 938 >> Rendez la quête Brume
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .accept 98392 >> Acceptez la quête Les ténèbres dans la clairière
    .target Sentinel Arynia Cloudsbreak
step
    .isOnQuest 99073
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Eralya Feuillombre::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99073 >>Rendez la quête Soulager le mal
step
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>Tuez |cRXP_ENEMY_Hurlehaine|r. Dépouillez-la pour son |T133288:0|t[|cRXP_LOOT_Amulette|r]
    .complete 98392,1
    .mob Hatescreech
step
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>Tuez la |cRXP_ENEMY_Maîtresse des vents Gaedress|r. Dépouillez-la pour son |T133333:0|t[|cRXP_LOOT_Amulette|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Tuez la |cRXP_ENEMY_Mère sorcière Arysa|r. Dépouillez-la pour son |T133324:0|t[|cRXP_LOOT_Amulette|r]
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 98392 >> Rendez la quête Les ténèbres dans la clairière
    .accept 98398 >> Acceptez la quête L’arbre de l’Oracle
    .target Sentinel Arynia Cloudsbreak
step
    .goto 1438/1,1932.400,10673.500
    >>Dirigez-vous vers l' |cRXP_FRIENDLY_Écorce de l'arbre de l'Oracle|r
    .turnin 98398 >> Rendez la quête L’arbre de l’Oracle
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
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << !Warrior
    --@TODO add note that u need to wait for the other player owl to despawn
    .goto 1457/1,2009.100,9986.601
    >>Dirigez-vous vers les Portes de Darnassus et utilisez le |T133298:0|t[|cRXP_LOOT_Pendentif lunaire|r]
    .complete 98067,4
    .use 279378
step << !Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
step
    #softcore
    #label darn
    #optional
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
	.abandon 927 >> Abandonnez la quête Le cœur moussu. Vous n'aurez plus d'opportunité pour la rendre à partir de maintenant
step << Warrior
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Rendez la quête Elanaria
    .target Elanaria
    .accept 1683 >> Acceptez la quête Vorlus Vilsabot
step << Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
step << Warrior
    .goto 1457/1,2009.100,9986.601
    >>Dirigez-vous vers les Portes de Darnassus et utilisez le |T133298:0|t[|cRXP_LOOT_Pendentif lunaire|r]
    .complete 98067,4
    .use 279378
step << Warrior
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >> Voyagez vers |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
    .goto 1438/1,1411.32,9669.43
    >>Tuez les |cRXP_ENEMY_Vorlus Vilehoof|r. Dépouillez-les pour leur|cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto 1438/1,1594.62,9988.44
    .deathskip >>Mourez volontairement après avoir passé la zone des furbolg et ressuscitez à Darnassus
step << Warrior
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Voyagez jusqu'à Darnassus
step << Warrior
    .goto 1457/1,2331.89,9994.09
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Rendez la quête Vorlus Vilsabot
--	.accept 1686 >> Accept The Shade of Elura
step
    .goto 1457/1,2240.100,10121.000
    >>Allez à l'auberge de Darnassus et utilisez le |T133298:0|t[|cRXP_LOOT_Pendentif lunaire|r]
    .complete 98067,3
    .use 279378
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5931 >> Rendez la quête Retour à Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acceptez la quête Corps et cœur
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .turnin 940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .target Arch Druid Fandral Staghelm
    .turnin 935 >> Rendez la quête La couronne de la Terre
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Rendez la quête Entraîner la bête
step << Hunter
    >>Montez la rampe à la droite de |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silvaria|r
    .goto 1457/1,2491.75,10176.21
    .trainer >>Apprenez les compétences de votre familier
    .target Silvaria
step
    .goto 1457/1,2579.300,10129.000
    >>Allez à l'entrée du Fort cénarien et utilisez le |T133298:0|t[|cRXP_LOOT_Pendentif lunaire|r]
    .complete 98067,1
    .use 279378
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Rendez la quête L’appel du destin
step
    .goto 1457/1,2534.25,10085.60
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Rendez la quête Tumeurs
step
    .goto 1457/1,2499.900,9932.601
    >>Allez à la banque de Darnassus et utilisez le |T133298:0|t[|cRXP_LOOT_Pendentif lunaire|r]
    .complete 98067,2
    .use 279378
step
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Dalia Sunblade|r
    .turnin 98067 >>Rendez la quête Regard des Sentinelles
    .target Sentinel Dalia Sunblade
step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Rendez la quête Les larmes de la Lune
    .target Priestess A'moora
    .accept 2520 >> Acceptez la quête Sacrifice de Sathrah
step
    .goto 1457/1,2518.20,9632.80
	.use 8155 >>Utilisez le [Sacrifice de Sathrah] à la fontaine
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Rendez la quête Sacrifice de Sathrah
-- step << Druid
-- #ssf
--     #season 0
--     .goto 1457/1,2430.89,9758.21
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
--     .train 2366 >> Train |T136065:0|t[Herbalism]
--     >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
--     .target Firodren Mooncaller
step
    #ah
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Achetez les objets suivants pour rendre des quêtes directement à Sombrivage plus tard:
    -- >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133972:0|t[Viande de trotteur]
    >>|T134711:0|t[Huile de sorcier mineure] << Priest/Druid
    >>|T133906:0|t[Sagerelle fumée] << Priest/Druid
    >>L' |T134711:0|t[Huile de sorcier mineure] |cRXP_WARN_et la|r |T133906:0|t[Sagerelle fumée] |cRXP_WARN_augmenteront fortement vos dégâts dans les premiers niveaux|r << Priest/Druid
    >>|cRXP_WARN_Regardez aussi si vous pouvez trouver une|r |T132317:0|t[Baguette] |cRXP_WARN_avec un DPS important que vous pouvez équiper maintenant/bientôt|r << Priest
    *|cRXP_WARN_Passez cette étape si vous préférez ne pas les acheter.|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    -- .collect 2449,5,6123,1 << Druid
    .collect 20744,1 << Priest/Druid -- Minor Wizard Oil (1)
    .collect 21072,20 << Priest/Druid -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto 1457/1,2258.91,9793.71
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCherchez |cRXP_FRIENDLY_Jaeana|r, elle patrouille dans la Terrasse des Marchands
    >>|cRXP_BUY_Achetez-lui un stack de|r |T133972:0|t[Viande séchée coriace] |cRXP_BUY_.
    >>|cRXP_WARN_Vous allez en avoir besoin pour nourrir votre chouette, elles ne mangent que de la viande et il n'y a pas de vendeur de viande à Sombrivage|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossipid 96881
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
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1457/1,2316.49,9924.41
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
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton noueux]|cRXP_BUY_. Équipez le au niveau 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton]|cRXP_BUY_. Équipez le au niveau 11|r << era
    >>|cRXP_BUY_Achetez et équipez un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_si vous ne pouvez pas vous offrir un|r |T135147:0|t[Bâton noueux] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto 1457/1,2316.49,9924.41
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
    .goto 1457/1,2275.00,9775.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r au second étage
    >>|cRXP_BUY_Achetez une|r [Dague de lancer équilibrée]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step << Hunter
    #optional
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .train 2974 >>Apprenez |T132309:0|t[|cRXP_LOOT_Coupure d'ailes|r]
    .xp <12,1
    .money <0.0600
step
    #completewith NessaShadowsong
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Rendez la quête Nessa Chantelombre
    .target Nessa Shadowsong
    .accept 6341 >> Acceptez la quête Le don de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Rendez la quête Le don de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acceptez la quête Vol vers Auberdine
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
]])
