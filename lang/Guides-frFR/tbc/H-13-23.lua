if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 13-18 Les Tarides
#subgroup RestedXP Horde 1-30
#defaultfor Shaman
#next 18-23 Stonetalon/The Barrens

step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >> Entrez dans la Caverne des Terrevent
step << Tauren Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tuez les |cRXP_ENEMY_Cultists|r. Dépouillez-les pour un |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << !Tauren
    #completewith DemonMountain
    +La [Pierre de puissance imparfaite] a une durée de 30 minutes. Ne soyez pas ABS après avoir complété la quête [La Graine démoniaque]
    .isOnQuest 924
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Montez au sommet de la montagne
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Rendez la quête Thun'grim Mirefeu
    .accept 1503 >>Acceptez la quête Acier forgé
    .target Thun'grim Firegaze
step << Warrior
    .goto The Barrens,55.05,26.65
    >>Ouvrez le |cRXP_PICK_Stolen Iron Chest|r pour les |cRXP_LOOT_Forged Steel Bars|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Montez au sommet de la montagne
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Rendez la quête Acier forgé
    .target Thun'grim Firegaze
step << !Warrior !Shaman
    #hardcore
    #completewith Xroadspickups
    .subzone 380 >>Voyagez vers la Croisée
step << !Warrior !Shaman
    #softcore
    #completewith Xroadspickups
    .deathskip >>Mourez pour revenir à la Croisée
    .subzoneskip 380
step << !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << !Warrior !Shaman
    #optional
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step << !Warrior !Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target Gazrog
step << !Warrior !Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
step << !Warrior !Shaman
    #label Xroadspickups
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Acceptez la quête Spores fongiques
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .target Apothecary Helbrim
step
    #completewith PlainstriderBeaks
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #completewith DisruptTheAttacks
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >> Montez au sommet de la montagne
    .isOnQuest 924
step << !Tauren
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >> Entrez dans le repaire des Brume-funeste
    .isOnQuest 924
step << !Tauren
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Cliquez sur l'|cRXP_PICK_Altar|r
    >>Vérifiez que vous ayez une [Pierre de puissance imparfaite] (30 minutes de durée) sur vous
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
    #completewith DisruptTheAttacks
    >>Tuez un |cRXP_ENEMY_Razormane Water Seeker|r ou un |cRXP_ENEMY_Razormane Thornweaver|r. Dépouillez-les pour un |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Si il n'est pas présent, vous pourrez le trouver plus tard
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Acceptez la quête Tonneau vide de Chen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Tuez un |cRXP_ENEMY_Razormane Water Seeker|r ou un |cRXP_ENEMY_Razormane Thornweaver|r. Dépouillez-les pour un |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label PlainstriderBeaks
    .goto The Barrens,53.36,26.28,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Rendez la quête Retour à la Croisée
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée << Tauren Shaman
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 871 >>Rendez la quête Stopper les attaques des hurans
    .accept 872 >>Acceptez la quête La perturbation cesse
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est au sommet de la tour
    .accept 867 >>Acceptez la quête Les harpies pillardes
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .target Apothecary Helbrim
step << !Hunter !Rogue !Warlock !Mage !Priest
    #completewith next
    .goto The Barrens,52.5,30.7,0
    .vendor >>Vérifiez si|r |cRXP_FRIENDLY_Lizzarik|r est dans la Croisée
    >>Il vend des potions et [|cRXP_FRIENDLY_Heavy Spiked Mace|r] qui est un objet en stock limité
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Tauren
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 894
    .bindlocation 380
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il revienne si il n'est pas là
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    #completewith SupplyCrates
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #completewith next
    >>Ramassez le |cRXP_PICK_Crossroads' Supply Crates|r. Il a plusieurs endroits d'apparition
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Tuez |cRXP_ENEMY_Kreenig Snarlsnout|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #label SupplyCrates
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Ramassez le |cRXP_PICK_Crossroads' Supply Crates|r. Il a plusieurs endroits d'apparition
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,59.37,25.38,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Geomancers|r et les |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Zhevra|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren
    .goto The Barrens,62.34,20.07
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
    .goto Durotar,36.74,57.78
    .zone Durotar >> Voyagez vers Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Prenez le chemin pour monter la montagne et parlez à |cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
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
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Attendez qu'il réapparaisse si il n'est pas là
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Tuez les |cRXP_ENEMY_Zhevra Runners|r. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >> Voyagez jusqu'à Ratchet
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acceptez la quête Les flibustiers des Mers du sud
    .target Gazlowe
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol de Cabestan
    .target Bragok
    .isQuestAvailable 895
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Acceptez la quête Samophlange
    .target Sputtervalve
step
    .goto The Barrens,62.59,37.47
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 895 >>Acceptez la quête ON RECHERCHE : baron de Longrivage
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acceptez la quête Les cornes de raptors
    .target Mebok Mizzyrix
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T135353:0|t[Espadon] |cRXP_WARN_quand vous atteignez le niveau 16|r
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
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T135147:0|t[Bâton noueux] |cRXP_WARN_quand vous atteignez le niveau 15|r
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Hache ébarbée] |cRXP_BUY_à Ironzar|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez la|r |T132394:0|t[Hache barbue] |cRXP_WARN_quand vous atteignez le niveau 15|r
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +Équipez la [Hache ébarbée]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Marteau en pierre] |cRXP_BUY_à Ironzar|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T133046:0|t[Marteau en pierre] |cRXP_WARN_quand vous atteignez le niveau 16|r
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
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Équipez le|r |T135147:0|t[Bâton noueux] |cRXP_WARN_quand vous atteignez le niveau 15|r
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith BaronLongshore
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Rogue
    .goto The Barrens,62.24,37.48
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
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une deuxième|r [Cimeterre] |cRXP_BUY_à Ironzar pour votre main gauche|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Rendez la quête Tonneau vide de Chen
    .accept 821 >>Acceptez la quête Tonneau vide de Chen
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_à Drohn|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|tLes [Lutjan à longue mâchoire] sont très abordables, achetez-en autant que vous le voulez
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >> Détruisez le [Manuel de la console de contrôle] de vos sacs, vous n'en avez plus besoin
step
    #completewith BaronLongshore
    >>Tuez les |cRXP_ENEMY_Southsea Brigands|r et les |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Tuez |cRXP_ENEMY_Baron Longshore|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Il se trouve dans l'un des camps
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Tuez les |cRXP_ENEMY_Southsea Brigands|r et les |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Rendez la quête Les flibustiers des Mers du sud
    .turnin 895 >>Rendez la quête ON RECHERCHE : baron de Longrivage
    .accept 890 >>Acceptez la quête La livraison perdue
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Rendez Maître des quais Dizzywig
    .turnin 890 >>Rendez la quête La livraison perdue
    .accept 892 >>Acceptez la quête La livraison perdue
    .accept 896 >>Acceptez la quête La bonne fortune d'un mineur pauvre
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Rendez la quête La livraison perdue
    .accept 888 >>Acceptez la quête Course à la lentille
    .target Gazlowe
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Espadon] |cRXP_BUY_à Ironzar|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Équipez le|r |T135353:0|t[Espadon] |cRXP_WARN_quand vous atteignez le niveau 16|r
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
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Équipez le|r |T135147:0|t[Bâton noueux] |cRXP_WARN_quand vous atteignez le niveau 15|r
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Hâche ébarbée] |cRXP_BUY_à Ironzar|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Équipez la|r |T132394:0|t[Hache barbue] |cRXP_WARN_quand vous atteignez le niveau 15|r
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +Équipez la [Hache ébarbée]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
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
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez un|r [Bâton noueux] |cRXP_BUY_à Ironzar|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Équipez le|r |T135147:0|t[Bâton noueux] quand vous atteignez le niveau 15
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith FlyToXroads1
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une|r [Cimeterre] |cRXP_BUY_à Ironzar.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +Équipez la [Cimeterre]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Achetez une deuxième|r [Cimeterre] |cRXP_BUY_à Ironzar pour votre main gauche.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +Équipez la [Cimeterre]
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .isQuestComplete 845
    .subzoneskip 380
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>Terminez de tuer les |cRXP_ENEMY_Zhevras|r. Dépouillez-les pour leur |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r et |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Rendez la quête Ravitaillement pour la Croisée
    .turnin 872 >>Rendez la quête La perturbation cesse
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Rendez la quête Les zhévras
    .accept 903 >>Acceptez la quête Les rôdeurs des Tarides
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acceptez la quête Consumé par la haine
    .accept 4921 >>Acceptez la quête Disparition au combat
    .target Mankrik
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_à Barg|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Balle lourde] |cRXP_BUY_à Barg|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Bon arc long|r] |cRXP_BUY_à Uthrok si il en a en stock et faites un stock de flèches|r
    >>Si il n'est pas disponible, achetez un [Arc renforcé] à la place
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez une|r [Espingole de chasseur] |cRXP_BUY_à Uthrok|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith KodobaneTurnin
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acceptez la quête Les chefs des Kolkar
    .accept 855 >>Acceptez la quête Les bracelets de centaures
    .target Regthar Deathgate
step
    #completewith Barak
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Tuez |cRXP_ENEMY_Barak Kodobane|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Faites attention aux coups en mêlée de |cRXP_ENEMY_Barak Kodobane|r qui infligent BEAUCOUP de dégâts et il est protégé par un |cRXP_ENEMY_Kolkar Wrangler|r. Ils peuvent vous immobiliser avec un filet et vous tirer dessus à distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Rendez la quête Les chefs des Kolkar
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Acceptez la quête Verog le Derviche
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Raptor|r que vous croisez. Dépouillez-les pour leur |cRXP_LOOT_Heads|r
    >>Vous pouvez ne pas compléter cette quête pour le moment
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Tuez les |cRXP_ENEMY_Savannah Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r et leur |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto The Barrens,41.51,19.09,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Tuez les |cRXP_ENEMY_Harpies Ensorçailes|r et les |cRXP_ENEMY_Volplumes Ensorçailes|r. Dépouillez-les pour leur |cRXP_LOOT_Serres|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +Faites attention aux |cRXP_ENEMY_Sunscale Scytheclaws|r dans la zone. Ils sont niveau 18 et peuvent utiliser [Rosser]
    --.dungeon !RFC
    .xp >17,1
step
    #completewith Samophlange
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r vend [|cRXP_FRIENDLY_Heavy Spiked Mace|r] qui est un objet en stock limité << Orc Warrior/Troll Warrior/Tauren Warrior/Shaman
	.vendor	>> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Vrang Fauvétripe
    .isQuestAvailable 901
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 894 >>Rendez la quête Samophlange
    .accept 900 >>Acceptez la quête Samophlange
step
    .goto The Barrens,52.33,11.57
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Faites attention ! Deux ennemis vont apparaître une fois que vous aurez fermé la valve
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Cliquez sur la |cRXP_PICK_Valve|r
    >>Un ennemi va apparaître une fois que vous aurez fermer la valve
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 900 >>Rendez la quête Samophlange
    .accept 901 >>Acceptez la quête Samophlange
step
    .goto The Barrens,52.84,10.40
    >>Tuez les |cRXP_ENEMY_Tinkerer Sniggles|r dans le bâtiment. Dépouillez-le pour sa |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Cliquez sur la |cRXP_PICK_Control Console|r
    .turnin 901 >>Rendez la quête Samophlange
    .accept 902 >>Acceptez la quête Samophlange
step
    #completewith Ignition
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3,0
    >>Tuez les |cRXP_ENEMY_Raptors|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #xprate <1.5
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16 >>Montez jusqu'au niveau 16
    >>C'est une étape importante, comme les 3 prochaines quêtes sont assez difficiles
step
    #label Ignition
    .goto The Barrens,56.52,7.45
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
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Tuez |cRXP_ENEMY_Supervisor Lugwizzle|r. Dépouillez-le pour sa |cRXP_LOOT_Key|r. Il patrouille de haut en bas sur la plateforme
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    >>Ceci va commencer une escorte. Faites en sorte d'avoir toute votre vie
    .turnin 858 >>Rendez la quête Contact
    .accept 863,1 >>Acceptez la quête La fuite
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r a un long temps de réapparition. Pensez à passer cette quête si il y a beaucoup de compétition
    >>Ceci va commencer une escorte. Faites en sorte d'avoir toute votre vie
    .accept 863,1 >>Acceptez la quête La fuite
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
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
    .goto The Barrens,61.46,4.50,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Enforcers|r et les |cRXP_ENEMY_Venture Co. Overseers|r. Dépouillez-les pour leur |cRXP_LOOT_Cats Eye Emerald|r
    >>Si il n'est toujours pas tombé après avoir tué 25+ mobs, vous pouvez passer cette quête
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
step
    #completewith next
    .skill firstaid,40 >> Fabriquez des [Bandages de lin] jusqu'à ce que votre compétence soit de 40 ou plus
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour atteindre une compétence de 40
    .train 3276 >> Apprenez [Bandages épais en lin]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> Fabriquez des [Bandages épais en lin] jusqu'à ce que votre compétence en [Premiers soins] soit de 50 ou plus
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Arnok|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour monter votre compétence à 50
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Arnok
    .skill firstaid,<40,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <18,1
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .zoneskip The Barrens
    .target Doras
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <18,1
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Pyreanor|r
    .train 7294 >>Apprenez vos sorts de classe
    .target Master Pyreanor
    .xp <16,1
    .xp >18,1
step << Paladin
    #optional
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Pyreanor|r
    .train 5573 >>Apprenez vos sorts de classe
    .target Master Pyreanor
    .xp <18,1
step
    #label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Acceptez la quête Les esprits des Serres-Rocheuses
    .target Zor Lonetree
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_Ceci est une quête préalable pour Gouffre de Ragefeu. Passez cette étape si vous ne souhaitez pas la faire|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Apprenez [Crochetage]
    .train 921 >> Apprenez [Vol à la tire]
    .accept 2379 >>Acceptez la quête Zando'zan
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Rendez la quête Zando'zan
    .accept 2382 >>Acceptez la quête Wrenix de Cabestan
    .target Zando'zan
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire de Sacrifice]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire d’Éclair de feu (Rang 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Apprenez les compétences de votre familier
    .target Xao'tsu
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Apprenez la compétence Arcs
    .target Hanashi
step << Warrior/Shaman/Paladin
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .train 227 >>Apprenez la compétence Bâtons << !Paladin !Shaman
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez un|r [Arc renforcé] |cRXP_BUY_à Zendo'jian|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith EcheyakeePickup
    +Équipez l'[Arc renforcé]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez une|r [Hache de bataille] |cRXP_BUY_à Zendo'jian|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Équipez la|r |T135423:0|t[Hache d'armes] |cRXP_WARN_quand vous atteignez le niveau 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step
    #completewith next
    .zone Durotar >>Quittez Orgrimmar
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Tuez les membres de la |cRXP_ENEMY_Lame Ardente|r au Rocher du Crâne jusqu'à ce que l' |cRXP_LOOT_Insigne de lieutenant|r tombe
    >>|cRXP_WARN_Ceci est une quête préalable pour Gouffre de Ragefeu. Passez cette étape si vous ne souhaitez pas la faire|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .isOnQuest 5726
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Acceptez la quête Tuer la bête
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isOnQuest 5727
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Rendez la quête Ennemis cachés
    .accept 5728 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5727
    .dungeon RFC
step
    #optional
    #label OrgPickups
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5728 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5727
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437,2 >> Entrez dans le portail de l'instance du Gouffre de Ragefeu
    .dungeon RFC
step
    >>|cRXP_WARN_Si possible, faites en sorte que les membres du groupe vous partagent les quêtes suivantes|r
    >>|cRXP_WARN_Passez cette étape si personne n'a ces quêtes|r
    .accept 5722 >>Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >>Acceptez la quête Tester la force de l'ennemi
    .dungeon RFC
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Rendez la quête À la recherche de la sacoche perdue
    .accept 5724 >>Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>Tuez |cRXP_ENEMY_Taragaman the Hungerer|r. Dépouillez-le pour son |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>Tuez |cRXP_ENEMY_Bazzalan|r et |cRXP_ENEMY_Jergosh l'Invocateur|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Rendez la quête Tuer la bête
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Rendez la quête Ennemis cachés
    .accept 5729 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >>Rendez la quête Ennemis cachés
    .accept 5730 >>Acceptez la quête Ennemis cachés
    .target Neeru Fireblade
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith EcheyakeePickup
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Volez à la Croisée
    .target Doras
    .subzoneskip 380
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Rendez la quête Les raptors voleurs
    .accept 3281 >>Acceptez la quête Argent volé
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est au sommet de la tour
    .turnin 867 >>Rendez la quête Les harpies pillardes
    .accept 875 >>Acceptez la quête Lieutenants harpies
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Rendez la quête Les Bassins oubliés
    .accept 877 >>Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Rendez la quête Les rôdeurs des Tarides
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
step
    .goto The Barrens,55.80,17.03
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, passez cette étape
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r n'est pas apparu après avoir utilisé la|r [Horn of Echeyakee] ou si vous n'étiez pas le premier joueur à l'engager, abandonnez Echeyakee, puis retournez en ville pour reprendre la quête
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acceptez la quête Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Utilisez la [Corne d'Echeyakee] pour invoquer |cRXP_ENEMY_Echeyakee|r
    >>Tuez |cRXP_ENEMY_Echeyakee|r. Dépouillez-le pour sa |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,40.28,15.49,0
    .goto The Barrens,40.28,15.49,40,0
    .goto The Barrens,39.50,14.68,40,0
    .goto The Barrens,39.47,13.24,40,0
    .goto The Barrens,38.94,12.80,40,0
    .goto The Barrens,38.18,12.56,40,0
    .goto The Barrens,37.96,13.52,40,0
    .goto The Barrens,38.62,13.95,40,0
    .goto The Barrens,38.18,14.62,40,0
    .goto The Barrens,38.14,15.59,40,0
    .goto The Barrens,37.29,15.68,40,0
    .goto The Barrens,37.24,16.26,40,0
    .goto The Barrens,37.67,16.34,40,0
    .goto The Barrens,38.35,17.08,40,0
    .goto The Barrens,38.83,17.71,40,0
    .goto The Barrens,39.37,17.21,40,0
    .goto The Barrens,39.87,16.66,40,0
    .goto The Barrens,40.15,15.98,40,0
    >>Tuez les |cRXP_ENEMY_Witchwing Slayers|r. Dépouillez-les pour leur |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Witchwing Slayers|r lancent|r [Exécuter] |cRXP_WARN_(inflige BEAUCOUP de dégâts lorsque vous êtes à moins de 20% de vie), et les |cRXP_ENEMY_Witchwing Ambushers|r utilisent|r [Camouflage] et patrouillent aux alentours
    >>Faites attention aux |cRXP_ENEMY_Witchwing Ambushers|r. Ils sont camouflés et patrouillent dans la zone
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 6808 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Rendez la quête Echeyakee
    .accept 905 >>Acceptez la quête Les Faucheurs furieux
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>Détruisez la [Corne d'Echeyakee] comme vous n'en avez plus besoin
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est au sommet de la tour
    .turnin 875 >>Rendez la quête Lieutenants harpies
    .accept 876 >>Acceptez la quête Serena Plumesang
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_à Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Volez à Ratchet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Rendez la quête Wrenix de Cabestan
    .accept 2381 >>Acceptez la quête Piller les pilleurs
    .target Wrenix the Wretched
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Rendez la quête Samophlange
    .turnin 863 >>Rendez la quête La fuite
    .accept 3921 >>Acceptez la quête Wenikee Bakaboulon << Hunter
    .accept 1483 >>Acceptez la quête Ziz Fizzik
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Rendez la quête La bonne fortune d'un mineur pauvre
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Rendez la quête Samophlange
    .accept 3921 >>Acceptez la quête Wenikee Bakaboulon << Hunter
    .accept 1483 >>Acceptez la quête Ziz Fizzik
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Rendez la quête La bonne fortune d'un mineur pauvre
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >>Rendez la quête La fuite
    .accept 1483 >>Acceptez la quête Ziz Fizzik
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >> Acceptez la quête Ziz Fizzik
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acceptez la quête Les cornes de raptors
    .accept 1069 >>Acceptez la quête Omelette à la mousse profonde
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_à l'Innkeeper Wiley|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|tLes [Lutjan à longue mâchoire] sont très abordables, achetez-en autant que vous le voulez
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isQuestAvailable 888,865,3281,877,848
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +Sautez sur le bateau, descendez au second étage et montez votre compétence de crochetage jusqu'à au moins 70
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Une fois que votre crochetage est à 70, descendez à l'étage inférieur du bateau et ouvrez le |cRXP_PICK_The Jewel of the Southsea|r
    >>Utilisez le [B.G.A.C.] sur |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>Ramassez le |cRXP_PICK_Crate|r sur le sol
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>Ramassez le |cRXP_PICK_Crate|r sur le sol
    .complete 888,1 --Shipment of Boots (1)
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
    >>Faites attention comme ils peuvent utiliser [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Ramassez le |cRXP_PICK_Stolen Silver|r sur le sol
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Cliquez sur la |cRXP_PICK_Fissure bouillonnante|r sous l'eau
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Tuez les |cRXP_ENEMY_Kolkar|r autour de l'oasis. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Tuez |cRXP_ENEMY_Verog|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Il a une chance d'apparaître à chaque fois qu'un |cRXP_ENEMY_Kolkar|r meurt|r
    >>Sur un serveur à la population élevée ou qui vient de démarrer, votre meilleure option est de camper l'endroit où il apparaît
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour de l'Oasis stagnante
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Cliquez sur le |cRXP_PICK_Blue Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils peuvent utiliser [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Cliquez sur le |cRXP_PICK_Red Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils peuvent utiliser [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Cliquez sur le |cRXP_PICK_Yellow Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils peuvent utiliser [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Finissez de tuer les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
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
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Tuez |cRXP_ENEMY_Lakota'mani|r. Dépouillez-le pour sa [|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Hoof of Lakota'mani|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape si vous n'arrivez pas à le trouver
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    >>|cRXP_WARN_Cette étape n'a pas besoin d'être terminée maintenant|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .subzone 378 >>Voyagez au Camp Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
    .isQuestAvailable 878
    .bindlocation 378
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Acceptez la quête Tribus en guerre
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Prenez le chemin de vol du Camp Taurajo << !Tauren
    .fly Crossroads >>Volez à la Croisée
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Rendez la quête Spores fongiques
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Rendez la quête Disparition au combat
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Rendez la quête L'oasis stagnante
    .accept 880 >>Acceptez la quête Source de vie
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Rendez la quête Les Faucheurs furieux
    .accept 3261 >>Acceptez la quête Jorn Œil-des-cieux
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Rendez la quête Argent volé
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    #completewith StonetalonPickups
    .destroy 5165 >>Détruisez toutes les [Plumes solécailles] que vous avez encore
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez un|r [Carquoi moyen] |cRXP_BUY_à Uthrok|r
    .collect 11362,1,876,1 --Medium Quiver (1)
    .collect 2515,2200,876,1 --Sharp Arrow (2200)
    .target Uthrok
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith StonetalonPickups
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Tuez |cRXP_ENEMY_Serena Bloodfeather|r. Dépouillez-la pour sa |cRXP_LOOT_Tête|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    .goto The Barrens,35.26,27.88,100 >>Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 18-23 Stonetalon/The Barrens
#subgroup RestedXP Horde 1-30
#defaultfor Shaman
#next 23-25 Contreforts de Hautebrande

step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >>Acceptez la quête Les invasions gobelines
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Acceptez la quête Vengez mon village !
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Tuez les |cRXP_ENEMY_Grimtotem Ruffians|r et les |cRXP_ENEMY_Grimtotem Mercenaries|r dans la zone
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Rendez la quête Vengez mon village !
    .accept 6629 >> Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Montez le chemin jusqu'au bûcher
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Tuez les |cRXP_ENEMY_Grundig Darkcloud|r et les |cRXP_ENEMY_Grimtotem Brutes|r
    >>Tuez bien les 6 |cRXP_ENEMY_Grimtotem Brutes|r avant de commencer la quête à l'intérieur
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Acceptez la quête Protéger Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escortez |cRXP_FRIENDLY_Kaya|r et restez proche d'elle
    >>Faites attention ! Trois |cRXP_ENEMY_Grimtotems|r vont apparaître lorsque vous aurez atteint le bûcher au Camp Aparaje
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acceptez la quête Suceurs de sang
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Tuez tous les |cRXP_ENEMY_Deepmoss Creeper|r que vous voyez
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Cliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Acceptez la quête Arachnophobie
step
    #completewith Besseleth1
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r et les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Tuez |cRXP_ENEMY_Besseleth|r. Dépouillez-la pour sa |cRXP_LOOT_Fang|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Tuez les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glande à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Voyagez vers |cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Rendez la quête Ziz Fizzik
    .accept 1093 >>Acceptez la quête Super-Découpeur 6000
    .target Ziz Fizziks
step
    #completewith Windshear
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>Gardez toutes les [Petites glande à venin] que vous récupérez << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #completewith BluePrints
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez une|r [Hache de bataille] |cRXP_BUY_à Veenix|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #completewith BluePrints
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +Équipez la [Hache de bataille] une fois que vous passez niveau 20
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >19,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Veenix|r
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
step << Rogue
    #optional
    #completewith BluePrints
    +Équipez l'[Epée longue] une fois que vous passez niveau 21
    --.use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >20,1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Operators|r. Dépouillez-les pour leur |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #label Windshear
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_Si vous avez plus de 15 |cRXP_LOOT_Deepmoss Eggs|r, enlevez le surplus que vous avez dans ce stack (shift click), puis détruisez-les
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Rendez la quête Super-Découpeur 6000
    .accept 1094 >> Acceptez la quête D'autres instructions
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Finissez de tuer les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Ramassez toutes les [Petites glandes à venin] que vous trouvez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Apprenez vos sorts de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >>Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Rendez la quête Jorn Œil-des-cieux
    .accept 882 >>Acceptez la quête Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Quilboars Dos-hirsutes|r. Ramassez-les pour leurs |cRXP_LOOT_Défenses|r
    >>Gardez les [|cRXP_LOOT_Joyau de sang|r] que vous obtenez
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
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Trouvez et tuez |cRXP_ENEMY_Lakota'mani|r (Kodo gris) dans cette zone. Dépouillez-le pour sa [|cRXP_LOOT_Hoof of Lakota'mani|r]. Utilisez-la pour commencer la quête
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
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>Tuez les |cRXP_ENEMY_Quilboars Dos-hirsutes|r. Ramassez-les pour leurs |cRXP_LOOT_Défenses|r
    >>Gardez les [|cRXP_LOOT_Joyau de sang|r] que vous récupérez
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
step << Warlock
    #xprate <1.5
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+11000 >> Montez votre expérience jusqu'à 11000+/21300xp
    --To ensure lvl 20 before ORG visit class q pickup
step << Warlock
    #xprate >1.49
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+700 >> Farmez jusqu'à 700+/21300 xp
    --To ensure lvl 20 before ORG visit class q pickup
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Finissez de tuer les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Tuez les |cRXP_ENEMY_Oasis Snapjaws|r à l'intérieur et autour du lac. Dépouillez-les pour leur |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Tuez n'importe quel |cRXP_ENEMY_Zhevra|r. Dépouillez-le pour une |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.87,30.41
    .use 10338 >>Utilisez la [|cRXP_LOOT_Fresh Zhevra Carcass|r] à l'arbre mort
    >>Tuez |cRXP_ENEMY_Ishamuhale|r quand il apparaît. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >> Allez à Ratchet
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Rendez la quête Piller les pilleurs
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Rendez la quête Course à la lentille
    .target Gazlowe
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r et |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    .accept 1095 >>Acceptez la quête D'autres instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .accept 1491 >>Acceptez la quête Les potions d'intelligence
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r et |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    .accept 1095 >>Acceptez la quête D'autres instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Ratchet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Achetez le [|cRXP_FRIENDLY_Mighty Chain Pants|r] à Grazlix si il est disponible
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Achetez des [|cRXP_FRIENDLY_Wolf Bracers|r] à Vexspindle si ils sont disponibles
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +Équipez le [|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +Équipez les [|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    #xprate <1.5
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
step
    #xprate >1.49
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Volez à la Croisée
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est en haut de la tour
    .turnin 876 >>Rendez la quête Serena Plumesang
    .accept 1060 >>Acceptez la quête Lettre à Jin'Zil
    .target Darsok Swiftdagger
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r et |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Rendez la quête Consumé par la haine
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Rendez la quête Source de vie
    .accept 1489 >>Acceptez la quête Hamuul Totem-runique
    .accept 3301 >>Acceptez la quête Mura Runetotem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    #completewith TribesTurnin
    .destroy 5085 >>Détruisez toutes les [Défenses de huran Dos-hirsute] qu'il vous reste
    .itemcount 5085,1
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1507 >>Acceptez la quête La dévoreuse d'âmes
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r et achetez le [Grimoire de Tourment (Rang 2)]
    .collect 16346,1,1509,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Rendez la quête La dévoreuse d'âmes
    .accept 1508 >>Acceptez la quête Cazul l'aveugle
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    .collect 5210,1,1509,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Rendez la quête Cazul l'aveugle
    .accept 1509 >>Acceptez la quête Des nouvelles de Dogran
    .target Zankaja
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Volez à la Croisée
    .zoneskip Orgrimmar,1
    .subzoneskip 380
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Rendez la quête Des nouvelles de Dogran
    .accept 1510 >>Acceptez la quête Des nouvelles de Dogran
    .target Gazrog
step << !Tauren !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r commence une quête chronométrée avec une durée de 45 minutes
    .accept 853 >> Acceptez la quête L'apothicaire Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step << !Tauren !Warrior !Shaman
    #sticky
    #completewith ZamahTurnin
    +Vous faites une quête chronométrée, ne passez pas ABS. Elle sera rendue 20-30 après qu'elle soit prise
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Devrak
    .subzoneskip 378
step
    .goto The Barrens,44.55,59.27
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsute|r. Dépouillez-les pour un |T134128:0|t|cRXP_LOOT_Joyau de sang|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Rendez la quête Tribus en guerre
    .accept 5052 >>Acceptez la quête Joyaux de sang d'Agamaggan
    .turnin 5052 >>Rendez la quête Joyaux de sang d'Agamaggan
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    .goto The Barrens,44.32,60.84,60,0
    >>Tuez les |cRXP_ENEMY_Thunder Lizards|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez l' [|cRXP_LOOT_Epine caudale d'Owatanka|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Tuez un |cRXP_ENEMY_Thunderhawk Hatchling|r ou un |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Dépouillez-le pour ses |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval
    .target Jorn Skyseer
step << !Tauren !Shaman
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>Si il vous reste 10 [|cRXP_LOOT_Blood Shards|r, utilisez les pour obtenir [L'esprit du vent] à |cRXP_FRIENDLY_Mangletooth|r
    >>Passez cette étape si vous pouvez voler jusqu'à Pitons-du-Tonnerre
    .itemcount 5075,10
    .train 5118,1 << Hunter --skips step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << !Tauren !Shaman
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Voyagez jusqu'à Mulgore
step << !Tauren !Shaman
    #completewith ZamahTurnin
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Prenez l'ascenseur pour aller à Thunder Bluff
    >>Si vous avez le vol pour Thunder Bluff, volez-y
step << Tauren/Shaman
    #completewith ZamahTurnin
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .dungeon !WC
    .bindlocation 1638
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >>Déposez vos [Joyaux de sang]
    --.bankdeposit 5059 >>Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
step << Warrior !Tauren/Shaman/Paladin
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Achetez la compétence pour porter des Masses à deux mains
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Acheter la compétence pour porter des masses à une main
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Kuruk|r
    .collect 25875,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step
    #xprate <1.5
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clarice|r
    >>Elle patrouille aux alentours
    .accept 264 >> Acceptez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
step
    #xprate <1.5
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Acceptez la quête Peste dévorante << Undead Priest
    .accept 5642 >> Acceptez la quête Garde de l'ombre << Troll Priest
    .trainer >> Apprenez vos sorts de classe
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <22,1
step
    #xprate <1.5
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clarice|r
    >>Elle patrouille aux alentours
    .accept 264 >> Acceptez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
step
    #optional
    #label ZamahTurnin
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Acceptez la quête L'appel de l'eau
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> Fabriquez des  [Bandages épais en lin] jusqu'à ce que votre compétence en [Premiers soins] soit de 80 ou plus
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    >>Passez cette étape si vous n'avez pas assez d'[Etoffe de lin] pour atteindre une compétence de 80
    .train 3277 >> Apprenez [Bandage en laine]
    .train 7934 >> Apprenez [Anti-venin] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>Fabriquez des [Anti-Venin] si vous avez trouvé des [Petites glandes à venin]
    >>Gardez-les pour plus tard
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith WCRFCTUrnins
    .goto Thunder Bluff,69.88,30.90,80 >> Voyagez à la Cime des Anciens
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >>Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Rendez la quête Hamuul Totem-runique
    .accept 1490 >> Acceptez la quête Nara Wildmane
    .target Arch Druid Hamuul Runetotem
    .dungeon WC << !Druid
step << Druid
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .accept 914 >> Acceptez la quête Les druides du Croc
    .target Nara Wildmane
    .dungeon WC
step
    #optional
    #label WCRFCTUrnins
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .trainer >> Apprenez vos sorts de classe
    .accept 27 >> Acceptez la quête Une leçon à apprendre
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Rendez la quête Une leçon à apprendre
    .accept 28 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Récupérez le |cRXP_PICK_Bauble Container|r au fond du lac pour un [|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_Ne plongez pas dans l'eau avant d'arriver en haut du Colifichet|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> Utilisez le [Colifichet du sanctuaire] au sanctuaire de Remulos
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Rendez la quête L'épreuve du lac
    .accept 30 >> Acceptez la quête L'épreuve du lion de mer
    .target Tajarri
step << Druid
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .cooldown item,6948,>0
    .zoneskip Moonglade,1
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Moonglade,1
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acceptez la quête La flamme sacrée
    .target Zangen Stonehoof
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Voyagez au sommet du chasseur
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Acceptez la quête Broie-l'acier
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 845 >> Apprenez vos sorts de classe
    .accept 1823 >> Acceptez la quête Parler à Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Kard.|r
    .collect 923,1,6562,1 --Collect Longsword (1)
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
step << Warrior/Shaman/Paladin
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Si c'est moins cher vous pouvez plutôt acheter une arme verte à l'Hôtel des Ventes|r
step << Warrior/Paladin/Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Achetez une|r [Hache de bataille] |cRXP_BUY_à Etu|r
    .collect 926,1,6562,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Etu Ragetotem
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith KayaLives
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Achetez un|r [Arc courbe lourd] |cRXP_BUY_à Kuna|r
    .collect 3027,1,6562,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Corne-Tonnerre
step << Hunter
    #completewith KayaLives
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_à Kuna|r
    .collect 2515,1600,6562,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Corne-Tonnerre
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Maintenant vous devriez chercher un groupe pour la Caverne des Lamentations
    .dungeon WC
step
    #completewith Hezrul
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .subzoneskip 380
step
    #xprate <1.5
    .goto The Barrens,46.15,36.93,100 >> Voyagez vers la Caverne des Lamentations
    .isOnQuest 1491
step
    #xprate >1.49
    .goto The Barrens,46.15,36.93,100 >> Voyagez vers la Caverne des Lamentations
    .isOnQuest 1491
    .dungeon WC
step
    #xprate <1.5
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Montez la montagne à la pierre de rencontre de la Caverne des Lamentations
    >>Suivez la flèche méticuleusement pour atteindre la grotte cachée
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .accept 1486 >>Acceptez la quête Les peaux de déviants
    .target Nalpak
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    >>Ils sont situés au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #xprate <1.5
    #optional
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>Il est camouflé et peut apparaître à plusieurs endroits
    >>|cRXP_WARN_Il met beaucoup de temps avant de réapparaître. Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
step
    #xprate >1.49
    #optional
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>Il est camouflé et peut apparaître à plusieurs endroits
    >>|cRXP_WARN_Il met beaucoup de temps avant de réapparaître. Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Entrez dans le portail pour les Cavernes des lamentations
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
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
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
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
    .disablecheckbox
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
    #label DeviateRaptors
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
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +Le reste de ces quêtes peuvent être finies à l'extérieur du portail pour les Cavernes des lamentations
    .dungeon WC
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate <1.5
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #xprate >1.49
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ratchet
    .use 6948
    .dungeon WC
    .bindlocation 392,1
    .subzoneskip 392
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Rendez la quête Les potions d'intelligence
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1529 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon WC
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1528 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Montez la montagne
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ebru|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >>Rendez la quête Les peaux de déviants
    .target Nalpak
    .isQuestComplete 1486
step
    #xprate >1.49
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >>Rendez la quête Les peaux de déviants
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step << skip
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
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    .goto The Barrens,45.64,38.16,50,0
    >>Trouvez et tuez |cRXP_ENEMY_Hezrul Bloodmark|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrouille autour du lac|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith CounterattackComplete
    .abandon 855 >> Abandonnez Les bracelets de centaures comme vous n'en avez pas récupéré assez avant pour qu'elle soit rentable à finir
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #softcore
    #completewith CounterattackComplete
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le |cRXP_ENEMY_Chef de guerre Krom'zar|r autour du bâtiment où se situe le donneur de quête|r
    .isQuestTurnedIn 852
step
    #hardcore
    #completewith CounterattackComplete
    +|cRXP_WARN_Cette prochaine quête est très difficile et nous vous recommandons de la faire avec un groupe. Vous pouvez balader le |cRXP_ENEMY_Chef de guerre Krom'zar|r autour du bâtiment où se situe le donneur de quête|r
    >>Il y a un très haut risque de mourir lorsque vous faites cette quête seule et que vous n'êtes pas habituée à celle-ci
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Rendez la quête Les bracelets de centaures
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith BloodFeedersTI
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Montez le chemin sur la gauche
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Rendez la quête Lettre à Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Rendez la quête Des nouvelles de Dogran
    .accept 1511 >>Acceptez la quête Breuvage de Ken'zigla
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Rendez la quête Suceurs de sang
    .target Xen'Zilla
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Rendez la quête D'autres instructions
    .target Ziz Fizziks
    .dungeon !BFD
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Voyagez jusqu'à la Retraite des Roche-Soleil
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Jayka|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au second étage de l'auberge
    .vendor >>|cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si elle en a en stock|r << !Warrior
    .vendor >>|cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_et des|r [Viétérule] |cRXP_BUY_si elle en a en stock|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Rendez la quête Arachnophobie
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Rendez la quête Kaya est en vie
    .target Tammra Windfield
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Prenez le chemin de vol de la Retraite de Roche-Soleil
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Montez le chemin à droite
step
    #xprate <1.5
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acceptez la quête Problèmes dans les profondeurs
    .target Tsunaman
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Rendez la quête D'autres instructions
    .target Ziz Fizziks
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entrez dans la Perce des Serres
step
    #xprate <1.5
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Voyagez à l'Avant-poste de Zoram'gar
    .subzoneskip 2897
    >>Faites attention à éviter les gardes d'Astranaar sur la route. Suivez le point de repère pour rester en sécurité
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk, Zoram'gar|r
    .fp Zoram'gar Outpost >> Prenez le chemin de vol de l'Avant-poste de Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Rendez la quête Problèmes dans les profondeurs
    .accept 6563 >>Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >>Acceptez la quête Parmi les ruines
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acceptez la quête Charme troll
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acceptez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Rendez la quête Problèmes dans les profondeurs
    .accept 6563 >>Acceptez la quête L'Essence d'Aku'Mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acceptez la quête Charme troll
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acceptez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muglash|r
    >>Ceci va commencer une quête d'escorte. Faites attention car elle est difficile
    .accept 6641,1 >> Acceptez la quête Vorsha la Flagellante
    .target Muglash
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte. Faites TRÈS attention! |cRXP_ENEMY_Vorsha|r frappe très fort. Nous vous conseillons de la faire en groupe|r
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
    #softcore
    .goto Ashenvale,9.63,27.63
    >>Cliquez sur le |cRXP_PICK_Brazier|r lorsque vous y arrivez
    >>Il y aura des vagues de |cRXP_ENEMY_Naga|r qui vont apparaître. Faites attention une fois que |cRXP_ENEMY_Vorsha|r arrive, il frappe très fort
    >>Laissez |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_générer de la menace avant d'attaquer |cRXP_ENEMY_Vorsha|r!|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>Cliquez sur le |cRXP_PICK_Brazier|r lorsque vous y arrivez
    >>Il y aura des vagues de |cRXP_ENEMY_Naga|r qui vont apparaître. Faites attention une fois que |cRXP_ENEMY_Vorsha|r arrive, il frappe très fort
    >>Laissez |cRXP_WARN_Muglash|r |cRXP_FRIENDLY_générer de la menace avant d'attaquer |rVorsha|cRXP_WARN_!|r
    >>|cRXP_WARN_Soyez prêt à utiliser vos potions et vos cooldows comme |cRXP_ENEMY_Vorsha|r peut vous infliger un coup critique pour des dégâts importants !|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Maintenant vous devriez chercher un groupe pour faire les Profondeurs de Brassenoire
    .dungeon BFD
step
    #xprate <1.5
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
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
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Voyagez jusqu'à l'entrée des Profondeurs de Brassenoire
step
    #xprate <1.5
    #completewith next
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #xprate <1.5
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tuez les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour une [|cRXP_LOOT_Damp Note|r] et utilisez-la pour commencer la quête
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acceptez la quête Allégeance aux Dieux très anciens
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #xprate <1.5
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionnellement parlez à|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_à Avant-poste de Zoram'gar pour obtenir une autre quête de suivi BFD|r
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .accept 6565 >>Acceptez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate <1.5
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Montez le chemin à droite
    .dungeon BFD
step
    #xprate >1.49
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acceptez la quête Problèmes dans les profondeurs
    .target Tsunaman
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Rendez la quête D'autres instructions
    .target Ziz Fizziks
    .dungeon BFD
step
    #xprate >1.49
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Maintenant vous devriez chercher un groupe pour faire les Profondeurs de Brassenoire
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entrez dans la Perce des Serres
    .dungeon BFD
step
    #xprate >1.49
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Voyagez à l'Avant-poste de Zoram'gar
    .subzoneskip 2897
    >>Faites attention à éviter les gardes d'Astranaar sur la route. Suivez le point de repère pour rester en sécurité
    .unitscan Astranaar Sentinel
    .dungeon BFD
step
    #xprate >1.49
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Prenez le chemin de vol de l'Avant-poste de Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
    .dungeon BFD
step
    #xprate >1.49
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu|r
    .turnin 6562 >>Rendez la quête Problèmes dans les profondeurs
    .accept 6563 >>Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >>Acceptez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Voyagez jusqu'à l'entrée des Profondeurs de Brassenoire
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
step
    #xprate >1.49
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tuez les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour une [|cRXP_LOOT_Damp Note|r] et utilisez-la pour commencer la quête
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acceptez la quête Allégeance aux Dieux très anciens
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #xprate >1.49
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionnellement parlez à|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_à Avant-poste de Zoram'gar pour obtenir une autre quête de suivi BFD|r
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .accept 6565 >>Acceptez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20
    .dungeon BFD
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .accept 6561 >>Acceptez la quête L'infamie de Brassenoire
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Tuez |cRXP_ENEMY_Lorgus Jett |r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    >>La ramasser va faire apparaître le |cRXP_ENEMY_Baron Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tuez le |cRXP_ENEMY_Baron Aquanis|r. Dépouillez-le pour un [|cRXP_LOOT_Strange Water Globe|r]. Utilisez-le pour prendre la quête
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acceptez la quête Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tuez  |cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Quittez le donjon
    >>Tuez |cRXP_ENEMY_Aku'mai|r en premier si vous le voulez. C'est le dernier boss du donjon
    .dungeon BFD
step
    #xprate <1.5
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Rendez-vous à Avant-poste de Zoram'gar
step
    #xprate >1.49
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Rendez-vous à Avant-poste de Zoram'gar
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warsong Runner|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Rendez la quête Vorsha la Flagellante
    .goto Ashenvale,12.22,34.21
    .target +Warsong Runner
    .turnin 6442 >>Rendez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    #xprate <1.5
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Rendez la quête L'Essence d'Aku'Mai
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Rendez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Rendez la quête Baron Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
    .cooldown item,6948,>0
step
    #xprate <1.5
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Détruisez vos|r |T134133:0|t[|cRXP_LOOT_Saphir d'Aku'Mai|r] |cRXP_WARN_restants car ils ne sont plus nécessaires|r
step
    #xprate >1.49
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Détruisez vos|r |T134133:0|t[|cRXP_LOOT_Saphir d'Aku'Mai|r] |cRXP_WARN_restants car ils ne sont plus nécessaires|r
    .dungeon BFD
step
    #completewith JourneytoTM
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Voyagez à la Cime des Anciens
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Rendez la quête L'Ancienne
    .timer 6,L'Ancienne RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Rendez la quête Hamuul Totem-runique
    .accept 1490 >>Acceptez la quête Nara Wildmane
    .target Arch Druid Hamuul Runetotem
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Rendez la quête Nara Crin-sauvage
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Rendez la quête Les druides du Croc
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Rendez la quête Au coeur des cauchemars
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    .accept 1064 >>Acceptez la quête L'aide des Réprouvés
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bashana Totem-runique|r
    .turnin 6561 >>Rendez la quête L'infamie de Brassenoire
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #xprate <1.5
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r dans les bassins des Visions
    .turnin 1064 >>Rendez la quête L'aide des Réprouvés
    .accept 1065 >>Acceptez la quête Un voyage vers Moulin-de-Tarren
    .turnin 962 >>Rendez la quête Fleur de serpent
    .target Apothecary Zamah
    .isQuestComplete 962
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r dans les bassins de vision
    .turnin 1064 >>Rendez la quête L'aide des Réprouvés
    .accept 1065 >>Acceptez la quête Un voyage vers Moulin-de-Tarren
    .target Apothecary Zamah
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon WC
step << Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .subzoneskip 378
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Rendez la quête Breuvage de Ken'zigla
    .accept 1515 >>Acceptez la quête La captivité de Dogran
    .target Grunt Logmar
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Rendez la quête La captivité de Dogran
    .accept 1512 >>Acceptez la quête Le cadeau de l'amour
    .target Grunt Dogran
step << !Warlock
    #xprate <1.5
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Volez à Ratchet
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step << Warlock
    #xprate <1.5
    #completewith DockTrouble
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Ratchet >>Volez à Ratchet
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon !WC
step << Shaman
    #xprate >1.49
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Volez à Ratchet
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step
    #xprate <1.5
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Rendez la quête Les potions d'intelligence
    .target Mebok Mizzyrix
    .dungeon !WC
step
    #xprate <1.5
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1529 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon !WC
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1528 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
    .dungeon !WC
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Bragok
    .subzoneskip 378
    .dungeon !WC
step << Shaman
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Rendez la quête L'appel de l'eau
    .accept 1535 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> Remplissez votre [Outre marron vide] au point d'eau derrière la hutte de Brine
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Rendez la quête L'appel de l'eau
    .accept 1536 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    #optional
    #completewith FlyOrg
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Retournez au Camp Taurajo
    .cooldown item,6948,<0
    .subzoneskip 378
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Shaman !Druid
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .dungeon !WC
step << !Shaman !Warlock
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Warlock
    #completewith BarrensEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Rendez la quête Le cadeau de l'amour
    .accept 1513 >>Acceptez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>Utilisez le [Pendentif de Dogran] au cercle d'invocation
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Tuez les |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Rendez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Achetez une|r [Jambiya] |cRXP_BUY_à Kareth si vous n'avez pas de dague|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
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
    .goto Orgrimmar,43.05,53.73
    >>Après que |cRXP_FRIENDLY_Shenthul|r ait fait son salut, écrivez /salut en le ciblant
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Rendez la quête Le Salut brisé
    .accept 2458 >>Acceptez la quête Sous le couvert de la nuit
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre éclipsante] |cRXP_BUY_à Rekkul|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Thuul|r en haut de la hutte
    .train 3567 >> Apprenez [Téléportation : Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Rendez la quête Garde de l'ombre
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Entrez dans les Tarides par la sortie à l'ouest
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen (NOT TRANSLATED IN :frFR YET)
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Ouvrez la |cRXP_PICK_Strange Lockbox|r dans l'eau pour le [Demi-pendentif d'agilité aquatique]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Ciblez |cRXP_FRIENDLY_Taskmaster Fizzule|r, puis utilisez votre [Lance-fusée] DEUX FOIS et écrivez /salut
    >>Faites attention ! Ne l'approchez PAS avant qu'il ne devienne amical ou il vous attaquera !
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Rendez la quête Sous le couvert de la nuit
    .accept 2478 >>Acceptez la quête Mission : Possible mais non probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
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
    .goto The Barrens,54.72,5.74
    >>Entrez dans la Tour des Voleurs et tuez les |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r et les |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Au sommet de la tour vous trouverez |cRXP_ENEMY_Gallywix|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Utilisez [Embuscade] pour réduire ses PV de moitié. Utilisez [Suriner] pour récupérer votre énergie et utiliser [Évasion]
	>>Rappelez-vous d'utiliser une potion et un [Thé aux chardons] si nécessaire
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Utilisez votre vol à la tire et ouvrez la |cRXP_PICK_Gallywix's Lockbox|r et récupérez la |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Rendez la quête Mission : Possible mais non probable
    .accept 2479 >>Acceptez la quête L'aide d'Hinott
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre de délabrement] |cRXP_BUY_et des|r [Fioles vide] |cRXP_BUY_à Rekkul|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Achetez la compétence pour porter des Haches à deux mains
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Trak'gen|r
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>Si vous avez des [Anti-Venin], utilisez-en un pour pour guérir du [Toucher de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> Détruisez le [Lance-fusée] dans votre sac, il n'est plus nécessaire
    .destroy 8066 >> Détruisez le [Sifflet de Fizzule] de vos sacs, il n'est plus nécessaire
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>Quittez Orgrimmar
step
    #optional
    .abandon 1486 >>Abandonnez la quête Les peaux de déviants
step
    #optional
    .abandon 1487 >>Abandonnez la quête L'éradication des déviants
step
    #optional
    .abandon 914 >>Abandonnez la quête Les druides du Croc
step
    #optional
    .abandon 855 >>Abandonnez la quête Les bracelets de centaures
step
    #optional
    .abandon 959 >>Abandonnez la quête Fuite de porto aux docks
step
    #optional
    .abandon 1491 >>Abandonnez la quête Les potions d'intelligence
]])
