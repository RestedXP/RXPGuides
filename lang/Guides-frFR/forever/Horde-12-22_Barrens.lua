if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 12-17 Les Tarides
#displayname 14-18 Les Tarides << !Shaman !Hunter !Tauren
#displayname 15-18 Tarides << Paladin
#version 11
#group Guide RestedXP Éternel (H)
#subgroup Guide Speedrun 1-22
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
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Montez au sommet de la montagne
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Rendez la quête Thun'grim Mirefeu
    .accept 1503 >>Acceptez la quête Acier forgé
    .target Thun'grim Firegaze
step << Tauren Warrior
    .goto 1413/1,-2955.48,-188.04
    >>Ouvrez le |cRXP_PICK_Stolen Iron Chest|r pour les |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Montez au sommet de la montagne
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Rendez la quête Acier forgé
    .target Thun'grim Firegaze
step << skip --!Tauren
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .xp >15,1
step << skip --!Tauren
    #softcore
    #completewith ThievesPickup
    .subzone 380 >> Voyagez à la Croisée
    .xp <15,1
step << !Tauren
    --#hardcore
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
    .turnin 98024 >>Rendez la quête Un voyage à la Croisée << Skyborne
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
    .maxlevel 15
step << Skyborne
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .turnin 98024 >>Rendez la quête Un voyage à la Croisée
    .target Thork
    .maxlevel 15
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Undead/Skyborne
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fp >> Prenez le chemin de vol de la Croisée
    .target Devrak
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .accept 848 >>Acceptez la quête Spores fongiques
    .turnin 1358 >>Rendez la quête Un échantillon pour Helbrim
    .target Apothecary Helbrim
    .isOnQuest 1358
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .accept 848 >>Acceptez la quête Spores fongiques
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter/Skyborne Hunter
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
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #optional
    #completewith DisruptTheAttacks
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead !Skyborne
    #completewith DemonSeed
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Montez au sommet de la montagne
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Entrez dans le repaire des Brume-funeste
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Cliquez sur l'|cRXP_PICK_Altar|r
    >>Vérifiez que vous ayez une [Pierre de puissance imparfaite] (30 minutes de durée) sur vous
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
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
    .isOnQuest 871
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>|cRXP_WARN_Vous pourrez le récupérer plus tard s'il n'est pas là|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .isOnQuest 871
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
    .isOnQuest 871
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
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée << Tauren Shaman
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target Sergra Darkthorn
    .isOnQuest 842 << Tauren Shaman
step << Tauren Shaman
    #optional
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
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
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter/Skyborne Hunter
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
step << Orc Warrior/Troll Warrior/Tauren Warrior/Skyborne Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Vérifiez si|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_est à la Croisée. Il vend des potions et la|r |T133476:0|t[|cRXP_FRIENDLY_Lourde masse à pointes|r] |cRXP_WARN_qui est un objet en stock limité|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .vendor >>Refaites un stock de nourriture et de boisson << !Rogue !Warrior
    .vendor >>Refaites un stock de nourriture << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isOnQuest 872,5041,845
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas là
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
    .isOnQuest 872
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
    #optional
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
    .isOnQuest 872
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
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
step << !Tauren !Undead !Skyborne
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Rendez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestComplete 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Voyagez vers Durotar
    .isOnQuest 1525
step << Orc Shaman/Troll Shaman/Tauren Shaman
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
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Cliquez sur le |cRXP_PICK_Brazier|r sur le sol
    .turnin 1526 >>Rendez la quête L'appel du feu
    .accept 1527 >>Acceptez la quête L'appel du feu
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith FireEnd
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas là
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    #completewith RatchetEnter
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Tuez les |cRXP_ENEMY_Zhevra Runners|r. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isOnQuest 872
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Zhevra Runners|r. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isNotOnQuest 872
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Voyagez jusqu'à Ratchet
    .isOnQuest 845
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .accept 97253 >>Acceptez la quête Foire à la ferraille
    .target Wrenix the Wretched
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
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +Équipez l'[Espadon] lorsque vous passez au niveau 16
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
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
    .isOnQuest 819
step
    #optional
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drohn|r
    .accept 821 >>Acceptez la quête Tonneau vide de Chen
    .target Brewmaster Drohn
    .isQuestTurnedIn 819
step << Mage/Priest/Warlock/Shaman/Druid
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    --.collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
    .xp <15,1
step
    #optional
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
    >>|cRXP_WARN_Il apparaît au premier camp et patrouille en haut de la colline|r
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
step
    #label SouthSea
    #loop
    .goto 1413/1,-3657.700,-1435.500,0
    .goto 1413/1,-3675.100,-1364.100,40,0
    .goto 1413/1,-3598.900,-1378.800,40,0
    .goto 1413/1,-3657.700,-1435.500,40,0
    .goto 1413/1,-3654.900,-1482.400,40,0
    .goto 1413/1,-3680.100,-1593.000,40,0
    .goto 1413/1,-3614.800,-1632.800,40,0
    .goto 1413/1,-3611.500,-1692.500,40,0
    >>Ramassez les |cRXP_PICK_Poignées de pièces complexes|r par terre
    .complete 97253,1 --|5/5 Handful of Complicated Parts
    .isOnQuest 97253
step << Orc Rogue/Troll Rogue
    #loop
    .goto 1413/1,-3895.600,-1365.000,0
    .goto 1413/1,-3677.99,-1392.00,50,0
    .goto 1413/1,-3895.600,-1365.000,50,0
    .goto 1413/1,-3826.300,-1487.300,50,0
	>>Tuez |cRXP_ENEMY_Tazan|r. Dépouillez-le pour sa |cRXP_LOOT_Sacoche|r
    >>|cRXP_WARN_Il apparaît au premier camp et patrouille en haut de la colline|r
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
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 97253 >>Rendez la quête Foire à la ferraille
    .target Wrenix the Wretched
    .isQuestComplete 97253
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
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez l'[Espadon] lorsque vous passez au niveau 16
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
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
step << !Tauren
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #optional
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
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren Druid
    #completewith DruidTraining1
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 782 >> Apprenez vos sorts de classe
    .target Loganaar
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <14,1
    .xp >16,1
step << Tauren Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Apprenez vos sorts de classe
    .target Loganaar
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <16,1
step << Tauren
    #completewith FlyXroads2
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Rendez la quête Voyage vers les Pitons-du-Tonnerre
    .accept 6363 >>Acceptez la quête Tal, le maître des coursiers du vent
    .target Ahanu
step << Tauren Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <14,1
    .xp >16,1
step << Tauren Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <16,1
step << Tauren Hunter/Tauren Warrior
    #completewith HunterTraining1 << Tauren Hunter
    #completewith WarriorTraining1 << Tauren Warrior
    .goto 1456/1,-123.26,-1394.49,60 >> Voyagez au sommet du chasseur
step << Tauren Hunter
    #label HunterTraining1
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 13795 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <16,1
step << Tauren Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24556 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
step << Tauren Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 1160 >>Apprenez vos sorts de classe
    .target Torm Ragetotem
    .xp <14,1
    .xp >16,1
step << Tauren Warrior
    #label WarriorTraining1
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 285 >>Apprenez vos sorts de classe
    .target Torm Ragetotem
    .xp <16,1
step << Tauren
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Rendez la quête Tal, le maître des coursiers du vent
    .accept 6364 >>Acceptez la quête Retourner vers Jahan
    .target Tal
step << Tauren
    #label FlyXroads2
    #completewith HidesTurnIn
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip The Barrens
step << Tauren
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 903,850,867,901
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Rendez la quête Ravitaillement pour la Croisée
    .turnin 872 >>Rendez la quête La perturbation cesse
    .target Thork
    .isQuestTurnedIn 871
step
    #label XroadsTurnins3
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Rendez la quête Les zhévras
    .accept 903 >>Acceptez la quête Les rôdeurs des Tarides
    .target Sergra Darkthorn
step << Tauren
    #label HidesTurnIn
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Rendez la quête Retourner vers Jahan
    .target Jahan Hawkwing
    .isOnQuest 6364
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèches pointues] |cRXP_BUY_à Kayren|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Balle lourde] |cRXP_BUY_à Barg|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/Skyborne Hunter
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
    .isQuestTurnedIn 819
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .accept 855 >>Acceptez la quête Les bracelets de centaures
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
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
step
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #completewith HarpyTalons
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #completewith HarpyTalons
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Prowler
    .isQuestTurnedIn 819
step
    #optional
    #completewith HarpyTalons
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Claws|r
    .complete 903,1 --Prowler Claws (7)
    .mob Savannah Prowler
    .isQuestAvailable 819
step
    #label HarpyTalons
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
step
    #completewith Samophlange
    +Faites attention aux |cRXP_ENEMY_Sunscale Scytheclaws|r dans la zone. Ils vont jusqu'au niveau 18 et peuvent utiliser [Rosser]
    .xp >17,1
step
    #optional
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step
    .goto 1413/1,-1812.500,790.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang|r
    .accept 95494 >>Acceptez la quête Fierté meurtrie et peaux de lion
    .accept 95507 >>Acceptez la quête Le gibier de Vrang
    .target Vrang Fauvétripe
step
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r vend [|cRXP_FRIENDLY_Heavy Spiked Mace|r] qui est un objet en stock limité << Tauren Warrior/Tauren Shaman/Druid
	.vendor	>> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Vrang Fauvétripe
    .isQuestAvailable 95494,95507
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Pièges déclenchés|r au sol
    .complete 95507,1 --|8/8 Trapped Game
step
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Patriarchs|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Hides|r et leurs |cRXP_LOOT_Défenses|r
    >>|cRXP_WARN_Si les |cRXP_ENEMY_Savannah Patriarchs|r sont fortement contestées, envisagez de sauter cette quête pour le moment; elle pourra être complétée plus tard|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Patriarch
    .isQuestTurnedIn 819
step
    #optional
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Patriarchs|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_Si les |cRXP_ENEMY_Savannah Patriarchs|r sont fortement contestées, envisagez de sauter cette quête pour le moment; elle pourra être complétée plus tard|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Patriarch
    .isQuestAvailable 819
step
    #loop
    .goto 1413/1,-1960.600,653.700,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Ramassez les |cRXP_PICK_Pièges déclenchés|r au sol
    .complete 95507,1 --|8/8 Trapped Game
step
    .goto 1413/1,-1812.600,789.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang Wildgore|r
    .turnin 95494 >>Rendez la quête Fierté meurtrie et peaux de lion
    .turnin 95507 >>Rendez la quête Le gibier de Vrang
    .accept 95495 >>Acceptez la quête L’ermite tanneur
    .target Vrang Fauvétripe
    .isQuestComplete 95494
step
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Montez la montagne
step
    .goto 1413/1,-1635.400,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walton|r
    .turnin 95495 >>Rendez la quête L’ermite tanneur
    .accept 95621 >>Acceptez la quête Des problèmes dans la vallée
    .target Walton
    .isQuestTurnedIn 95494
step
    .goto 1413/1,-1611.500,549.000
    >>Tuez le |cRXP_ENEMY_Caporal Adamore|r
    >>|cRXP_WARN_Attention ! Vous pourriez aggro 2-3 ennemis à la fois|r
    .complete 95621,1 --|1/1 Learn why the Kul Tirans are here
    .mob Corporal Adamore
    .isQuestTurnedIn 95494
step
    #completewith next
    .goto 1413/1,-1736.900,650.300,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Montez la montagne
step
    .goto 1413/1,-1635.500,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walton|r
    .turnin 95621 >>Rendez la quête Des problèmes dans la vallée
    .accept 95508 >>Acceptez la quête Des invités indésirables
    .timer 67,RP de Des invités indésirables
    .target Walton
    .isQuestTurnedIn 95494
step
    .goto 1413/1,-1629.200,835.600
    >>Allez derrière la maison en attendant la fin du RP afin d'afin d'éviter d'engager tous les mobs en même temps
    >>|cRXP_WARN_Vous n'avez pas besoin d'aider |cRXP_FRIENDLY_Walton|r, il survivra avec l'aide de|r |cRXP_FRIENDLY_Vrang Wildgore|r
    .complete 95508,1 --|1/1 Assist Walton
    .mob Terry Longdrink
    .isQuestTurnedIn 95494
step
    .goto 1413/1,-1635.400,838.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walton|r
    .turnin 95508 >>Rendez la quête Des invités indésirables
    .target Walton
    .isQuestTurnedIn 95494
step
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 894 >>Rendez la quête Samophlange
    .accept 900 >>Acceptez la quête Samophlange
step
    .goto 1413/1,-2686.95,842.290
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Faites attention ! Deux ennemis vont apparaître une fois que vous aurez fermé la valve
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto 1413/1,-2675.80,842.290
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Un ennemi va apparaître une fois que vous aurez fermer la valve
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto 1413/1,-2679.86,830.80
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
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
    .isQuestTurnedIn 819
step
    #completewith RaptorHeadsComplete
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
    .isQuestTurnedIn 819
step
    #optional
    #completewith RaptorHeadsComplete
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Claws|r
    .complete 903,1 --Prowler Claws (7)
    .mob Savannah Prowler
    .isQuestAvailable 819
step
    #label RaptorHeadsComplete
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2783.900,568.700,0
    .goto 1413/1,-2783.900,568.700,50,0
    .goto 1413/1,-2859.800,565.900,50,0
    .goto 1413/1,-3023.000,530.700,50,0
    .goto 1413/1,-2897.500,642.200,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
    .isQuestTurnedIn 819
step
    #optional
    #loop
    .goto 1413/1,-2783.900,568.700,0
    .goto 1413/1,-2783.900,568.700,50,0
    .goto 1413/1,-2859.800,565.900,50,0
    .goto 1413/1,-3023.000,530.700,50,0
    .goto 1413/1,-2897.500,642.200,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Claws|r
    .complete 903,1 --Prowler Claws (7)
    .mob Savannah Prowler
    .isQuestAvailable 819
step
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>Tuer des mobs jusqu'au niveau 16 est important pour la suite, car les 3 quêtes à venir sont assez difficiles
	.xp 16
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
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
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
    .skill firstaid,40 >> Créez des [Bandages en lin] jusqu'à ce que votre compétence en [Premiers soins] soit de 40 ou plus
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
    .skill firstaid,50 >> Créez des [Bandages épais en lin] jusqu'à ce que votre compétence en [Premiers soins] soit de 50 ou plus
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous avez pas assez d'[Étoffe de lin] pour monter votre compétence à 50
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Arnok
    .skill firstaid,<40,1
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
step << Orc/Troll
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
    .isOnQuest 6385
step << Orc/Troll
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
step << Warrior !Skyborne
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
    .money <0.020
step << Warrior/Paladin/Shaman !Skyborne
    #optional
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .target Hanashi
    .money <0.010
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
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
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
    .train 1804 >> Montez le niveau de votre [Crochetage]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez un [Grimoire d’Éclair de feu(Rang 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
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
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .accept 875 >>Acceptez la quête Lieutenants harpies
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acceptez la quête Consumé par la haine
    .accept 4921 >>Acceptez la quête Disparition au combat
    .target Mankrik
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
step << Orc/Troll
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Rendez la quête Retour à la Croisée
    .target Zargh
    .isOnQuest 6386
step
    .goto 1413/1,-2711.800,-350.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gur'ak|r
    .accept 97003 >>Acceptez la quête Chol’aruk le Vorace
    .target Gur'ak
step
    #completewith RapHornsPickup
    .goto 1413/1,-3262.600,-99.400,0
    +|cRXP_WARN_En continuant à faire vos quêtes dans les Tarides, essayez à un moment de trouver un groupe de 5 joueurs pour "Chol’aruk le Vorace"|r
    >>|cRXP_WARN_Terminer cette quête vous donnera 4100xp. L'entrée de la grotte où il se situe est marquée sur votre carte (dans la zone |cRXP_ENEMY_Tranchecrin|r)|r
    .isOnQuest 97003
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
    #optional
    #completewith RapHornsPickup
    .destroy 10327 >>Détruisez la [Corne d'Echeyakee] comme vous n'en avez plus besoin
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèches pointues] |cRXP_BUY_à Kayren|r
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
    .goto 1413/1,-3767.800,-842.900
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
step << skip
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Innkeeper Wiley|r
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    --.collect 4592,20,888,1 --Longjaw Mud Snapper (20)
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
step
    #optional
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
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
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #optional
    #completewith Verog
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Cliquez sur la |cRXP_PICK_Fissure bouillonnante|r sous l'eau
    .complete 877,1 --Test the Dried Seeds (1)
step
    #optional
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
    #label Verog
    .goto 1413/1,-2742.68,-1208.23
    >>Tuez |cRXP_ENEMY_Verog|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Il a une chance d'apparaître à chaque fois qu'un |cRXP_ENEMY_Kolkar|r meurt|r
    >>Sur un serveur à la population élevée ou qui vient de démarrer, votre meilleure option est de camper l'endroit où il apparaît
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
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
    .isQuestTurnedIn 819
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
    #completewith CampTArrive
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
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
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à le trouver ou le tuer. Vous pourrez revenir ultérieurement|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
    .xp <18,1
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
    .accept 95774 >>Acceptez la quête Son nom est Olgra
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
    #optional
    #completewith Hezrul
    .destroy 5165 >>|cRXP_WARN_Détruisez toutes les|r |T132914:0|t[Plumes solécailles] |cRXP_WARN_qu'il vous reste|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez un|r [Carquois moyen] |cRXP_BUY_à Uthrok|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
step
    #completewith Hezrul
    .subzone 387 >> Voyagez jusqu'à l'Oasis luxuriante
    .isQuestTurnedIn 851
step
    #optional
    #completewith Hezrul
    >>Tuez les |cRXP_ENEMY_Gueules d'acier des oasis|r en cherchant |cRXP_ENEMY_Hezrul Marque-de-sang|r. Dépouillez-les pour leur |cRXP_LOOT_Carapaces|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
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
step
    #optional
    #completewith CounterattackComplete
    .abandon 855 >> Abandonnez Les bracelets de centaures comme vous n'en avez pas récupéré assez avant pour qu'elle soit rentable à finir
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith CounterattackComplete
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le |cRXP_ENEMY_Chef de guerre Krom'zar|r autour du bâtiment où se situe le donneur de quête|r
    >>|cRXP_WARN_Passez cette quête si vous n'arrivez pas à la terminer. Vous aurez une autre occasion de la finir à un niveau plus élevé|r
    .isQuestTurnedIn 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto 1413/1,-1884.39,-289.38
    >>Tuez le |cRXP_ENEMY_Chef de guerre Krom'zar|r (élite de niveau 20) lorsqu'il apparaît. Récupérez la |cRXP_PICK_Bannière|r qu'il laissera sur le sol
    >>|cRXP_WARN_Soyez prudent ! Il est fort et protégé par au moins deux|r |cRXP_ENEMY_mobs|r |cRXP_WARN_Kolkars|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #optional
    #completewith StonetalonPickups
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step
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
#disabledungeons
<< Horde
#name 17-22 Serres-Rocheuses/Tarides/Orneval
#displayname 18-22 Serres-Rocheuses/Tarides/Orneval << !Shaman !Hunter !Tauren
#version 11
#group Guide RestedXP Éternel (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#next 22-24 Hillsbrad


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
    >>Tuez les |cRXP_ENEMY_Forbans du Totem sinistre|r et les |cRXP_ENEMY_Mercenaires du Totem sinistre|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au second étage de l'auberge
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
step << Undead Warrior/Skyborne Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Achetez l'|r |T135329:0|t[Epée d'exécuteur] |cRXP_BUY_à Veenix|r
    >>|cRXP_WARN_Si elle n'est pas disponible, achetez un|r |T135280:0|t[Faux dace] |cRXP_WARN_à la place|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BluePrints
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <19,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BluePrints
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Shaman
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez un|r |T135157:0|t[Bâton long] |cRXP_BUY_à Veenix|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
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
    >>Tuez les |cRXP_ENEMY_Pillards tranchecrins|r. Dépouillez-les pour leur |cRXP_LOOT_Parure d’Olgra|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
	#completewith Adornments
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #completewith Adornments
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
    #label Adornments
    #loop
    .goto 1413/1,-2241.200,-1988.500,0
    .goto 1413/1,-2241.200,-1988.500,50,0
    .goto 1413/1,-2346.200,-1788.600,50,0
    .goto 1413/1,-2458.300,-1824.400,50,0
    .goto 1413/1,-2381.000,-2061.000,50,0
    >>Tuez les |cRXP_ENEMY_Pillards tranchecrins|r. Dépouillez-les pour leur |cRXP_LOOT_Parure d’Olgra|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
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
    .xp 19+9500 >> Montez votre expérience jusqu'à 9500+/21300xp
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
    .isQuestTurnedIn 819
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
    .goto 1413/1,-2932.18,-1698.06,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Finissez de tuer les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .isQuestTurnedIn 819
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
step
    #completewith IshamuhalesFang
    >>Tuez les |cRXP_ENEMY_Savannah Matriarchs|r et les |cRXP_ENEMY_Savannah Patriarchs|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Hides|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Matriarch
    .mob Savannah Patriarch
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
    #loop
    .goto 1413/1,-3633.200,-600.500,0
    .goto 1413/1,-3633.200,-600.500,50,0
    .goto 1413/1,-3469.100,-495.000,50,0
    .goto 1413/1,-3428.300,-584.300,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Matriarchs|r et les |cRXP_ENEMY_Savannah Patriarchs|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Hides|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Matriarch
    .mob Savannah Patriarch
step
    #completewith BootyTurnin
    .subzone 392 >> Voyagez jusqu'à Ratchet
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Rendez la quête Piller les pilleurs << Rogue
    .target Wrenix the Wretched
step << Rogue
    #optional
    .goto 1413/1,-3767.800,-842.900
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
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    .accept 1095 >>Acceptez la quête D'autres instructions
    .target Sputtervalve
step
    .goto 1413/1,-3720.300,-920.000
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 92706 >>Acceptez la quête ON RECHERCHE : Bruuz
    .group << Rogue/Warrior
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .target Mebok Mizzyrix
step
    #optional
    #completewith XroadsHS2
    .destroy 5570 >>|cRXP_WARN_Suppr. tout|r |T132834:0|t[Oeufs des mousses profondes] |cRXP_WARN_que vous avez laissées|r
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drohn|r
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target Brewmaster Drohn
    .isQuestComplete 821
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
    #loop
    .goto 1413/1,-3911.900,-1049.200
    .goto 1413/1,-3951.600,-1093.500
    .goto 1413/1,-4012.800,-1081.800
    .goto 1413/1,-3973.000,-1028.700
    >>Tuez |cRXP_PICK_Bruuz|r (élite de niveau 20) dans la mer près de Cabestan
    >>|cRXP_WARN_Cette étape est difficile ! Trouvez un groupe si possible|r << !Rogue !Warrior
    >>|cRXP_WARN_Essayez de le kiter vers Cabestan aux gardes qui aideront, mais assurez-vous de causer au moins 50% de dégâts!|r
    .complete 92706,1 --Kill Bruuz
    .mob Bruuz
    .isOnQuest 92706
    .group << Rogue/Warrior
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 92706 >>Rendez la quête ON RECHERCHE : Bruuz
    .target Gazlowe
    .group << Rogue/Warrior
    .isQuestComplete 92706
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
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .turnin 875 >>Rendez la quête Lieutenants harpies
    .accept 876 >>Acceptez la quête Serena Plumesang
    .target Darsok Swiftdagger
    .isQuestComplete 875
step
    #optional
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
    .turnin 95774 >>Rendez la quête Son nom est Olgra
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Rendez la quête Source de vie
    .accept 1489 >>Acceptez la quête Hamuul Totem-runique
    .accept 3301 >>Acceptez la quête Mura Runetotem
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>Détruisez tous vos restes de [Défense de huran Dos-hirsute]
    .itemcount 5085,1
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
    .goto 1413/1,-2515.7,-2076.41
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
    #completewith SleepingBag1
    >>Tuez les |cRXP_ENEMY_Thunder Lizards|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #completewith LizardBlood
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #label SleepingBag1
    .goto The Barrens,46.361,73.904
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .accept 79007 >> Acceptez la quête … et cette note que vous avez trouvée
step
    #label LizardBlood
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
step
    #optional
    .xp 20 >>Montez jusqu'au niveau 20
step << !Tauren !Skyborne
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>Si il vous reste 10 [|cRXP_LOOT_Blood Shards|r, utilisez les pour obtenir [L'esprit du vent] à |cRXP_FRIENDLY_Mangletooth|r
    >>Passez cette étape si vous pouvez voler jusqu'à Pitons-du-Tonnerre
    .itemcount 5075,10
    .target Mangletooth
    .train 2645,1 << Shaman --skip if ghost wolf trained
    .train 5118,1 << Hunter --skip if cheetah trained
step << !Tauren !Skyborne
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Voyagez jusqu'à Mulgore
step << !Tauren !Skyborne
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Prenez l'ascenseur pour aller à Thunder Bluff
    >>Si vous avez le vol pour Thunder Bluff, volez-y
step << Tauren/Skyborne
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior/Troll Shaman/Orc Shaman
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
step << Rogue !Skyborne
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Acheter la compétence pour porter des masses à une main
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Kuruk|r
    .collect 3137,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step << Rogue
    #optional
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .train 6761 >>Apprenez vos sorts de classe
    .target Boarton Shadetotem
    .xp <16,1
    .xp >20,1
step << Rogue
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .train 1943 >>Apprenez vos sorts de classe
    .target Boarton Shadetotem
    .xp <20,1
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
    .isNotOnQuest 868
step
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
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
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodan|r
    .train 1866 >>Apprenez vos sorts de classe
    .target Alodan the Hopeful
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodan|r
    .train 1026 >>Apprenez vos sorts de classe
    .target Alodan the Hopeful
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r |cRXP_WARN_à l'extérieur|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r |cRXP_WARN_à l'extérieur|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >> Fabriquez des  [Bandages épais en lin] jusqu'à ce que votre compétence en [Premiers soins] soit de 80 ou plus
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
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .trainer >>Apprenez vos sorts de classe
    .accept 27 >>Acceptez la quête Une leçon à apprendre
    .accept 98340 >>Acceptez la quête Esprit du Grand félin
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >>Rendez la quête Une leçon à apprendre
    .accept 28 >>Acceptez la quête L'épreuve du lac
    .turnin 98340 >>Rendez la quête Esprit du Grand félin
    .accept 98341 >>Acceptez la quête The Great Windborne Chat Esprit << Skyborne
    .accept 98405 >>Acceptez la quête Esprit du Grand félin << !Skyborne
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
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Esprit du Grand félin|r
    .turnin 98405 >>Rendez la quête Esprit du Grand félin
    .accept 98342 >>Acceptez la quête Esprit du Grand félin
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Rendez la quête The Great Windborne Chat Esprit
    .accept 98404 >>Acceptez la quête The Great Windborne Chat Esprit
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Rendez-vous au Refuge des saisons de Malfurion
step << Druid
    >>Allez profondément dans la grotte, traversez le pont, cherchez une statue de chat dans une alcôve et cliquez sur le petit orbe à côté de la statue
    >>Pillez |cRXP_LOOT_Relic of the Griffe|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98342,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Cliquez sur le petit orbe à côté de la statue de chat
    >>Pillez |cRXP_LOOT_Relic of the Silent (Ombre)|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98342,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Cliquez sur le petit orbe à côté de la statue de chat
    >>Pillez |cRXP_LOOT_Relic of the Crok|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98342,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Esprit du Grand félin|r
    .turnin 98342 >>Rendez la quête Esprit du Grand félin
    .accept 98739 >>Acceptez la quête Blessings of the Esprit du Grand f??lin
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Rendez la quête The Great Windborne Chat Esprit
    .accept 98738 >>Acceptez la quête Blessings of the Great Windborne Chat Esprit
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .turnin 98738 >>Rendez la quête Blessings of the Great Windborne Chat Esprit << Skyborne
    .turnin 98739 >>Rendez la quête Blessings of the Esprit du Grand f??lin << !Skyborne
    .accept 98362 >>Acceptez la quête Les Pitons-du-Tonnerre
    .target Dendrite Starblaze::11802
step << Druid
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .turnin 98362 >>Rendez la quête Les Pitons-du-Tonnerre
    .target Turak Runetotem
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
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu Totem-de-rage|r|cRXP_BUY_. Achetez-lui un|r |T135157:0|t[Bâton long] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Équipez le|r |T135157:0|t[Bâton long]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <21,1
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
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_à Kuna|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Corne-Tonnerre
step
    #completewith EnterSTM2
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip The Barrens
    .zoneskip Stonetalon Mountains
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
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
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Serena
    .goto 1413/1,-1345.3,790.94
    >>Tuez |cRXP_ENEMY_Serena Bloodfeather|r. Dépouillez-la pour sa |cRXP_LOOT_Tête|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Pièges déclenchés|r au sol
    .complete 95507,1 --|8/8 Trapped Game
step
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Patriarchs|r. Pillez-les pour obtenir leurs |cRXP_LOOT_Hides|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Patriarch
step
    #loop
    .goto 1413/1,-1960.600,653.700,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Ramassez les |cRXP_PICK_Pièges déclenchés|r au sol
    .complete 95507,1 --|8/8 Trapped Game
step
    .goto 1413/1,-1812.600,789.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang Wildgore|r
    .turnin 95494 >>Rendez la quête Fierté meurtrie et peaux de lion
    .turnin 95507 >>Rendez la quête Le gibier de Vrang
    .accept 95495 >>Acceptez la quête L’ermite tanneur
    .target Vrang Fauvétripe
    .isQuestComplete 95494
step
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Montez la montagne
step
    .goto 1413/1,-1635.400,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walton|r
    .turnin 95495 >>Rendez la quête L’ermite tanneur
    .accept 95621 >>Acceptez la quête Des problèmes dans la vallée
    .target Walton
    .isQuestTurnedIn 95494
step
    .goto 1413/1,-1611.500,549.000
    >>Tuez le |cRXP_ENEMY_Caporal Adamore|r
    >>|cRXP_WARN_Attention ! Vous pourriez aggro 2-3 ennemis à la fois|r
    .complete 95621,1 --|1/1 Learn why the Kul Tirans are here
    .mob Corporal Adamore
    .isQuestTurnedIn 95494
step
    #completewith next
    .goto 1413/1,-1736.900,650.300,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Montez la montagne
step
    .goto 1413/1,-1635.500,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walton|r
    .turnin 95621 >>Rendez la quête Des problèmes dans la vallée
    .accept 95508 >>Acceptez la quête Des invités indésirables
    .timer 67,RP de Des invités indésirables
    .target Walton
    .isQuestTurnedIn 95494
step
    .goto 1413/1,-1629.200,835.600
    >>Allez derrière la maison en attendant la fin du RP afin d'afin d'éviter d'engager tous les mobs en même temps
    >>|cRXP_WARN_Vous n'avez pas besoin d'aider |cRXP_FRIENDLY_Walton|r, il survivra avec l'aide de|r |cRXP_FRIENDLY_Vrang Wildgore|r
    .complete 95508,1 --|1/1 Assist Walton
    .mob Terry Longdrink
    .isQuestTurnedIn 95494
step
    .goto 1413/1,-1635.400,838.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walton|r
    .turnin 95508 >>Rendez la quête Des invités indésirables
    .target Walton
    .isQuestTurnedIn 95494
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
    #optional
    .goto 1413/1,-2253.24,1246.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r
    .accept 3513 >>Acceptez la quête Le Parchemin runique
    .turnin 3513 >>Rendez la quête Le Parchemin runique
    .target Kadrak
    .itemcount 10621,1
step << Hunter
    .goto 1440/1,-2240.94,1778.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r pour commencer une escorte
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
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Hunter
    #hardcore
    #completewith next
    .subzone 380 >>Voyagez à la Croisée
step
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    .turnin 876 >> Rendez la quête Serena Plumesang
    .accept 1060 >> Acceptez la quête Lettre à Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
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
    #completewith next
    .goto 1442/1,834.44,908.21,30,0
    .goto 1442/1,856.91,874.67,30,0
    .goto 1442/1,896.46,836.57,30,0
    .goto 1442/1,940.41,831.04,30 >> Montez le chemin à droite
step
    #label Tsunaman1
    .goto 1442/1,933.09,824.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acceptez la quête Problèmes dans les profondeurs
    .accept 6393 >>Acceptez la quête Guerre élémentaire
    .target Tsunaman
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Rendez la quête Arachnophobie
    .target Maggran Earthbinder
    .isQuestComplete 6284
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au second étage de l'auberge
    .vendor 4083 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si elle en a en stock|r << !Warrior
    .vendor 4083 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_et des|r [Viétérule] |cRXP_BUY_si elle en a en stock|r << Warrior
    .target Jeeda
    .isOnQuest 1095
step
    #label KayaLives
    .goto 1442/1,928.20,1015.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Rendez la quête Kaya est en vie
    .accept 6301 >>Acceptez la quête Cycle de la renaissance
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Rendez la quête D'autres instructions
    .accept 1096 >>Acceptez la quête Gerenzo Wrenchwhistle
    .target Ziz Fizziks
step
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto 1442/1,265.54,1213.0,80,0
    .goto 1442/1,299.72,1233.84,80,0
    .goto 1442/1,332.44,1218.86,80,0
    .goto 1442/1,325.11,1174.25,80,0
    .goto 1442/1,267.98,1156.34,80,0
    .goto 1442/1,262.12,1136.15,80,0
    .goto 1442/1,238.68,1122.47,80,0
    .goto 1442/1,202.54,1089.58,80,0
    .goto 1442/1,169.82,1085.03,80,0
    .goto 1442/1,134.17,1067.12,80,0
    .goto 1442/1,102.43,1077.86,80,0
    .goto 1442/1,64.83,1059.95,80,0
    .goto 1442/1,35.53,1054.09,80,0
    .goto 1442/1,2.81,1083.07,80,0
    .goto 1442/1,-23.07,1085.03,80,0
    .goto 1442/1,-63.6,1094.14,80,0
    .goto 1442/1,-100.23,1091.86,80,0
    .goto 1442/1,-160.78,1070.37,80,0
    .goto 1442/1,-197.89,1086.0,80,0
    .goto 1442/1,-212.54,1117.59,80,0
    .goto 1442/1,332.44,1218.86,80,0
    .goto 1442/1,-202.900,1088.600
    >>Tuez |cRXP_ENEMY_XT:9|r
    >>|cRXP_WARN_Il patrouille du côté sud de la rivière|r
    >>|cRXP_WARN_Son point de réapparition est marqué sur votre carte|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
    .isQuestTurnedIn 1062
step << skip --better to do in stonetalon part 2
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto 1442/1,-34.79,1390.46,80,0
    .goto 1442/1,-3.05,1387.86,80,0
    .goto 1442/1,36.51,1448.42,80,0
    .goto 1442/1,133.69,1450.7,80,0
    .goto 1442/1,134.17,1421.4,80,0
    .goto 1442/1,148.34,1400.23,80,0
    .goto 1442/1,99.5,1414.56,80,0
    .goto 1442/1,85.34,1398.28,80,0
    .goto 1442/1,80.46,1362.78,80,0
    .goto 1442/1,66.3,1343.57,80,0
    .goto 1442/1,23.81,1331.85,80,0
    .goto 1442/1,11.11,1299.94,80,0
    .goto 1442/1,-8.91,1302.22,80,0
    .goto 1442/1,-20.14,1322.73,80,0
    .goto 1442/1,-94.85,1302.22,80,0
    .goto 1442/1,-145.64,1400.56,80,0
    .goto 1442/1,-183.24,1333.48,80,0
    .goto 1442/1,-218.89,1337.71,80,0
    .goto 1442/1,-241.35,1433.77,80,0
    .goto 1442/1,-233.54,1501.83,80,0
    .goto 1442/1,80.46,1378.74,80,0
    .goto 1442/1,80.46,1378.74,0
    >>Tuez |cRXP_ENEMY_XT:4|r
    >>|cRXP_WARN_Il patrouille du côté nord de la rivière|r
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
    .isQuestTurnedIn 1062
step
    #completewith next
    .goto 1442/1,-357.09,978.55
    .subzone 2160 >> Entrez dans la Mine des Cisailles
    .group
step
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Piznik|r
    >>|cRXP_WARN_Cette quête dure 5 minutes et fera apparaître 3 vagues de Kobolds à des intervalles définies :|r
    >>|cRXP_WARN_La première vague à 15 secondes (3 Kobolds), la deuxième vague à 2 minutes et 15 secondes (4 Kobolds, 2 lanceurs de sorts et 2 corps à corps), et la troisième vague à 3 minutes 20 secondes (4 Kobolds). L'objectif se complète après 5 minutes|r
    .accept 1090 >> Acceptez la quête Les ordres de Gerenzo
    .target Piznik
    .group 2
step
    .goto 1442/1,-258.93,956.73
    >>Protégez |cRXP_FRIENDLY_Piznik|r des |cRXP_ENEMY_Vermines des Cisailles|r qui arrivent
    >>|cRXP_WARN_La première vague à 15 secondes (3 Kobolds), la deuxième vague à 2 minutes et 15 secondes (4 Kobolds, 2 lanceurs de sorts et 2 corps à corps), et la troisième vague à 3 minutes 20 secondes (4 Kobolds). L'objectif se complète après 5 minutes|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 2
step
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >> Rendez la quête Les ordres de Gerenzo
    .accept 1092 >> Acceptez la quête Les ordres de Gerenzo
    .target Piznik
    .group
step << skip
    .goto 1442/1,-261.86,951.85
    .goto 1442/1,434.5,898.12,30 >>|cRXP_WARN_Sautez sur la roue en bois. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .group
step
    #completewith next
    .goto 1442/1,-577.33,1532.43,30 >> Entrez dans la Perce des Serres
step << skip
    .goto 1442/1,-606.63,1573.79
    .goto 1440/1,-629.73,2633.42,30 >>|cRXP_WARN_Sautez sur la pierre blanche à votre droite. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .zoneskip Ashenvale
step
    .goto 1440/1,-632.700,2311.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Va'xug Firefure|r
    .accept 98251 >>Acceptez la quête Jamais Coming Retour
    .target Va'xug Firefure
step
    #loop
    .goto 1440/1,-609.900,2140.100,0
    .goto 1440/1,-609.900,2140.100,50,0
    .goto 1440/1,-799.500,2222.000,50,0
    .goto 1440/1,-878.400,2168.400,50,0
    .goto 1440/1,-712.300,2023.900,50,0
    .goto 1440/1,-534.500,2045.100,50,0
    >>Tuez les |cRXP_ENEMY_Vieux ours d’Ashenvale|r et les |cRXP_ENEMY_Cerfs à corne noire|r
    >>|cRXP_WARN_Attention à |cRXP_ENEMY_Ursangous|r (niveau 25 puissant) qui patrouille dans la zone|r
    .complete 98251,2 --|6/6 Ashenvale Bear slain
    .mob +Ashenvale Bear
    .complete 98251,1 --|6/6 Shadowhorn Stag slain
    .mob +Shadowhorn Stag
step
    .goto 1440/1,-632.900,2312.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Va'xug Firefure|r
    .turnin 98251 >>Rendez la quête Jamais Coming Retour
    .accept 98252 >>Acceptez la quête A Ediv Chemin
    .target Va'xug Firefure
step
    .goto 1440/1,-545.200,2446.600
    >>|cRXP_WARN_Allez sur la route principale avec l' |cRXP_FRIENDLY_Oeil de Kilrogg|r qui vous suit|r
    .complete 98252,1 --|1/1 Eye of Kilrogg guided to the road
    .target Eye of Kilrogg
step
    .goto 1440/1,-545.500,2445.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Oeil de Kilrogg|r
    .turnin 98252 >>Rendez la quête A Ediv Chemin
    .target Eye of Kilrogg
    .isQuestComplete 98252
step
	#completewith ZoramFP
    .goto 1440/1,-268.74,2612.28,50,0
    .goto 1440/1,637.2,3406.79,50,0
    .goto 1440/1,1010.31,3355.28,80 >>Voyagez à l'Avant-poste de Zoram'gar
    >>Faites attention à éviter les gardes d'Astranaar sur la route. Suivez le point de repère pour rester en sécurité
    .unitscan Astranaar Sentinel
step
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
    #label ZoramFP
   .goto 1440/1,994.16,3373.730
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk, Zoram'gar|r
   .fp Zoram'gar Outpost >> Prenez le chemin de vol de l'Avant-poste de Zoram'gar
   .target Andruk
   .isQuestAvailable 6442
step
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
    #ah
    #completewith WrathtailHeads
    +|cRXP_WARN_Gardez tous les|r |T134332:0|t[Déchiqueteur Operating Manuel Pages] |cRXP_WARN_que vous pillez|r
step
   .goto 1440/1,1004.54,3341.83
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muglash|r
   >>Ceci va commencer une quête d'escorte. Faites attention car elle est difficile
   .accept 6641,1 >> Acceptez la quête Vorsha la Flagellante
   .target Muglash
step
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
   .goto 1440/1,1144.67,3610.89
   >>Cliquez sur le |cRXP_PICK_Brazier|r lorsque vous y arrivez
   >>Il y aura des vagues de |cRXP_ENEMY_Naga|r qui vont apparaître. Faites attention une fois que |cRXP_ENEMY_Vorsha|r arrive, il frappe très fort
   >>|cRXP_WARN_Vous pouvez laisser|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_générer de la menace avant de vous engager dans le combat|r
   .complete 6641,1 --Defeat Vorsha the Lasher
   .mob Vorsha the Lasher
step
    #label WrathtailHeads
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warsong Runner|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >> Rendez la quête Vorsha la Flagellante
    .target +Warsong Runner
    .goto 1440/1,995.31,3357.97
    .turnin 6442 >> Rendez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto 1440/1,1025.88,3331.450
step
    .goto 1440/1,1013.77,3345.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karang|r
    .accept 216 >> Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target Karang Amakkar
step
    #completewith JourneytoTM
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk, Zoram'gar|r
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
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step
    #label JourneytoTM
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Rendez la quête L'aide des Réprouvés
    .accept 1065 >> Acceptez la quête Un voyage vers Moulin-de-Tarren
    .target Apothecary Zamah
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodan|r
    .train 1866 >>Apprenez vos sorts de classe
    .target Alodan the Hopeful
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodan|r
    .train 1026 >>Apprenez vos sorts de classe
    .target Alodan the Hopeful
    .xp <22,1
step
    #ah
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 16645,16646,16647,16648,16649,16650,16651,16652,16653,16654,16655,16656 >>Déposez tous vos |T134332:0|t[Déchiqueteur Operating Manuel Pages]
    .target Chesmu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk, Zoram'gar|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Andruk
    .zoneskip Ashenvale,1
step << !Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk, Zoram'gar|r
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
step << Troll Warrior/Undead Warrior/Tauren Warrior/Undead Paladin
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
step << skip
    .goto 1454/1,-4746.58,2036.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nogg|r
    .accept 2841 >>Acceptez la quête Guerre des plates-formes
    .target Nogg
step
    .goto 1454/1,-4739.57,2036.84
    .gossipoption 95758 >>Parlez à |cRXP_FRIENDLY_Sovik|r
    .isNotOnQuest 2842
    .target Sovik
step
    .goto 1454/1,-4739.57,2036.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sovik|r
    -->>|cRXP_WARN_You are required to have Rig Wars in your quest log to accept this quest|r
    .accept 2842 >>Acceptez la quête L'ingénieur en chef Scooty
    .target Sovik
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Trak'gen|r
    .collect 3137,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>Si vous avez un [Anti-Venin], utilisez-le pour vous guérir du [Toucher de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    #optional
    .destroy 8051 >> Détruisez le [Lance-fusée] de vos sacs, il n'est plus nécessaire
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
