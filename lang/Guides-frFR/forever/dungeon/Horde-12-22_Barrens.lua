if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#xprate <1.99
<< Horde
#name 12-17 Les Tarides
#displayname 14-18 Les Tarides << !Shaman !Hunter !Tauren !Skyborne
#displayname 15-18 Tarides << Paladin
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#next 17-22 Serres-Rocheuses/Tarides/Orneval


step << Tauren Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >> Entrez dans la Caverne des Terrevent
step << Tauren Shaman
    #loop
    .goto 1411/1,-4706.71,902.41,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Tuez les |cRXP_ENEMY_Cultists|r. Dépouillez-les pour un |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Tauren Warrior
    #xprate <1.5
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Montez au sommet de la montagne
step << Tauren Warrior
    #xprate <1.5
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Rendez la quête Thun'grim Mirefeu
    .accept 1503 >>Acceptez la quête Acier forgé
    .target Thun'grim Firegaze
step << Tauren Warrior
    #xprate <1.5
    .goto 1413/1,-2955.48,-188.04
    >>Ouvrez le |cRXP_PICK_Stolen Iron Chest|r pour les |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Tauren Warrior
    #xprate <1.5
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Montez au sommet de la montagne
step << Tauren Warrior
    #xprate <1.5
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Rendez la quête Acier forgé
    .target Thun'grim Firegaze
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Tauren
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >> Voyagez à la Croisée
step << !Tauren
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée << !Druid
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << !Tauren
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Undead/Skyborne
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .target Devrak
    .isQuestAvailable 1492
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .accept 848 >>Acceptez la quête Spores fongiques
    .turnin 1358 >>Rendez la quête Un échantillon pour Helbrim << !Tauren !Skyborne !Shaman !Hunter
    .target Apothecary Helbrim
    .isOnQuest 1358
step
    #optional << !Tauren !Skyborne !Shaman !Hunter
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .accept 848 >>Acceptez la quête Spores fongiques
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez une|r [Espingole de chasseur] |cRXP_BUY_à Uthrok|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +Équipez l'[Espingole de chasseur]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << !Tauren
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target Gazrog
step << !Tauren
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >> Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc/Troll
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step
    #optional
    #completewith DisruptTheAttacks
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead !Skyborne
    #xprate <1.5 << !Hunter
    #completewith next
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Montez au sommet de la montagne
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #xprate <1.5 << !Hunter
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Entrez dans le repaire des Brume-funeste
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #xprate <1.5 << !Hunter
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Cliquez sur l'|cRXP_PICK_Altar|r
    >>Vérifiez que vous ayez une [Pierre de puissance imparfaite] (30 minutes de durée) sur vous
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
    #sticky
    #label FireTar2
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>Tuez un |cRXP_ENEMY_Razormane Water Seeker|r ou un |cRXP_ENEMY_Razormane Thornweaver|r. Dépouillez-les pour un |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>|cRXP_WARN_Vous pourrez le récupérer plus tard s'il n'est pas là|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    #requires FireTar2 << Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,0
	.goto 1413/1,-2811.59,-42.780,50,0
	.goto 1413/1,-2875.43,-52.24,50,0
	.goto 1413/1,-2931.16,-89.40,50,0
	.goto 1413/1,-3001.08,-117.78,50,0
	.goto 1413/1,-3037.56,-164.390,50,0
	.goto 1413/1,-3034.52,-221.82,50,0
	.goto 1413/1,-2991.96,-239.39,50,0
	.goto 1413/1,-2899.75,-209.66,50,0
	.goto 1413/1,-2854.15,-151.56,50,0
	.goto 1413/1,-2799.43,-92.78,50,0
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée << Tauren Shaman
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 871 >>Rendez la quête Stopper les attaques des hurans
    .accept 872 >>Acceptez la quête La perturbation cesse
    .target +Thork
    .goto 1413/1,-2595.75,-473.15
    .isOnQuest 842 << Tauren Shaman
step << Tauren Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 871 >>Rendez la quête Stopper les attaques des hurans
    .accept 872 >>Acceptez la quête La perturbation cesse
    .target +Thork
    .goto 1413/1,-2595.75,-473.15
step
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .accept 867 >>Acceptez la quête Les harpies pillardes
    .target Darsok Swiftdagger
step << Orc/Troll
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez une|r [Espingole de chasseur] |cRXP_BUY_à Uthrok|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Orc Warrior/Troll Warrior/Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Vérifiez si|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_est à la Croisée. Il vend des potions et la|r |T133476:0|t[|cRXP_FRIENDLY_Lourde masse à pointes|r] |cRXP_WARN_qui est un objet en stock limité|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>|cRXP_WARN_Vous pourrez le récupérer plus tard s'il n'est pas là|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .dungeon RFC
step << Tauren
    #optional
    #completewith KreenigSnarlsnout1
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #label KreenigSnarlsnout1
    .goto 1413/1,-3324.34,-217.09
    >>Tuez |cRXP_ENEMY_Kreenig Snarlsnout|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
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
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Cliquez sur le |cRXP_PICK_Brazier|r sur le sol
    .turnin 1526 >>Rendez la quête L'appel du feu
    .accept 1527 >>Acceptez la quête L'appel du feu
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas présent
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .dungeon RFC
step << Tauren
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1411/1,-4769.10,1484.39,0
    >>Tuez les membres de la |cRXP_ENEMY_Lame Ardente|r au Rocher du Crâne jusqu'à ce que l' |cRXP_LOOT_Insigne de lieutenant|r tombe
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Rendez la quête Ennemis cachés
    .accept 5727 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Acceptez la quête Tuer la bête
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Rendez la quête Ennemis cachés
    .accept 5728 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << !Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
    .dungeon RFC
step << !Undead
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >> Entrez dans le portail de l'instance du Gouffre de Ragefeu
    .dungeon RFC
step << !Undead
    >>|cRXP_WARN_Si possible, faites en sorte que les membres du groupe vous partagent les quêtes suivantes|r
    .accept 5722 >> Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >> Acceptez la quête Tester la force de l'ennemi
    .dungeon RFC
step << !Undead
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Rendez la quête À la recherche de la sacoche perdue
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead
    #label TroggsShamans
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    >>Tuez |cRXP_ENEMY_Taragaman the Hungerer|r. Dépouillez-le pour son |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << !Undead
    #label BazzalanandJergosh
    >>Tuez |cRXP_ENEMY_Bazzalan|r et |cRXP_ENEMY_Jergosh l'Invocateur|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Rendez la quête Tuer la bête
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Rendez la quête Ennemis cachés
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Rendez la quête Ennemis cachés
    .accept 5730 >> Acceptez la quête Ennemis cachés
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith KreenigSnarlsnout
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .zoneskip The Barrens
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon RFC
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Devrak
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
    .zoneskip Thunder Bluff

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Thunder Bluff >>Voyagez au sud vers le Camp Taurajo et entrez à Mulgore. Voyagez vers les Pitons-du-Tonnerre à partir d'ici
    >>Si vous avez le vol pour Thunder Bluff, volez-y
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo << !Tauren
    .target Omusa Thunderhorn
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Thunder Bluff >> Prenez le chemin de vol des Pitons-du-Tonnerre
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,>0
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas présent
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #optional
    #completewith next
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>Tuez |cRXP_ENEMY_Kreenig Snarlsnout|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Allez à l'Autel des épines|r. Lancez |T136126:0|t[Connexion] jusqu'à presque mourir. Lancez ensuite |T136168:0|t[Captation de vie] sur votre familier pour mourir et obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r]
    *|cRXP_WARN_Vous serez ressuscité immédiatement après votre mort|r
    .goto 1413/1,-3274.68,-191.42
    .cast 1454
    .cast 735
    .collect 208750,1
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r] |cRXP_WARN_pour vous apprendre|r |T136168:0|t[Maîtrise de la canalisation]
step
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,0
    .goto 1413/1,-3382.10,-54.27,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren !Undead
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Rendez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Voyagez vers Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
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
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Cliquez sur le |cRXP_PICK_Brazier|r sur le sol
    .turnin 1526 >>Rendez la quête L'appel du feu
    .accept 1527 >>Acceptez la quête L'appel du feu
step << Shaman
    #optional
    #completewith FireEnd
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas présent
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step << skip
    #completewith RatchetEnter
    >>Tuez les |cRXP_ENEMY_Hurleurs solécailles|r. Dépouillez-les pour leur |cRXP_LOOT_Têtes|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Tuez les |cRXP_ENEMY_Zhevra Runners|r. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Voyagez jusqu'à Ratchet
    .isOnQuest 845
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acceptez la quête Les flibustiers des Mers du sud
    .target Gazlowe
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol de Cabestan
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et au |cRXP_FRIENDLY_Wanted Poster|r
    .accept 894 >>Acceptez la quête Samophlange
    .goto 1413/1,-3759.06,-902.18
    .accept 895 >>Acceptez la quête ON RECHERCHE : baron de Longrivage
    .goto 1413/1,-3719.54,-919.07
    .target Sputtervalve
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +Équipez l'[Espadon] lorsque vous passez au niveau 16
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +Équipez l'[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Hache ébarbée] |cRXP_BUY_à Ironzar|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +Équipez la [Hache ébarbée]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Marteau en pierre] |cRXP_BUY_à Ironzar|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Marteau en pierre] lorsque vous passez niveau 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Marteau en pierre]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ferronzar|r|cRXP_BUY_. Achetez-lui un|r |T133052:0|t[Marteau] |cRXP_BUY_|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T133052:0|t[Marteau]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Cimeterre] |cRXP_BUY_à Ironzar|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith BaronLongshore
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une seconde|r [Cimeterre] |cRXP_BUY_à Ironzar pour votre main gauche|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez la seconde|r |T135343:0|t[Cimeterre] |cRXP_WARN_dans votre main gauche|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Rendez la quête Tonneau vide de Chen
    .accept 821 >>Acceptez la quête Tonneau vide de Chen
    .target Brewmaster Drohn
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|tLes [Lutjan à longue mâchoire] sont très abordables, achetez-en autant que vous le voulez
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> Détruisez le [Manuel de la console de contrôle] de vos sacs, il n'est plus nécessaire
step
    #optional
    #completewith BaronLongshore
    >>Tuez les |cRXP_ENEMY_Southsea Brigands|r et les |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>Tuez |cRXP_ENEMY_Tazan|r. Dépouillez-le pour sa |cRXP_LOOT_Sacoche|r
    >>|cRXP_WARN_Il patrouille en remontant et en descendant la colline|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>Tuez |cRXP_ENEMY_Baron Longshore|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Il se trouve dans l'un des camps
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #label SouthSea
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>Tuez les |cRXP_ENEMY_Southsea Brigands|r et les |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    .goto 1413/1,-3832.02,-1381.87,50,0
    .goto 1413/1,-3730.68,-1364.98,50,0
    .goto 1413/1,-3677.99,-1392.00
	>>Tuez |cRXP_ENEMY_Tazan|r. Dépouillez-le pour sa |cRXP_LOOT_Sacoche|r
    >>|cRXP_WARN_Il patrouille en remontant et en descendant la colline|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Rendez la quête Les flibustiers des Mers du sud
    .turnin 895 >>Rendez la quête ON RECHERCHE : baron de Longrivage
    .accept 890 >>Acceptez la quête La livraison perdue
    .target Gazlowe
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Rendez Maître des quais Dizzywig
    .turnin 890 >>Rendez la quête La livraison perdue
    .accept 892 >>Acceptez la quête La livraison perdue
    .accept 896 >>Acceptez la quête La bonne fortune d'un mineur pauvre
    .target Wharfmaster Dizzywig
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Rendez la quête La livraison perdue
    .accept 888 >>Acceptez la quête Course à la lentille
    .target Gazlowe
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez l'[Espadon] lorsque vous passez au niveau 16
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez l'[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Hache ébarbée] |cRXP_BUY_à Ironzar|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez la [Hache ébarbée]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Marteau en pierre] |cRXP_BUY_à Ironzar|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Marteau en pierre] lorsque vous passez niveau 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Marteau en pierre]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ferronzar|r|cRXP_BUY_. Achetez-lui un|r |T133052:0|t[Marteau] |cRXP_BUY_|r
    .collect 2028,1,850,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T133052:0|t[Marteau]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Cimeterre] |cRXP_BUY_à Ironzar|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une seconde|r [Cimeterre] |cRXP_BUY_à Ironzar pour votre main gauche|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith FlyToXroads1
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    --Enter completewith label
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>Terminez de tuer tous les |cRXP_ENEMY_Zhévras|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Sabots|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r et |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Rendez la quête Ravitaillement pour la Croisée
    .turnin 872 >>Rendez la quête La perturbation cesse
    .target +Thork
    .goto 1413/1,-2595.75,-473.15
    .turnin 845 >>Rendez la quête Les zhévras
    .accept 903 >>Acceptez la quête Les rôdeurs des Tarides
    .target +Sergra Darkthorn
    .goto 1413/1,-2669.72,-481.94
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointues] |cRXP_BUY_à Barg|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Balle lourde] |cRXP_BUY_à Barg|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Bon arc long|r] |cRXP_BUY_à Uthrok si il en a en stock et faites un stock de flèches|r
    >>Si il n'est pas disponible, achetez à la place un [Arc renforcé]
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez une|r [Espingole de chasseur] |cRXP_BUY_à Uthrok|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #optional
    #completewith RegtharDeathgate1
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .accept 855 >>Acceptez la quête Les bracelets de centaures
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .target Regthar Deathgate
step
    #optional
    #xprate <1.5
    #completewith KodobaneTurnin
    >>Tuez les |cRXP_ENEMY_Querelleurs kolkars|r et les |cRXP_ENEMY_Légion-tempêtes kolkars|r. Dépouillez-les pour leurs |cRXP_LOOT_Bracelets|r
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #optional
    #completewith Barak
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto 1413/1,-1909.72,113.96
    >>Dépouillez le |cRXP_PICK_Nid de gueule d’acier abandonné|r au sol pour l' |T294479:0|t[|cRXP_LOOT_Œuf abandonné de gueule d’acier|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto 1413/1,-1943.16,89.64
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Tuez |cRXP_ENEMY_Barak Kodobane|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Faites attention aux coups en mêlée de |cRXP_ENEMY_Barak Kodobane|r qui infligent BEAUCOUP de dégâts et il est protégé par un |cRXP_ENEMY_Kolkar Wrangler|r. Ils peuvent vous immobiliser avec un filet et vous tirer dessus à distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
step
    #xprate <1.5
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>Tuez les |cRXP_ENEMY_Harpies Ensorçailes|r et les |cRXP_ENEMY_Volplumes Ensorçailes|r. Dépouillez-les pour leur |cRXP_LOOT_Serres|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather

    --RFC turnin section below no longer possible due to TB logout skip no longer workng

step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #optional
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Montez le chemin sur la gauche
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Sautez sur l'une des cages. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith RFCPickups
    .goto 1456/1,-13.04,-1107.95,40 >> Prenez l'ascenseur pour aller à Thunder Bluff
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith Samophlange
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << skip --!Tauren
    #completewith Samophlange
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandonnez la quête Tester la force de l'ennemi
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandonnez la quête Le pouvoir de détruire...
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandonnez la quête Ennemis cachés
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandonnez la quête Tuer la bête
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .accept 875 >>Acceptez la quête Lieutenants harpies
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate >1.49
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Rendez la quête Les Bassins oubliés
    .accept 877 >> Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, passez cette étape
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r |T134227:0|t[Corne d'Echeyakee] |cRXP_WARN_ou si vous n'étiez pas le premier joueur à l'engager, abandonnez Echeyakee, puis retournez en ville pour reprendre la quête|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    +Faites attention aux |cRXP_ENEMY_Sunscale Scytheclaws|r dans la zone. Ils vont jusqu'au niveau 18 et peuvent utiliser [Rosser]
    .dungeon RFC
    .xp >17,1
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #completewith Samophlange
    +Faites attention aux |cRXP_ENEMY_Sunscale Scytheclaws|r dans la zone. Ils vont jusqu'au niveau 18 et peuvent utiliser [Rosser]
    --.dungeon !RFC
    .xp >17,1
step
    #optional
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    --.dungeon !RFC
step
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r vend [|cRXP_FRIENDLY_Heavy Spiked Mace|r] qui est un objet en stock limité << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Vrang Fauvétripe
    --.dungeon !RFC
step
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 894 >>Rendez la quête Samophlange
    .accept 900 >>Acceptez la quête Samophlange
step
    .goto 1413/1,-2679.86,830.80
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Faites attention ! Deux ennemis vont apparaître une fois que vous aurez fermé la valve
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto 1413/1,-2675.80,842.290
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Un ennemi va apparaître une fois que vous aurez fermer la valve
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto 1413/1,-2686.95,842.290
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 900 >>Rendez la quête Samophlange
    .accept 901 >>Acceptez la quête Samophlange
step
    .goto 1413/1,-2731.54,909.850
    >>Tuez les |cRXP_ENEMY_Tinkerer Sniggles|r dans le bâtiment. Dépouillez-le pour sa |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 901 >>Rendez la quête Samophlange
    .accept 902 >>Acceptez la quête Samophlange
step
    #optional
    #completewith Ignition
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-1693.88,592.31,90,0
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>Tuer des mobs jusqu'au niveau 16 est important pour la suite, car les 3 quêtes à venir sont assez difficiles
	.xp 16
step
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    .accept 858 >>Acceptez la quête Contact
    .target Wizzlecrank's Shredder
step
    #completewith next
    +Faites attention si les |cRXP_ENEMY_F|cRXP_WARN_or|reman Grills|r ou les |cRXP_ENEMY_Sludge Beast|r sont présents. Ce sont des créatures rares de niveau 19 très fortes
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Tuez le |cRXP_ENEMY_Superviseur Trimballast|r. Dépouillez-le pour sa |cRXP_LOOT_Clé|r
    >>|cRXP_WARN_Il remonte et descend de sa plateforme lors de sa patrouille|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    >>Ceci va commencer une escorte. Faites en sorte d'avoir toute votre vie
    .turnin 858 >>Rendez la quête Contact
    .accept 863,1 >>Acceptez la quête La fuite
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    >>Ceci va commencer une escorte. Faites en sorte d'avoir toute votre vie
    .accept 863,1 >>Acceptez la quête La fuite
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>Deux |cRXP_ENEMY_Venture Co. Mercenaries|r vont apparaître lorsque le déchiqueteur montera. Tuez les et attendez son RP à la fin
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Enforcers|r et les |cRXP_ENEMY_Venture Co. Overseers|r. Dépouillez-les pour leur |cRXP_LOOT_Cats Eye Emerald|r
    >>Si il n'est toujours pas tombé après avoir tué 25+ mobs, vous pouvez passer cette quête
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Tuez le |cRXP_ENEMY_Surveillant de la KapitalRisk|r. Dépouillez-le pour sa |T132794:0|t[|cRXP_LOOT_Flasque d'huile|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Tuez le |cRXP_ENEMY_Surveillant de la KapitalRisk|r. Dépouillez-le pour sa |T132794:0|t[|cRXP_LOOT_Flasque d'huile|r]
    >>|cRXP_WARN_Vous pouvez aussi l'acheter à l'Hôtel des Ventes à la place|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Sautez sur la poutre en bois. Effectuez un Logout skip en vous déconnectant et en vous reconnectant. Allez en direction d'Orgrimmar si vous n'y arrivez pas|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
step
    #completewith next
    .skill firstaid,40 >> Fabriquez des [Bandages en lin] jusqu'à ce que votre compétence de [Premiers soins] soit de 40 ou plus
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour atteindre une compétence de 40
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> Fabriquez des [Bandages épais en lin] jusqu'à ce que votre compétence de [Premiers soins] soit de 50 ou plus
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous avez pas assez d'[Étoffe de lin] pour monter votre compétence à 50
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith SpiritsPickup
    +|cRXP_WARN_Assurez-vous de ne pas vendre votre|r |T132794:0|t[|cRXP_LOOT_Flasque d'huile|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 527 >> Apprenez |T135894:0|t[Dissipation de la magie]
    >>|cRXP_WARN_Vous aurez besoin de|r |T135894:0|t[Dissipation de la magie] |cRXP_WARN_pour obtenir une rune plus tard|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead !Shaman !Warrior
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead !Shaman !Warrior
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead !Shaman !Warrior
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .isQuestAvailable 4921
step << Shaman
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Assurez-vous d'avoir appris le sort|r |T136075:0|t[Expiation] |cRXP_WARN_comme il sera nécessaire pour obtenir une rune plus tard|r
    .train 8019 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Assurez-vous d'avoir appris le sort|r |T136075:0|t[Expiation] |cRXP_WARN_comme il sera nécessaire pour obtenir une rune plus tard|r
    .train 913 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Acceptez la quête Les esprits des Serres-Rocheuses
    .target Zor Lonetree
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Apprenez [Crochetage]
    .train 921 >> Apprenez [Vol à la tire]
    .accept 2379 >> Acceptez la quête Zando'zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Rendez la quête La Main brisée
    .accept 1858 >> Acceptez la quête La Main brisée
    .target Therzok
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Rendez la quête Zando'zan
    .accept 2382 >>Acceptez la quête Wrenix de Cabestan
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #optional
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des|r |T134065:0|t[Outils de voleur] |cRXP_BUY_à Rekkul|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_Utilisez le|r |T136058:0|t[Crochetage] |cRXP_WARN_pour ouvrir la|r |T133626:0|t[Sacoche de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Rendez la quête La Main brisée
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_Utilisez le|r |T133644:0|t[Vol à la tire] |cRXP_WARN_sur|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_dans l'auberge. Utilisez sa clé pour ouvrir la|r |T133626:0|t[Sacoche de Tazan]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Rendez la quête La Main brisée
    .target Therzok
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire de Sacrifice]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire d’Éclair de feu (Rang 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Apprenez la compétence Arcs
    .target Hanashi
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez un|r [Arc renforcé] |cRXP_BUY_à Zendo'jian|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +Équipez l'[Arc renforcé]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez une|r [Hache de bataille] |cRXP_BUY_à Zendo'jian|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +Équipez la [Hache de bataile] lorsque vous passez au niveau 20
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid/Mage
    #season 2
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Achetez une|r |T134237:0|t[Clé du butin des Kolkar] |cRXP_BUY_à l'Hôtel des ventes si vous le pouvez|r
    >>|cRXP_WARN_Vous aurez besoin de cela pour obtenir l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_pour apprendre|r |T236167:0|t[Rugissement sauvage] << Druid
    >>|cRXP_WARN_Vous aurez besoin de cela pour obtenir les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : NIGÉO NÉRÉRAT]|r |cRXP_WARN_pour apprendre|r |T132869:0|t[Régénération] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Volez à la Croisée
    .target Doras
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Rendez la quête Les raptors voleurs
    .accept 3281 >>Acceptez la quête Argent volé
    .target Gazrog
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .accept 875 >>Acceptez la quête Lieutenants harpies
    .target Darsok Swiftdagger
step
    #xprate >1.49
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Rendez la quête Les Bassins oubliés
    .accept 877 >>Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
step << !Tauren !Undead !Warrior !Shaman
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Rendez la quête Retour à la Croisée
    .target Zargh
    .isOnQuest 6386
step
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, passez cette étape
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, abandonnez Echeyakee, puis retournez en ville pour reprendre la quête
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Rendez la quête Echeyakee
    .accept 905 >>Acceptez la quête Les Faucheurs furieux
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>Détruisez la [Corne d'Echeyakee] comme vous n'en avez plus besoin
step << Warrior
    #season 2
    .goto 1413/1,-2673.78,-487.34,
    .aura 420667 >>Cliquez sur la |cRXP_PICK_Bannière de guerre de la Horde|r
    .train 403489,1
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acceptez la quête Consumé par la haine
    .accept 4921 >>Acceptez la quête Disparition au combat
    .target Mankrik
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointues] |cRXP_BUY_à Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Volez à Ratchet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Rendez la quête Wrenix de Cabestan
    .accept 2381 >>Acceptez la quête Piller les pilleurs
    .target Wrenix the Wretched
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Appareil bidulotronique de Wrenix|r
    >>|cRXP_WARN_Obtenez un|r |T134059:0|t[B.G.A.C.] |cRXP_WARN_et un|r |T134065:0|t[Outils de voleur]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Rendez la quête Samophlange
    .turnin 863 >> Rendez la quête La fuite
    .accept 3921 >> Acceptez la quête Wenikee Bakaboulon << Hunter
    .accept 1483 >> Acceptez la quête Ziz Fizzik
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Rendez la quête La bonne fortune d'un mineur pauvre
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Rendez la quête Samophlange
    .accept 3921 >> Acceptez la quête Wenikee Bakaboulon << Hunter
    .accept 1483 >> Acceptez la quête Ziz Fizzik
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Rendez la quête La bonne fortune d'un mineur pauvre
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >> Rendez la quête La fuite
    .accept 1483 >> Acceptez la quête Ziz Fizzik
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >> Acceptez la quête Ziz Fizzik
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acceptez la quête Les cornes de raptors
    .accept 1069 >>Acceptez la quête Omelette à la mousse profonde
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto 1413/1,-3737.78,-971.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Achetez-lui un|r |T135129:0|t[Harpon de pêche] |cRXP_BUY_|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto 1413/1,-3914.10,-1044.06
    .use 208773 >>Utilisez le |T135129:0|t[Harpon de pêche] sur |cRXP_ENEMY_Bruuz|r et tuez-le. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r] << Warrior
    >>|cRXP_WARN_Il patrouille autour de l'épave dans l'eau|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r] |cRXP_WARN_pour apprendre|r |T132394:0|t[Frappe rapide]
    .use 208778
    .itemcount 208778,1
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|tLes [Lutjan à longue mâchoire] sont très abordables, achetez-en autant que vous le voulez
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto 1413/1,-3967.8,-1457.54
    +Sautez sur le bateau, descendez au second étage et montez votre compétence de crochetage jusqu'à au moins 70
step << Rogue
    .goto 1413/1,-3958.68,-1457.54
    >>Une fois que votre crochetage est à 70, descendez à l'étage inférieur du bateau et ouvrez le |cRXP_PICK_The Jewel of the Southsea|r
    >>Utilisez le [B.G.A.C.] sur |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>Ramassez le |cRXP_PICK_Crate|r sur le sol
    .complete 888,2 --Telescopic Lens (1)
step
    .goto 1413/1,-3723.59,-1741.30
    >>Ramassez le |cRXP_PICK_Crate|r sur le sol
    .complete 888,1 --Shipment of Boots (1)
step << Warrior
    #season 2
    #completewith next
    .subzone 385 >>Voyagez au Fort de Guet-du-Nord
step << Warrior
    #season 2
    .goto 1413/1,-3715.48,-2191.94
    >>Cliquez sur la |cRXP_PICK_Bannière de guerre de l'Alliance|r
    >>Tuez le |cRXP_ENEMY_Lieutenant Brassepierre|r lorsqu'il apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r] |cRXP_WARN_pour apprendre|r |T132347:0|t[Rage infinie]
    .use 208741
    .itemcount 208741,1
step
    #optional
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r et leur |cRXP_LOOT_Feathers|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>Ramassez le |cRXP_PICK_Stolen Silver|r sur le sol
    .complete 3281,1 --Stolen Silver (1)
step
    #optional
    #xprate <1.5
    #completewith Verog
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #xprate >1.49
    #completewith next
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Cliquez sur la |cRXP_PICK_Fissure bouillonnante|r sous l'eau
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid/Mage
    #optional
    #season 2
    #completewith Verog
    >>Tuez les |cRXP_ENEMY_Kolkars|r. Dépouillez-les pour une |T134237:0|t[|cRXP_LOOT_Clé du butin des Kolkar|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #optional
    #xprate <1.5
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <1.5
    #label Verog
    .goto 1413/1,-2742.68,-1208.23
    >>Tuez |cRXP_ENEMY_Verog|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Il a une chance d'apparaître à chaque fois qu'un |cRXP_ENEMY_Kolkar|r meurt|r
    >>Sur un serveur à la population élevée ou qui vient de démarrer, votre meilleure option est de camper l'endroit où il apparaît
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step << Druid/Mage
    #season 2
    #loop
    .goto 1413/1,-3031.48,-1480.51,0
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Tuez les |cRXP_ENEMY_Kolkars|r. Dépouillez-les pour une |T134237:0|t[|cRXP_LOOT_Clé du butin des Kolkar|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid/Mage
    #season 2
    .goto 1413/1,-2717.35,-1211.61
    >>Ouvrez le coffre du |cRXP_PICK_Butin des Kolkar|r pour l' |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] << Druid
    >>Ouvrez le coffre du |cRXP_PICK_Butin des Kolkar|r pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 << Druid --Ferocious Idol (1)
    .collect 208754,1 << Mage --Spell Notes: TENGI RONEERA (1)
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >> |cRXP_WARN_Équipez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_Une fois que vous avez appris la|r |T132115:0|t[Forme de félin]
    .use 208689
    .itemcount 208689,1
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_Causez 20 itérations de dégâts de saignement avec|r |T132152:0|t[Déchirure] |cRXP_WARN_ou|r |T132122:0|t[Griffure] |cRXP_WARN_sur des humanoïdes, puis utilisez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_de nouveau pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .use 208689
    .itemcount 208689,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r] |cRXP_WARN_pour apprendre|r |T132869:0|t[Régénération.]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #completewith LakotaMani1
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto 1413/1,-2707.22,-1502.130
    >>Cliquez sur le |cRXP_PICK_Blue Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-2692.02,-1533.89
    >>Cliquez sur le |cRXP_PICK_Red Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>Cliquez sur le |cRXP_PICK_Yellow Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Beaten Corpse|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Tuez |cRXP_ENEMY_Lakota'mani|r. Dépouillez-le pour la [|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Hoof of Lakota'mani|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape si vous n'arrivez pas à le trouver
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #optional
    #completewith CampTArrive
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r. Ceci n'a pas à être complété maintenant
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devez avoir le sort|r |T135813:0|t[Piège d'immolation] |cRXP_WARN_ou n'importe quel autre piège afin d'obtenir cette rune|r
step << Hunter
    #season 2
    #loop
    .goto 1413/1,-1746.58,-2263.56,0
    .goto 1413/1,-1896.55,-2137.89,40,0
    .goto 1413/1,-1840.82,-2184.510,40,0
    .goto 1413/1,-1746.58,-2263.56,40,0
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Utilisez le |T135813:0|t[Piège d'immolation] sur le chemin de la patrouille du |cRXP_ENEMY_Guépard patrouilleur|r pour lui retirer son buff
    >>Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r] |cRXP_WARN_pour apprendre|r |T132270:0|t[Maîtrise des bêtes]
    .use 208701
    .itemcount 208701,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> Voyagez au Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Acceptez la quête Tribus en guerre
    .target Mangletooth
step
    #optional
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo << !Tauren
    .target Omusa Thunderhorn
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Voyagez jusqu'à Mulgore
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Prenez l'ascenseur pour aller à Thunder Bluff
    >>Si vous avez le vol pour Thunder Bluff, volez-y
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo << !Tauren
    .fly Crossroads >>Volez à la Croisée
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Rendez la quête Disparition au combat
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>Rendez la quête L'oasis stagnante
    .accept 880 >>Acceptez la quête Source de vie
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>Rendez la quête Les Faucheurs furieux
    .accept 3261 >>Acceptez la quête Jorn Œil-des-cieux
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>Rendez la quête Argent volé
    .target +Gazrog
    .goto 1413/1,-2639.32,-436.00
step
    .destroy 5165 >>|cRXP_WARN_Détruisez toutes les|r |T132914:0|t[Plumes solécailles] |cRXP_WARN_qu'il vous reste|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez un|r [Carquois moyen] |cRXP_BUY_à Uthrok|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Leaders
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .target Regthar Deathgate
step
    #xprate <1.5
    #completewith Hezrul
    .subzone 387 >> Voyagez jusqu'à l'Oasis luxuriante
    .isQuestTurnedIn 851
step
    #optional
    #xprate <1.5
    #completewith Hezrul
    >>Tuez les |cRXP_ENEMY_Gueules d'acier des oasis|r en cherchant |cRXP_ENEMY_Hezrul Marque-de-sang|r. Dépouillez-les pour leur |cRXP_LOOT_Carapaces|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #optional
    #xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <1.5
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>Trouvez et tuez |cRXP_ENEMY_Hezrul Bloodmark|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrouille autour du lac|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #xprate <1.5
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_N'hésitez pas à passer cette quête si vous n'en avez pas eu assez jusqu'à présent|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto 1413/1,-2273.51,-1106.89
    >>Ouvrez le |cRXP_PICK_Nid de gueule d’acier vide|r au sol pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Lacérer|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacérer|r] |cRXP_WARN_pour apprendre|r |T132131:0|t[Lacérer]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #optional
    #xprate <1.5
    #completewith CounterattackComplete
    .abandon 855 >> Abandonnez Les bracelets de centaures comme vous n'en avez pas récupéré assez avant pour qu'elle soit rentable à finir
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #completewith CounterattackComplete
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le Chef de guerre Krom'zar autour du bâtiment où se situe le donneur de quête|r
    +|cRXP_WARN_Passez cette quête si vous n'arrivez pas à la terminer. Vous aurez une autre occasion de la finir à un niveau plus élevé|r
    .isQuestTurnedIn 852
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <1.5
    #label CounterattackComplete
    .goto 1413/1,-1884.39,-289.38
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #optional
    #xprate <1.5
    #completewith StonetalonPickups
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <1.5
    #loop
    .goto 1413/1,-1458.79,565.96,0
    .goto 1413/1,-1458.79,565.96,40,0
    .goto 1413/1,-1379.75,620.68,40,0
    .goto 1413/1,-1376.71,717.97,40,0
    .goto 1413/1,-1323.0,747.7,40,0
    .goto 1413/1,-1245.99,763.91,40,0
    .goto 1413/1,-1223.7,699.05,40,0
    .goto 1413/1,-1290.58,670.0,40,0
    .goto 1413/1,-1245.99,624.74,40,0
    .goto 1413/1,-1241.94,559.2,40,0
    .goto 1413/1,-1155.8,553.12,40,0
    .goto 1413/1,-1150.74,513.93,40,0
    .goto 1413/1,-1194.31,508.53,40,0
    .goto 1413/1,-1263.22,458.53,40,0
    .goto 1413/1,-1311.86,415.97,40,0
    .goto 1413/1,-1366.58,449.75,40,0
    .goto 1413/1,-1417.24,486.91,40,0
    .goto 1413/1,-1445.62,532.85,40,0
    >>Tuez les |cRXP_ENEMY_Witchwing Slayers|r. Dépouillez-les pour leur |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Witchwing Slayers|r lancent|r [Exécuter] |cRXP_WARN_(inflige BEAUCOUP de dégâts lorsque vous êtes à moins de 20% de vie), et les |cRXP_ENEMY_Witchwing Ambushers|r utilisent|r [Camouflage] et patrouillent aux alentours
    >>Faites attention aux |cRXP_ENEMY_Witchwing Ambushers|r. Ils sont camouflés et patrouillent dans la zone
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
    .isOnQuest 875
step
    #label StonetalonPickups
    #completewith next
    .goto 1413/1,-950.10,-271.14,30 >> Voyagez vers |cRXP_FRIENDLY_Seereth Bris-de-pierre|r
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    #label StonetalonPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >> Acceptez la quête Les invasions gobelines
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .accept 6548 >> Acceptez la quête Vengez mon village !
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .maxlevel 20 << !Druid
step
    #optional
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >> Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >> Acceptez la quête Les invasions gobelines
    .target Seereth Stonebreak
]])

RXPGuides.RegisterGuide([[
#forever
#xprate <1.99
<< Horde
#name 17-22 Serres-Rocheuses/Tarides/Orneval
#displayname 18-22 Serres-Rocheuses/Tarides/Orneval << !Shaman !Hunter !Tauren !Skyborne
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#next RestedXP Horde 22-30\22-24 Hillsbrad


step << Druid
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Taurens totem-sinistre|r. Dépouillez-les pour l' |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Tuez les |cRXP_ENEMY_Grimtotem Ruffians|r et les |cRXP_ENEMY_Grimtotem Mercenaries|r dans la zone
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #season 2
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Tuez les |cRXP_ENEMY_Totem-sinistre|r. Dépouillez-les pour l' |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    #completewith AvengeVillageTurnin
    .equip 18,210534 >> |cRXP_WARN_Équipez l'|r |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #completewith next
    >>|cRXP_WARN_Lancez|r |T136085:0|t[Rétablissement] |cRXP_WARN_ou|r |T136041:0|t[Toucher guérisseur] |cRXP_WARN_sur 10 Bêtesamicales différentes telles que les Familiers de Chasseur/les Druides en Forme d'ours/les Chamans en Loup fantôme|r
    .train 410021 >> |cRXP_WARN_Utilisez l' |r |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r] |cRXP_WARN_pour apprendre|r |T132143:0|t[Frappes féroces]
    .itemcount 210534,1
step
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Rendez la quête Vengez mon village !
    .accept 6629 >> Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >> Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto 1442/1,-460.13,67.77,30 >>Montez le chemin jusqu'au bûcher
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-350.74,112.06
    >>Tuez |cRXP_ENEMY_Grundig Darkcloud|r et |cRXP_ENEMY_Grimtotem Brutes|r
    >>Tuez bien les 6 |cRXP_ENEMY_Grimtotem Brutes|r avant de commencer la quête à l'intérieur
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-342.44,129.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Acceptez la quête Protéger Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-261.38,90.57,40,0
    .goto 1442/1,-261.86,-7.12,40,0
    .goto 1442/1,-501.15,-41.64
    >>Escortez |cRXP_FRIENDLY_Kaya|r et restez proche d'elle
    >>Faites attention ! Trois |cRXP_ENEMY_Grimtotems|r vont apparaître lorsque vous aurez atteint le bûcher au Camp Aparaje
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acceptez la quête Suceurs de sang
    .target Xen'Zilla
step << Priest/Mage/Warlock
    #completewith next
    .goto 1442/1,-103.64,40.10,100,0
    .goto 1442/1,74.11,185.32,100,0
    .goto 1442/1,244.05,262.50,100,0
    >>Tuez tous les |cRXP_ENEMY_Deepmoss Creeper|r que vous voyez
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    .goto 1442/1,360.76,451.690
    >>Cliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Acceptez la quête Arachnophobie
    .group << Priest/Mage
step << Warlock/Priest/Mage
    #completewith Besseleth1
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r et les |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #completewith next
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #label Besseleth1
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>Tuez |cRXP_ENEMY_Besseleth|r. Dépouillez-la pour sa |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Nettoyez la zone autour de|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Soyez prudent elle peut vous entoiler. Gardez-la en permanence apeurée avec des DoT|r << Warlock
    >>|cRXP_WARN_Il s'agit d'une quête est optionnelle. Si vous ne pouvez pas la faire, passez-la. Vous pourrez l'essayer de nouveau plus tard|r << Warlock
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 2 << Priest/Mage
step << Warlock/Priest/Mage
    .goto 1442/1,560.49,440.94
    >>Tuez les |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << !Warlock
    .goto 1442/1,-44.56,84.05,80,0
    .goto 1442/1,245.51,255.01,80,0
    .goto 1442/1,392.01,445.17,40,0
    .goto 1442/1,560.49,440.94
    >>Tuez les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto 1442/1,735.8,925.8,50,0
    .goto 1442/1,806.12,929.05
    .subzone 460 >>Voyagez jusqu'à la Retraite des Roche-Soleil
step
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Jayka|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 1093
step
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au deuxième étage de l'auberge
    .vendor >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si elle en a en stock|r << !Warrior
    .vendor >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_et des|r [Viétérule] |cRXP_BUY_si elle en a en stock|r << Warrior
    .target Jeeda
    .isQuestAvailable 1093
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Rendez la quête Arachnophobie
    .target Maggran Earthbinder
	.isQuestComplete 6284
step
    #label SRRFP
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Prenez le chemin de vol de la Retraite de Roche-Soleil
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto 1442/1,365.16,878.250,15 >> Voyagez vers |cRXP_FRIENDLY_Ziz|r
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >> Rendez la quête Ziz Fizzik
    .accept 1093 >> Acceptez la quête Super-Découpeur 6000
    .target Ziz Fizziks
step
    #completewith Windshear
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto 1442/1,352.46,912.44,0
    .goto 1442/1,352.46,912.44,50,0
    .goto 1442/1,297.77,959.660,50,0
    .goto 1442/1,250.40,990.59,50,0
    .goto 1442/1,259.68,1032.93,50,0
    .goto 1442/1,246.98,1068.09,50,0
    .goto 1442/1,207.91,1010.13,50,0
    .goto 1442/1,163.47,962.27,50,0
    .goto 1442/1,86.81,961.94,50,0
    .goto 1442/1,181.05,907.89,50,0
    .goto 1442/1,193.75,867.83,50,0
    .goto 1442/1,194.73,827.78,50,0
    .goto 1442/1,225.49,765.26,50,0
    .goto 1442/1,281.16,763.63,50,0
    .goto 1442/1,268.95,832.99,50,0
    .goto 1442/1,303.63,858.39,50,0
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T135157:0|t[Bâton long] |cRXP_BUY_à Veenix|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Undead Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Achetez l'|r |T135329:0|t[Epée d'exécuteur] |cRXP_BUY_à Veenix|r
    >>|cRXP_WARN_Si elle n'est pas disponible, achetez un|r |T135280:0|t[Faux dace] |cRXP_WARN_à la place|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior
    #optional
    #completewith BluePrints
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <19,1
step << Undead Warrior
    #optional
    #completewith BluePrints
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Shaman
    #season 0
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T135157:0|t[Bâton long] |cRXP_BUY_à Veenix|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 2
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T133476:0|t[Fléau] |cRXP_BUY_à Veenix|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T133476:0|t[Fléau]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Rogue
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Veenix.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step
    #label Windshear
    .subzone 461 >> Voyagez à la Combe des Cisailles
    .isOnQuest 1093
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #label BluePrints
    #loop
    .goto 1442/1,179.10,1168.06,0
    .goto 1442/1,179.10,1168.06,100,0
    .goto 1442/1,232.82,1239.70,100,0
    .goto 1442/1,-16.23,1441.59,100,0
    .goto 1442/1,-255.52,1291.80,100,0
    .goto 1442/1,-382.48,1135.50,100,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Operators|r. Dépouillez-les pour leur |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #loop
    .goto 1442/1,242.58,1121.82,0
    .goto 1442/1,242.58,1121.82,50,0
    .goto 1442/1,292.39,1122.470,50,0
    .goto 1442/1,325.6,1168.39,50,0
    .goto 1442/1,338.79,1206.48,50,0
    .goto 1442/1,276.77,1248.49,50,0
    .goto 1442/1,215.24,1145.59,50,0
    .goto 1442/1,187.40,1114.33,50,0
    .goto 1442/1,138.57,1144.62,50,0
    .goto 1442/1,51.16,1153.41,50,0
    .goto 1442/1,-17.70,1128.33,50,0
    .goto 1442/1,-106.09,1157.31,50,0
    .goto 1442/1,-165.66,1173.60,50,0
    .goto 1442/1,-189.10,1079.82,50,0
    .goto 1442/1,-69.95,1061.91,50,0
    .goto 1442/1,10.63,1072.33,50,0
    .goto 1442/1,57.51,1056.05,50,0
    .goto 1442/1,107.32,1040.09,50,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto 1442/1,246.98,1068.09,0
    .goto 1442/1,352.46,912.44,30,0
    .goto 1442/1,297.77,959.660,30,0
    .goto 1442/1,250.40,990.59,30,0
    .goto 1442/1,259.68,1032.93,30,0
    .goto 1442/1,246.98,1068.09,30,0
    .goto 1442/1,207.91,1010.13,30,0
    .goto 1442/1,163.47,962.27,30,0
    .goto 1442/1,86.81,961.94,30,0
    .goto 1442/1,181.05,907.89,30,0
    .goto 1442/1,193.75,867.83,30,0
    .goto 1442/1,194.73,827.78,30,0
    .goto 1442/1,225.49,765.26,30,0
    .goto 1442/1,281.16,763.63,30,0
    .goto 1442/1,268.95,832.99,30,0
    .goto 1442/1,303.63,858.39,30,0
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #optional
	#completewith next
	+|cRXP_WARN_Si vous avez plus de 15 |cRXP_LOOT_Deepmoss Eggs|r, enlevez le surplus que vous avez dans ce stack (shift click), puis détruisez-les
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Rendez la quête Super-Découpeur 6000
    .accept 1094 >> Acceptez la quête D'autres instructions
    .target Ziz Fizziks
step
    #loop
    .goto 1442/1,362.71,539.28,0
    .goto 1442/1,275.30,577.38,80,0
    .goto 1442/1,362.71,539.28,80,0
    .goto 1442/1,298.25,432.80,80,0
    .goto 1442/1,244.05,262.50,80,0
    .goto 1442/1,74.11,185.32,80,0
    .goto 1442/1,-103.64,40.10,80,0
    .goto 1442/1,362.71,539.28,80,0
    >>Finissez de tuer les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto 1413/1,-1995.86,-2375.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Rendez la quête Jorn Œil-des-cieux
    .accept 882 >>Acceptez la quête Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani2
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsutes|r. Dépouillez-les pour leurs |cRXP_LOOT_Défenses|r. Gardez les |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] que vous récupérez
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #label LakotaMani2
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Tuez |cRXP_ENEMY_Lakota'mani|r. Dépouillez-le pour la [|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Hoof of Lakota'mani|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape si vous n'arrivez pas à le trouver
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsutes|r. Dépouillez-les pour leurs |cRXP_LOOT_Défenses|r. Gardez les |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] que vous récupérez
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock/Shaman
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19+11000 >> Montez votre expérience jusqu'à 11000+/21300xp
    --VV 1.5x Add 1.5x grind step
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06.0,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Finissez de tuer les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
    >>Finissez de tuer les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Tuez n'importe quel |cRXP_ENEMY_Zhevra|r. Dépouillez-le pour une |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #loop
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>Tuez les |cRXP_ENEMY_Oasis Snapjaws|r à l'intérieur et autour du lac. Dépouillez-les pour leur |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step << Shaman/Priest
    #season 2
    #loop
    .goto 1413/1,-3028.44,-685.30,40,0 --Spawn 1
    .goto 1413/1,-3034.52,-698.81,40,0
    .goto 1413/1,-2931.16,-816.37,40,0 --Spawn 2
    .goto 1413/1,-2946.36,-800.83,40,0
    .goto 1413/1,-3200.71,-821.78,40,0 --Spawn 3
    .goto 1413/1,-3209.83,-804.89,40,0
    .goto 1413/1,-3199.70,-799.480,40,0
    .goto 1413/1,-3212.87,-979.20,40,0 --Spawn 4
    .goto 1413/1,-3202.74,-998.79,40,0
    .goto 1413/1,-3337.51,-932.58,40,0 --Spawn 5
    .goto 1413/1,-3347.64,-923.12,40,0
    .goto 1413/1,-3349.67,-936.63,40,0
    >>Lancez |T136075:0|t[Expiation] sur le |cRXP_ENEMY_Mirage du désert|r pour le tuer. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de terre]|r << Shaman
    >>Lancez |T135894:0|t[Dissipation de la magie] sur le |cRXP_ENEMY_Mirage du désert|r pour le tuer. Dépouillez-le pour obtenir la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>Tuez n'importe quel |cRXP_ENEMY_Zhevra|r. Dépouillez-le pour une |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>Utilisez la [|cRXP_LOOT_Fresh Zhevra Carcass|r] à l'arbre mort pour invoquer |cRXP_ENEMY_Ishamuhale|r. Tuez-le et dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>La Carcasse ne dure que 30 minutes !
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >> Voyagez jusqu'à Ratchet
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Rendez la quête Piller les pilleurs
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Rendez la quête Course à la lentille
    .target Gazlowe
step
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto 1413/1,-3639.48,-1049.46
    >>|cRXP_WARN_Si vous avez|cRXP_LOOT_ |r3 pièces d'or|r à dépenser, vous pouvez acheter une rune chez |cRXP_FRIENDLY_Grizzbi|r |cRXP_WARN_à l'auberge de Cabestan. Jugez vous-même si vous pouvez vous leapermettre et si la rune est utile pour votre classe. Vous pourrez toujours l'acheter plus tard|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grizzbi|r dans l'auberge
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Achetez et utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie harmonieuse|r] |cRXP_WARN_pour apprendre|r |T237549:0|t[Sérendipité] << Priest
    .train 410010 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de sacrifice|r] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Main de sacrifice)] << Paladin
    .train 401761 >>|cRXP_WARN_Achetez et utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Remonter le temps|r] |cRXP_WARN_pour apprendre|r |T237538:0|t[Remonter le temps] << Mage
    .train 410122 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] |cRXP_WARN_pour apprendre|r |T132266:0|t[Loup solitaire] << Hunter
    .train 416042 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de survie|r] |cRXP_WARN_pour apprendre|r |T132126:0|t[Survie du plus fort] << Druid
    .train 425445 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Porteguerre|r] |cRXP_WARN_pour apprendre|r |T236319:0|t[Porteguerre] << Warrior
    .train 425476 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] |cRXP_WARN_pour vous apprendre|r |T237562:0|t[Pacte démoniaque] << Warlock
    .train 424990 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Main gauche|r] |cRXP_WARN_pour vous apprendre|r |T237531:0|t[Main gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Ambidextrie|r] |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Spécialisation Ambidextrie)] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r et |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    .accept 1095 >>Acceptez la quête D'autres instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .accept 1491 >>Acceptez la quête Les potions d'intelligence
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r et |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    .accept 1095 >>Acceptez la quête D'autres instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Achetez le [|cRXP_FRIENDLY_Mighty Chain Pants|r] à Grazlix si il est disponible
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Achetez-lui des [|cRXP_FRIENDLY_Wolf Bracers|r] si il en a en stock
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
    .isQuestTurnedIn 865
step << Warrior
    #optional
    #completewith FlytoXroads
    +Équipez le [|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +Équipez les [|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Ratchet
    .target Innkeeper Wiley
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Volez à la Croisée
    .target Bragok
    .subzoneskip 380
step << Hunter
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Acceptez la quête Rapport à Kadrak
    .target Thork
step
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .turnin 875 >>Rendez la quête Lieutenants harpies
    .accept 876 >>Acceptez la quête Serena Plumesang
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <1.5
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .accept 876 >>Acceptez la quête Serena Plumesang
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r et |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Rendez la quête Consumé par la haine
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Rendez la quête Source de vie
    .accept 1489 >>Acceptez la quête Hamuul Totem-runique
    .accept 3301 >>Acceptez la quête Mura Runetotem
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
step
    .destroy 5085 >>Détruisez tous vos restes de [Défense de huran Dos-hirsute]
    .itemcount 5085,1
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon !WC
    .dungeon DM
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acceptez la quête La chasse aux œufs
    .target Korran
step << Shaman
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto 1454/1,-4213.03,1920.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Acceptez la quête L'appel de l'eau
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1507 >>Acceptez la quête La dévoreuse d'âmes
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire de Tourment (Rang 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Rendez la quête La dévoreuse d'âmes
    .accept 1508 >>Acceptez la quête Cazul l'aveugle
    .target Cazul
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto 1454/1,-4199.99,1717.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Rendez la quête Cazul l'aveugle
    .accept 1509 >>Acceptez la quête Des nouvelles de Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> À présent, vous devriez commencer à chercher un groupe pour les Mortemines
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Apprenez les compétences de votre familier
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Apprenez vos sorts de classe
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Apprenez vos sorts de classe
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Apprenez vos sorts de classe
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Achetez une|r |T132794:0|t[Flasque d'huile] |cRXP_BUY_à l'Hôtel des ventes si cela est possible|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto 1411/1,-4648.55,1321.88,40 >>Montez la Tour des Zeppelins
    .zone Stranglethorn Vale >>Prenez le Zeppelin pour la Vallée de Strangleronce
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37.0,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> Nagez directement vers l'ouest en partant de Grom'gol vers le Récif infâme, puis nagez vers le nord en direction de la Marche de l'Ouest
    >>|cRXP_WARN_Restez loin de l'île. Suivez le point de repère pour rester en sécurité !|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Voyagez au Phare de la Marche de l'Ouest
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 103 >> Acceptez la quête Le gardien de la flamme
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 103 >> Rendez la quête Le gardien de la flamme
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour son |cRXP_LOOT_Écaille|r
    >>Le |cRXP_ENEMY_Vieux Troubloeil|r |cRXP_WARN_patrouille le long du Longrivage. Si vous ne le voyez pas le long du Longrivage, attendez qu'il apparaisse dans le campement |cRXP_ENEMY_Murloc|r le plus au sud|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 104 >> Rendez la quête Menace sur la côte
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandonnez la quête Le gardien de la flamme
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11797.13,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> Entrez dans le portail de l'instance des Mortemines. Entrez dans la zone
    .dungeon DM
step
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Tarides après avoir terminé les Mortemines
    .zone The Barrens >> Arrivée aux Tarides
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Volez à la Croisée
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Rendez la quête Des nouvelles de Dogran
    .accept 1510 >>Acceptez la quête Des nouvelles de Dogran
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Volez à Ratchet
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto 1413/1,-4047.86,-1345.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r commence une quête chronométrée avec une durée de 45 minutes
    .accept 853 >> Acceptez la quête L'apothicaire Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +Vous faites une quête chronométrée, ne passez pas ABS. Elle sera rendue 20-30 après qu'elle soit prise
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Bragok
    .subzoneskip 380
step
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
step
    .goto 1413/1,-1891.48,-2391.93
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsute|r. Dépouillez-les pour un |T134128:0|t|cRXP_LOOT_Joyau de sang|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Rendez la quête Tribus en guerre
    .accept 5052 >>Acceptez la quête Joyaux de sang d'Agamaggan
    .turnin 5052 >>Rendez la quête Joyaux de sang d'Agamaggan
    .target Mangletooth
step
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    +|cRXP_WARN_Utilisez vos|r |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] |cRXP_WARN_pour obtenir des buffs. Gardez-en au moins 4 pour plus tard|r << Tauren/Shaman/Orc Warrior/Troll Warrior
    +|cRXP_WARN_Utilisez vos|r |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] |cRXP_WARN_pour obtenir des buffs. Gardez-en au moins 4 pour plus tard|r << !Tauren !Shaman !Warrior/Undead
    +Vérifiez de désactiver toutes les options de complétion automatique des quêtes d'add-ons tels que Quesie ou Leatrix Plus pour cette partie !
    .target Mangletooth
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .target Jorn Skyseer
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>Tuez les |cRXP_ENEMY_Thunder Lizards|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> Voyagez au sud vers |cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>Tuez le |cRXP_ENEMY_Faucon-tonnerre|r. Dépouillez-le pour ses |cRXP_LOOT_Ailes|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Rendez la quête L'appel de l'eau
    .accept 1535 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    .goto 1413/1,-1858.04,-3572.92
    .use 7766 >> Remplissez votre [Outre marron vide] au point d'eau près de la hutte de Brine
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Rendez la quête L'appel de l'eau
    .accept 1536 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .subzone 378 >>Revenez au Camp Taurajo
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>Tuez un |cRXP_ENEMY_Thunderhawk Hatchling|r ou un |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Dépouillez-le pour ses |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval << Hunter
    .target Jorn Skyseer
step << !Tauren !Shaman !Warrior/Undead
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>Si il vous reste 10 [|cRXP_LOOT_Blood Shards|r, utilisez les pour obtenir [L'esprit du vent] à |cRXP_FRIENDLY_Mangletooth|r
    >>Passez cette étape si vous pouvez voler jusqu'à Thunder Bluff
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren !Shaman !Warrior/Undead
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Voyagez jusqu'à Mulgore
step << !Tauren !Shaman !Warrior/Undead
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Prenez l'ascenseur pour aller à Thunder Bluff
    >>Si vous avez le vol pour Thunder Bluff, volez-y
step << Tauren/Shaman/Orc Warrior/Troll Warrior
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Achetez la compétence pour porter des Masses à deux mains
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step << Rogue
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Acheter la compétence pour porter des masses à une main
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Kuruk|r
    .collect 3137,200,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Déposez vos [Joyaux de sang]
    .bankdeposit 5059 >> Déposez votre |T132938:0|t[Griffe d'excavation]
    .target Chesmu
    .isOnQuest 868
step
    #optional
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Déposez vos [Joyaux de sang]
    .target Chesmu
step
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon !WC
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Acceptez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Acceptez la quête Peste dévorante << Undead Priest
    .accept 5642 >> Acceptez la quête Garde de l'ombre << Troll Priest
    .trainer >> Apprenez vos sorts de classe
    .target Miles Welsh
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >> Fabriquez des [Bandages épais en lin] jusqu'à ce que votre compétence de [Premiers soins] soit de 80 ou plus
    .skill firstaid,<1,1
step
    .goto 1456/1,206.88,-997.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour atteindre une compétence de 80
    .train 3277 >> Apprenez  [Bandage en laine]
    .train 7934 >> Apprenez [Anti-venin] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>Fabriquez des [Anti-Venin] si vous avez trouvé des [Petites glandes à venin]
    >>Gardez-les pour plus tard
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Rendez la quête Hamuul Totem-runique
    .accept 1490 >> Acceptez la quête Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .accept 914 >> Acceptez la quête Les druides du Croc
    .target Nara Wildmane
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .trainer >> Apprenez vos sorts de classe
    .accept 27 >> Acceptez la quête Une leçon à apprendre
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Rendez la quête Une leçon à apprendre
    .accept 28 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto 1450/1,-2634.67,7634.43
    .collect 15877,1,28,1 >>Récupérez le |cRXP_PICK_Conteneur de babioles|r au fond du lac pour un |T134125:0|t[Colifichet du sanctuaire]
    >>|cRXP_WARN_Ne plongez pas dans l'eau avant d'arriver en haut du Colifichet|r
step << Druid
    .goto 1450/1,-2221.48,7844.89
    .cast 19719 >> Utilisez le [Colifichet du sanctuaire] au sanctuaire de Remulos
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto 1450/1,-2224.25,7874.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Rendez la quête L'épreuve du lac
    .accept 30 >> Acceptez la quête L'épreuve du lion de mer
    .target Tajarri
step << Druid
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> Voyagez au sommet du chasseur
step << Hunter
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> Voyagez au sommet du chasseur
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 845 >>Apprenez vos sorts de classe
    .accept 1823 >>Acceptez la quête Parler à Ruga
    .target Torm Ragetotem
step << Rogue
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Kard.|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith KayaLives
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Warrior/Shaman
    #optional
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Si c'est moins cher vous pouvez plutôt acheter une arme verte à l'Hôtel des Ventes|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu Totem-de-rage|r|cRXP_BUY_. Achetez-lui un|r |T135157:0|t[Bâton long] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 0
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu Totem-de-rage|r|cRXP_BUY_. Achetez-lui un|r |T135157:0|t[Bâton long] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <21,1
step << Shaman
    #season 2
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Achetez un|r |T133476:0|t[Fléau] |cRXP_BUY_à Etu|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Équipez le|r |T133476:0|t[Fléau]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Achetez un|r [Arc courbe lourd] |cRXP_BUY_à Kuna|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Corne-Tonnerre
step << Hunter
    #completewith KayaLives
    #optional
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointues] |cRXP_BUY_à Kuna|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Corne-Tonnerre

    --WC

step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    +Maintenant vous devriez chercher un groupe pour la Caverne des Lamentations
    >>Tuez les |cRXP_ENEMY_Hurans|r |cRXP_WARN_pendant que vous montez un groupe pour les Cavernes des Lamentations|r
    .dungeon WC
step
    .goto 1413/1,-2053.62,-882.58,100 >> Voyagez vers la Caverne des Lamentations
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>Montez la montagne à la pierre de rencontre de la Caverne des Lamentations
    >>Suivez la flèche méticuleusement pour atteindre la grotte cachée
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    >>Ils sont situés au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Tuez tous les |cRXP_ENEMY_Déviants|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_LOOT_Peaux|r |cRXP_WARN_pour tout le monde|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>Tuez tous les |cRXP_ENEMY_Déviants|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_WARN_Il met beaucoup de temps avant de réapparaître. Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> Entrez dans le portail pour les Cavernes des lamentations
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_LOOT_Peaux|r |cRXP_WARN_pour tout le monde|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r et les |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r et |cRXP_ENEMY_Lord Serpentis|r. Dépouillez-les pour leur |cRXP_LOOT_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Disciple of Naralex|r à l'entrée des Cavernes des Lamentations. Escortez-le jusqu'à |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Une fois que vous avez atteint |cRXP_FRIENDLY_Naralex|r vous allez être attaqué par deux vagues d'ennemis et ensuite par |cRXP_ENEMY_Mutanus the Devourer|r
    >>Tuez le et dépouillez-le pour la [|cRXP_LOOT_Glowing Shard|r] et utilisez-la pour commencer la quête
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #optional
    #completewith DeviateRaptors
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Tuez les |cRXP_ENEMY_Ravageurs déviants|r, les |cRXP_ENEMY_Vipères déviantes|r, les |cRXP_ENEMY_Traînards déviants|r et les |cRXP_ENEMY_Croc-d'effrois déviants|r. Dépouillez-les pour obtenir leur |cRXP_ENEMY_Peaux|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
    .dungeon WC
 step
    >>Tuez les |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r et les |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour obtenir leur |cRXP_ENEMY_Peaux|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ratchet
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Rendez la quête Les potions d'intelligence
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> Montez la montagne
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    >>Ils sont situés au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ebru|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .subzone 378 >> Voyagez au sud jusqu'au Camp Taurajo
    .dungeon WC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Rendez la quête Les druides du Croc
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Rendez la quête Au coeur des cauchemars
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
    .isQuestComplete 962
    .dungeon WC
step
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Zamah|r
    .turnin 962 >>Rendez la quête Fleur de serpent
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    #label WCEnd
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon WC
step
    #optional
    .abandon 1486 >>Abandonnez la quête Les peaux de déviants
step
    #optional
    .abandon 1487 >>Abandonnez la quête L'éradication des déviants
step
    #optional
    .abandon 1491 >>Abandonnez la quête Les potions d'intelligence
step
    #optional
    .abandon 959 >>Abandonnez la quête Fuite de porto aux docks
step
    #optional
    .abandon 914 >>Abandonnez la quête Les druides du Croc
step
    #optional
    .abandon 962 >>Abandonnez la quête Fleur de serpent
step
    #xprate <1.5
    #completewith Serena
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .subzoneskip 380
    .isQuestTurnedIn 852 << !Hunter
step
    #xprate >1.49
    #completewith CounterattackTurnin2
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .subzoneskip 380
    .target Tal
    .isQuestTurnedIn 852 << !Hunter
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #optional
    #completewith Serena
    .abandon 855 >>Abandonnez la quête Les bracelets de centaures
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le |cRXP_ENEMY_Chef de guerre Krom'zar|r autour du bâtiment où se situe le donneur de quête|r
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto 1413/1,-1884.39,-289.38
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Serena
    .goto 1413/1,-1345.3,790.94
    >>Tuez |cRXP_ENEMY_Serena Bloodfeather|r. Dépouillez-la pour sa |cRXP_LOOT_Tête|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    .goto 1413/1,-2347.48,857.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wenikee Bakaboulon|r
    .turnin 3921 >> Rendez la quête Wenikee Bakaboulon
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    .goto 1413/1,-2253.24,1246.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r
    .turnin 6541 >> Rendez la quête Rapport à Kadrak
    .target Kadrak
step << Hunter
    .goto 1440/1,-2240.94,1778.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r pour commencer l'escorte
    >>|cRXP_FRIENDLY_Torek|r a un temps de réapparition de 5 minutes
    .accept 6544 >> Acceptez la quête L'assaut de Torek
    .target Torek
step << Hunter
    .goto 1440/1,-2110.61,1809.320,60,0
    .goto 1440/1,-2052.37,1776.27,20,0
    .goto 1440/1,-2006.81,1777.42,10,0
    .goto 1440/1,-2037.38,1777.04
    >>Suivez |cRXP_FRIENDLY_Torek|r
    >>Laissez |cRXP_FRIENDLY_Torek|r et ses |cRXP_FRIENDLY_Splintertree Raiders|r tank les |cRXP_ENEMY_Silverwing Warriors|r et les |cRXP_ENEMY_Silverwing Sentinels|r
    >>|cRXP_WARN_Lorsque vous nettoyez le bâtiment, allez vers le Balcon. Lorsque |cRXP_ENEMY_Duriel Moonfire|r arrive, laissez |cRXP_FRIENDLY_Torek|r et ses |cRXP_FRIENDLY_Splintertree Raiders|r générer de la menace avant de faire des dégâts|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    .goto 1440/1,-2511.97,2271.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Rendez la quête L'assaut de Torek
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Rendez La Chasse d'Ashenvale
    .turnin 6383 >> Rendez La Chasse d'Ashenvale
    .target Senani Thunderheart
step << Hunter
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Apprenez le chemin de vol du Poste de Bois-Brisé
    .target Vhulgra
step << Hunter
    #completewith EnterSTM2
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Crossroads >> Volez à la Croisée
    .target Vhulgra
    .zoneskip The Barrens
step << !Hunter
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Hunter
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 380 >>Voyagez à la Croisée
step
    #xprate <1.5
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 876 >> Rendez la quête Serena Plumesang
    .accept 1060 >> Acceptez la quête Lettre à Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <1.5
    #optional
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .accept 1060 >> Acceptez la quête Lettre à Jin'Zil
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acceptez la quête La chasse aux œufs
    .target Korran
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .accept 1068 >>Acceptez la quête Les machines à déchiqueter
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .accept 1068 >>Acceptez la quête Les machines à déchiqueter
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .accept 1068 >>Acceptez la quête Les machines à déchiqueter
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6523
step
    #label STMturnins1
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .accept 1068 >>Acceptez la quête Les machines à déchiqueter
    .goto 1413/1,-950.10,-271.14
    .target Seereth Stonebreak
step
    #completewith BloodFeedersTI
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Montez le chemin sur la gauche
step
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Rendez la quête Lettre à Jin'Zil
    .accept 1058 >> Acceptez la quête Magie de la forêt de Jin'Zil
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jin'Zil|r
    .accept 1058 >> Acceptez la quête Magie de la forêt de Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Rendez la quête Des nouvelles de Dogran
    .accept 1511 >>Acceptez la quête Breuvage de Ken'zigla
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Rendez la quête Suceurs de sang
    .target Xen'Zilla
step << skip
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Sautez sur l'une des cages. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
step << skip
    #completewith ElderCroneTurnin
    .goto 1456/1,-48.84,-1037.94,20,0
    .goto 1456/1,-13.04,-1107.95,40 >> Prenez l'ascenseur pour aller à Thunder Bluff
step << Hunter
    .goto 1442/1,360.76,451.690
    >>Cliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Acceptez la quête Arachnophobie
step << Hunter
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>Tuez |cRXP_ENEMY_Besseleth|r. Dépouillez-la pour sa |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Nettoyez la zone autour de|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Faites attention comme elle va vous entoiler|r
    >>|cRXP_WARN_Il s'agit d'une quête optionnelle. Si vous ne pouvez pas la faire, ignorez-la|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #completewith Tsunaman1
    .subzone 460 >>Voyagez jusqu'à la Retraite des Roche-Soleil
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Rendez la quête Arachnophobie
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #label KayaLives
    .goto 1442/1,928.20,1015.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Rendez la quête Kaya est en vie
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Jayka|r
    >>|cRXP_WARN_Ne liez PAS votre|r |T134414:0|t[Pierre de foyer]
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Innkeeper Jayka
    .isOnQuest 1095
step
    .goto 1442/1,925.27,885.42,5,0
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au deuxième étage de l'auberge
    .vendor 4083 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si elle en a en stock|r << !Warrior
    .vendor 4083 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_et des|r [Viétérule] |cRXP_BUY_si elle en a en stock|r << Warrior
    .target Jeeda
    .isOnQuest 1095
step
    #xprate <1.5
    #completewith next
    .goto 1442/1,834.44,908.21,30,0
    .goto 1442/1,856.91,874.67,30,0
    .goto 1442/1,896.46,836.57,30,0
    .goto 1442/1,940.41,831.04,30 >> Montez le chemin à droite
step
    #xprate <1.5
    #label Tsunaman1
    .goto 1442/1,933.09,824.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acceptez la quête Problèmes dans les profondeurs
    .accept 6393 >>Acceptez la quête Guerre élémentaire
    .target Tsunaman
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Rendez la quête D'autres instructions
    .target Ziz Fizziks
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto 1442/1,265.54,1213.00,50,0
    .goto 1442/1,299.72,1233.84,50,0
    .goto 1442/1,332.44,1218.86,50,0
    .goto 1442/1,325.11,1174.25,50,0
    .goto 1442/1,267.98,1156.34,50,0
    .goto 1442/1,262.12,1136.15,50,0
    .goto 1442/1,238.68,1122.470,50,0
    .goto 1442/1,202.54,1089.58,50,0
    .goto 1442/1,169.82,1085.03,50,0
    .goto 1442/1,134.17,1067.120,50,0
    .goto 1442/1,102.43,1077.86,50,0
    .goto 1442/1,64.83,1059.95,50,0
    .goto 1442/1,35.53,1054.090,50,0
    .goto 1442/1,2.81,1083.07,50,0
    .goto 1442/1,-23.07,1085.03,50,0
    .goto 1442/1,-63.60,1094.14,50,0
    .goto 1442/1,-100.23,1091.86,50,0
    .goto 1442/1,-160.78,1070.370,50,0
    .goto 1442/1,-197.89,1086.00,50,0
    .goto 1442/1,-212.54,1117.59,50,0
    .goto 1442/1,332.44,1218.86,0
    >>Tuez |cRXP_ENEMY_XT9|r. Il patrouille au côté sud de la rivière
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto 1442/1,-34.79,1390.46,50,0
    .goto 1442/1,-3.05,1387.86,50,0
    .goto 1442/1,36.51,1448.42,50,0
    .goto 1442/1,133.69,1450.70,50,0
    .goto 1442/1,134.17,1421.40,50,0
    .goto 1442/1,148.34,1400.23,50,0
    .goto 1442/1,99.50,1414.56,50,0
    .goto 1442/1,85.34,1398.28,50,0
    .goto 1442/1,80.46,1362.78,50,0
    .goto 1442/1,66.30,1343.57,50,0
    .goto 1442/1,23.81,1331.85,50,0
    .goto 1442/1,11.11,1299.94,50,0
    .goto 1442/1,-8.91,1302.22,50,0
    .goto 1442/1,-20.14,1322.73,50,0
    .goto 1442/1,-94.85,1302.22,50,0
    .goto 1442/1,-145.64,1400.56,50,0
    .goto 1442/1,-183.24,1333.48,50,0
    .goto 1442/1,-218.89,1337.71,50,0
    .goto 1442/1,-241.35,1433.77,50,0
    .goto 1442/1,-233.54,1501.83,50,0
    .goto 1442/1,80.46,1378.74,50,0
    .goto 1442/1,80.46,1378.74,0
    >>Tuez |cRXP_ENEMY_XT4|r. Il patrouille au côté nord de la rivière
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #xprate <1.5
    #completewith next
    .goto 1442/1,-357.09,978.55
    .subzone 2160 >> Entrez dans la Mine des Cisailles
    .group
step
    #xprate <1.5
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Piznik|r
    >>|cRXP_WARN_Cette quête dure 5 minutes et fera apparaître 3 vagues de Kobolds à des intervalles définies :|r
    >>|cRXP_WARN_La première vague à 15 secondes (3 Kobolds), la deuxième vague à 2 minutes et 15 secondes (4 Kobolds, 2 lanceurs de sorts et 2 corps à corps), et la troisième vague à 3 minutes 20 secondes (4 Kobolds). L'objectif se complète après 5 minutes|r
    .accept 1090 >> Acceptez la quête Les ordres de Gerenzo
    .target Piznik
    .group 2
step
    #xprate <1.5
    .goto 1442/1,-258.93,956.73
    >>Protégez |cRXP_FRIENDLY_Piznik|r des |cRXP_ENEMY_Vermines des Cisailles|r qui arrivent
    >>|cRXP_WARN_La première vague à 15 secondes (3 Kobolds), la deuxième vague à 2 minutes et 15 secondes (4 Kobolds, 2 lanceurs de sorts et 2 corps à corps), et la troisième vague à 3 minutes 20 secondes (4 Kobolds). L'objectif se complète après 5 minutes|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 2
step
    #xprate <1.5
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >> Rendez la quête Les ordres de Gerenzo
    .accept 1092 >> Acceptez la quête Les ordres de Gerenzo
    .target Piznik
    .group
step << skip
    #xprate <1.5
    .goto 1442/1,-261.86,951.85
    .goto 1442/1,434.5,898.12,30 >>|cRXP_WARN_Sautez sur la roue en bois. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .group
step
    #xprate <1.5
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1092 >> Rendez la quête Les ordres de Gerenzo
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto 1442/1,265.54,1213.00,50,0
    .goto 1442/1,299.72,1233.84,50,0
    .goto 1442/1,332.44,1218.86,50,0
    .goto 1442/1,325.11,1174.25,50,0
    .goto 1442/1,267.98,1156.34,50,0
    .goto 1442/1,262.12,1136.15,50,0
    .goto 1442/1,238.68,1122.470,50,0
    .goto 1442/1,202.54,1089.58,50,0
    .goto 1442/1,169.82,1085.03,50,0
    .goto 1442/1,134.17,1067.120,50,0
    .goto 1442/1,102.43,1077.86,50,0
    .goto 1442/1,64.83,1059.95,50,0
    .goto 1442/1,35.53,1054.090,50,0
    .goto 1442/1,2.81,1083.07,50,0
    .goto 1442/1,-23.07,1085.03,50,0
    .goto 1442/1,-63.60,1094.14,50,0
    .goto 1442/1,-100.23,1091.86,50,0
    .goto 1442/1,-160.78,1070.370,50,0
    .goto 1442/1,-197.89,1086.00,50,0
    .goto 1442/1,-212.54,1117.59,50,0
    .goto 1442/1,332.44,1218.86,0
    >>Tuez |cRXP_ENEMY_XT9|r. Il patrouille au côté sud de la rivière
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto 1442/1,-34.79,1390.46,50,0
    .goto 1442/1,-3.05,1387.86,50,0
    .goto 1442/1,36.51,1448.42,50,0
    .goto 1442/1,133.69,1450.70,50,0
    .goto 1442/1,134.17,1421.40,50,0
    .goto 1442/1,148.34,1400.23,50,0
    .goto 1442/1,99.50,1414.56,50,0
    .goto 1442/1,85.34,1398.28,50,0
    .goto 1442/1,80.46,1362.78,50,0
    .goto 1442/1,66.30,1343.57,50,0
    .goto 1442/1,23.81,1331.85,50,0
    .goto 1442/1,11.11,1299.94,50,0
    .goto 1442/1,-8.91,1302.22,50,0
    .goto 1442/1,-20.14,1322.73,50,0
    .goto 1442/1,-94.85,1302.22,50,0
    .goto 1442/1,-145.64,1400.56,50,0
    .goto 1442/1,-183.24,1333.48,50,0
    .goto 1442/1,-218.89,1337.71,50,0
    .goto 1442/1,-241.35,1433.77,50,0
    .goto 1442/1,-233.54,1501.83,50,0
    .goto 1442/1,80.46,1378.74,50,0
    .goto 1442/1,80.46,1378.74,0
    >>Tuez |cRXP_ENEMY_XT4|r. Il patrouille au côté nord de la rivière
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    #completewith next
    .goto 1442/1,-577.33,1532.43,30 >> Entrez dans la Perce des Serres
step << skip
    #xprate <1.5
    .goto 1442/1,-606.63,1573.79
    .goto 1440/1,-629.73,2633.42,30 >>|cRXP_WARN_Sautez sur la pierre blanche à votre droite. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .zoneskip Ashenvale
step
    #xprate <1.5
	#completewith ZoramFP
    .goto 1440/1,-268.74,2612.28,50,0
    .goto 1440/1,637.2,3406.79,50,0
    .goto 1440/1,1010.31,3355.28,80 >>Voyagez à l'Avant-poste de Zoram'gar
    >>Faites attention à éviter les gardes d'Astranaar sur la route. Suivez le point de repère pour rester en sécurité
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #optional
	#loop
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
    .xp 21 >> Montez jusqu'au niveau 21
step
    #xprate <1.5
    #label ZoramFP
   .goto 1440/1,994.16,3373.730
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
   .fp Zoram'gar Outpost >> Prenez le chemin de vol de l'Avant-poste de Zoram'gar
   .target Andruk
   .isQuestAvailable 6442
step
    #xprate <1.5
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r et |cRXP_FRIENDLY_Marukai|r
   .turnin 6562 >> Rendez la quête Problèmes dans les profondeurs
   .target +Je'neu Sancrea
   .goto 1440/1,1033.37,3354.89
   .accept 216 >> Acceptez la quête Entre un roc et un Crin-de-Chardon
   .target +Karang Amakkar
   .goto 1440/1,1013.77,3345.67
   .accept 6462 >> Acceptez la quête Charme troll
   .target +Mitsuwa
   .goto 1440/1,1028.18,3333.37
   .accept 6442 >> Acceptez la quête Des nagas sur la grève de Zoram
   .target +Marukai
   .goto 1440/1,1025.88,3331.450
step
    #xprate <1.5
   .goto 1440/1,1004.54,3341.83
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muglash|r
   >>Ceci va commencer une quête d'escorte. Faites attention car elle est difficile
   .accept 6641,1 >> Acceptez la quête Vorsha la Flagellante
   .target Muglash
step
    #xprate <1.5
    #completewith next
   >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
   .complete 6442,1 --Wrathtail Head (20)
   .mob Wrathtail Razortail
   .mob Wrathtail Wave Rider
   .mob Wrathtail Sorceress
   .mob Wrathtail Sea Witch
   .mob Wrathtail Priestess
   .mob Wrathtail Myrmidon
   .mob Lady Vespia
step
    #xprate <1.5
   .goto 1440/1,1144.67,3610.89
   >>Cliquez sur le |cRXP_PICK_Brazier|r lorsque vous y arrivez
   >>Il y aura des vagues de |cRXP_ENEMY_Naga|r qui vont apparaître. Faites attention une fois que |cRXP_ENEMY_Vorsha|r arrive, il frappe très fort
   >>|cRXP_WARN_Vous pouvez laisser|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_générer de la menace avant de vous engager dans le combat|r
   .complete 6641,1 --Defeat Vorsha the Lasher
   .mob Vorsha the Lasher
step << Priest
    #xprate <1.5
    #season 0,1
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Trouvez un groupe maintenant pour les Profondeurs de Brassenoire si vous souhaitez obtenir une baguette bien meilleure (Sceptre de la pierre tombale). Vous pouvez également attendre avant de faire les Profondeurs de Brassenoire pour votre arrivée à Orneval au niveau 26-28
    .dungeon BFD
step
    #xprate <1.5
	#loop
    .goto 1440/1,1065.09,3574.76,0
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
   >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
   .complete 6442,1 --Wrathtail Head (20)
   .mob Wrathtail Razortail
   .mob Wrathtail Wave Rider
   .mob Wrathtail Sorceress
   .mob Wrathtail Sea Witch
   .mob Wrathtail Priestess
   .mob Wrathtail Myrmidon
   .mob Lady Vespia
step
    #xprate <1.5
	#loop
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
    .xp 21+21450 >> Montez votre expérience jusqu'à 21450+/25200xp
    .dungeon !BFD << Priest
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warsong Runner|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >> Rendez la quête Vorsha la Flagellante
    .target +Warsong Runner
    .goto 1440/1,995.31,3357.97
    .turnin 6442 >> Rendez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto 1440/1,1025.88,3331.450
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >> Acceptez la quête Parmi les ruines
    .accept 6565 >> Acceptez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >> Acceptez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1414/1,915.16,4156.85,100 >> Voyagez jusqu'à l'entrée des Profondeurs de Brassenoire
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
    #loop
    .goto 1414/1,896.76,4247.63,0
    .goto 1414/1,944.60,4174.03,20,0
    .goto 1414/1,896.76,4247.63,20,0
    .goto 1414/1,911.48,4313.87,20,0
    .goto 1414/1,874.68,4318.77,20,0
    .goto 1414/1,815.80,4250.08,20,0
    .goto 1414/1,745.88,4220.64,20,0
    .goto 1414/1,679.64,4247.63,20,0
    .goto 1414/1,896.76,4247.63,20,0
    >>Tuez les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour une [|cRXP_LOOT_Damp Note|r] et utilisez-la pour commencer la quête
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acceptez la quête Allégeance aux Dieux très anciens
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #loop
    .goto 1414/1,749.56,4186.29,0
    .goto 1414/1,679.64,4247.63,20,0
    .goto 1414/1,745.88,4220.64,20,0
    .goto 1414/1,815.80,4250.08,20,0
    .goto 1414/1,874.68,4318.77,20,0
    .goto 1414/1,911.48,4313.87,20,0
    .goto 1414/1,896.76,4247.63,20,0
    .goto 1414/1,944.60,4174.03,20,0
    .goto 1414/1,749.56,4186.29,20,0
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
    #label EnterBFD
    .goto 1414/1,742.20,4247.63
    .subzone 2797,2 >> Entrez dans le portail de l'instance Profondeurs de Brassenoire.
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .accept 6561 >>Acceptez la quête L'infamie de Brassenoire
    .target Argent Guard Thaelrid
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Tuez |cRXP_ENEMY_Lorgus Jett |r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    >>La ramasser va faire apparaître le |cRXP_ENEMY_Baron Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Tuez le |cRXP_ENEMY_Baron Aquanis|r. Dépouillez-le pour un [|cRXP_LOOT_Strange Water Globe|r]. Utilisez-le pour prendre la quête
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acceptez la quête Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Tuez  |cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    >>Tuez |cRXP_ENEMY_Aku'mai|r en premier si vous le voulez. C'est le dernier boss du donjon
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1456/1,-224.81,-1087.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bashana Totem-runique|r
    .turnin 6561 >>Rendez la quête L'infamie de Brassenoire
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Zoram'gar >> Volez à l'Avant-poste de Zoram'gar
    .target Tal
    .zoneskip Ashenvale
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Rendez la quête L'Essence d'Aku'Mai
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Rendez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step << Priest
    #xprate <1.5
    #season 0,1
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Rendez la quête Baron Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #xprate <1.5
    .goto 1440/1,1013.77,3345.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karang|r
    .accept 216 >> Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target Karang Amakkar
step
    #xprate >1.49
    #completewith JourneytoTM
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharm|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Tharm
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step
    #xprate <1.5
    #completewith JourneytoTM
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .zoneskip Thunder Bluff
    .target Andruk
    .cooldown item,6948,<0
step
    #completewith JourneytoTM
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
    .cooldown item,6948,>0
step
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
step
    .goto 1456/1,-212.71,-1065.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    >>Attendez que le RP se termine
    .turnin 1063 >> Rendez la quête L'Ancienne
    .timer 6,L'Ancienne RP
    .accept 1064 >> Acceptez la quête L'aide des Réprouvés
    .target Magatha Grimtotem
step
    #label JourneytoTM
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Rendez la quête L'aide des Réprouvés
    .accept 1065 >> Acceptez la quête Un voyage vers Moulin-de-Tarren
    .target Apothecary Zamah
step << Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
step << !Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Andruk
    .zoneskip Ashenvale,1
step << !Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Andruk
    .zoneskip Ashenvale,1
step << Warlock
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Rendez la quête Breuvage de Ken'zigla
    .accept 1515 >>Acceptez la quête La captivité de Dogran
    .target Grunt Logmar
step << Warlock
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Rendez la quête La captivité de Dogran
    .accept 1512 >>Acceptez la quête Le cadeau de l'amour
    .target Grunt Dogran
step << Warlock
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Rendez la quête Le cadeau de l'amour
    .accept 1513 >>Acceptez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>Utilisez le [Pendentif de Dogran] au cercle d'invocation
    .use 6626
step << Warlock
    .goto 1454/1,-4377.13,1804.77
    >>Tuez les |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Rendez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Achetez une|r [Jambiya] |cRXP_BUY_à Kareth si vous n'avez pas de dague|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .train 921 >>Apprenez [Vol à la tire]
    .train 8676 >>Apprenez [Embuscade]
    .train 1943 >>Apprenez [Rupture]
    .train 1856 >>Apprenez [Disparition]
    .train 1725 >>Apprenez [Distraction]
    .train 1785 >>Apprenez [Camouflage Rang 2]
    .accept 2460 >>Acceptez la quête Le Salut brisé
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>Après que |cRXP_FRIENDLY_Shenthul|r ait fait son salut, écrivez /salut en le ciblant
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Rendez la quête Le Salut brisé
    .accept 2458 >>Acceptez la quête Sous le couvert de la nuit
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre éclipsante] |cRXP_BUY_à Rekkul|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <24,1
step << Mage
    .goto 1454/1,-4222.85,1474.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Thuul|r en haut de la hutte
    .train 3567 >> Apprenez [Téléportation : Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Rendez la quête Garde de l'ombre
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
step << Undead Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> Entrez dans les Tarides par la sortie à l'ouest
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> Voyagez vers la Videfange
step << Druid
    .goto 1413/1,-3119.64,1050.38
    >>Ouvrez la |cRXP_PICK_Strange Lockbox|r dans l'eau pour le [Demi-pendentif d'agilité aquatique]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+Ciblez |cRXP_FRIENDLY_Taskmaster Fizzule|r, puis utilisez votre [Lance-fusée] DEUX FOIS et écrivez /salut
    >>Faites attention ! Ne l'approchez PAS avant qu'il ne devienne amical ou il vous attaquera !
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Rendez la quête Sous le couvert de la nuit
    .accept 2478 >>Acceptez la quête Mission : Possible mais non probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto 1413/1,-2930.15,1209.15
    >>Utilisez [Vol à la tire] sur |cRXP_ENEMY_Foreman Silixiz|r pour sa |cRXP_LOOT_Tower Key|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +Chaque ennemi ici prendra des dégâts augmentés contre certaines compétences
    >>Utilisez [Embuscade] sur les |cRXP_ENEMY_Mutated Venture Co. Drones|r
    >>Utilisez [Rupture] sur les |cRXP_ENEMY_Venture Co. Patrollers|r
    >>Utilisez [Eviscération] sur les |cRXP_ENEMY_Venture Co. Lookouts|r une fois (1 point de combo)
step << Rogue
    #label roguetowerq
    .goto 1413/1,-2922.04,1224.69
    >>Entrez dans la Tour des Voleurs et tuez les |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r et les |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Au sommet de la tour vous trouverez |cRXP_ENEMY_Gallywix|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Utilisez [Embuscade] pour réduire ses PV de moitié. Utilisez [Suriner] pour récupérer votre énergie et utiliser [Évasion]
	>>Rappelez-vous d'utiliser une potion et un [Thé aux chardons] si nécessaire
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Utilisez votre vol à la tire et ouvrez la |cRXP_PICK_Gallywix's Lockbox|r et récupérez la |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>Voyagez vers la Mine des Pierriers
step << skip --Rogue/Druid
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Sautez sur la poutre en bois. Effectuez un Logout skip en vous déconnectant et en vous reconnectant. Allez en direction d'Orgrimmar si vous n'y arrivez pas|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Rogue/Druid
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue/Druid
    #hardcore
    #completewith flytoORG
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Rendez la quête Mission : Possible mais non probable
    .accept 2479 >>Acceptez la quête L'aide d'Hinott
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre de délabrement] |cRXP_BUY_et des|r [Fioles vides] |cRXP_BUY_à Rekkul|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .target Hanashi
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Trak'gen|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>Si vous avez un [Anti-Venin], utilisez-le pour vous guérir du [Toucher de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> Détruisez le [Lance-fusée] de vos sacs, il n'est plus utile
    .destroy 8066 >> Détruisez le [Sifflet de Fizzule] de vos sacs, il n'est plus nécessaire
step
    #optional
    #label flytoORG
step
    #optional
    .abandon 6421 >>Abandonnez la quête Le ravin des Éboulis
step
    #optional
    .abandon 4021 >>Abandonnez la quête La contre-attaque !
step
    #optional
    .abandon 6481 >>Abandonnez la quête Un Terrestre se lève
step
    #optional
    .abandon 6284 >>Abandonnez la quête Arachnophobie
step
    #optional
    .abandon 6641 >>Abandonnez la quête Vorsha la Flagellante
step
    #optional
    .abandon 6563 >>Abandonnez la quête L'Essence d'Aku'Mai
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#xprate >1.99
#name 13-20 Les Tarides
#version 1
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#next 20-24 Serres-Rocheuses /Les Tarides


step << !Tauren
    #xprate <2.1 << !Undead
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 380
step << !Tauren
    #xprate <2.1 << !Undead
    #hardcore
    #completewith ThievesPickup
    .goto 1413/1,-2680.87,-365.05,150 >> Voyagez à la Croisée
    .subzoneskip 380
step << !Tauren
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << !Tauren
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
    .maxlevel 15
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Undead
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .target Devrak
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .accept 848 >>Acceptez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestAvailable 848
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
    .xp >15,1
step << Orc Hunter/Troll Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >15,1
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Bon arc long|r] |cRXP_BUY_à Uthrok si il en a en stock et faites un stock de flèches|r
    >>Si il n'est pas disponible, achetez à la place un [Arc renforcé]
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .xp <16,1
step << Orc Warrior
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui un|r |T132395:0|t[Tabar] |cRXP_BUY_|r
    .collect 1196,1,871,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez le|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #season 2
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui une ou deux|r |T135640:0|t[Jambiya] |cRXP_BUY_|r
    .collect 2207,1,871,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #season 2
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez la|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui une|r |T133490:0|t[Masse] |cRXP_BUY_|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez la|r |T133490:0|t[Masse]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui une|r |T133490:0|t[Masse] |cRXP_BUY_|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez la|r |T133490:0|t[Masse]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Tauren
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target Gazrog
step << !Tauren
    #xprate <2.1
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >> Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Undead
    #xprate >2.09
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >> Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << !Undead !Tauren
    #xprate >2.09
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Rendez la quête Retour à la Croisée
    .target Zargh
step << !Undead !Tauren
    #xprate <2.1
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step << Warlock
    #season 2
    #sticky
    #completewith BarrensEnd
    #label ExplorerImp
    >>Lors de vos quêtes, lancez |T136163:0|t|cRXP_FRIENDLY_[Drain d'âme]|r sur les mobs jusqu'à ce que vous receviez une |T133257:0|t|cRXP_LOOT_Âme d'explorateur|r. |cRXP_WARN_Utilisez-la pour apprendre à invoquer un|r |T236294:0|t|cRXP_FRIENDLY_[Diablotin explorateur]|r
    .train 445459 >>|cRXP_WARN_Utilisez l'|r |T133257:0|t|cRXP_LOOT_Âme d'explorateur|r |cRXP_WARN_pour apprendre à invoquer un|r |T236294:0|t[|cRXP_FRIENDLY_Diablotin explorateur|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith BarrensEnd
    #label FelPortalRune
    >>Vous vous situé dans une zone disposant de |cRXP_FRIENDLY_Portails de Corruption|r. Si vous en trouvez un, invoquez votre |T236294:0|t[|cRXP_FRIENDLY_Diablotin explorateur|r] et parlez-lui en étant à côté d'un portail pour l'envoyer en expédition. Il reviendra après 10-20 minutes avec du butin et une chance de vous donner la |T134419:0|t[|cRXP_FRIENDLY_Rune du gangregarde|r] << Warlock
    >>Vous êtes dans une zone disposant de |cRXP_FRIENDLY_Portails de Corruption|r. Si vous en trouvez un, fermez-le avec un |T134945:0|t[|cRXP_LOOT_Parchemin de guérison spatiale|r]. Cela vous accordera les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] << Mage
    >>|cRXP_WARN_Cherchez les portails jusqu'à ce que vous obteniez la rune|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith BarrensEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gangregarde|r] |cRXP_WARN_pour apprendre|r |T136216:0|t[Invocation d'un gangregarde] << Warlock
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #completewith DisruptTheAttacks
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Montez au sommet de la montagne
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Entrez dans le repaire des Brume-funeste
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Cliquez sur l'|cRXP_PICK_Altar|r
    >>Vérifiez que vous ayez une [Pierre de puissance imparfaite] (30 minutes de durée) sur vous
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5
    #completewith DisruptTheAttacks
    .goto 1413/1,-2198.52,303.14,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2554.2,80.18,100 >> Descendez la montagne d'où vous êtes venu
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #sticky
    #label FireTar1
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>Tuez un |cRXP_ENEMY_Razormane Water Seeker|r ou un |cRXP_ENEMY_Razormane Thornweaver|r. Dépouillez-les pour un |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .maxlevel 15
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Si il n'est pas disponible, vous pourrez le prendre plus tard
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .maxlevel 15
step
    #requires FireTar1<< Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,25,0
	.goto 1413/1,-2875.43,-52.24,25,0
	.goto 1413/1,-2931.16,-89.40,25,0
	.goto 1413/1,-3001.08,-117.78,25,0
	.goto 1413/1,-3037.56,-164.390,25,0
	.goto 1413/1,-3034.52,-221.82,25,0
	.goto 1413/1,-2991.96,-239.39,25,0
	.goto 1413/1,-2899.75,-209.66,25,0
	.goto 1413/1,-2854.15,-151.56,25,0
	.goto 1413/1,-2799.43,-92.78,25,0
	.goto 1413/1,-2811.59,-42.780,25,0
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .maxlevel 15
step << Warrior !Undead
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Montez au sommet de la montagne
step << Warrior !Undead
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Rendez la quête Thun'grim Mirefeu
    .accept 1503 >>Acceptez la quête Acier forgé
    .target Thun'grim Firegaze
step << Warrior !Undead
    .goto 1413/1,-2955.48,-188.04
    >>Ouvrez le |cRXP_PICK_Stolen Iron Chest|r pour les |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Montez au sommet de la montagne
step << Warrior !Undead
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Rendez la quête Acier forgé
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label PlainstriderBeaks
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Vérifiez si|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_est à la Croisée. Il vend des potions et la|r |T133476:0|t[|cRXP_FRIENDLY_Lourde masse à pointes|r] |cRXP_WARN_qui est un objet en stock limité|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée << Tauren Shaman
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target Sergra Darkthorn
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Rendez la quête Stopper les attaques des hurans
    .accept 872 >>Acceptez la quête La perturbation cesse
    .target Thork
    .isQuestComplete 871
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Acceptez la quête La perturbation cesse
    .target Thork
    .isQuestTurnedIn 871
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .accept 867 >>Acceptez la quête Les harpies pillardes
    .target Darsok Swiftdagger
step << !Tauren !Undead
    #softcore
    #xprate <2.1
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,872,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
    .xp >15,1
step << Orc Hunter/Troll Hunter
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >15,1
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Bon arc long|r] |cRXP_BUY_à Uthrok si il en a en stock et faites un stock de flèches|r
    >>Si il n'est pas disponible, achetez à la place un [Arc renforcé]
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .xp <16,1
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez une|r [Espingole de chasseur] |cRXP_BUY_à Uthrok|r
    .collect 2511,1,872,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith KreenigSnarlsnout
    +Équipez l'[Espingole de chasseur]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Orc Warrior
    #optional
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui un|r |T132395:0|t[Tabar] |cRXP_BUY_|r
    .collect 1196,1,872,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Équipez le|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui une ou deux|r |T135640:0|t[Jambiya] |cRXP_BUY_|r
    .collect 2207,1,872,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Équipez la|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui une|r |T133490:0|t[Masse] |cRXP_BUY_|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith KreenigSnarlsnout1
    +|cRXP_WARN_Équipez la|r |T133490:0|t[Masse]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    #optional
    .goto 1413/1,-2568.39,-356.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Achetez-lui une|r |T133490:0|t[Masse] |cRXP_BUY_|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith KreenigSnarlsnout1
    +|cRXP_WARN_Équipez la|r |T133490:0|t[Masse]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>|cRXP_WARN_Vous pourrez le récupérer plus tard s'il n'est pas là|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .dungeon RFC
step << Tauren
    #completewith KreenigSnarlsnout1
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #completewith next
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #label KreenigSnarlsnout1
    .goto 1413/1,-3324.34,-217.09
    >>Tuez |cRXP_ENEMY_Kreenig Snarlsnout|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
    .isOnQuest 872
step << Tauren
   #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
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
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Cliquez sur le |cRXP_PICK_Brazier|r sur le sol
    .turnin 1526 >>Rendez la quête L'appel du feu
    .accept 1527 >>Acceptez la quête L'appel du feu
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Récupérez le |cRXP_PICK_Tonneau vide de Chen|r au sol et commencez la quête. Attendez sa réapparition s'il n'est pas disponible
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .dungeon RFC
step << Tauren
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1411/1,-4769.10,1484.39,0
    >>Tuez les membres de la |cRXP_ENEMY_Lame Ardente|r au Rocher du Crâne jusqu'à ce que l' |cRXP_LOOT_Insigne de lieutenant|r tombe
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Rendez la quête Ennemis cachés
    .accept 5727 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Acceptez la quête Tuer la bête
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Rendez la quête Ennemis cachés
    .accept 5728 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << !Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
    .dungeon RFC
step << !Undead
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >> Entrez dans le portail de l'instance du Gouffre de Ragefeu
    .dungeon RFC
step << !Undead
    >>|cRXP_WARN_Si possible, faites en sorte que les membres du groupe vous partagent les quêtes suivantes|r
    .accept 5722 >> Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >> Acceptez la quête Tester la force de l'ennemi
    .dungeon RFC
step << !Undead
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Rendez la quête À la recherche de la sacoche perdue
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead
    #label TroggsShamans
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    >>Tuez |cRXP_ENEMY_Taragaman the Hungerer|r. Dépouillez-le pour son |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << !Undead
    #label BazzalanandJergosh
    >>Tuez |cRXP_ENEMY_Bazzalan|r et |cRXP_ENEMY_Jergosh l'Invocateur|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Rendez la quête Tuer la bête
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Rendez la quête Ennemis cachés
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Rendez la quête Ennemis cachés
    .accept 5730 >> Acceptez la quête Ennemis cachés
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith KreenigSnarlsnout
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .bindlocation 380
    .zoneskip The Barrens
    .dungeon RFC
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Devrak
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
    .zoneskip Thunder Bluff

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Thunder Bluff >>Voyagez au sud vers le Camp Taurajo et entrez à Mulgore. Voyagez vers les Pitons-du-Tonnerre à partir d'ici
    >>Si vous avez le vol pour Thunder Bluff, volez-y
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo << !Tauren
    .target Omusa Thunderhorn
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .isOnQuest 5724
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isQuestComplete 5723
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << skip
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Thunder Bluff >> Prenez le chemin de vol des Pitons-du-Tonnerre
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .zoneskip Thunder Bluff,1
    .bindlocation 380
    .cooldown item,6948,>0
    .dungeon RFC
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas présent
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>Tuez |cRXP_ENEMY_Kreenig Snarlsnout|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Allez à l'Autel des épines|r. Lancez |T136126:0|t[Connexion] jusqu'à presque mourir. Lancez ensuite |T136168:0|t[Captation de vie] sur votre familier pour mourir et obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r]
    *|cRXP_WARN_Vous serez ressuscité immédiatement après votre mort|r
    .goto 1413/1,-3274.68,-191.42
    .cast 1454
    .cast 735
    .collect 208750,1
    .isOnQuest 872
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r] |cRXP_WARN_pour vous apprendre|r |T136168:0|t[Maîtrise de la canalisation]
    .isOnQuest 872
step
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>Ouvrez les |cRXP_PICK_Crossroads' Supply Crates|r
    >>Il apparaît à plusieurs endroits différents
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step << !Tauren !Undead
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Rendez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Voyagez vers Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
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
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Cliquez sur le |cRXP_PICK_Brazier|r sur le sol
    .turnin 1526 >>Rendez la quête L'appel du feu
    .accept 1527 >>Acceptez la quête L'appel du feu
step << Shaman
    #completewith FireEnd
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas présent
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step << skip
    #completewith RatchetEnter
    >>Tuez les |cRXP_ENEMY_Hurleurs solécailles|r. Dépouillez-les pour leur |cRXP_LOOT_Têtes|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Tuez les |cRXP_ENEMY_Zhevra Runners|r. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Voyagez jusqu'à Ratchet
    .isOnQuest 845
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acceptez la quête Les flibustiers des Mers du sud
    .target Gazlowe
    .maxlevel 16
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol de Cabestan
    .target Bragok
step
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et au |cRXP_FRIENDLY_Wanted Poster|r
    .accept 894 >>Acceptez la quête Samophlange
    .target Sputtervalve
    .maxlevel 16
step
    .goto 1413/1,-3719.54,-919.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Avis de recherche|r.
    .accept 895 >>Acceptez la quête ON RECHERCHE : baron de Longrivage
    .maxlevel 16
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +Équipez l'[Espadon] lorsque vous passez au niveau 16
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +Équipez l'[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Hache ébarbée] |cRXP_BUY_à Ironzar|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +Équipez la [Hache ébarbée]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Marteau en pierre] |cRXP_BUY_à Ironzar|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Marteau en pierre] lorsque vous passez niveau 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Marteau en pierre]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Shaman
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ferronzar|r|cRXP_BUY_. Achetez-lui un|r |T133052:0|t[Marteau] |cRXP_BUY_|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T133052:0|t[Marteau]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Cimeterre] |cRXP_BUY_à Ironzar|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith BaronLongshore
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une seconde|r [Cimeterre] |cRXP_BUY_à Ironzar pour votre main gauche|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez la seconde|r |T135343:0|t[Cimeterre] |cRXP_WARN_dans votre main gauche|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ferronzar|r|cRXP_BUY_. Achetez-lui un ou deux|r |T135302:0|t[Poignards] |cRXP_BUY_|r
    .collect 2208,1,895,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T135302:0|t[Poignard]
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Rendez la quête Tonneau vide de Chen
    .accept 821 >>Acceptez la quête Tonneau vide de Chen
    .target Brewmaster Drohn
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|tLes [Lutjan à longue mâchoire] sont très abordables, achetez-en autant que vous le voulez
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> Détruisez le [Manuel de la console de contrôle] de vos sacs, il n'est plus nécessaire
step
    #completewith BaronLongshore
    >>Tuez les |cRXP_ENEMY_Southsea Brigands|r et les |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith Southsea
	>>Tuez |cRXP_ENEMY_Tazan|r. Dépouillez-le pour sa |cRXP_LOOT_Sacoche|r
    >>|cRXP_WARN_Il patrouille en remontant et en descendant la colline|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>Tuez |cRXP_ENEMY_Baron Longshore|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Il se trouve dans l'un des camps
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
    .isOnQuest 895
step
    #label Southsea
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>Tuez les |cRXP_ENEMY_Southsea Brigands|r et les |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
    .isOnQuest 887
step << Orc Rogue/Troll Rogue
    .goto 1413/1,-3832.02,-1381.87,50,0
    .goto 1413/1,-3730.68,-1364.98,50,0
    .goto 1413/1,-3677.99,-1392.00
	>>Tuez |cRXP_ENEMY_Tazan|r. Dépouillez-le pour sa |cRXP_LOOT_Sacoche|r
    >>|cRXP_WARN_Il patrouille en remontant et en descendant la colline|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
    .isOnQuest 1963
    .maxlevel 16
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Rendez la quête Les flibustiers des Mers du sud
    .turnin 895 >>Rendez la quête ON RECHERCHE : baron de Longrivage
    .accept 890 >>Acceptez la quête La livraison perdue
    .target Gazlowe
    .isQuestComplete 887
    .isQuestComplete 895
step
    #optional
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .accept 890 >>Acceptez la quête La livraison perdue
    .target Gazlowe
    .isQuestTurnedIn 887
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Rendez Maître des quais Dizzywig
    .turnin 890 >>Rendez la quête La livraison perdue
    .accept 892 >>Acceptez la quête La livraison perdue
    .accept 896 >>Acceptez la quête La bonne fortune d'un mineur pauvre
    .target Wharfmaster Dizzywig
    .isQuestTurnedIn 887
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Rendez Maître des quais Dizzywig
    .accept 896 >>Acceptez la quête La bonne fortune d'un mineur pauvre
    .target Wharfmaster Dizzywig
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Rendez la quête La livraison perdue
    .accept 888 >>Acceptez la quête Course à la lentille
    .target Gazlowe
    .isQuestTurnedIn 887
step << Undead Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez l'[Espadon] lorsque vous passez au niveau 16
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez l'[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Hache ébarbée] |cRXP_BUY_à Ironzar|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez la [Hache ébarbée]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Marteau en pierre] |cRXP_BUY_à Ironzar|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Marteau en pierre] lorsque vous passez niveau 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Marteau en pierre]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith FlyToXroads1
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ferronzar|r|cRXP_BUY_. Achetez-lui un|r |T133052:0|t[Marteau] |cRXP_BUY_|r
    .collect 2028,1,850,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Équipez le|r |T133052:0|t[Marteau]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Cimeterre] |cRXP_BUY_à Ironzar|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith FlyToXroads1
    |cRXP_WARN_+Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une seconde|r [Cimeterre] |cRXP_BUY_à Ironzar pour votre main gauche|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith FlyToXroads1
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ferronzar|r|cRXP_BUY_. Achetez-lui un ou deux|r |T135302:0|t[Poignards] |cRXP_BUY_|r
    .collect 2208,1,850,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Équipez le|r |T135302:0|t[Poignard]
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>Terminez de tuer tous les |cRXP_ENEMY_Zhévras|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Sabots|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r et |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Rendez la quête Ravitaillement pour la Croisée
    .turnin 872 >>Rendez la quête La perturbation cesse
    .target Thork
    .isQuestComplete 5041
    .isQuestComplete 872
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r et |cRXP_FRIENDLY_Sergra|r
    .turnin 872 >>Rendez la quête La perturbation cesse
    .target Thork
    .isQuestComplete 5041
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r et |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Rendez la quête Ravitaillement pour la Croisée
    .target Thork
    .isQuestComplete 5041
step
    #optional
    #completewith RegtharDeathgate1
    .abandon 871 >>Abandonnez la quête Stopper les attaques des hurans
    .abandon 5041 >>Abandonnez la quête Ravitaillement pour la Croisée
step
    #label XroadsTurnins3
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r et |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Rendez la quête Les zhévras
    .accept 903 >>Acceptez la quête Les rôdeurs des Tarides
    .target Sergra Darkthorn
step << skip
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointues] |cRXP_BUY_à Barg|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Balle lourde] |cRXP_BUY_à Barg|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Bon arc long|r] |cRXP_BUY_à Uthrok si il en a en stock et faites un stock de flèches|r
    >>Si il n'est pas disponible, achetez à la place un [Arc renforcé]
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez une|r [Espingole de chasseur] |cRXP_BUY_à Uthrok|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith RegtharDeathgate1
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .maxlevel 16
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .accept 855 >>Acceptez la quête Les bracelets de centaures
    .target Regthar Deathgate
step
    #xprate >2.09
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
step
    #xprate <2.1
    #completewith KodobaneTurnin
    >>Tuez les |cRXP_ENEMY_Querelleurs kolkars|r et les |cRXP_ENEMY_Légion-tempêtes kolkars|r. Dépouillez-les pour leurs |cRXP_LOOT_Bracelets|r
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #completewith Barak
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto 1413/1,-1909.72,113.96
    >>Dépouillez le |cRXP_PICK_Nid de gueule d’acier abandonné|r au sol pour l' |T294479:0|t[|cRXP_LOOT_Œuf abandonné de gueule d’acier|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto 1413/1,-1943.16,89.64
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Tuez |cRXP_ENEMY_Barak Kodobane|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Faites attention aux coups en mêlée de |cRXP_ENEMY_Barak Kodobane|r qui infligent BEAUCOUP de dégâts et il est protégé par un |cRXP_ENEMY_Kolkar Wrangler|r. Ils peuvent vous immobiliser avec un filet et vous tirer dessus à distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #completewith KodobaneTurnin
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate >2.09
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
step
    #xprate <2.1
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #xprate >2.09
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate >2.09
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .target Regthar Deathgate
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #xprate <2.1
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>Tuez les |cRXP_ENEMY_Harpies Ensorçailes|r et les |cRXP_ENEMY_Volplumes Ensorçailes|r. Dépouillez-les pour leur |cRXP_LOOT_Serres|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Montez le chemin sur la gauche
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Sautez sur l'une des cages. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith RFCPickups
    .goto 1456/1,-13.04,-1107.95,40 >> Prenez l'ascenseur pour aller à Thunder Bluff
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << skip --!Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith Samophlange
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << skip --!Tauren
    #completewith Samophlange
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandonnez la quête Tester la force de l'ennemi
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandonnez la quête Le pouvoir de détruire...
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandonnez la quête Ennemis cachés
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandonnez la quête Tuer la bête
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .accept 875 >>Acceptez la quête Lieutenants harpies
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Rendez la quête Les Bassins oubliés
    .accept 877 >> Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, passez cette étape
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r |T134227:0|t[Corne d'Echeyakee] |cRXP_WARN_ou si vous n'étiez pas le premier joueur à l'engager, abandonnez Echeyakee, puis retournez en ville pour reprendre la quête|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    +Faites attention aux |cRXP_ENEMY_Sunscale Scytheclaws|r dans la zone. Ils vont jusqu'au niveau 18 et peuvent utiliser [Rosser]
    .dungeon RFC
    .xp >17,1
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #xprate <2.1
    #completewith Samophlange
    +Faites attention aux |cRXP_ENEMY_Sunscale Scytheclaws|r dans la zone. Ils vont jusqu'au niveau 18 et peuvent utiliser [Rosser]
    --.dungeon !RFC
    .xp >17,1
step
    #xprate >2.09
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate >2.09
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Rendez la quête Les Bassins oubliés
    .accept 877 >> Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
step
    #xprate >2.09
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, passez cette étape
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #xprate >2.09
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r |T134227:0|t[Corne d'Echeyakee] |cRXP_WARN_ou si vous n'étiez pas le premier joueur à l'engager, abandonnez Echeyakee, puis retournez en ville pour reprendre la quête|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #xprate >2.09
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #optional
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Rendez la quête Echeyakee
    .accept 905 >>Acceptez la quête Les Faucheurs furieux
    .target Sergra Darkthorn
    .xp <20,1
step
    #optional
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .xp <20,1
step
    #optional
    .maxlevel 19,NorthBarrensSkip
step
    #xprate <2.1
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    --.dungeon !RFC
step
    #xprate >2.09
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r vend [|cRXP_FRIENDLY_Heavy Spiked Mace|r] qui est un objet en stock limité << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Vrang Fauvétripe
    --.dungeon !RFC
step
    #xprate >2.09
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 894 >>Rendez la quête Samophlange
    .accept 900 >>Acceptez la quête Samophlange
step
    .goto 1413/1,-2679.86,830.80
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Faites attention ! Deux ennemis vont apparaître une fois que vous aurez fermé la valve
    .complete 900,2 --Shut off Fuel Control Valve (1)
    .isOnQuest 900
step
    .goto 1413/1,-2675.80,842.290
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Un ennemi va apparaître une fois que vous aurez fermer la valve
    .complete 900,3 --Shut off Regulator Valve (1)
    .isOnQuest 900
step
    .goto 1413/1,-2686.95,842.290
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
    .isOnQuest 900
step
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 900 >>Rendez la quête Samophlange
    .accept 901 >>Acceptez la quête Samophlange
    .isQuestComplete 900
step
    #optional
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .accept 901 >>Acceptez la quête Samophlange
    .isQuestTurnedIn 900
step
    .goto 1413/1,-2731.54,909.850
    >>Tuez les |cRXP_ENEMY_Tinkerer Sniggles|r dans le bâtiment. Dépouillez-le pour sa |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
    .isQuestTurnedIn 900
step
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 901 >>Rendez la quête Samophlange
    .accept 902 >>Acceptez la quête Samophlange
    .isQuestTurnedIn 900
step
    #completewith Ignition
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-1693.88,592.31,90,0
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto 1413/1,-3102.42,1105.78
    .xp 16>> Montez jusqu'au niveau 16
step
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |r |cRXP_FRIENDLY_Déchiqueteur de Wizzlecrank|r dans la Videfange
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    .accept 858 >>Acceptez la quête Contact
    .target Wizzlecrank's Shredder
step
    #completewith next
    +Faites attention si les |cRXP_ENEMY_F|cRXP_WARN_or|reman Grills|r ou les |cRXP_ENEMY_Sludge Beast|r sont présents. Ce sont des créatures rares de niveau 19 très fortes
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Tuez le |cRXP_ENEMY_Superviseur Trimballast|r. Dépouillez-le pour sa |cRXP_LOOT_Clé|r
    >>|cRXP_WARN_Il remonte et descend de sa plateforme lors de sa patrouille|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    >>Ceci va commencer une escorte. Faites en sorte d'avoir toute votre vie
    .turnin 858 >>Rendez la quête Contact
    .accept 863,1 >>Acceptez la quête La fuite
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    >>Ceci va commencer une escorte. Faites en sorte d'avoir toute votre vie
    .accept 863,1 >>Acceptez la quête La fuite
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>Deux |cRXP_ENEMY_Venture Co. Mercenaries|r vont apparaître lorsque le déchiqueteur montera. Tuez les et attendez son RP à la fin
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Enforcers|r et les |cRXP_ENEMY_Venture Co. Overseers|r. Dépouillez-les pour leur |cRXP_LOOT_Cats Eye Emerald|r
    >>Si il n'est toujours pas tombé après avoir tué 25+ mobs, vous pouvez passer cette quête
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Tuez le |cRXP_ENEMY_Surveillant de la KapitalRisk|r. Dépouillez-le pour sa |T132794:0|t[|cRXP_LOOT_Flasque d'huile|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Tuez le |cRXP_ENEMY_Surveillant de la KapitalRisk|r. Dépouillez-le pour sa |T132794:0|t[|cRXP_LOOT_Flasque d'huile|r]
    >>|cRXP_WARN_Vous pouvez aussi l'acheter à l'Hôtel des Ventes à la place|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Sautez sur la poutre en bois. Effectuez un Logout skip en vous déconnectant et en vous reconnectant. Allez en direction d'Orgrimmar si vous n'y arrivez pas|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
step
    #optional
    #label NorthBarrensSkip
step
    #completewith next
    .skill firstaid,40 >> Fabriquez des [Bandages en lin] jusqu'à ce que votre compétence de [Premiers soins] soit de 40 ou plus
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour atteindre une compétence de 40
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> Fabriquez des [Bandages épais en lin] jusqu'à ce que votre compétence de [Premiers soins] soit de 50 ou plus
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous avez pas assez d'[Étoffe de lin] pour monter votre compétence à 50
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith next
    +|cRXP_WARN_Assurez-vous de ne pas vendre votre|r |T132794:0|t[|cRXP_LOOT_Flasque d'huile|r] !
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 527 >> Apprenez |T135894:0|t[Dissipation de la magie]
    >>|cRXP_WARN_Vous aurez besoin de|r |T135894:0|t[Dissipation de la magie] |cRXP_WARN_pour obtenir une rune plus tard|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead
    #xprate <2.1
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    #xprate <2.1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead
    #xprate <2.1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .isQuestAvailable 4921
step << Shaman
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Assurez-vous d'avoir appris le sort|r |T136075:0|t[Expiation] |cRXP_WARN_comme il sera nécessaire pour obtenir une rune plus tard|r
    .train 8019 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Assurez-vous d'avoir appris le sort|r |T136075:0|t[Expiation] |cRXP_WARN_comme il sera nécessaire pour obtenir une rune plus tard|r
    .train 913 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Assurez-vous d'avoir appris le sort|r |T136075:0|t[Expiation] |cRXP_WARN_comme il sera nécessaire pour obtenir une rune plus tard|r
    .train 8019 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Assurez-vous d'avoir appris le sort|r |T136075:0|t[Expiation] |cRXP_WARN_comme il sera nécessaire pour obtenir une rune plus tard|r
    .train 913 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
step
    #xprate <2.1
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Acceptez la quête Les esprits des Serres-Rocheuses
    .target Zor Lonetree
step << Shaman/Hunter
    #season 2
    .goto 1454/1,-4226.54,1914.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor Arbre-solitaire|r
    .train 409580 >>|cRXP_WARN_Achetez et utilisez le|r |T133739:0|t|cRXP_LOOT_[Traité sur Cœur de lion]|r |cRXP_WARN_pour apprendre|r |T132185:0|t[Cœur de lion] << Hunter
    .train 425336 >>|cRXP_WARN_Achetez et utilisez la|r |T133747:0|t|cRXP_LOOT_[Révélation de Rage du chaman]|r |cRXP_WARN_pour apprendre|r |T136088:0|t[Rage du chaman] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .money <0.5
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Apprenez [Crochetage]
    .train 921 >> Apprenez [Vol à la tire]
    .accept 2379 >> Acceptez la quête Zando'zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Rendez la quête La Main brisée
    .accept 1858 >> Acceptez la quête La Main brisée
    .target Therzok
    .isQuestComplete 1963
step << Orc Rogue/Troll Rogue
    #optional
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
    .accept 1858 >> Acceptez la quête La Main brisée
    .target Therzok
    .isQuestTurnedIn 1963
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Rendez la quête Zando'zan
    .accept 2382 >>Acceptez la quête Wrenix de Cabestan
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des|r |T134065:0|t[Outils de voleur] |cRXP_BUY_à Rekkul|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_Utilisez le|r |T136058:0|t[Crochetage] |cRXP_WARN_pour ouvrir la|r |T133626:0|t[Sacoche de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .itemcount 5060,1
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_Utilisez le|r |T133644:0|t[Vol à la tire] |cRXP_WARN_sur|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_dans l'auberge. Utilisez sa clé pour ouvrir la|r |T133626:0|t[Sacoche de Tazan]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Rendez la quête La Main brisée
    .target Therzok
    .isQuestTurnedIn 1963
step << Rogue
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Achetez un ou deux|r |T135342:0|t[Kriss] |cRXP_BUY_à Kareth|r
    .collect 2209,1,881,1 --Collect Kris (1)
    .money <0.7115
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .target Kareth
step << Orc Rogue/Troll Rogue
    #optional
    #completewith FoodandWater2
    .abandon 1963 >> Abandonnez la quête La Main brisée
step << Rogue
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step << Rogue
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss] lorsque vous passez au niveau 19
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp >19,1
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire de Sacrifice]
    .collect 16351,1,881,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire d’Éclair de feu (Rang 3)]
    .collect 16316,1,881,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Apprenez la compétence Arcs
    .target Hanashi
step << Tauren Warrior/Undead Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez un|r [Arc renforcé] |cRXP_BUY_à Zendo'jian|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +Équipez l'[Arc renforcé]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez une|r [Hache de bataille] |cRXP_BUY_à Zendo'jian|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +Équipez la [Hache de bataile] lorsque vous passez au niveau 20
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid
    #season 2
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Achetez une|r |T134237:0|t[Clé du butin des Kolkar] |cRXP_BUY_à l'Hôtel des ventes si vous le pouvez|r
    >>|cRXP_WARN_Vous en aurez besoin pour obtenir l' |r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_pour apprendre|r |T236167:0|t[Rugissement sauvage] << Druid
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
step
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Volez à la Croisée
    .target Doras
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Rendez la quête Les raptors voleurs
    .accept 3281 >>Acceptez la quête Argent volé
    .target Gazrog
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .accept 875 >>Acceptez la quête Lieutenants harpies
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Rendez la quête Les Bassins oubliés
    .accept 877 >> Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
step << !Tauren !Undead
    #xprate <2.1
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Rendez la quête Retour à la Croisée
    .target Zargh
    .isOnQuest 6386
step
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, passez cette étape
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, abandonnez Echeyakee, puis retournez en ville pour reprendre la quête
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-3031.48,461.91
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Rendez la quête Echeyakee
    .accept 905 >>Acceptez la quête Les Faucheurs furieux
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>Détruisez la [Corne d'Echeyakee] comme vous n'en avez plus besoin
step << Warrior
    #season 2
    .goto 1413/1,-2673.78,-487.34,
    .aura 420667 >>Cliquez sur la |cRXP_PICK_Bannière de guerre de la Horde|r
    .train 403489,1
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acceptez la quête Consumé par la haine
    .accept 4921 >>Acceptez la quête Disparition au combat
    .target Mankrik
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointues] |cRXP_BUY_à Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Volez à Ratchet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Rendez la quête Wrenix de Cabestan
    .accept 2381 >>Acceptez la quête Piller les pilleurs
    .target Wrenix the Wretched
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Appareil bidulotronique de Wrenix|r
    >>|cRXP_WARN_Obtenez un|r |T134059:0|t[B.G.A.C.] |cRXP_WARN_et un|r |T134065:0|t[Outils de voleur]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Rendez la quête Samophlange
    .turnin 863 >>Rendez la quête La fuite
    .target Sputtervalve
    .isQuestComplete 863
    .isOnQuest 902
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Rendez la quête Samophlange
    .target Sputtervalve
    .isOnQuest 902
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >>Rendez la quête La fuite
    .target Sputtervalve
    .isQuestComplete 863
step
    #xprate <2.1
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .accept 3921 >>Acceptez la quête Wenikee Bakaboulon << Hunter
    .accept 1483 >>Acceptez la quête Ziz Fizzik
    .target Sputtervalve
    .isQuestTurnedIn 902 << Hunter
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dizzywig|r
    .turnin 896 >>Rendez la quête La bonne fortune d'un mineur pauvre
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #xprate <2.1
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acceptez la quête Les cornes de raptors
    .accept 1069 >>Acceptez la quête Omelette à la mousse profonde
    .target Mebok Mizzyrix
step
    #xprate >2.09
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acceptez la quête Les cornes de raptors
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto 1413/1,-3737.78,-971.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Achetez-lui un|r |T135129:0|t[Harpon de pêche] |cRXP_BUY_|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto 1413/1,-3914.10,-1044.06
    .use 208773 >>Utilisez le |T135129:0|t[Harpon de pêche] sur |cRXP_ENEMY_Bruuz|r et tuez-le. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r] << Warrior
    >>|cRXP_WARN_Il patrouille autour de l'épave dans l'eau|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r] |cRXP_WARN_pour apprendre|r |T132394:0|t[Frappe rapide]
    .use 208778
    .itemcount 208778,1
step
    #sticky
    #completewith LeaveRatchet
    #season 2
    .goto 1413/1,-3639.48,-1049.46
    >>|cRXP_WARN_Si vous avez|cRXP_LOOT_ |r3 pièces d'or|r à dépenser, vous pouvez acheter une rune chez |cRXP_FRIENDLY_Grizzbi|r |cRXP_WARN_à l'auberge de Cabestan. Jugez vous-même si vous pouvez vous leapermettre et si la rune est utile pour votre classe. Vous pourrez toujours l'acheter plus tard|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grizzbi|r dans l'auberge
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Achetez et utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie harmonieuse|r] |cRXP_WARN_pour apprendre|r |T237549:0|t[Sérendipité] << Priest
    .train 410010 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de sacrifice|r] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Main de sacrifice)] << Paladin
    .train 401761 >>|cRXP_WARN_Achetez et utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Remonter le temps|r] |cRXP_WARN_pour apprendre|r |T237538:0|t[Remonter le temps] << Mage
    .train 410122 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] |cRXP_WARN_pour apprendre|r |T132266:0|t[Loup solitaire] << Hunter
    .train 416042 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de survie|r] |cRXP_WARN_pour apprendre|r |T132126:0|t[Survie du plus fort] << Druid
    .train 425445 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Porteguerre|r] |cRXP_WARN_pour apprendre|r |T236319:0|t[Porteguerre] << Warrior
    .train 425476 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] |cRXP_WARN_pour vous apprendre|r |T237562:0|t[Pacte démoniaque] << Warlock
    .train 424990 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Main gauche|r] |cRXP_WARN_pour vous apprendre|r |T237531:0|t[Main gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Ambidextrie|r] |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Spécialisation Ambidextrie)] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|tLes [Lutjan à longue mâchoire] sont très abordables, achetez-en autant que vous le voulez
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
    #season 0
	#completewith SSTreasure
    .goto 1413/1,-3967.8,-1457.54
    +Sautez sur le bateau, descendez au second étage et montez votre compétence de crochetage jusqu'à au moins 70
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto 1413/1,-3967.8,-1457.54
    +Sautez sur le bateau, descendez au second étage et montez votre compétence de crochetage jusqu'à au moins 70
    .train 424984,3 --Saber slash rune already learned, no need to get 80 LP
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Sautez sur le bateau, descendez au second étage et montez votre compétence de crochetage jusqu'à au moins 80|r
    .train 424984,1 --Saber slash rune not learned yet, need to get 80 LP
step << Rogue
    #label SSTreasure
    .goto 1413/1,-3958.68,-1457.54
    >>Une fois que votre crochetage est à 70, descendez à l'étage inférieur du bateau et ouvrez le |cRXP_PICK_The Jewel of the Southsea|r
    >>Utilisez le [B.G.A.C.] sur |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>Ramassez le |cRXP_PICK_Crate|r sur le sol
    .complete 888,2 --Telescopic Lens (1)
    .isOnQuest 888
step
    .goto 1413/1,-3723.59,-1741.30
    >>Ramassez le |cRXP_PICK_Crate|r sur le sol
    .complete 888,1 --Shipment of Boots (1)
    .isOnQuest 888
step << Warrior/Rogue
    #season 2
    #completewith EndlessRageRune << Warrior
    #completewith SaberSlashRune << Rogue
    .subzone 385 >>Voyagez au Fort de Guet-du-Nord
step << Warrior
    #season 2
    .goto 1413/1,-3715.48,-2191.94
    >>Cliquez sur la |cRXP_PICK_Bannière de guerre de l'Alliance|r
    >>Tuez le |cRXP_ENEMY_Lieutenant Brassepierre|r lorsqu'il apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    #label EndlessRageRune
    .train 403489 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r] |cRXP_WARN_pour apprendre|r |T132347:0|t[Rage infinie]
    .use 208741
    .itemcount 208741,1
step << Rogue
    #season 2
    .goto 1413/1,-3691.16,-2050.74
    >>Récupérez la |cRXP_PICK_Malle de palefrenier|r sur l'écurie pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    >>|cRXP_WARN_Montez la colline et sautez sur le mur du château. D'ici, vous pouvez sauter sur l'écurie|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    #label SaberSlashRune
    .train 424984 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] |cRXP_WARN_pour apprendre|r |T132375:0|t[Coup de sabre]
    .use 208772
    .itemcount 208772,1
step
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r et leur |cRXP_LOOT_Feathers|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>Ramassez le |cRXP_PICK_Stolen Silver|r sur le sol
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Cliquez sur la |cRXP_PICK_Fissure bouillonnante|r sous l'eau
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid
    #xprate <2.1
    #season 2
    #completewith Verog
    >>Tuez les |cRXP_ENEMY_Kolkars|r. Dépouillez-les pour une |T134237:0|t[|cRXP_LOOT_Clé du butin des Kolkar|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #xprate <2.1
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    .goto 1413/1,-3031.48,-1480.51,50,0
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <2.1
    .goto 1413/1,-2742.68,-1208.23
    >>Tuez |cRXP_ENEMY_Verog|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Il a une chance d'apparaître à chaque fois qu'un |cRXP_ENEMY_Kolkar|r meurt|r
    >>Sur un serveur à la population élevée ou qui vient de démarrer, votre meilleure option est de camper l'endroit où il apparaît
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #optional
    #label Verog
step << Druid
    #season 2
    #loop
    .goto 1413/1,-3031.48,-1480.51,0
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Tuez les |cRXP_ENEMY_Kolkars|r. Dépouillez-les pour une |T134237:0|t[|cRXP_LOOT_Clé du butin des Kolkar|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    .goto 1413/1,-2717.35,-1211.61
    >>Ouvrez le coffre du |cRXP_PICK_Butin des Kolkar|r pour l' |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >> |cRXP_WARN_Équipez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_Une fois que vous avez appris la|r |T132115:0|t[Forme de félin]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_Causez 20 itérations de dégâts de saignement avec|r |T132152:0|t[Déchirure] |cRXP_WARN_ou|r |T132122:0|t[Griffure] |cRXP_WARN_sur des humanoïdes, puis utilisez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_de nouveau pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .use 208689
    .itemcount 208689,1
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani1
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto 1413/1,-2707.22,-1502.130
    >>Cliquez sur le |cRXP_PICK_Blue Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-2692.02,-1533.89
    >>Cliquez sur le |cRXP_PICK_Red Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>Cliquez sur le |cRXP_PICK_Yellow Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Beaten Corpse|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Tuez |cRXP_ENEMY_Lakota'mani|r. Dépouillez-le pour la [|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Hoof of Lakota'mani|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape si vous n'arrivez pas à le trouver
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r. Ceci n'a pas à être complété maintenant
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devez avoir le sort|r |T135813:0|t[Piège d'immolation] |cRXP_WARN_ou n'importe quel autre piège afin d'obtenir cette rune|r
step << Hunter
    #season 2
    #loop
    .goto 1413/1,-1746.58,-2263.56,0
    .goto 1413/1,-1896.55,-2137.89,40,0
    .goto 1413/1,-1840.82,-2184.510,40,0
    .goto 1413/1,-1746.58,-2263.56,40,0
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Utilisez le |T135813:0|t[Piège d'immolation] sur le chemin de la patrouille du |cRXP_ENEMY_Guépard patrouilleur|r pour lui retirer son buff
    >>Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r] |cRXP_WARN_pour apprendre|r |T132270:0|t[Maîtrise des bêtes]
    .use 208701
    .itemcount 208701,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> Voyagez au Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Acceptez la quête Tribus en guerre
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo << !Tauren
    .fly Crossroads >>Volez à la Croisée
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Rendez la quête Disparition au combat
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>Rendez la quête L'oasis stagnante
    .accept 880 >>Acceptez la quête Source de vie
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>Rendez la quête Les Faucheurs furieux
    .accept 3261 >>Acceptez la quête Jorn Œil-des-cieux
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>Rendez la quête Argent volé
    .goto 1413/1,-2639.32,-436.00
    .target +Gazrog
step
    .destroy 5165 >>Détruisez toutes les [Plumes solécailles] qu'il vous reste
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez un|r [Carquois moyen] |cRXP_BUY_à Uthrok|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok

    --Warlock skips Herog/Counterattack below for 150% route. Will do it later otwt Stonetalon for class q into logout skip to TB

step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    #label Leaders
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #xprate <2.1
    #completewith Hezrul
    .subzone 387 >> Voyagez jusqu'à l'Oasis luxuriante
    .isQuestTurnedIn 851
step
    #xprate <2.1
    #completewith Hezrul
    >>Tuez les |cRXP_ENEMY_Gueules d'acier des oasis|r en cherchant |cRXP_ENEMY_Hezrul Marque-de-sang|r. Dépouillez-les pour leur |cRXP_LOOT_Carapaces|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #xprate <2.1
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <2.1
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    >>Trouvez et tuez |cRXP_ENEMY_Hezrul Bloodmark|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrouille autour du lac|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #xprate <2.1
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_N'hésitez pas à passer cette quête si vous n'en avez pas eu assez jusqu'à présent|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto 1413/1,-2273.51,-1106.89
    >>Ouvrez le |cRXP_PICK_Nid de gueule d’acier vide|r au sol pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Lacérer|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacérer|r] |cRXP_WARN_pour apprendre|r |T132131:0|t[Lacérer]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #xprate <2.1
    #optional
    #completewith CounterattackComplete
    .abandon 855 >> Abandonnez Les bracelets de centaures comme vous n'en avez pas récupéré assez avant pour qu'elle soit rentable à finir
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackComplete
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le Chef de guerre Krom'zar autour du bâtiment où se situe le donneur de quête|r
    +|cRXP_WARN_Passez cette quête si vous n'arrivez pas à la terminer. Vous aurez une autre occasion de la finir à un niveau plus élevé|r
    .isQuestTurnedIn 852
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    #label CounterattackComplete
    .goto 1413/1,-1884.39,-289.38
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith StonetalonPickups
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    #loop
    .goto 1413/1,-1458.79,565.96,0
    .goto 1413/1,-1458.79,565.96,40,0
    .goto 1413/1,-1379.75,620.68,40,0
    .goto 1413/1,-1376.71,717.97,40,0
    .goto 1413/1,-1323.0,747.7,40,0
    .goto 1413/1,-1245.99,763.91,40,0
    .goto 1413/1,-1223.7,699.05,40,0
    .goto 1413/1,-1290.58,670.0,40,0
    .goto 1413/1,-1245.99,624.74,40,0
    .goto 1413/1,-1241.94,559.2,40,0
    .goto 1413/1,-1155.8,553.12,40,0
    .goto 1413/1,-1150.74,513.93,40,0
    .goto 1413/1,-1194.31,508.53,40,0
    .goto 1413/1,-1263.22,458.53,40,0
    .goto 1413/1,-1311.86,415.97,40,0
    .goto 1413/1,-1366.58,449.75,40,0
    .goto 1413/1,-1417.24,486.91,40,0
    .goto 1413/1,-1445.62,532.85,40,0
    >>Tuez les |cRXP_ENEMY_Witchwing Slayers|r. Dépouillez-les pour leur |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Witchwing Slayers|r lancent|r [Exécuter] |cRXP_WARN_(inflige BEAUCOUP de dégâts lorsque vous êtes à moins de 20% de vie), et les |cRXP_ENEMY_Witchwing Ambushers|r utilisent|r [Camouflage] et patrouillent aux alentours
    >>Faites attention aux |cRXP_ENEMY_Witchwing Ambushers|r. Ils sont camouflés et patrouillent dans la zone
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
    .isOnQuest 875
step
    #xprate <2.1
    #label BarrensEnd
    #completewith next
    .goto 1413/1,-950.10,-271.14,30 >> Voyagez vers |cRXP_FRIENDLY_Seereth Bris-de-pierre|r
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >> Acceptez la quête Les invasions gobelines
    .target +Seereth Stonebreak
    .goto 1413/1,-950.10,-271.14
    .accept 6548 >> Acceptez la quête Vengez mon village !
    .target +Makaba Flathoof
    .goto 1413/1,-943.00,-265.06
    .maxlevel 20
step
    #xprate <2.1
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >> Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >> Acceptez la quête Les invasions gobelines
    .target Seereth Stonebreak

    ]])

RXPGuides.RegisterGuide([[
#forever
#xprate >1.99
<< Horde
#name 20-24 Serres-Rocheuses /Les Tarides
#version 1
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#next 24-26 Tarides du Sud << !Rogue !Shaman
#next 23-24 Quêtes de classe de Hautebrande << Rogue/Shaman


step << Druid
    #xprate <2.1
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Taurens totem-sinistre|r. Dépouillez-les pour l' |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #xprate <2.1
    #optional
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Tuez les |cRXP_ENEMY_Grimtotem Ruffians|r et les |cRXP_ENEMY_Grimtotem Mercenaries|r dans la zone
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #xprate <2.1
    #season 2
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>Tuez les |cRXP_ENEMY_Totem-sinistre|r. Dépouillez-les pour l' |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    .equip 18,210534 >> |cRXP_WARN_Équipez l'|r |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    >>|cRXP_WARN_Lancez|r |T136085:0|t[Rétablissement] |cRXP_WARN_ou|r |T136041:0|t[Toucher guérisseur] |cRXP_WARN_sur 10 Bêtesamicales différentes telles que les Familiers de Chasseur/les Druides en Forme d'ours/les Chamans en Loup fantôme|r
    .train 410021 >> |cRXP_WARN_Utilisez l' |r |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r] |cRXP_WARN_pour apprendre|r |T132143:0|t[Frappes féroces]
    .itemcount 210534,1
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Rendez la quête Vengez mon village !
    .accept 6629 >> Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #xprate <2.1
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >> Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #completewith next
    .goto 1442/1,-460.13,67.77,30 >>Montez le chemin jusqu'au bûcher
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto 1442/1,-350.74,112.06
    >>Tuez |cRXP_ENEMY_Grundig Darkcloud|r et |cRXP_ENEMY_Grimtotem Brutes|r
    >>Tuez bien les 6 |cRXP_ENEMY_Grimtotem Brutes|r avant de commencer la quête à l'intérieur
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto 1442/1,-342.44,129.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Acceptez la quête Protéger Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto 1442/1,-261.38,90.57,40,0
    .goto 1442/1,-261.86,-7.12,40,0
    .goto 1442/1,-501.15,-41.64
    >>Escortez |cRXP_FRIENDLY_Kaya|r et restez proche d'elle
    >>Faites attention ! Trois |cRXP_ENEMY_Grimtotems|r vont apparaître lorsque vous aurez atteint le bûcher au Camp Aparaje
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target Makaba Flathoof
    .isQuestComplete 6523
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target Makaba Flathoof
    .isQuestComplete 6523
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .target Makaba Flathoof
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target Makaba Flathoof
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Montez le chemin sur la gauche
step
    #xprate <2.1
    #label BloodFeedersPickup
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acceptez la quête Suceurs de sang
    .target Xen'Zilla
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,-103.64,40.10,100,0
    .goto 1442/1,74.11,185.32,100,0
    .goto 1442/1,244.05,262.50,100,0
    >>Tuez tous les |cRXP_ENEMY_Deepmoss Creeper|r que vous voyez
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    .goto 1442/1,360.76,451.690
    >>Cliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Acceptez la quête Arachnophobie
step
    #xprate <2.1
    #completewith Besseleth1
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r et les |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step
    #xprate <2.1
    #label Besseleth1
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>Tuez |cRXP_ENEMY_Besseleth|r. Dépouillez-la pour sa |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Nettoyez la zone autour de|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Soyez prudent elle peut vous entoiler. Gardez-la en permanence apeurée avec des DoT|r << Warlock
    >>|cRXP_WARN_Cette quête est difficile. Passez-la si nécessaire|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #xprate <2.1
    .goto 1442/1,-44.56,84.05,80,0
    .goto 1442/1,245.51,255.01,80,0
    .goto 1442/1,392.01,445.17,40,0
    .goto 1442/1,560.49,440.94
    >>Tuez les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,735.8,925.8,50,0
    .goto 1442/1,806.12,929.05
    .subzone 460 >>Voyagez jusqu'à la Retraite des Roche-Soleil
step
    #xprate <2.1
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Jayka|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isOnQuest 1483
step
    #xprate <2.1
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au deuxième étage de l'auberge
    .vendor >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si elle en a en stock|r << !Warrior
    .vendor >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_et des|r [Viétérule] |cRXP_BUY_si elle en a en stock|r << Warrior
    .target Jeeda
    .isOnQuest 1483
step
    #xprate <2.1
    #label KayaLives
    .goto 1442/1,928.20,1015.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Rendez la quête Kaya est en vie
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Rendez la quête Arachnophobie
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #xprate <2.1
    #label SRRFP
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Prenez le chemin de vol de la Retraite de Roche-Soleil
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,365.16,878.250,15 >> Voyagez vers |cRXP_FRIENDLY_Ziz|r
step
    #xprate <2.1
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >> Rendez la quête Ziz Fizzik
    .accept 1093 >> Acceptez la quête Super-Découpeur 6000
    .target Ziz Fizziks
step
    #xprate <2.1
    #completewith Windshear
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <2.1
    #loop
    .goto 1442/1,352.46,912.44,0
    .goto 1442/1,352.46,912.44,50,0
    .goto 1442/1,297.77,959.660,50,0
    .goto 1442/1,250.40,990.59,50,0
    .goto 1442/1,259.68,1032.93,50,0
    .goto 1442/1,246.98,1068.09,50,0
    .goto 1442/1,207.91,1010.13,50,0
    .goto 1442/1,163.47,962.27,50,0
    .goto 1442/1,86.81,961.94,50,0
    .goto 1442/1,181.05,907.89,50,0
    .goto 1442/1,193.75,867.83,50,0
    .goto 1442/1,194.73,827.78,50,0
    .goto 1442/1,225.49,765.26,50,0
    .goto 1442/1,281.16,763.63,50,0
    .goto 1442/1,268.95,832.99,50,0
    .goto 1442/1,303.63,858.39,50,0
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T135157:0|t[Bâton long] |cRXP_BUY_à Veenix|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
    .xp <20,1
step << Undead Warrior
    #xprate <2.1
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Achetez l'|r |T135329:0|t[Epée d'exécuteur] |cRXP_BUY_à Veenix|r
    >>|cRXP_WARN_Si elle n'est pas disponible, achetez un|r |T135280:0|t[Faux dace] |cRXP_WARN_à la place|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
    .xp <21,1
step << Shaman
    #xprate <2.1
    #season 0
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T135157:0|t[Bâton long] |cRXP_BUY_à Veenix|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #xprate <2.1
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #xprate <2.1
    #season 2
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T133476:0|t[Fléau] |cRXP_BUY_à Veenix|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #xprate <2.1
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T133476:0|t[Fléau]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Rogue
    #xprate <2.1
    #season 0
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Veenix|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #xprate <2.1
    #season 0
    #optional
    #completewith BluePrints
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #xprate <2.1
    #season 2
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un ou deux|r |T135342:0|t[Kriss] |cRXP_BUY_à Veenix|r
    .collect 2209,1,899,1 --Collect Kris (1)
    .money <0.7115
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
step << Rogue
    #xprate <2.1
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step
    #xprate <2.1
    #label Windshear
    .subzone 461 >> Voyagez à la Combe des Cisailles
    .isOnQuest 1093
step
    #xprate <2.1
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
    #label BluePrints
    #loop
    .goto 1442/1,179.10,1168.06,0
    .goto 1442/1,179.10,1168.06,100,0
    .goto 1442/1,232.82,1239.70,100,0
    .goto 1442/1,-16.23,1441.59,100,0
    .goto 1442/1,-255.52,1291.80,100,0
    .goto 1442/1,-382.48,1135.50,100,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Operators|r. Dépouillez-les pour leur |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #xprate <2.1
    #loop
    .goto 1442/1,242.58,1121.82,0
    .goto 1442/1,242.58,1121.82,50,0
    .goto 1442/1,292.39,1122.470,50,0
    .goto 1442/1,325.6,1168.39,50,0
    .goto 1442/1,338.79,1206.48,50,0
    .goto 1442/1,276.77,1248.49,50,0
    .goto 1442/1,215.24,1145.59,50,0
    .goto 1442/1,187.40,1114.33,50,0
    .goto 1442/1,138.57,1144.62,50,0
    .goto 1442/1,51.16,1153.41,50,0
    .goto 1442/1,-17.70,1128.33,50,0
    .goto 1442/1,-106.09,1157.31,50,0
    .goto 1442/1,-165.66,1173.60,50,0
    .goto 1442/1,-189.10,1079.82,50,0
    .goto 1442/1,-69.95,1061.91,50,0
    .goto 1442/1,10.63,1072.33,50,0
    .goto 1442/1,57.51,1056.05,50,0
    .goto 1442/1,107.32,1040.09,50,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
    #loop
    .goto 1442/1,246.98,1068.09,0
    .goto 1442/1,352.46,912.44,30,0
    .goto 1442/1,297.77,959.660,30,0
    .goto 1442/1,250.40,990.59,30,0
    .goto 1442/1,259.68,1032.93,30,0
    .goto 1442/1,246.98,1068.09,30,0
    .goto 1442/1,207.91,1010.13,30,0
    .goto 1442/1,163.47,962.27,30,0
    .goto 1442/1,86.81,961.94,30,0
    .goto 1442/1,181.05,907.89,30,0
    .goto 1442/1,193.75,867.83,30,0
    .goto 1442/1,194.73,827.78,30,0
    .goto 1442/1,225.49,765.26,30,0
    .goto 1442/1,281.16,763.63,30,0
    .goto 1442/1,268.95,832.99,30,0
    .goto 1442/1,303.63,858.39,30,0
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #optional
    #xprate <2.1
	#completewith next
	+|cRXP_WARN_Si vous avez plus de 15 |cRXP_LOOT_Deepmoss Eggs|r, enlevez le surplus que vous avez dans ce stack (shift click), puis détruisez-les
step
    #xprate <2.1
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Rendez la quête Super-Découpeur 6000
    .accept 1094 >> Acceptez la quête D'autres instructions
    .target Ziz Fizziks
step
    #xprate <2.1
    #loop
    .goto 1442/1,362.71,539.28,0
    .goto 1442/1,275.30,577.38,80,0
    .goto 1442/1,362.71,539.28,80,0
    .goto 1442/1,298.25,432.80,80,0
    .goto 1442/1,244.05,262.50,80,0
    .goto 1442/1,74.11,185.32,80,0
    .goto 1442/1,-103.64,40.10,80,0
    >>Finissez de tuer les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #optional
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
step
    #completewith JornSkyseerTurnin
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
    .cooldown item,6948,<0
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Rendez la quête Jorn Œil-des-cieux
    .accept 882 >>Acceptez la quête Ishamuhale
    .target Jorn Skyseer
step << Warlock
    #season 2
    #sticky
    #completewith CounterattackTurnin3
    #label ExplorerImp
    >>Lors de vos quêtes, lancez |T136163:0|t|cRXP_FRIENDLY_[Drain d'âme]|r sur les mobs jusqu'à ce que vous receviez une |T133257:0|t|cRXP_LOOT_Âme d'explorateur|r. |cRXP_WARN_Utilisez-la pour apprendre à invoquer un|r |T236294:0|t|cRXP_FRIENDLY_[Diablotin explorateur]|r
    .train 445459 >>|cRXP_WARN_Utilisez l'|r |T133257:0|t|cRXP_LOOT_Âme d'explorateur|r |cRXP_WARN_pour apprendre à invoquer un|r |T236294:0|t[|cRXP_FRIENDLY_Diablotin explorateur|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith CounterattackTurnin3
    #label FelPortalRune
    >>Vous vous situé dans une zone disposant de |cRXP_FRIENDLY_Portails de Corruption|r. Si vous en trouvez un, invoquez votre |T236294:0|t[|cRXP_FRIENDLY_Diablotin explorateur|r] et parlez-lui en étant à côté d'un portail pour l'envoyer en expédition. Il reviendra après 10-20 minutes avec du butin et une chance de vous donner la |T134419:0|t[|cRXP_FRIENDLY_Rune du gangregarde|r] << Warlock
    >>Vous êtes dans une zone disposant de |cRXP_FRIENDLY_Portails de Corruption|r. Si vous en trouvez un, fermez-le avec un |T134945:0|t[|cRXP_LOOT_Parchemin de guérison spatiale|r]. Cela vous accordera les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] << Mage
    >>|cRXP_WARN_Cherchez les portails jusqu'à ce que vous obteniez la rune|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith CounterattackTurnin3
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gangregarde|r] |cRXP_WARN_pour apprendre|r |T136216:0|t[Invocation d'un gangregarde] << Warlock
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
	#completewith LakotaMani2
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsutes|r. Dépouillez-les pour leurs |cRXP_LOOT_Défenses|r. Gardez les |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] que vous récupérez
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #label LakotaMani2
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Tuez |cRXP_ENEMY_Lakota'mani|r. Dépouillez-le pour la [|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Hoof of Lakota'mani|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape si vous n'arrivez pas à le trouver
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsutes|r. Dépouillez-les pour leurs |cRXP_LOOT_Défenses|r. Gardez les |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] que vous récupérez
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step << Warlock/Shaman
    #optional
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19 >> Montez jusqu'au niveau 19
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06.0,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Finissez de tuer les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
    >>Finissez de tuer les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Tuez n'importe quel |cRXP_ENEMY_Zhevra|r. Dépouillez-le pour une |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #loop
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>Tuez les |cRXP_ENEMY_Oasis Snapjaws|r à l'intérieur et autour du lac. Dépouillez-les pour leur |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step << Shaman/Priest
    #season 2
    #loop
    .goto 1413/1,-3028.44,-685.30,40,0 --Spawn 1
    .goto 1413/1,-3034.52,-698.81,40,0
    .goto 1413/1,-2931.16,-816.37,40,0 --Spawn 2
    .goto 1413/1,-2946.36,-800.83,40,0
    .goto 1413/1,-3200.71,-821.78,40,0 --Spawn 3
    .goto 1413/1,-3209.83,-804.89,40,0
    .goto 1413/1,-3199.70,-799.480,40,0
    .goto 1413/1,-3212.87,-979.20,40,0 --Spawn 4
    .goto 1413/1,-3202.74,-998.79,40,0
    .goto 1413/1,-3337.51,-932.58,40,0 --Spawn 5
    .goto 1413/1,-3347.64,-923.12,40,0
    .goto 1413/1,-3349.67,-936.63,40,0
    >>Lancez |T136075:0|t[Expiation] sur le |cRXP_ENEMY_Mirage du désert|r pour le tuer. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de terre]|r << Shaman
    >>Lancez |T135894:0|t[Dissipation de la magie] sur le |cRXP_ENEMY_Mirage du désert|r pour le tuer. Dépouillez-le pour obtenir la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>Tuez n'importe quel |cRXP_ENEMY_Zhevra|r. Dépouillez-le pour une |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>Utilisez la [|cRXP_LOOT_Fresh Zhevra Carcass|r] à l'arbre mort pour invoquer |cRXP_ENEMY_Ishamuhale|r. Tuez-le et dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>La Carcasse ne dure que 30 minutes !
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith FlytoXroads
    .goto 1413/1,-3768.18,-840.69 << Rogue
    .goto 1413/1,-3728.66,-835.29 << !Rogue
    .subzone 392 >> Voyagez jusqu'à Ratchet
step << Rogue
    .goto 1413/1,-3768.18,-840.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Rendez la quête Piller les pilleurs
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Rendez la quête Course à la lentille
    .target Gazlowe
    .isQuestComplete 888
step
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto 1413/1,-3639.48,-1049.46
    >>|cRXP_WARN_Si vous avez|cRXP_LOOT_ |r3 pièces d'or|r à dépenser, vous pouvez acheter une rune chez |cRXP_FRIENDLY_Grizzbi|r |cRXP_WARN_à l'auberge de Cabestan. Jugez vous-même si vous pouvez vous leapermettre et si la rune est utile pour votre classe. Vous pourrez toujours l'acheter plus tard|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grizzbi|r dans l'auberge
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Achetez et utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie harmonieuse|r] |cRXP_WARN_pour apprendre|r |T237549:0|t[Sérendipité] << Priest
    .train 410010 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de sacrifice|r] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Main de sacrifice)] << Paladin
    .train 401761 >>|cRXP_WARN_Achetez et utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Remonter le temps|r] |cRXP_WARN_pour apprendre|r |T237538:0|t[Remonter le temps] << Mage
    .train 410122 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] |cRXP_WARN_pour apprendre|r |T132266:0|t[Loup solitaire] << Hunter
    .train 416042 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de survie|r] |cRXP_WARN_pour apprendre|r |T132126:0|t[Survie du plus fort] << Druid
    .train 425445 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Porteguerre|r] |cRXP_WARN_pour apprendre|r |T236319:0|t[Porteguerre] << Warrior
    .train 425476 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] |cRXP_WARN_pour vous apprendre|r |T237562:0|t[Pacte démoniaque] << Warlock
    .train 424990 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Main gauche|r] |cRXP_WARN_pour vous apprendre|r |T237531:0|t[Main gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Ambidextrie|r] |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Spécialisation Ambidextrie)] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r et |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    --.accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .accept 1491 >>Acceptez la quête Les potions d'intelligence
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
    .dungeon WC
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r et |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    --.accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok Mizzyrix|r et au |cRXP_FRIENDLY_Brasseur Drohn|r
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .accept 1491 >>Acceptez la quête Les potions d'intelligence
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
    .dungeon WC
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok Mizzyrix|r et au |cRXP_FRIENDLY_Brasseur Drohn|r
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .target +Mebok Mizzyrix
    .goto 1413/1,-3697.24,-929.20
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target +Brewmaster Drohn
    .goto 1413/1,-3687.11,-981.22
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Achetez le [|cRXP_FRIENDLY_Mighty Chain Pants|r] à Grazlix si il est disponible
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Achetez-lui des [|cRXP_FRIENDLY_Wolf Bracers|r] si il en a en stock
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .equip 9,4794
step << Warrior
    #optional
    #completewith FlytoXroads
    +Équipez le [|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid    #optional
    #completewith FlytoXroads
    +Équipez les [|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Ratchet
    .target Innkeeper Wiley
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >> Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
step << Hunter
    #xprate <2.1
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Acceptez la quête Rapport à Kadrak
    .target Thork
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .turnin 875 >>Rendez la quête Lieutenants harpies
    .accept 876 >>Acceptez la quête Serena Plumesang
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .accept 876 >>Acceptez la quête Serena Plumesang
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r et |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Rendez la quête Consumé par la haine
    .target +Tonga Runetotem
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Rendez la quête Source de vie
    .accept 1489 >>Acceptez la quête Hamuul Totem-runique
    .accept 3301 >>Acceptez la quête Mura Runetotem << Shaman/Rogue
    .target +Mankrik
    .goto 1413/1,-2672.76,-544.77
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acceptez la quête La chasse aux œufs
    .target Korran
step
    .destroy 5085 >>Détruisez tous vos restes de [Défense de huran Dos-hirsute]
    .itemcount 5085,1
step << Shaman
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto 1454/1,-4213.03,1920.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Acceptez la quête L'appel de l'eau
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .trainer >>Apprenez vos sorts de classe
    .accept 1507 >>Acceptez la quête La dévoreuse d'âmes
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire de Tourment (Rang 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Rendez la quête La dévoreuse d'âmes
    .accept 1508 >>Acceptez la quête Cazul l'aveugle
    .target Cazul
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto 1454/1,-4199.99,1717.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Rendez la quête Cazul l'aveugle
    .accept 1509 >>Acceptez la quête Des nouvelles de Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> À présent, vous devriez commencer à chercher un groupe pour les Mortemines
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Apprenez les compétences de votre familier
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Apprenez vos sorts de classe
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Apprenez vos sorts de classe
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Apprenez vos sorts de classe
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
    --VV Adjust to 20-22 level range
step
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Achetez une|r |T132794:0|t[Flasque d'huile] |cRXP_BUY_à l'Hôtel des ventes si cela est possible|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto 1411/1,-4648.55,1321.88,40 >>Montez la Tour des Zeppelins
    .zone Stranglethorn Vale >>Prenez le Zeppelin pour la Vallée de Strangleronce
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37.0,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> Nagez directement vers l'ouest en partant de Grom'gol vers le Récif infâme, puis nagez vers le nord en direction de la Marche de l'Ouest
    >>|cRXP_WARN_Restez loin de l'île. Suivez le point de repère pour rester en sécurité !|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Voyagez au Phare de la Marche de l'Ouest
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .accept 103 >> Acceptez la quête Le gardien de la flamme
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 103 >> Rendez la quête Le gardien de la flamme
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour son |cRXP_LOOT_Écaille|r
    >>Le |cRXP_ENEMY_Vieux Troubloeil|r |cRXP_WARN_patrouille le long du Longrivage. Si vous ne le voyez pas le long du Longrivage, attendez qu'il apparaisse dans le campement |cRXP_ENEMY_Murloc|r le plus au sud|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 104 >> Rendez la quête Menace sur la côte
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandonnez la quête Le gardien de la flamme
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11785.4,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> Entrez dans le portail de l'instance des Mortemines. Entrez dans la zone
    .dungeon DM
step
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Tarides après avoir terminé les Mortemines
    .zone The Barrens >> Arrivée aux Tarides
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Volez à la Croisée
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Rendez la quête Des nouvelles de Dogran
    .accept 1510 >>Acceptez la quête Des nouvelles de Dogran
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Volez à Ratchet
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto 1413/1,-4047.86,-1345.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r commence une quête chronométrée avec une durée de 45 minutes
    .accept 853 >> Acceptez la quête L'apothicaire Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Vous faites une quête chronométrée, ne passez pas ABS. Elle sera rendue 20-30 après qu'elle soit prise|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Bragok
    .subzoneskip 380
step
    #xprate <2.1 << Warlock
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Devrak
    .subzoneskip 380,1

    --Warlock Class Q section

step << Warlock
    #xprate >2.09
    #label EnterSTMWL
    #completewith KenZiglaWL
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
step << Warlock
    #xprate >2.09
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Montez le chemin sur la gauche
step << Warlock
    #xprate >2.09
    #label KenZiglaWL
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Rendez la quête Des nouvelles de Dogran
    .accept 1511 >>Acceptez la quête Breuvage de Ken'zigla
    .target Ken'zigla
step << Warlock
    #xprate >2.09
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .subzoneskip 378
    .bindlocation 378,1
    .cooldown item,6948,>0
    .dungeon !WC
step << Warlock
    #xprate >2.09
    #completewith next
    .subzone 378 >>Voyagez au Camp Taurajo
step << Warlock
    #xprate >2.09
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Rendez la quête Breuvage de Ken'zigla
    .accept 1515 >>Acceptez la quête La captivité de Dogran
    .target Grunt Logmar
step
    .goto 1413/1,-1891.48,-2391.93
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsute|r. Dépouillez-les pour un |T134128:0|t|cRXP_LOOT_Joyau de sang|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Rendez la quête Tribus en guerre
    .accept 5052 >>Acceptez la quête Joyaux de sang d'Agamaggan
    .turnin 5052 >>Rendez la quête Joyaux de sang d'Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step
    #optional
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    +|cRXP_WARN_Utilisez vos|r |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r] |cRXP_WARN_pour obtenir des buffs. Gardez-en au moins 4 pour plus tard|r
    +Vérifiez de désactiver toutes les options de complétion automatique des quêtes d'add-ons tels que Quesie ou Leatrix Plus pour cette partie !
    .target Mangletooth
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .target Jorn Skyseer
step << Warlock
    #xprate >2.09
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Rendez la quête La captivité de Dogran
    .accept 1512 >>Acceptez la quête Le cadeau de l'amour
    .target Grunt Dogran
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>Tuez les |cRXP_ENEMY_Thunder Lizards|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval << Hunter
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> Voyagez au sud vers |cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>Tuez le |cRXP_ENEMY_Faucon-tonnerre|r. Dépouillez-le pour ses |cRXP_LOOT_Ailes|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Rendez la quête L'appel de l'eau
    .accept 1535 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    .goto 1413/1,-1858.04,-3572.92
    .use 7766 >> Remplissez votre [Outre marron vide] au point d'eau près de la hutte de Brine
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Rendez la quête L'appel de l'eau
    .accept 1536 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .subzoneskip 378 >>Revenez au Camp Taurajo
step << Shaman
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith next
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape pour l'instant si vous n'arrivez pas à le trouver
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>Tuez un |cRXP_ENEMY_Thunderhawk Hatchling|r ou un |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Dépouillez-le pour ses |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .target Jorn Skyseer
    .isQuestComplete 913
step << !Tauren
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>Si il vous reste 10 [|cRXP_LOOT_Blood Shards|r, utilisez les pour obtenir [L'esprit du vent] à |cRXP_FRIENDLY_Mangletooth|r
    >>Passez cette étape si vous pouvez voler jusqu'à Thunder Bluff
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Voyagez jusqu'à Mulgore
step << !Tauren
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Prenez l'ascenseur pour aller à Thunder Bluff
    >>Si vous avez le vol pour Thunder Bluff, volez-y
step << Tauren
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Achetez la compétence pour porter des Masses à deux mains
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step << Rogue
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Acheter la compétence pour porter des masses à une main
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Kuruk|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step << Rogue/Shaman
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Acceptez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
    .dungeon WC
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step
    #optional
    #label ZamahTurnin
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    --.accept 5644 >> Accept Devouring Plague << Undead Priest
    .accept 5642 >> Acceptez la quête Garde de l'ombre << Troll Priest
    .trainer >> Apprenez vos sorts de classe
    .target Miles Welsh
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <22,1
    .xp >24,1
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 2121 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <24,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8046 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <24,1
step
    #xprate <2.1 << Warlock
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Fabriquez des|r |T133688:0|t[Bandages épais en lin] |cRXP_WARN_jusqu'à ce que votre niveau de compétence de Premiers soins soit de 80 ou plus|r
    .skill firstaid,<1,1
step
    #xprate <2.1 << Warlock
    #label FirstAid2
    .goto 1456/1,206.88,-997.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour atteindre une compétence de 80
    .train 3277 >> Apprenez  [Bandage en laine]
    .train 7934 >> Apprenez [Anti-venin] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>Fabriquez des [Anti-Venin] si vous avez trouvé des [Petites glandes à venin]
    >>Gardez-les pour plus tard
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Rendez la quête Hamuul Totem-runique
    .accept 1490 >> Acceptez la quête Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .accept 914 >> Acceptez la quête Les druides du Croc
    .target Nara Wildmane
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .trainer >> Apprenez vos sorts de classe
    .target Turak Runetotem
step
    #label SacredFlame
    .goto 1456/1,-56.98,-1207.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acceptez la quête La flamme sacrée
    .target Zangen Stonehoof
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> Voyagez au sommet du chasseur
step << Hunter
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <22,1
    .xp >24,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 19885 >> Apprenez |T132320:0|t[Pistage des camouflés]
    .target Urek Thunderhorn
    .xp <24,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> Voyagez au sommet du chasseur
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 845 >> Apprenez vos sorts de classe
    .accept 1823 >>Acceptez la quête Parler à Ruga
    .target Torm Ragetotem
step << Rogue
    #season 0
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Kard.|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #season 0
    #optional
    #completewith FlyOrgSR
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #season 2
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard Totem-de-rage|r|cRXP_BUY_. Achetez un ou deux|r |T135342:0|t[Kriss] |cRXP_BUY_à Kard|r
    .collect 2209,1,493,1 --Collect Kris (1)
    .money <0.7115
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #season 2
    #optional
    #completewith FlyOrgSR
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .xp <19,1
step << Warrior/Shaman
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Si c'est moins cher vous pouvez plutôt acheter une arme verte à l'Hôtel des Ventes|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu Totem-de-rage|r|cRXP_BUY_. Achetez-lui un|r |T135157:0|t[Bâton long] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith FlyCampT
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 0
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu Totem-de-rage|r|cRXP_BUY_. Achetez-lui un|r |T135157:0|t[Bâton long] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith CallofWater2
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 2
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Achetez un|r |T133476:0|t[Fléau] |cRXP_BUY_à Etu|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith CallofWater2
    +|cRXP_WARN_Équipez le|r |T133476:0|t[Fléau]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Achetez un|r [Arc courbe lourd] |cRXP_BUY_à Kuna|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Corne-Tonnerre
step << Hunter
    #optional
    #completewith FlyCampT
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointues] |cRXP_BUY_à Kuna|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Corne-Tonnerre
step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Maintenant vous devriez chercher un groupe pour la Caverne des Lamentations
    >>Tuez les |cRXP_ENEMY_Hurans|r |pendant que vous montez un groupe pour les Cavernes des Lamentations
    .dungeon WC
step
    .goto 1413/1,-2053.62,-882.58,100 >> Voyagez vers la Caverne des Lamentations
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>Montez la montagne à la pierre de rencontre de la Caverne des Lamentations
    >>Suivez la flèche méticuleusement pour atteindre la grotte cachée
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    >>Ils sont situés au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Tuez tous les |cRXP_ENEMY_Déviants|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_LOOT_Peaux|r |cRXP_WARN_pour tout le monde|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>Tuez tous les |cRXP_ENEMY_Déviants|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_WARN_Il met beaucoup de temps avant de réapparaître. Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> Entrez dans le portail pour les Cavernes des lamentations
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_LOOT_Peaux|r |cRXP_WARN_pour tout le monde|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r et les |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r et |cRXP_ENEMY_Lord Serpentis|r. Dépouillez-les pour leur |cRXP_LOOT_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Disciple of Naralex|r à l'entrée des Cavernes des Lamentations. Escortez-le jusqu'à |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Une fois que vous avez atteint |cRXP_FRIENDLY_Naralex|r vous allez être attaqué par deux vagues d'ennemis et ensuite par |cRXP_ENEMY_Mutanus the Devourer|r
    >>Tuez le et dépouillez-le pour la [|cRXP_LOOT_Glowing Shard|r] et utilisez-la pour commencer la quête
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #optional
    #completewith DeviateRaptors
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Tuez les |cRXP_ENEMY_Ravageurs déviants|r, les |cRXP_ENEMY_Vipères déviantes|r, les |cRXP_ENEMY_Traînards déviants|r et les |cRXP_ENEMY_Croc-d'effrois déviants|r. Dépouillez-les pour obtenir leur |cRXP_ENEMY_Peaux|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
    .dungeon WC
 step
    >>Tuez les |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r et les |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour obtenir leur |cRXP_ENEMY_Peaux|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ratchet
    .use 6948
    .dungeon WC
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Rendez la quête Les potions d'intelligence
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> Montez la montagne
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    >>Ils sont situés au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ebru|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .goto 1413/1,-1881.35,-2384.50,100 >> Voyagez au sud jusqu'au Camp Taurajo
    .subzoneskip 378
    .dungeon WC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Rendez la quête Les druides du Croc
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Rendez la quête Au coeur des cauchemars
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
    .isQuestComplete 962
    .dungeon WC
step
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Zamah|r
    .turnin 962 >>Rendez la quête Fleur de serpent
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    #optional
    .abandon 1486 >>Abandonnez la quête Les peaux de déviants
step
    #optional
    .abandon 1487 >>Abandonnez la quête L'éradication des déviants
step
    #optional
    .abandon 1491 >>Abandonnez la quête Les potions d'intelligence
step
    #optional
    .abandon 959 >>Abandonnez la quête Fuite de porto aux docks
step
    #optional
    .abandon 914 >>Abandonnez la quête Les druides du Croc
step
    #optional
    .abandon 962 >>Abandonnez la quête Fleur de serpent
step
    #xprate <2.1
    #completewith Serena
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .subzoneskip 380
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackTurnin2
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le Chef de guerre Krom'zar autour du bâtiment où se situe le donneur de quête|r
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto 1413/1,-1884.39,-289.38
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #optional
    #completewith Serena
    .abandon 855 >>Abandonnez la quête Les bracelets de centaures
step
    #xprate <2.1
    #label Serena
    .goto 1413/1,-1345.3,790.94
    >>Tuez |cRXP_ENEMY_Serena Bloodfeather|r. Dépouillez-la pour sa |cRXP_LOOT_Tête|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    #xprate <2.1
    .goto 1413/1,-2347.48,857.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wenikee Bakaboulon|r
    .turnin 3921 >> Rendez la quête Wenikee Bakaboulon
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    #xprate <2.1
    .goto 1413/1,-2253.24,1246.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r
    .turnin 6541 >> Rendez la quête Rapport à Kadrak
    .target Kadrak
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2240.94,1778.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r pour commencer l'escorte
    >>|cRXP_FRIENDLY_Torek|r a un temps de réapparition de 5 minutes
    .accept 6544 >> Acceptez la quête L'assaut de Torek
    .target Torek
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2110.61,1809.320,60,0
    .goto 1440/1,-2052.37,1776.27,20,0
    .goto 1440/1,-2006.81,1777.42,10,0
    .goto 1440/1,-2037.38,1777.04
    >>Suivez |cRXP_FRIENDLY_Torek|r
    >>Laissez |cRXP_FRIENDLY_Torek|r et ses |cRXP_FRIENDLY_Splintertree Raiders|r tank les |cRXP_ENEMY_Silverwing Warriors|r et les |cRXP_ENEMY_Silverwing Sentinels|r
    >>|cRXP_WARN_Lorsque vous nettoyez le bâtiment, allez vers le Balcon. Lorsque |cRXP_ENEMY_Duriel Moonfire|r arrive, laissez |cRXP_FRIENDLY_Torek|r et ses |cRXP_FRIENDLY_Splintertree Raiders|r générer de la menace avant de faire des dégâts|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2511.97,2271.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Rendez la quête L'assaut de Torek
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Rendez La Chasse d'Ashenvale
    .turnin 6383 >> Rendez La Chasse d'Ashenvale
    .target Senani Thunderheart
step << Hunter
    #xprate <2.1
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Apprenez le chemin de vol du Poste de Bois-Brisé
    .target Vhulgra
step << Hunter
    #xprate <2.1
    #completewith EnterSTM2
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Crossroads >> Volez à la Croisée
    .target Vhulgra
    .zoneskip The Barrens
step << !Hunter
    #xprate <2.1
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Hunter
    #xprate <2.1
    #hardcore
    #completewith next
    .subzone 380 >>Voyagez à la Croisée
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 876 >> Rendez la quête Serena Plumesang
    .accept 1060 >> Acceptez la quête Lettre à Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <2.1
    #optional
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .accept 1060 >> Acceptez la quête Lettre à Jin'Zil
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acceptez la quête La chasse aux œufs
    .target Korran
step
    #xprate <2.1
    #completewith CounterattackTurnin3
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le Chef de guerre Krom'zar autour du bâtiment où se situe le donneur de quête|r
step
    #xprate <2.1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto 1413/1,-1884.39,-289.38
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin3
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #label STMturnins1
    #map Stonetalon Mountains
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    --.accept 1068 >> Accept Shredding Machines
    .target Seereth Stonebreak
step
    #xprate <2.1
    #completewith next
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Montez le chemin sur la gauche
step
    #xprate <2.1
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Rendez la quête Lettre à Jin'Zil
    --.accept 1058 >> Accept Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step << Warlock
    #xprate <2.1
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Rendez la quête Des nouvelles de Dogran
    .accept 1511 >>Acceptez la quête Breuvage de Ken'zigla
    .target Ken'zigla
step
    #xprate <2.1
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Rendez la quête Suceurs de sang
    .target Xen'Zilla
step << skip
    #xprate <2.1
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_Sautez sur l'une des cages. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
step << skip
    #xprate <2.1 << !Warlock
    #completewith ElderCroneTurnin
    .goto 1456/1,-48.84,-1037.94,20,0
    .goto 1456/1,-13.04,-1107.95,40 >> Prenez l'ascenseur pour aller à Thunder Bluff
step
    #xprate <2.1
    .hs >>Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
step
    #xprate <2.1
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
step
    #xprate <2.1
    #label ElderCroneTurnin
    .goto 1456/1,-212.71,-1065.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    >>Attendez que le RP se termine
    .turnin 1063 >> Rendez la quête L'Ancienne
    .timer 6,L'Ancienne RP
    .accept 1064 >> Acceptez la quête L'aide des Réprouvés
    .target Magatha Grimtotem
step
    #xprate <2.1
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Rendez la quête L'aide des Réprouvés
    .accept 1065 >> Acceptez la quête Un voyage vers Moulin-de-Tarren << Rogue/Shaman
    .target Apothecary Zamah
step << !Shaman !Rogue
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .subzoneskip 378
step << Warlock
    #xprate <2.1
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Rendez la quête Breuvage de Ken'zigla
    .accept 1515 >>Acceptez la quête La captivité de Dogran
    .target Grunt Logmar
step << Warlock
    #xprate <2.1
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Rendez la quête La captivité de Dogran
    .accept 1512 >>Acceptez la quête Le cadeau de l'amour
    .target Grunt Dogran
step << Shaman/Rogue
    #label FlyOrgSR
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Shaman
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Achetez une|r [Jambiya] |cRXP_BUY_à Kareth si vous n'avez pas de dague|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Apprenez [Vol à la tire]
    .train 8676 >> Apprenez [Embuscade]
    .train 1943 >> Apprenez [Rupture]
    .train 1856 >> Apprenez [Disparition]
    .train 1725 >> Apprenez [Distraction]
    .train 1785 >> Apprenez [Camouflage Rang 2]
    .accept 2460 >>Acceptez la quête Le Salut brisé
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>Après que |cRXP_FRIENDLY_Shenthul|r ait fait son salut, écrivez /salut en le ciblant
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Rendez la quête Le Salut brisé
    .accept 2458 >>Acceptez la quête Sous le couvert de la nuit
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre éclipsante] |cRXP_BUY_à Rekkul|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Rogue
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> Entrez dans les Tarides par la sortie à l'ouest
    .zoneskip The Barrens
step << Rogue
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> Voyagez vers la Videfange
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+Ciblez |cRXP_FRIENDLY_Taskmaster Fizzule|r, puis utilisez votre [Lance-fusée] DEUX FOIS et écrivez /salut
    >>Faites attention ! Ne l'approchez PAS avant qu'il ne devienne amical ou il vous attaquera !
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    #label MissionProbable
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Rendez la quête Sous le couvert de la nuit
    .accept 2478 >>Acceptez la quête Mission : Possible mais non probable
    .target Taskmaster Fizzule
step << Rogue
    .goto 1413/1,-2930.15,1209.15
    >>Utilisez [Vol à la tire] sur |cRXP_ENEMY_Foreman Silixiz|r pour sa |cRXP_LOOT_Tower Key|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +Chaque ennemi ici prendra des dégâts augmentés contre certaines compétences
    >>Utilisez [Embuscade] sur les |cRXP_ENEMY_Mutated Venture Co. Drones|r
    >>Utilisez [Rupture] sur les |cRXP_ENEMY_Venture Co. Patrollers|r
    >>Utilisez [Eviscération] sur les |cRXP_ENEMY_Venture Co. Lookouts|r une fois (1 point de combo)
step << Rogue
    #label roguetowerq
    .goto 1413/1,-2922.04,1224.69
    >>Entrez dans la Tour des Voleurs et tuez les |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r et les |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Au sommet de la tour vous trouverez |cRXP_ENEMY_Gallywix|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Utilisez [Embuscade] pour réduire ses PV de moitié. Utilisez [Suriner] pour récupérer votre énergie et utiliser [Évasion]
	>>Rappelez-vous d'utiliser une potion et un [Thé aux chardons] si nécessaire
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Utilisez votre vol à la tire et ouvrez la |cRXP_PICK_Gallywix's Lockbox|r et récupérez la |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>Voyagez vers la Mine des Pierriers
step << skip --Rogue
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Sautez sur la poutre en bois. Effectuez un Logout skip en vous déconnectant et en vous reconnectant. Allez en direction d'Orgrimmar si vous n'y arrivez pas|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .zoneskip Orgrimmar
step << Rogue
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Rogue
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue
    #hardcore
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
    .isQuestComplete 2478
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Rendez la quête Mission : Possible mais non probable
    .accept 2479 >>Acceptez la quête L'aide d'Hinott
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre de délabrement] |cRXP_BUY_et des|r [Fioles vides] |cRXP_BUY_à Rekkul|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Rogue
    >>Si vous avez un [Anti-Venin], utilisez-le pour vous guérir du [Toucher de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> Détruisez le [Lance-fusée] de vos sacs, il n'est plus utile
    .destroy 8066 >> Détruisez le [Sifflet de Fizzule] de vos sacs, il n'est plus nécessaire
step
    #optional
    .abandon 6421 >>Abandonnez la quête Le ravin des Éboulis
step
    #optional
    .abandon 4021 >>Abandonnez la quête La contre-attaque !
step
    #optional
    .abandon 6481 >>Abandonnez la quête Un Terrestre se lève
step
    #optional
    .abandon 6284 >>Abandonnez la quête Arachnophobie
step
    #optional
    .abandon 6641 >>Abandonnez la quête Vorsha la Flagellante
step
    #optional
    .abandon 6563 >>Abandonnez la quête L'Essence d'Aku'Mai
]])
