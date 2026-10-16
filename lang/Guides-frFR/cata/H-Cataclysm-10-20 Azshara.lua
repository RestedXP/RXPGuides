if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 10-22 Azshara
#displayname 11-22 Azshara << Goblin/Pandaren
#next 22-27 Orneval
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Rogue Cata/Warlock Cata/Mage Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Rendez-vous vers la Faille de l'Ombre
step << Priest Cata/Paladin Cata
    #completewith next
    .goto 1454,49.88,75.54,30 >> Entrez dans le fort Grommash
step << Shaman Cata/Druid Cata
    #completewith next
    .goto 1454,44.84,75.46,40,0
    .goto 1454,41.53,60.64,40 >> Rendez-vous à la Vallée de la Sagesse
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordul|r
    .train 61922 >> Apprenez vos sorts de classe
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rekkul|r.
    >>|cRXP_BUY_Achetez|r |T132273:0|t[Fiole de poison vide] |cRXP_BUY_chez lui|r
    .collect 6947,20,14129,1 --Instant Poison (20)
    .target Rekkul
step << Shaman Cata
    .goto 1454,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sahi|r
    .train 3599 >> Apprenez vos sorts de classe
    .target Sahi Cloudsinger
    .xp <10,1
step << Druid Cata
    .goto 1454,44.79,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalla|r
    .train 5215 >> Apprenez vos sorts de classe
    .target Shalla Whiteleaf
    .xp <10,1
step << Mage Cata
    .goto 1454,48.45,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marud|r
    .train 5505 >> Apprenez vos sorts de classe
    .target Marud
    .xp <10,1
step << Priest Cata
    .goto 1454,49.17,70.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tyelis|r
    .train 8092 >> Apprenez vos sorts de classe
    .target Tyelis
    .xp <10,1
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <10,1
step << Paladin Cata
    .goto 1454,49.27,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pyreanor|r
    .train 82242 >> Apprenez vos sorts de classe
    .target Master Pyreanor
    .xp <10,1
step
    #completewith next
    .goto 1454,59.59,50.63,40,0
    .goto 1454,65.39,49.14,40 >> Rendez-vous à la Vallée de l'Honneur
step << !Goblin
    .goto 1454,66.433,49.292
    >>Cliquez sur le |cRXP_PICK_Warchief's Commande Embarquement|r
    .accept 28496 >>Acceptez la quête Ordre du chef de guerre : Azshara !
    .isQuestAvailable 28496
step << !Warrior !Paladin !Rogue !Hunter !Shaman
    #completewith next
    .goto 1454,66.84,50.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kiro|r
    .vendor >> Vendez et réparez
    .target Kiro
step << Warrior Cata
    .goto 1454,73.71,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ronakada|r
    .train 71 >> Apprenez vos sorts de classe
    .target Blademaster Ronakada
    .xp <10,1
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koru|r
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T133477:0|t[Masse géante] (24s) << Orc/Troll
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T133477:0|t[Masse géante] (25s 34c) << Tauren
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T133477:0|t[Masse géante] (26s 67c) << Undead/BloodElf
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T133477:0|t[Masse géante] (21s 34c) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Koru|r
    >>|cRXP_BUY_Achetez une|r|T133477:0|t[Masse géante] |cRXP_BUY_chez lui|r
    .collect 1197,1,14129,1 --Collect Giant Mace (1)
    .money <0.2400 << Orc/Troll
    .money <0.2534 << Tauren
    .money <0.2667 << Undead/BloodElf
    .money <0.2134 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas choisi la spécialisation Amélioration !|r
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T132938:0|t[Droite-Handed Coup de poing en laiton] (19s 17c) et |T132938:0|t[Coup de poing de gaucher en laiton] (19s 24c) << Orc/Troll
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T132938:0|t[Droite-Handed Coup de poing en laiton] (20s 24c) et |T132938:0|t[Coup de poing de gaucher en laiton] (20s 31c) << Tauren
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T132938:0|t[Droite-Handed Coup de poing en laiton] (17s 4c) et |T132938:0|t[Coup de poing de gaucher en laiton] (17s 10c) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Achetez|r |T132938:0|t[Droite-Handed Coup de poing en laiton] |cRXP_BUY_et|r |T132938:0|t[Coup de poing de gaucher en laiton] |cRXP_BUY_chez lui|r
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas choisi la spécialisation Amélioration !|r
    .collect 15905,1,14129,1 --Collect Right-Handed Brass Knuckles (1)
    .collect 15906,1,14129,1 --Collect Left-Handed Brass Knuckles (1)
    .money <0.3841 << Orc/Troll
    .money <0.4045 << Tauren
    .money <0.3450 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zendo'jian|r
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135489:0|t[Arc laminé à double courbure] (15s 76c) << Orc/Troll
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135489:0|t[Arc laminé à double courbure] (16s 64c) << Tauren
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135489:0|t[Arc laminé à double courbure] (17s 52c) << Undead/BloodElf
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135489:0|t[Arc laminé à double courbure] (14s 2c) << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
    .xp <11,1
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Achetez un|r |T135489:0|t[Arc laminé à double courbure] |cRXP_BUY_chez lui|r
    .collect 2507,1,14129,1 --Laminated Recurve Bow (1)
    .money <0.1576 << Orc/Troll
    .money <0.1664 << Tauren
    .money <0.1752 << Undead/BloodElf
    .money <0.1402 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135346:0|t[Sabre d'abordage], achetez-en deux si vous avez assez d'argent (18s 20c pièce) << Orc/Troll
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135346:0|t[Sabre d'abordage], achetez-en deux si vous avez assez d'argent (20s 23c pièce) << Undead/BloodElf
    .vendor >> Vendeur Détritus et réparations. Vendez votre arme si elle vous rapporte assez d'argent pour |T135346:0|t[Sabre d'abordage], achetez-en deux si vous avez assez d'argent (16s 18c pièce) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Achetez un ou deux|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_chez lui|r
    .collect 851,1,14129,1 --Cutlass (1)
    .money <0.1820 << Orc/Troll
    .money <0.2023 << Undead/BloodElf
    .money <0.1618 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Warrior/Paladin
    #optional
    #completewith RunawayShredder
    +Équipez la [Masse géante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Équipez le |T132938:0|t[Coup de poing droit en laiton]
    .use 15905
    .itemcount 15905,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Équipez le |T132938:0|t[Coup de poing de gaucher en laiton]
    .use 15906
    .itemcount 15906,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter
    #optional
    #completewith RunawayShredder
    +Équipez le |T135489:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp <11,1
step << Hunter
    #optional
    #completewith RunawayShredder
    +Équipez le |T135489:0|t[Arc laminé à double courbure] quand vous êtes au niveau 11
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp >11,1
step << Rogue
    #optional
    #completewith RunawayShredder
    +Équipez le |T135346:0|t[Sabre d'abordage]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter Cata
    .goto 1454,63.87,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak Trait-sinistre|r
    .train 1978 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <10,1
step
    #completewith RunawayShredder
    .goto 1454,75.39,4.15,0
    .zone Azshara >> Entrez dans Azshara par la sortie nord
step
    #optional
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ag'tor Poing-de-sang|r
    .turnin 25648 >>Rendez la quête Au-delà de Durotar
    .accept 14118 >>Acceptez la quête Une livraison de venaison
    .accept 14117 >>Acceptez la quête Les yeux d'Orneval
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ag'tor Poing-de-sang|r
    .accept 14118 >>Acceptez la quête Une livraison de venaison
    .accept 14117 >>Acceptez la quête Les yeux d'Orneval
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grabbit|r
    .turnin 25275 >>Rendez la quête Un rapport au capitaine d'ouvrage
    .accept 14129 >>Acceptez la quête Déchiqueteur emballé !
    .target Labor Captain Grabbit
    .isOnQuest 25275
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grabbit|r
    .turnin 28496 >>Rendez la quête Ordre du chef de guerre : Azshara !
    .accept 14129 >>Acceptez la quête Déchiqueteur emballé !
    .target Labor Captain Grabbit
    .isOnQuest 28496
step
    #label RunawayShredder
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grabbit|r
    .accept 14129 >>Acceptez la quête Déchiqueteur emballé !
    .target Labor Captain Grabbit
step
    #completewith DefendtheGates
    >>Tuez |cRXP_ENEMY_Talrendis Repérage|r. Ils sont camouflés
    >>Tuez |cRXP_ENEMY_Weakened Mosshoof Stags|r. Dépouillez-les pour leur |cRXP_LOOT_Slab of Venaison|r
    >>|cRXP_ENEMY_Talrendis Repérage|r |cRXP_WARN_peuvent vous surprendre pendant que vous tuez|r |cRXP_ENEMY_Weakened Mosshoof Stags|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    .goto 76,27.47,73.55,60,0
    .goto 76,28.55,72.22,60,0
    .goto 76,29.89,71.73
    >>Attaquez un |cRXP_ENEMY_Déchiqueteur emballé|r. Montez dessus une fois qu'il devient amical
    .complete 14129,1 --Runaway Shredder Captured (1)
    .mob Runaway Shredder
step
    .goto 76,27.33,76.17
    .turnin 14129 >>Rendez la quête Déchiqueteur emballé !
    .accept 14134 >>Acceptez la quête Il faut bûcher
step
    #loop
    .goto 1447/1,-4994.10010,2593.60010,0
    .waypoint 1447/1,-4941.39990,2669.00000,30,0
    .waypoint 1447/1,-4994.10010,2593.60010,30,0
    .waypoint 1447/1,-5032.80029,2625.69995,30,0
    .waypoint 1447/1,-5063.00000,2662.30005,30,0
    >>Utilisez |T135437:0|t[Ramasser du bois]|r sur |cRXP_PICK_Azshara Bois Piles|r pour récupérer |cRXP_LOOT_Bois|r
    .complete 14134,1 --Azshara Lumber (6)
step
    .turnin 14134 >>Rendez la quête Il faut bûcher
    .accept 14135 >>Acceptez la quête Une coupe sombre
step
    #loop
    .goto 1447/1,-5007.70020,2719.19995,0
    .waypoint 1447/1,-5007.70020,2719.19995,30,0
    .waypoint 1447/1,-5013.30029,2780.50000,30,0
    .waypoint 1447/1,-5084.10010,2787.19995,30,0
    .waypoint 1447/1,-5088.00000,2726.50000,30,0
    >>|cRXP_WARN_Utilisez|r |T134427:0|t[Scie circulaire]|r |cRXP_WARN_sur|r |cRXP_FRIENDLY_Azshara Saplings|r |cRXP_WARN_afin de faire|r |cRXP_ENEMY_Talrendis Snipers|r |cRXP_WARN_vous attaquer|r
    >>|cRXP_WARN_Utilisez|r |T134427:0|t[Scie circulaire]|r |cRXP_WARN_et|r |T132330:0|t[Jet de lames]|r |cRXP_WARN_pour tuer les|r |cRXP_ENEMY_Talrendis Snipers|r
    -->>|cRXP_WARN_Make sure your|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_hits the very core of the tree|r
    .complete 14135,1 --Talrendis Sniper (9)
    .mob Talrendis Sniper
    .target Azshara Sapling
step
    #label DefendtheGates
    .turnin 14135 >>Rendez la quête Une coupe sombre
    .accept 14146 >>Acceptez la quête Défendez les portes !
step
    #completewith next
    .goto 76,27.00,76.76,50 >>Rendez-vous à la Porte arrière d'Orgrimmar
step
    .goto 76,27.017,76.728
    >>|cRXP_WARN_Utilisez vos|r |T134427:0|t[Scie circulaire]|r|cRXP_WARN_,|r |T132330:0|t[Jet de lames]|r |cRXP_WARN_et|r |T133716:0|t[Lanceur de grenades]|r |cRXP_WARN_pour tuer|r |cRXP_ENEMY_Talrendis Raiders|r
    >>|cRXP_WARN_Si vous avez perdu votre Déchiqueteur, montez un|r |cRXP_FRIENDLY_Déchiqueteur de secours|r |cRXP_WARN_à la place|r
    .complete 14146,1 --Talrendis Raider (20)
    .mob Talrendis Raider
    .target Backup Shredder
step
    .turnin 14146 >>Rendez la quête Défendez les portes !
    .accept 14155 >>Acceptez la quête Arbricide
step
    .goto 76,21.506,75.870
    >>Tuez |cRXP_ENEMY_Ancien de Talrendis|r à l'ouest
    >>|cRXP_WARN_Si vous avez perdu votre Déchiqueteur, montez un|r |cRXP_FRIENDLY_Déchiqueteur de secours|r |cRXP_WARN_à la place|r
    >>|cRXP_WARN_Lancez|r |T132489:0|t[Recharge] |cRXP_WARN_si votre|cRXP_FRIENDLY_ Déchiqueteur|r a une faible santé|r
    .complete 14155,1 --Talrendis Ancient (1)
    .unitscan Talrendis Ancient
    .target Backup Shredder
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Talrendis Repérage|r. Ils sont camouflés
    >>Tuez |cRXP_ENEMY_Weakened Mosshoof Stags|r. Dépouillez-les pour leur |cRXP_LOOT_Slab of Venaison|r
    >>|cRXP_ENEMY_Talrendis Repérage|r |cRXP_WARN_peuvent vous surprendre pendant que vous tuez|r |cRXP_ENEMY_Weakened Mosshoof Stags|r
    >>|cRXP_WARN_Passez|r cette étape si vous n'êtes pas presque fini à ce stade
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .disablecheckbox
    .unitscan Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    #label ArborcideTurnin
    .goto 76,27.00,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grabbit|r
    .turnin 14155 >>Rendez la quête Arbricide
    .accept 14162 >>Acceptez la quête Présentez-vous à Horzak
    .target Labor Captain Grabbit
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ag'tor Poing-de-sang|r
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>Acceptez la quête Le retour des Bien-nés ?
    .turnin 14127 >>Rendez la quête Le retour des Bien-nés ?
    .use 47039
    .itemcount 47039,1
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ag'tor Poing-de-sang|r
    .turnin 14117 >>Rendez la quête Les yeux d'Orneval
    .target Ag'tor Bloodfist
    .isQuestComplete 14117
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ag'tor Poing-de-sang|r
    .turnin 14127 >>Rendez la quête Le retour des Bien-nés ?
    .target Ag'tor Bloodfist
    .isQuestComplete 14118
step
    #completewith Horzak1
    #optional
    .abandon 14118 >>Abandonnez la quête Une livraison de venaison
step
    #completewith Horzak1
    #optional
    .abandon 14117 >>Abandonnez la quête Les yeux d'Orneval
step
    #completewith Horzak1
    .subzone 4830 >>Rendez-vous à la Station d'Orgrimmar du fusorail
step
    .goto Azshara,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malynea|r
    .turnin 14128 >>Rendez la quête Le retour des Bien-nés ?
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    #label Horzak1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Horzak|r et au |cRXP_FRIENDLY_Contremaître Fisk|r
    .turnin 14162 >>Rendez la quête Présentez-vous à Horzak
    .accept 14161 >>Acceptez la quête Un parfum de basilic
    .accept 14165 >>Acceptez la quête Froid comme la pierre
    .target +Horzak Zignibble
    .goto 76,29.15,66.25
    .accept 14197 >>Acceptez la quête Un quota à respecter
    .target +Foreman Fisk
    .goto Azshara,29.07,66.25
step
    #completewith next
    .subzone 4744 >>Voyagez à l'ouest vers Mountainfoot Stripmine
step
    #loop
    .goto 76,25.976,68.758,0
    .goto 76,25.533,69.045,0
    .goto 76,25.096,69.901,0
    .waypoint 76,25.976,68.758,30,0
    .waypoint 76,25.533,69.045,30,0
    .waypoint 76,25.096,69.901,30,0
    .aura 67032 >>Ramassez un |cRXP_FRIENDLY_Mineur du Puy-du-Pied|r
    .target Mountainfoot Miner
    .isOnQuest 14165
step
    .goto 76,29.075,66.418
	>>Portez le |cRXP_FRIENDLY_Mineur du Puy-du-Pied|r de retour à la Station d'Orgrimmar du fusorail
    >>|cRXP_WARN_Vous ne pouvez pas monter ou vous transformer pendant que vous faites cela!|r
    .complete 14165,1 --Stonified Miner Delivered
    .target Mountainfoot Miner
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Horzak|r
    .turnin 14165 >>Rendez la quête Froid comme la pierre
    .accept 14190 >>Acceptez la quête Le prisme parfait
    .target Horzak Zignibble
step
    #completewith GreyBasilisks
    >>Ramassez les |cRXP_PICK_Lingots de fer|r et les |cRXP_PICK_Stocks de fer|r sur le sol pour |cRXP_LOOT_Mountainfoot Fer|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith Refleshify
    >>Tuez les |cRXP_ENEMY_Basilics pierre-grise|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    .goto 76,21.91,69.37
    >>Tuez les |cRXP_ENEMY_Talrendis Saboteurs|r. Ramassez-les pour un |cRXP_LOOT_Pendentif de cristal|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step
    .goto 76,20.26,70.40
    >>Cliquez sur |cRXP_PICK_Headquarters Radio|r
    .turnin 14190 >>Rendez la quête Le prisme parfait
    .accept 14192 >>Acceptez la quête Un cristal à tout prisme !
step
    .goto 76,20.03,69.97
    >>Cliquez sur |cRXP_PICK_Armoire à armes|r
    .turnin 14192 >>Rendez la quête Un cristal à tout prisme !
    .accept 14194 >>Acceptez la quête Reviandication
step
    #label Refleshify
    #loop
    .goto 76,24.869,69.998,0
    .waypoint 76,22.454,69.462,20,0
    .waypoint 76,22.948,69.353,20,0
    .waypoint 76,23.338,71.559,20,0
    .waypoint 76,24.442,69.803,20,0
    .waypoint 76,24.869,69.998,20,0
    .waypoint 76,24.877,71.476,20,0
    .waypoint 76,24.633,72.520,20,0
    .waypoint 76,26.635,70.113,20,0
    .waypoint 76,25.517,69.028,20,0
    .waypoint 76,24.911,68.008,20,0
    .waypoint 76,23.005,68.003,20,0
    .use 48104 >> |cRXP_WARN_Utilisez|r |T249182:0|t[The Refleshifier] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Mountainfoot Miners|r
    .complete 14194,1 --Mountainfoot Miner Destoned (8)
    .target Mountainfoot Miner
step
    #label GreyBasilisks
    #loop
    .goto 76,24.459,70.185,0
    .waypoint 76,24.459,70.185,40,0
    .waypoint 76,26.214,70.118,40,0
    .waypoint 76,24.683,68.383,40,0
    .waypoint 76,22.607,69.349,40,0
    >>Tuez les |cRXP_ENEMY_Basilics pierre-grise|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    #loop
    .goto 76,22.683,68.753,0
    .waypoint 76,21.973,69.859,30,0
    .waypoint 76,22.683,68.753,30,0
    .waypoint 76,24.608,70.578,30,0
    .waypoint 76,25.493,69.020,30,0
    .waypoint 76,25.367,68.128,30,0
    .waypoint 76,22.933,67.848,30,0
    >>Ramassez les |cRXP_PICK_Lingots de fer|r et les |cRXP_PICK_Stocks de fer|r sur le sol pour |cRXP_LOOT_Mountainfoot Fer|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith next
    .subzone 4830 >>Voyagez vers la Station d'Orgrimmar du fusorail
step
    .goto 76,29.12,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fisk|r
    .turnin 14197 >>Rendez la quête Un quota à respecter
    .target Foreman Fisk
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Horzak|r
    .turnin 14161 >>Rendez la quête Un parfum de basilic
    .turnin 14194 >>Rendez la quête Reviandication
    .target Horzak Zignibble
step
    .goto 76,29.53,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Worcester|r
    .accept 14468 >>Acceptez la quête Le bouche-trou
    .target Private Worcester
step
    #completewith next
    .subzone 1233 >>Voyagez vers La crête Lugubre
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Molotov|r
    .turnin 14468 >>Rendez la quête Le bouche-trou
    .accept 14469 >>Acceptez la quête Matériel de récupération
    .target Commander Molotov
step
    .goto 76,29.38,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glix|r
    .accept 14470 >>Acceptez la quête Percée militaire
    .target Glix Grindlock
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xiz|r
    .accept 14471 >>Acceptez la quête Mortier au premier degré
    .target Xiz "The Eye" Salvoblast
step
    #completewith next
    >>Ramassez les |cRXP_FRIENDLY_Soldats morts|r sur le sol pour les |cRXP_LOOT_Fournitures militaires|r
    >>|cRXP_WARN_Attention aux|r |cFFEB144CMines|r|cRXP_WARN_. Vous serez lancé loin si vous y marchez.|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    >>Tuez le |cRXP_ENEMY_Seigneur de guerre Krellian|r. Ramassez le |cRXP_LOOT_GSB|r par terre après
    .complete 14470,1 --Warlord Krellian (1)
    .mob +Warlord Krellian
    .goto 76,27.562,52.010
    .complete 14470,2 --SFG (1)
    .goto 76,27.693,51.903
step
    #loop
    .goto 76,29.619,53.022,0
    .waypoint 76,28.259,53.135,20,0
    .waypoint 76,28.735,52.656,20,0
    .waypoint 76,29.212,52.368,20,0
    .waypoint 76,29.619,53.022,20,0
    .waypoint 76,29.508,54.180,20,0
    .waypoint 76,29.166,54.338,20,0
    .waypoint 76,28.623,54.670,20,0
    >>Ramassez les |cRXP_FRIENDLY_Soldats morts|r sur le sol pour les |cRXP_LOOT_Fournitures militaires|r
    >>|cRXP_WARN_Attention aux|r |cFFEB144CMines|r|cRXP_WARN_. Vous serez lancé loin si vous y marchez.|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glix|r
    .turnin 14470 >>Rendez la quête Percée militaire
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Molotov|r
    .turnin 14469 >>Rendez la quête Matériel de récupération
    .target Commander Molotov
step
    .goto 76,31.12,57.59
    .vehicle >> Montez sur le |cRXP_FRIENDLY_Mortier Baille-Fonds|r
    .target Bilgewater Mortar
    .isOnQuest 14471
step
    .goto 76,31.12,57.59
    >>|cRXP_WARN_Utilisez|r |T252172:0|t[Cartouche de mortier] |cRXP_WARN_pour éliminer|r les |cRXP_ENEMY_Fouette-bile Attaquants|r
    .complete 14471,1 --Spitelash Attackers blown to bits (60)
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xiz|r
    .turnin 14471 >>Rendez la quête Mortier au premier degré
    .target Xiz "The Eye" Salvoblast
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glix|r
    .accept 14472 >>Acceptez la quête Dans ta face !
    .target Glix Grindlock
step
    .goto 76,31.61,60.49
    .use 49700 >> |cRXP_WARN_Utilisez votre|r |T133032:0|t[GSB] |cRXP_WARN_pour tuer un|r |cRXP_ENEMY_Fils d'Arkkoroc asservi|r
    .complete 14472,1 --Enslaved Son of Arkkoroc (1)
    .mob Enslaved Son of Arkkoroc
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glix|r
    .turnin 14472 >>Rendez la quête Dans ta face !
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Molotov|r
    .accept 24452 >>Acceptez la quête Objectif rentabilité
    .target Commander Molotov
step
    .goto 76,31.924,50.964
    >>Voyagez vers le centre des Ruines d'Eldarath
    .use 49701 >> |cRXP_WARN_Utilisez votre|r |T133866:0|t[Générateur de champ de camouflage] |cRXP_WARN_pour devenir invisible|r
    .complete 24452,1 --Heart of Arkkoroc identified
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Molotov|r
    .turnin 24452 >>Rendez la quête Objectif rentabilité
    .accept 24453 >>Acceptez la quête Worcester fait monter la sauce
    .target Commander Molotov
step
    #completewith next
    .subzone 4830 >>Rendez-vous à la Station d'Orgrimmar du fusorail
step
    .goto 76,29.53,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Worcester|r
    .turnin 24453 >>Rendez la quête Worcester fait monter la sauce
    .target Private Worcester
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Custer|r
    .accept 14202 >>Acceptez la quête La surveillance des rives du lac
    .target Custer Clubnik
step
    .goto 76,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malynea|r
    .accept 14201 >>Acceptez la quête Un millier d'histoires dans le sable
    .target Malynea Skyreaver
step
    #completewith next
    >>Ramassez |cRXP_PICK_Ancient Debril Piles|r du sol pour les |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    >>Défendez |cRXP_FRIENDLY_Géomètre gobeline stagiaire|r face aux |cRXP_ENEMY_Shades of Hate|r qui arrivent tandis qu'elle marque les relevés
    .use 48655 >> |cRXP_WARN_Utilisez votre|r |T133015:0|t[Surveyor's Fanal] |cRXP_WARN_pour invoquer un nouveau|r |cRXP_FRIENDLY_Goblin Surveyor|r |cRXP_WARN_si nécessaire|r
    .complete 14202,2 --Survey North Marker (1)
    .goto 76,34.69,71.58
    .complete 14202,3 --Survey East Marker (1)
    .goto 1447/1,-5434.39990,2637.10010
    .complete 14202,1 --Survey West Marker (1)
    .goto 76,34.263,76.616
    .target Goblin Surveyor Jr. Grade
    .mob Shade of Hate
step
    #loop
    .goto 1447/1,-5316.60010,2747.90015,0
    .waypoint 1447/1,-5316.60010,2747.90015,40,0
    .waypoint 1447/1,-5409.30029,2716.69995,40,0
    .waypoint 1447/1,-5457.70020,2650.60010,40,0
    .waypoint 1447/1,-5385.00000,2562.80005,40,0
    .waypoint 1447/1,-5335.39990,2535.40015,40,0
    .waypoint 1447/1,-5274.00000,2535.90015,40,0
    .waypoint 1447/1,-5221.60010,2638.00000,40,0
    >>Ramassez |cRXP_PICK_Ancient Debril Piles|r du sol pour les |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Custer|r
    .turnin 14202 >>Rendez la quête La surveillance des rives du lac
    .accept 14209 >>Acceptez la quête Viscosité
    .target Custer Clubnik
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malynea|r
    .turnin 14201 >>Rendez la quête Un millier d'histoires dans le sable
    --.accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
    --could skip 14215 and follow-up
step
    .goto 76,30.14,67.25
    >>Cliquez sur |cRXP_FRIENDLY_Buldo de Clubnik|r
    >>Tuez le |cRXP_ENEMY_Ectoplasm|r qui apparaît. Ramassez-le pour son |cRXP_LOOT_Sample|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .target Clubnik's Dozer
    .mob Ectoplasmic Exhaust
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Custer|r
    .turnin 14209 >>Rendez la quête Viscosité
    .accept 14423 >>Acceptez la quête La gêne de Margène
    .target Custer Clubnik
step
    .goto 76,30.08,67.27
    .cast 68007 >>|cRXP_WARN_Utilisez|r |T135619:0|t[Béni Flaregun] |cRXP_WARN_près de|r |cRXP_FRIENDLY_Buldo de Clubnik|r
    .timer 34,La gêne de Margène RP
    >>Attaquez |cRXP_ENEMY_Buldo de Clubnik|r une fois qu'il devient hostile
    .complete 14423,1 --Clubnik's Dozer Exorcised (1)
    .use 49350
    .target Clubnik's Dozer
    .isOnQuest 14423
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Custer|r
    .turnin 14423 >>Rendez la quête La gêne de Margène
    .accept 14424 >>Acceptez la quête Science, on tourne !
    .target Custer Clubnik

    --next 2 quests not mandatory to continue in zone, could skip

step << skip
    .goto 1447/1,-5381.60010,2720.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalytha|r à Lac Mennar
    .aura 67704 >>|cRXP_WARN_Laissez-la vous donner le|r |T136223:0|t[Souvenirs des morts] |cRXP_WARN_Amélioration|r
    .skipgossip
    .target Spirit of Kalytha
    .isOnQuest 14215
step << skip
    .goto 76,37.515,74.507
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archimage Selwyn|r
    .complete 14215,1 --Kalytha's Secret Learned (1)
    .skipgossip
    .target Archmage Selwyn
step << skip
    .turnin 14215 >>Rendez la quête Souvenirs des morts
    .accept 14216 >>Acceptez la quête Le mystère de la pierre de Sarcen
step << skip
    .goto 76,35.57,75.31
    >>Ramassez |cRXP_PICK_Ancient Pierre Cask|r au fond du lac pour la |cRXP_LOOT_Sarcen Pierre|r
    .complete 14216,1 --Sarcen Stone (1)
step << skip
    .goto 76,29.68,66.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malynea|r
    .turnin 14216 >>Rendez la quête Le mystère de la pierre de Sarcen
    .target Malynea Skyreaver

    --Travel to next area here

step
    #completewith next
    .goto 1447/1,-4993.50000,2936.90015,5,0
    .goto 1447/1,-4998.70020,2947.10010,3 >>Prenez l'ascenseur jusqu'à la plate-forme
step
    .goto Azshara,29.49,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Jockey de fusée de Baille-Fonds|r
    .gossipoption 112430 >>Prenez le trajet en fusée vers le Terminus Sud du fusorail
    .timer 41,Terminus Sud du fusorail
    .target Bilgewater Rocket-jockey
    .isOnQuest 14424
step
    .goto 76,50.411,74.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .turnin 14424 >>Rendez la quête Science, on tourne !
    .accept 14308 >>Acceptez la quête Quand la science attaque
    .target Assistant Greely
step
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smooks|r
    .accept 14258 >>Acceptez la quête À bas les Nagas !
    .target Bombardier Captain Smooks
step
    #completewith GoblinFires
    >>Ramassez |cRXP_PICK_Obus de mortier gobelin|r au sol
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    #completewith NineVisit1
    .use 49132 >> |cRXP_WARN_Visez votre|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_sur les feux et|r |cRXP_FRIENDLY_Recherche Stagiaires|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
step
    .goto 76,45.07,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Twistex|r
    .accept 14322 >>Acceptez la quête La science, c'est le MAL !
    .target Twistex Happytongs
step
    #label NineVisit1
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sujet n° 9|r
    .accept 14408 >>Acceptez la quête Le plan de n° 9
    .target Subject Nine
step
    #label GoblinFires
    #loop
    .goto 76,44.122,76.798,0
    .waypoint 76,44.122,76.798,30,0
    .waypoint 76,43.906,74.755,30,0
    .waypoint 76,43.465,75.872,30,0
    .use 49132 >> |cRXP_WARN_Visez votre|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_sur les feux et|r |cRXP_FRIENDLY_Recherche Stagiaires|r
    >>|cRXP_WARN_Attention aux|r |cRXP_ENEMY_Subject Quatre|r|cRXP_WARN_ (raptor rouge). Il peut vous tuer d'un coup|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
    .unitscan Subject Four
step
    .goto 76,43.82,77.39
    >>Cliquez sur |cRXP_PICK_Haut-parleur du laboratoire secret|r
    .turnin 14308 >>Rendez la quête Quand la science attaque
    .accept 14310 >>Acceptez la quête Erreur de segmentation : évacuation du noyau
step
    .goto 76,43.818,77.301,10,0
    .goto 76,43.983,76.263,12,0
    .goto 76,44.108,75.642,12,0
    .goto 76,45.267,75.668,20,0
    .goto 76,46.571,75.710,20,0
    .goto 76,47.874,75.147,20,0
    .goto 76,49.490,74.495
    >>Cliquez sur |cRXP_PICK_Console de contrôle du réacteur|r pour commencer l'escorte
    >>Escortez le chariot vers l'Échange du fusorail sud
    .use 49132 >> |cRXP_WARN_Visez votre|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_sur le|r |cRXP_FRIENDLY_Gobelin de labo trapu|r |cRXP_WARN_chaque fois qu'il est en feu|r
    .complete 14310,1 --Azsharite Core Delivered (1)
    .target Hulking Labgoblin
step
    .goto 76,50.42,74.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .turnin 14310 >>Rendez la quête Erreur de segmentation : évacuation du noyau
    .accept 14370 >>Acceptez la quête La mystérieuse azsharite
    .accept 14371 >>Acceptez la quête Un en-cas de géant
    .target Assistant Greely
step
    .goto 76,45.97,76.08
    >>Cliquez sur |cRXP_PICK_Buzzer de la porte|r
    >>Tuez le |cRXP_ENEMY_Gobelin mutant|r qui apparaît. Dépouillez-le de son |cRXP_LOOT_Plan de fusée|r
    .complete 14408,1 --Ring Door Buzzer (1)
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
    .skipgossip
    --VV Gossipoption
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Habitants des falaises de l'Aile-brume|r. Dépouillez-les de leurs |cRXP_LOOT_Carcasses|r
    >>Tuez les |cRXP_ENEMY_Hippogryphes chargés d'électricité statique|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    #loop
    .goto 76,46.586,71.044,0
    .goto 76,42.053,70.833,0
    .goto 76,41.660,77.979,0
    .goto 76,44.681,81.500,0
    .waypoint 76,46.586,71.044,40,0
    .waypoint 76,43.917,70.036,40,0
    .waypoint 76,43.212,68.401,40,0
    .waypoint 76,42.053,70.833,40,0
    .waypoint 76,41.660,77.979,40,0
    .waypoint 76,43.022,81.757,40,0
    .waypoint 76,44.681,81.500,40,0
    >>Ramassez les |cRXP_PICK_Azsharite Formations|r par terre pour les |cRXP_LOOT_Azsharite Samples|r
    .complete 14370,1 --Azsharite Sample (5)
step
    #loop
    .goto 76,44.908,79.037,0
    .waypoint 76,45.723,72.688,60,0
    .waypoint 76,45.068,77.881,60,0
    .waypoint 76,44.908,79.037,60,0
    >>Tuez les |cRXP_ENEMY_Habitants des falaises de l'Aile-brume|r. Dépouillez-les de leurs |cRXP_LOOT_Carcasses|r
    >>Tuez les |cRXP_ENEMY_Hippogryphes chargés d'électricité statique|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sujet n° 9|r
    .turnin 14408 >>Rendez la quête Le plan de n° 9
    .accept 14422 >>Acceptez la quête Ouvrez, ouvrez la cage aux raptors
    .target Subject Nine
step
    .goto 76,44.06,75.09
    .aura 69704,5+ >>Ouvrez 5 |cRXP_PICK_Cage à spécimen|r dans le Laboratoire secret
    .isOnQuest 14422
step
    .goto 76,42.25,76.08
    >>Retournez à |cRXP_FRIENDLY_Sujet n° 9|r
    .complete 14422,1 --Experimental Raptor Delivered (5)
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sujet n° 9|r
    .turnin 14422 >> Rendez la quête Ouvrez, ouvrez la cage aux raptors
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Twistex|r
    .turnin 14322 >>Rendez la quête La science, c'est le MAL !
    .target Twistex Happytongs
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .turnin 14370 >>Rendez la quête La mystérieuse azsharite
    .turnin 14371 >>Rendez la quête Un en-cas de géant
    .accept 14377 >>Acceptez la quête C'est géant !
    .target Assistant Greely
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gormungan|r
    .complete 14377,1 --Secret of Azsharite Discovered (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .turnin 14377 >>Rendez la quête C'est géant !
    .accept 14385 >>Acceptez la quête Azsharite : expérience n° 1
    .target Assistant Greely
step
    .goto 76,50.53,74.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart|r
    .accept 14383 >>Acceptez la quête Les affreux bricolos des confins Dévastés
    .target Hobart Grapplehammer
step
    #completewith next
    .subzone 1256 >>Rendez-vous aux confins Dévastés
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Netgun Gnomes|r, les |cRXP_ENEMY_Zapper Gnomes|r et |cRXP_ENEMY_Bingham Gadgetaressort|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 76,39.89,84.76
    >>Ramassez le |cRXP_LOOT_Giant-Sized Laxative|r
    >>|cRXP_WARN_Prenez l'ascenseur jusqu'à l'étage supérieur du bâtiment où|r |cRXP_ENEMY_Bingham Gadgetaressort|r |cRXP_WARN_est situé|r
    .complete 14385,2 --Giant-Sized Laxative (1)
step
    #loop
    .goto 76,40.921,84.919,0
    .waypoint 76,40.921,84.919,40,0
    .waypoint 76,42.938,85.531,40,0
    .waypoint 76,40.990,83.634,40,0
    .waypoint 76,42.123,83.416,40,0
    .waypoint 76,43.943,82.385,40,0
    >>Terminez de tuer les |cRXP_ENEMY_Netgun Gnomes|r, les |cRXP_ENEMY_Zapper Gnomes|r et |cRXP_ENEMY_Bingham Gadgetaressort|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gormungan|r
    .complete 14385,1 --Try to Feed Gormungan (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .turnin 14385 >>Rendez la quête Azsharite : expérience n° 1
    .accept 14388 >>Acceptez la quête Azsharite : expérience n° 2
    .target Assistant Greely
 step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .aura 68710 >>Rapetissez-vous en une souris
    .skipgossipid 111824
    .isOnQuest 14388
    .target Assistant Greely
step
    .goto 76,50.313,74.422
    .vehicle >>Montez sur le |cRXP_FRIENDLY_Rat du fusorail|r
    .target Rocketway Rat
    .isOnQuest 14388
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gormungan|r
    >>|cRXP_WARN_Utilisez|r |T132328:0|t[Détaler]|cRXP_WARN_ pour augmenter votre vitesse de déplacement|r
    .complete 14388,1 --Gormungan Scared (1)
    .skipgossip
    .target Gormungan
step
    #loop
    .goto 76,46.532,75.907,0
    .goto 76,43.494,75.449,0
    .waypoint 76,46.532,75.907,20,0
    .waypoint 76,46.070,76.435,20,0
    .waypoint 76,44.095,76.145,20,0
    .waypoint 76,44.205,77.003,20,0
    .waypoint 76,43.494,75.449,20,0
    .waypoint 76,43.825,75.554,20,0
    .waypoint 76,43.536,74.743,20,0
    >>Terminez de ramasser les |cRXP_PICK_Goblin Mortier Carapaces|r sur le sol
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greely|r
    .turnin 14388 >>Rendez la quête Azsharite : expérience n° 2
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart|r
    .turnin 14383 >>Rendez la quête Les affreux bricolos des confins Dévastés
    .accept 24458 >>Acceptez la quête Un hello pour l'armement
    .target Hobart Grapplehammer
step
    .goto 76,52.21,74.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smooks|r
    .turnin 14258 >>Rendez la quête Point de mire
    .target Bombardier Captain Smooks
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torg|r
    .accept 14262 >>Acceptez la quête Le ventre du poisson
    .accept 14267 >>Acceptez la quête Enquête au sanctuaire de la mer
    .target Torg Twocrush
    .maxlevel 15
step
    #xprate <1.2
    #completewith KeystoneShard
    .goto 1447/1,-6378.30029,2577.10010
    .subzone 4826 >>Voyagez vers les Falaises de la Tempête
    .isOnQuest 14262
step
    #xprate <1.2
    #completewith KeystoneShard
    >>Tuez |cRXP_ENEMY_Furie des tempêtes fouette-bile|r et |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,58.98,71.85
    >>Cliquez sur la |cRXP_PICK_Naga Puissance Pierre|r
    .turnin 14267 >>Rendez la quête Enquête au sanctuaire de la mer
    .accept 14270 >>Acceptez la quête L'éclat de la pierre de voûte
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,57.51,70.96
    >>Ramassez le |cRXP_LOOT_Keystone Shard|r sur le sol
    .complete 14270,1 --Keystone Shard (1)
    .isOnQuest 14262
step
    #xprate <1.2
    #label KeystoneShard
    .goto 76,58.98,71.85
    >>Cliquez sur la |cRXP_PICK_Naga Puissance Pierre|r
    .turnin 14270 >>Rendez la quête L'éclat de la pierre de voûte
    .accept 14271 >>Acceptez la quête Présentez-vous à Broie-double
    .isOnQuest 14262
step
    #xprate <1.2
    #loop
    .goto 76,61.858,77.871,0
    .waypoint 76,58.019,76.688,50,0
    .waypoint 76,59.851,77.431,50,0
    .waypoint 76,61.858,77.871,50,0
    .waypoint 76,63.084,82.431,50,0
    >>Tuez |cRXP_ENEMY_Furie des tempêtes fouette-bile|r et |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torg Broie-double|r
    .turnin 14262 >>Rendez la quête Noyer le poisson
    .turnin 14271 >>Rendez la quête Présentez-vous à Broie-double
    .accept 14295 >>Acceptez la quête Les sœurs de la mer
    .target Torg Twocrush
    .isQuestComplete 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torg Broie-double|r
    .turnin 14271 >>Rendez la quête Présentez-vous à Broie-double
    .accept 14295 >>Acceptez la quête Les sœurs de la mer
    .target Torg Twocrush
    .isQuestComplete 14271
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torg Broie-double|r
    .turnin 14271 >>Rendez la quête Présentez-vous à Broie-double
    .accept 14295 >>Acceptez la quête Les sœurs de la mer
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.15,75.87
    >>Tuez la |cRXP_ENEMY_Dame Silisthra|r
    >>|cRXP_WARN_Cliquez|r sur la |cRXP_FRIENDLY_Silisthra's Puissance Pierre|r |cRXP_WARN_au sommet de la plateforme pour l'affaiblir|r
    .complete 14295,1 --Lady Silisthra (1)
    .mob Lady Silisthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.63,79.42
    >>Tuez la |cRXP_ENEMY_Dame Vesthra|r
    >>|cRXP_WARN_Cliquez|r sur la |cRXP_FRIENDLY_Vesthra's Puissance Pierre|r |cRXP_WARN_au sommet de la plateforme pour l'affaiblir|r
    .complete 14295,2 --Lady Vesthra (1)
    .mob Lady Vesthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,50.67,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torg Broie-double|r
    .turnin 14295 >>Rendez la quête Les sœurs de la mer
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    .goto 76,51.492,74.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Friz Tourneterre|r
    .gossipoption 111876 >>Prenez le Vol vers Havre Baille-Fonds
    .timer 59,Une promotion forcée RP
    .target Friz Groundspin
    .isOnQuest 24458
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >> Apprenez vos sorts de classe
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulle Briquet|r
    .trainer >> Apprenez vos sorts de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doigt Bolik|r
    .trainer >> Apprenez vos sorts de classe
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Ecumelor|r
    .trainer >> Apprenez vos sorts de classe
    .target Sister Goldskimmer
step
    .goto 76,56.978,50.093
    >>Cliquez sur |cRXP_PICK_Wrenchmen Une moisson de corps Poster|r à l'intérieur du bâtiment
    .accept 14478 >>Acceptez la quête Opération Poiscaille
step
    .goto 1447/1,-6519.00000,3529.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crassouille Doigts-graisseux|r
    .home >> Liez votre Pierre de foyer à Havre Baille-Fonds
    .target Grimy Greasefingers
    .subzoneskip 4821,1
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Puant Shapshiv|r
    .trainer >> Apprenez vos sorts de classe
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bamm Mégabombe|r
    .trainer >> Apprenez vos sorts de classe
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mécano-guerrier NX-01|r à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Warrior-Matic NX-01

    --VV Confirm if there are no Druid/Pala trainers in Bilgewater

step
    .goto 76,59.33,50.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teemo|r
    .accept 14407 >>Acceptez la quête Le blues d'Azshara
    .target Teemo
step
    .goto 76,60.56,51.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bleenik Foiramorce|r
    .turnin 24458 >>Rendez la quête Une promotion forcée
    .target Bleenik Fizzlefuse
step
    .goto 76,60.64,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandant Molotov|r
    .turnin 14478 >>Rendez la quête Opération Poiscaille
    .accept 24455 >>Acceptez la quête Déploiement rapide
    .target Commander Molotov
step
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Desoto|r
    .turnin 24455 >>Rendez la quête Déploiement rapide
    .accept 14479 >>Acceptez la quête Il y en a beaucoup comme ça
    .target Captain Desoto
step
    .goto 76,57.891,52.246
    .vehicle >>Montez la |cRXP_FRIENDLY_Fusée|r
    .timer 38,Il y en a beaucoup comme ça RP
    .target Surface to Other Surface Transport
    .isOnQuest 14479
step
    .goto 76,39.14,51.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grabuge|r
    .accept 24437 >>Acceptez la quête Premier arrivé, premier servi
    .target Ruckus
step
    .goto 76,41.50,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 14479 >>Rendez la quête Il y en a beaucoup comme ça
    .accept 24435 >>Acceptez la quête Le grand lessivage
    .target Lieutenant Drex
step
    .goto 76,41.37,53.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Hort|r
    .accept 24436 >>Acceptez la quête Halos largués
    .target Sergeant Hort
step
    #completewith NorthernVista
    >>Tuez |cRXP_ENEMY_Spitelash Naga|r et |cRXP_ENEMY_Sirène fouette-bile|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #completewith KillNagas
    .use 49679 >>|cRXP_WARN_Utilisez votre|r |T135619:0|t[Sanctifié Flaregun] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,43.86,59.95
    .use 49685 >>|cRXP_WARN_Utilisez le|r |T132485:0|t[Drapeau of Défense territoriale Claim] |cRXP_WARN_au Pagoda du Sud|r
    .complete 24437,1 --Southern Pagoda claimed (1)
step
    .goto 76,43.60,43.43
    .use 49685 >>|cRXP_WARN_Utilisez le|r |T132485:0|t[Drapeau of Défense territoriale Claim] |cRXP_WARN_au Big ol' Tour|r
    .complete 24437,2 --Big ol' Tower claimed (1)
step
    #label NorthernVista
    .goto 76,45.46,38.52
    .use 49685 >>|cRXP_WARN_Utilisez le|r |T1324855:0|t[Drapeau of Défense territoriale Claim] |cRXP_WARN_au Northern Vista|r
    .complete 24437,3 --Northern Vista claimed (1)
step
    #label KillNagas
    #loop
    .goto 76,40.901,51.711,0
    .waypoint 76,42.234,43.478,60,0
    .waypoint 76,40.500,47.338,60,0
    .waypoint 76,40.901,51.711,60,0
    .waypoint 76,42.469,56.429,60,0
    .waypoint 76,42.583,60.598,60,0
    >>Tuez |cRXP_ENEMY_Spitelash Naga|r et |cRXP_ENEMY_Sirène fouette-bile|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #loop
    .goto 76,41.538,47.075,0
    .waypoint 76,42.063,42.177,30,0
    .waypoint 76,41.636,43.947,30,0
    .waypoint 76,41.538,47.075,30,0
    .waypoint 76,40.529,49.245,30,0
    .waypoint 76,39.905,51.764,30,0
    .waypoint 76,39.729,53.869,30,0
    .waypoint 76,42.040,50.686,30,0
    .waypoint 76,43.193,52.463,30,0
    .waypoint 76,42.736,60.005,30,0
    .use 49679 >>|cRXP_WARN_Utilisez votre|r |T135619:0|t[Sanctifié Flaregun] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,41.387,53.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Hort|r
    .turnin 24436 >>Rendez la quête Halos largués
    .target Sergeant Hort
step
    .goto 76,41.499,53.650
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 24435 >>Rendez la quête Le grand lessivage
    .accept 24448 >>Acceptez la quête Promotion sur le terrain
    .target Lieutenant Drex
step
    .goto 76,39.133,51.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grabuge|r
    .turnin 24437 >>Rendez la quête Premier arrivé, premier servi
    .target Ruckus
step
    .goto 76,34.317,44.910
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Tork|r
    .turnin 24448 >>Rendez la quête Promotion sur le terrain
    .accept 14487 >>Acceptez la quête Cœur qui bat encore
    .target Captain Tork
step
    .goto 76,34.450,44.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Zelks|r
    .accept 14480 >>Acceptez la quête Extermination
    .accept 14484 >>Acceptez la quête La tête du serpent
    .accept 14485 >>Acceptez la quête Tocant requis
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tora Halotrix|r
    .accept 14486 >>Acceptez la quête S'occuper des marchandises
    .target Tora Halotrix
step
    #sticky
    #completewith SpitelashNagas
    .cast 69310 >>|cRXP_WARN_Utiliser|r |T134286:0|t[Fusée de la Brigade gob] |cRXP_WARN_pour invoquer|r |cRXP_FRIENDLY_Goblins|r |cRXP_WARN_qui vous assisteront avec les quêtes à venir|r
    .use 49629
step
    #completewith LordKassarus
    >>Détruire |cRXP_PICK_Fouette-bile Runestones|r
    >>|cRXP_FRIENDLY_Bricoler|r |cRXP_WARN_va placer des explosifs aux Runestones. Défendez-le contre arrive|r |cRXP_ENEMY_Fouette-bile Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
step
    #completewith Runestones
    >>Butin |cRXP_LOOT_Highborne Tablets|r sur le sol
    .complete 14486,1 --Highborne Tablet (12)
step
    #completewith HighborneTablets
    >>Tuez les |cRXP_ENEMY_Fouette-bile Battlemasters|r et les |cRXP_ENEMY_Fouette-bile Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 76,31.877,50.086
    >>Butin le |cRXP_LOOT_Cœur d'Arkkoroc|r sur le sol
    .complete 14487,1 --|1/1 Heart of Arkkoroc
    .use 49629
step
    #label LordKassarus
    .goto 76,35.993,49.836
    >>Tuez |cRXP_ENEMY_Seigneur Kassarus|r
    .complete 14484,1 --Lord Kassarus (1)
    .mob Lord Kassarus
    .use 49629
step
    #label Runestones
    #loop
    .goto 76,34.045,51.533,0
    .goto 76,36.039,47.628,0
    .waypoint 76,30.477,48.782,20,0
    .waypoint 76,32.307,52.460,20,0
    .waypoint 76,34.045,51.533,20,0
    .waypoint 76,34.335,48.192,20,0
    .waypoint 76,36.039,47.628,20,0
    >>Détruire |cRXP_PICK_Fouette-bile Runestones|r
    >>|cRXP_FRIENDLY_Bricoler|r |cRXP_WARN_va placer des explosifs aux Runestones. Défendez-le contre arrive|r |cRXP_ENEMY_Fouette-bile Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
    .use 49629
step
    #label HighborneTablets
    #loop
    .goto 76,30.114,49.084,0
    .waypoint 76,33.666,47.151,20,0
    .waypoint 76,32.448,48.661,20,0
    .waypoint 76,31.121,48.792,20,0
    .waypoint 76,30.274,48.555,20,0
    .waypoint 76,30.114,49.084,20,0
    .waypoint 76,30.293,50.517,20,0
    .waypoint 76,30.179,51.323,20,0
    .waypoint 76,31.410,52.117,20,0
    .waypoint 76,31.982,51.393,20,0
    .waypoint 76,32.188,53.156,20,0
    .waypoint 76,33.390,51.737,20,0
    .waypoint 76,34.262,49.631,20,0
    .waypoint 76,34.745,47.102,20,0
    >>Butin |cRXP_LOOT_Highborne Tablets|r sur le sol
    .complete 14486,1 --Highborne Tablet (12)
    .use 49629
step
    #label SpitelashNagas
    #loop
    .goto 76,30.159,49.817,0
    .waypoint 76,32.789,46.635,60,0
    .waypoint 76,30.596,47.761,60,0
    .waypoint 76,30.159,49.817,60,0
    .waypoint 76,32.387,53.496,60,0
    .waypoint 76,34.325,51.617,60,0
    .waypoint 76,33.899,46.811,60,0
    >>Tuez les |cRXP_ENEMY_Fouette-bile Battlemasters|r et les |cRXP_ENEMY_Fouette-bile Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
    .use 49629
step
    .goto 76,34.464,44.727
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Zelks|r
    .turnin 14480 >>Rendre la quête Extermination
    .turnin 14484 >>Rendre la quête La tête du serpent
    .turnin 14485 >>Rendre la quête Tocant est demandé au rayon explosifs
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tora Halotrix|r
    .turnin 14486 >>Rendre la quête Bien tabler
    .target Tora Halotrix
step
    .goto 76,34.307,44.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Tork|r
    .turnin 14487 >>Rendre la quête Coup de cœur
    .accept 24449 >>Acceptez la quête Permission à terre
    .target Captain Tork
step
    .goto 76,34.513,44.512
    .vehicle >>Montez sur le |cRXP_FRIENDLY_Gyrocoptère militaire|r
    .timer 32,Permission à terre RP
    .target Military Gyrocopter
    .isOnQuest 24449
step
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oncle Binz|r
    .turnin 24449 >>Rendre la quête Permission à terre
    .target Uncle Bedlam
step
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalec|r
    .turnin 14407 >>Rendre la quête Le blues d'Azshara
    .target Kalec
step
    .maxlevel 18,NorthAzsharaSkip
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalec|r
    .accept 14130 >>Acceptez la quête Un ami haut en couleur
    .target Kalec
step
    #completewith next
    .goto 76,70.36,36.25,60 >>Voyagez vers |cRXP_FRIENDLY_Ergll|r
    >>|cRXP_WARN_Vous pouvez marcher sur l'eau pendant les 5 prochaines minutes|r
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ergll|r
    .turnin 14130 >>Rendre la quête Un ami haut en couleur
    .accept 14131 >>Acceptez la quête Un petit remontant
    .accept 14132 >>Acceptez la quête C'est vraiment mal élevé !
    .accept 14323 >>Acceptez la quête Absorbant
    .target Ergll
step
    #completewith VileSplashers
    >>Butin |cRXP_PICK_Kawphi Plants|r sur le sol pour |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #completewith VileSplashers
    >>Tuez les |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label VileSplashers
    #loop
    .goto 76,75.914,35.559,0
    .goto 76,82.174,40.080,0
    .waypoint 76,75.914,35.559,50,0
    .waypoint 76,77.838,36.335,50,0
    .waypoint 76,80.072,37.683,50,0
    .waypoint 76,82.174,40.080,50,0
    .waypoint 76,79.225,40.686,50,0
    .waypoint 76,76.552,39.047,50,0
    .waypoint 76,75.496,36.880,50,0
    >>Tuez les |cRXP_ENEMY_Vile Éclaboussures|r. Ramassez-les pour leurs |cRXP_LOOT_Simmering Eau Droplets|r
    >>|cRXP_ENEMY_Vile Éclaboussures|r |cRXP_WARN_meurent instantanément à proximité|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
step
    #label ObsorbentTurnin
    .turnin 14323 >>Rendre la quête Absorbant
    --.accept 14324 >>Accept Full of Hot Water
step
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Utilisez le|r |T135231:0|t[Rassasiement Azshari Mer Sponge] |cRXP_WARN_à la|r |cRXP_PICK_Stone of the Eau brûlante Lords|r
    >>Tuez le |cRXP_ENEMY_Scalding Eau Lord|r qui apparaît. Ramassez-le pour son |cRXP_LOOT_Globe of Eau bouillante|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .isOnQuest 14324
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label KawphiBeans
    #loop
    .goto 76,70.927,35.021,0
    .goto 76,71.424,29.350,0
    .waypoint 76,70.927,35.021,25,0
    .waypoint 76,71.801,34.789,25,0
    .waypoint 76,70.604,32.345,25,0
    .waypoint 76,70.559,28.732,25,0
    .waypoint 76,71.424,29.350,25,0
    .waypoint 76,72.477,29.047,25,0
    >>Butin |cRXP_PICK_Kawphi Plants|r sur le sol pour |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #loop
    .goto 76,72.885,36.368,0
    .goto 76,70.218,30.672,0
    .waypoint 76,74.209,32.190,60,0
    .waypoint 76,72.885,36.368,60,0
    .waypoint 76,70.218,30.672,60,0
    >>Tuez les |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Rendre la quête Un petit remontant
    .turnin 14132 >>Rendre la quête C'est vraiment mal élevé !
    .turnin 14324 >>Rendre la quête Le plein d'eau bouillante
    .accept 14345 >>Acceptez la quête Les apprentis
    .target Ergll
    .isQuestComplete 14324
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Rendez la quête Un petit remontant
    .turnin 14132 >>Rendez la quête C'est vraiment mal élevé !
    .accept 14324 >>Acceptez la quête Le plein d'eau bouillante
    .target Ergll
step
    #optional
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Utilisez le|r |T135231:0|t[Rassasiement Azshari Mer Sponge] |cRXP_WARN_à la|r |cRXP_PICK_Stone of the Eau brûlante lords|r
    >>Tuez le |cRXP_ENEMY_Scalding Eau Lord|r qui apparaît. Ramassez son |cRXP_LOOT_Globe of Eau bouillante|r
    .complete 14324,1 --Globe of Boiling Water (1)
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ergll|r
    .turnin 14324 >>Rendez la quête Le plein d'eau bouillante
    .accept 14345 >>Acceptez la quête Lessive de printemps
    .timer 198,Trajet en tortue
    .target Ergll
step << skip
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ergll|r
    .vehicle >>Prenez le Trajet en tortue vers la Station Nord du fusorail
    .timer 198,Trajet en tortue
    .target Ergll
    .skipgossip
    .isOnQuest 14345
step
    #completewith next
    .goto 76,42.71,25.15,80 >>Attendez jusqu'à votre arrivée à la Station Nord du fusorail
    >>|cRXP_WARN_Parlez à|r |cRXP_FRIENDLY_Ergll|r |cRXP_WARN_encore pour monter le Tortue si cela ne s'est pas produit automatiquement|r
    .skipgossip
step
    .goto 76,42.71,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sorata Filefeu|r
    .turnin 14345 >>Rendez la quête Une lessive qui s'impose
    .accept 14340 >>Acceptez la quête La fripe pour la frime
    .target Sorata Firespinner
step
    #xprate <1.2
    .goto 76,42.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andorel Ligesol|r
    .accept 14428 >>Acceptez la quête Le journal d'Ambrevent
    .target Andorel Sunsworn
step
    #xprate <1.2
    .goto 76,42.41,23.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haggrum Poing-de-sang|r
    .accept 14431 >>Acceptez la quête Coup de noiregueule
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #loop
    .goto 76,37.967,28.403,0
    .waypoint 76,38.478,26.428,40,0
    .waypoint 76,37.967,28.403,40,0
    .waypoint 76,37.935,31.246,40,0
    .waypoint 76,37.212,34.089,40,0
    >>Tuez les |cRXP_ENEMY_Talrendis Biologists|r. Ramassez leur |cRXP_LOOT_Blackmaw Intelligence|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist (8)
    .mob Talrendis Biologist
step
    #xprate <1.2
    .goto 76,42.408,23.605
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haggrum Poing-de-sang|r
    .turnin 14431 >>Rendez la quête Coup de noiregueule
    .accept 14432 >>Acceptez la quête L'heure du thé
    .accept 14433 >>Acceptez la quête Diplomatie à tout prix !
    .target Haggrum Bloodfist
step
    #xprate <1.2
    .goto 76,49.75,28.44
    >>Tuez |cRXP_ENEMY_Gardienne du savoir Ambrevent|r. Récupérez |cRXP_LOOT_Le journal d'Ambrevent|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
step
    #xprate <1.2
    .goto 76,49.53,28.78
    >>Cliquez sur la Haute Pierre de vision
    .turnin 14428 >>Rendez la quête Le journal d'Ambrevent
    .accept 14429 >>Acceptez la quête Désassemblage arcanique
step
    #xprate <1.2
    #loop
    .goto 76,52.303,27.112,0
    .goto 76,49.663,28.456,0
    .waypoint 76,50.329,27.556,40,0
    .waypoint 76,52.303,27.112,40,0
    .waypoint 76,51.685,25.068,40,0
    .waypoint 76,49.041,25.544,40,0
    .waypoint 76,49.291,27.335,40,0
    .waypoint 76,49.663,28.456,40,0
    >>Tuez les |cRXP_ENEMY_Apprentice Investigators|r et les |cRXP_ENEMY_Apprentice Illuminators|r. Ramassez leurs |cRXP_LOOT_Attuned Runestones|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
step
    #xprate <1.2
    .goto 76,53.02,29.01
    >>Cliquez sur la Basse Pierre de vision
    .turnin 14429 >>Rendez la quête Désassemblage arcanique
    .accept 14430 >>Acceptez la quête Pirater l'assemblage
step
    #xprate <1.2
    .goto 76,52.998,29.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assemblage arcanique|r
    .complete 14430,1 --Arcane Construct Hacked (1)
    .target Arcane Construct
    .skipgossip
step
    .goto 76,47.241,20.861
    >>Voyagez vers |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .use 49201 >>|cRXP_WARN_Utilisez votre|r |T133131:0|t[Chapeau de sorcier miteux]
    .complete 14340,1 --Approach Archmage Xylem while wearing your Wizard Hat (1)
    .target Image of Archmage Xylem
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .turnin 14340 >>Rendez la quête La fripe pour la frime
    .target Image of Archmage Xylem
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharkul Crâne-de-fer|r
    .accept 14250 >>Acceptez la quête Ressource renouvelable
    .target Tharkul Ironskull
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Will Robotronique|r
    .accept 14249 >>Acceptez la quête Une volonté de fer
    .target Will Robotronic
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quarla Sifflepause|r
    .accept 14263 >>Acceptez la quête Perte de thym
    .target Quarla Whistlebreak
step
    #completewith BalboaBlow
    >>Butin |cRXP_LOOT_Ire vivante Thyme|r par terre
    >>|cRXP_WARN_Fouille et butin vous donnera la|r |T135791:0|t[Ire vivante] |cRXP_WARN_bonus pour 60 secondes (+20 % de dégâts causés et subis, cumul jusqu'à 5 fois)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #completewith IreThymes
    >>Tuez les |cRXP_ENEMY_Thunderhead Hippogryphs|r. Ramassez leurs |cRXP_LOOT_Pristine Tête-tonnerre Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    #label BalboaBlow
    #loop
    .goto 76,53.267,20.867,0
    .goto 76,49.613,19.691,0
    .goto 76,46.529,15.659,0
    .waypoint 76,48.135,17.807,30,0
    .waypoint 76,49.613,19.691,30,0
    .waypoint 76,51.276,20.168,30,0
    .waypoint 76,53.267,20.867,30,0
    .waypoint 76,46.529,15.659,30,0
    .use 49038 >>|cRXP_WARN_Placez le|r |T135735:0|t[À la charge ! arcanique] |cRXP_WARN_devant|r |cRXP_ENEMY_Balboa|r |cRXP_WARN_et faites-le courir dedans|r
    >>Ramassez le |cRXP_LOOT_Animate Basalt|r par terre après sa détonation
    .complete 14250,1 --Animate Basalt (5)
    .unitscan Balboa
step
    #label IreThymes
    #loop
    .goto 76,52.188,19.077,0
    .goto 76,43.846,16.439,0
    .waypoint 76,50.142,16.603,25,0
    .waypoint 76,52.188,19.077,25,0
    .waypoint 76,52.920,22.025,25,0
    .waypoint 76,51.062,23.085,25,0
    .waypoint 76,50.191,23.321,25,0
    .waypoint 76,49.742,22.168,25,0
    .waypoint 76,49.866,18.267,25,0
    .waypoint 76,45.346,16.768,25,0
    .waypoint 76,43.846,16.439,25,0
    .waypoint 76,44.866,15.379,25,0
    .waypoint 76,45.688,13.923,25,0
    .waypoint 76,47.154,13.987,25,0
    >>Ramassez le |cRXP_LOOT_Living Ire Thyme|r sur le sol
    >>|cRXP_WARN_Les fouiller vous donnera le|r |T135791:0|t[Ire vivante] |cRXP_WARN_buff de 60 secondes (+20% dégâts infligés et encaissés, peut s'accumuler 5 fois)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #loop
    .goto 76,47.293,15.109,0
    .waypoint 76,49.885,15.595,70,0
    .waypoint 76,51.383,18.945,70,0
    .waypoint 76,49.879,21.922,70,0
    .waypoint 76,47.293,15.109,70,0
    .waypoint 76,42.318,18.466,70,0
    >>Tuez les |cRXP_ENEMY_Thunderhead Hippogryphs|r. Ramassez-les pour leur |cRXP_LOOT_Pristine Tête-tonnerre Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quarla Sifflepause|r
    .turnin 14263 >>Rendez la quête Perte de thym
    .target Quarla Whistlebreak
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Will Robotronique|r
    .turnin 14249 >>Rendez la quête À la mode de chez nous
    .target Will Robotronic
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharkul Crâne-de-fer|r
    .turnin 14250 >>Rendez la quête Ressource renouvelable
    .target Tharkul Ironskull
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teresa Flèchefeuille|r
    .accept 14230 >>Acceptez la quête Du travail manuel
    .target Teresa Spireleaf
step
    .goto 76,47.24,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .accept 14226 >>Acceptez la quête Un bon coup de savate
    .target Image of Archmage Xylem
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Métamorphose Blattes|r
    >>|cRXP_WARN_Ordonnez à votre|r |cRXP_FRIENDLY_Personal (Arcanes) Assistant|r |cRXP_WARN_de lancer|r |T294474:0|t[Métamorphose en insecte] |cRXP_WARN_sur|r |cRXP_ENEMY_Legashi Satyr|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_et|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #loop
    .goto 76,54.474,24.603,0
    .waypoint 76,55.608,23.916,20,0
    .waypoint 76,55.295,25.216,20,0
    .waypoint 76,54.929,24.217,20,0
    .waypoint 76,54.474,24.603,20,0
    >>Ramassez le |cRXP_PICK_Stolen Manuel|r sur le sol pour le |cRXP_LOOT_Abjurer's Manuel|r
    >>|cRXP_WARN_Il y a plusieurs|r |cRXP_PICK_Stolen Manuals|r |cRXP_WARN_dans la zone. Celui qui a l'apparence|r |cRXP_FRIENDLY_VERTE|r |cRXP_WARN_contient le|r |cRXP_LOOT_Abjurer's Manuel|r
    .complete 14230,1 --Abjurer's Manual (1)
step
    #loop
    .goto 76,54.524,24.092,0
    .waypoint 76,54.524,24.092,40,0
    .waypoint 76,56.003,24.962,40,0
    .waypoint 76,52.415,22.519,40,0
    >>Tuez les |cRXP_ENEMY_Métamorphose Blattes|r
    >>|cRXP_WARN_Ordonnez à votre|r |cRXP_FRIENDLY_Personal (Arcanes) Assistant|r |cRXP_WARN_de lancer|r |T294474:0|t[Métamorphose en insecte] |cRXP_WARN_sur|r |cRXP_ENEMY_Legashi Satyr|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_et|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #completewith next
    .goto 76,47.098,20.551,30 >>Retournez au camp de |cRXP_FRIENDLY_Archimage Xylem|r
    >>|cRXP_WARN_Ordonnez à votre|r |cRXP_FRIENDLY_Personal (Arcanes) Assistant|r |cRXP_WARN_de lancer|r |T135750:0|t[Retour au camp]
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teresa Flèchefeuille|r
    .turnin 14230 >>Rendez la quête Du travail manuel
    .target Teresa Spireleaf
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .turnin 14226 >>Rendez la quête Un bon coup de savate
    .accept 14413 >>Acceptez la quête La cime de la connaissance
    .timer 30,La cime de la connaissance Durée du jeu de rôle
    .target Image of Archmage Xylem
step
    .goto 76,55.71,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .turnin 14413 >>Rendez la quête La cime de la connaissance
    .accept 14296 >>Acceptez la quête Attention à la marche
    .target Image of Archmage Xylem
step
    #sticky
    #completewith WatchYourStepComplete
    .goto 76,55.375,14.957,0
    +|cRXP_WARN_Continuez de vous déplacer pour éviter d'être repoussé de la montagne! Si vous tombez, nagez vers|r |cRXP_FRIENDLY_Image of Archimage Xylem|r |cRXP_WARN_pour réessayer|r
    .target Image of Archmage Xylem
    .isOnQuest 14296
    --VV Need video for this quest
step
    .goto 76,55.740,14.745
    .aura 68613 >>Cliquez sur le premier |cRXP_PICK_Conduit d'énergie|r
    .isOnQuest 14296
step
    .goto 76,56.211,14.735,5,0
    .goto 76,56.887,14.333
    .aura 68613,2+ >>Cliquez sur le deuxième |cRXP_PICK_Conduit d'énergie|r
    >>|cRXP_WARN_Mouvement sur les cercles blancs pour vous déplacer vers le haut|r
    .isOnQuest 14296
step
    .goto 76,56.999,14.143,5,0
    .goto 76,57.570,12.867,5,0
    .goto 76,57.569,11.662
    .aura 68613,3+ >>Cliquez sur le troisième |cRXP_PICK_Conduit d'énergie|r
    >>|cRXP_WARN_Mouvement sur les cercles blancs pour vous déplacer vers le haut|r
    .isOnQuest 14296
step
    .goto 76,57.386,11.252,5,0
    .goto 76,56.332,10.492,5,0
    .goto 76,55.486,10.606
    .aura 68613,4+ >>Cliquez sur le quatrième |cRXP_PICK_Conduit d'énergie|r
    >>|cRXP_WARN_Mouvement sur les cercles blancs pour vous déplacer vers le haut|r
    .isOnQuest 14296
step
    .goto 76,55.306,10.833,5,0
    .goto 76,55.038,12.596,5,0
    .goto 76,55.548,13.104,5,0
    .goto 76,56.295,13.520
    .aura 68613,5+ >>Cliquez sur le cinquième |cRXP_PICK_Conduit d'énergie|r
    >>|cRXP_WARN_Mouvement sur les cercles blancs pour vous déplacer vers le haut|r
    .isOnQuest 14296
step
    .goto 76,56.450,13.291,5,0
    .goto 76,56.859,11.766,5,0
    .goto 76,56.173,11.077
    .aura 68613,6+>>Cliquez sur le sixième |cRXP_PICK_Conduit d'énergie|r
    >>|cRXP_WARN_Mouvement sur les cercles blancs pour vous déplacer vers le haut|r
    .isOnQuest 14296
step
    .goto 76,55.992,11.256,5,0
    .goto 76,55.873,11.860
    >>|cRXP_WARN_Mouvement sur le cercle blanc pour vous déplacer vers le haut|r
    .complete 14296,1 --Arcane Trial Completed (1)
    .isOnQuest 14296
step
    #label WatchYourStepComplete
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .turnin 14296 >>Rendez la quête Attention à la marche
    .accept 24478 >>Acceptez la quête L'Épreuve du Givre
    .accept 14300 >>Acceptez la quête L'Épreuve du Feu
    .accept 24479 >>Acceptez la quête L'Épreuve de l'Ombre
    .target Image of Archmage Xylem
step
    #completewith next
    .goto 76,56.049,11.926
    .goto 76,62.104,21.217,20 >>Cliquez sur le |cRXP_PICK_Zone de Portail de Givre|r sur le sol, puis cliquez sur le portail
step
    #label FrostTrial
    #loop
    .goto 76,62.041,20.249,8,0
    .goto 76,62.168,19.956,8,0
    .goto 76,62.025,19.774,8,0
    .goto 76,61.633,20.002,8,0
    .goto 76,61.487,20.195,8,0
    .goto 76,61.228,20.548,8,0
    .goto 76,61.446,20.978,8,0
    .goto 76,61.665,20.874,8,0
    .goto 76,61.879,20.912,8,0
    .goto 76,62.116,20.756,8,0
    >>Collectez 20 piles d'|T252270:0|t[Essence de glace] en passant près des petits nuages de glace flottants
    >>|cRXP_WARN_Évitement des rafales de glace tournantes et des cercles bleus sur le sol. Vous perdez une pile de|r |T252270:0|t[Essence de glace] |cRXP_WARN_à chaque fois que vous êtes frappé|r
    .complete 24478,1 --Frost Trial Completed (1)
step
    #completewith FireTrial
    .goto 76,62.082,21.121
    .goto 76,56.173,12.079,20 >>Entrez dans le portail
step
    #completewith next
    .goto 76,56.082,11.942
    .goto 76,32.886,23.395,20 >>Cliquez sur le |cRXP_PICK_Fire Portail Région|r sur le sol, puis cliquez sur le portail
step
    #label FireTrial
    .goto 76,33.339,23.524
    >>Collectez 10 piles de |T252268:0|t[Danse de feu] en vous déplaçant d'un cercle à l'autre tout en évitant les flammes
    >>|cRXP_WARN_Le moyen le plus facile est de mimer|r |cRXP_FRIENDLY_Darwin|r |cRXP_WARN_ses mouvements|r
    .complete 14300,1 --Fire Trial Completed (1)
    .target Darwin
step
    #completewith ShadowTrial
    .goto 76,32.896,23.392
    .goto 76,56.173,12.079,20 >>Entrez dans le portail
step
    #completewith ShadowTrial
    .goto 76,56.119,11.959
    .goto 76,31.183,26.715,20 >>Cliquez sur le |cRXP_PICK_Shadow Portail Région|r sur le sol, puis cliquez sur le portail
step
    #completewith next
    .goto 76,30.792,27.281
    .aura 69863 >>Cliquez sur la |cRXP_PICK_Purple Pierre|r pour commencer l'épreuve
step
    #label ShadowTrial
    .goto 76,30.930,27.875
    >>Collectez 20 piles de |T252272:0|t[Appât à ombres] en attirant |cRXP_ENEMY_Weeping Ames|r sur les cercles violets sur le sol
    >>|cRXP_WARN_Évitement de vous faire frapper par|r |cRXP_ENEMY_Weeping Ames|r|cRXP_WARN_. Vous perdez des piles quand elles vous attaquent|r
    .complete 24479,1 --Shadow Trial Completed (1)
    .mob Weeping Soul
step
    #completewith next
    .goto 76,31.172,26.719
    .goto 76,56.173,12.079,20 >>Cliquez sur le portail
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .turnin 24478 >>Rendez la quête L'Épreuve du Givre
    .turnin 14300 >>Rendez la quête L'Épreuve du Feu
    .turnin 24479 >>Rendez la quête L'Épreuve de l'Ombre
    .accept 14299 >>Acceptez la quête Le refuge de Xylem
    .target Image of Archmage Xylem
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Image de l'archimage Xylem|r
    .gossipoption 111896 >>Demandez-lui d'ouvrir le portail vers sa tour
    .target Image of Archmage Xylem
    .isOnQuest 14299
step
    #completewith next
    .goto 76,56.162,12.079
    .goto 76,22.462,43.582,20 >>Cliquez sur le portail
step
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joanna|r
    .turnin 14299 >>Rendez la quête Le refuge de Xylem
    .accept 14389 >>Acceptez la quête C'était évident !
    .target Joanna
step
    #completewith next
    .goto 76,25.720,37.969
    .goto 76,27.773,40.970,20 >>Cliquez sur le portail
step
    .goto 76,27.798,40.448
    >>Trouvez |cRXP_FRIENDLY_Anara|r et |cRXP_FRIENDLY_Azuregos|r
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .target Anara
    .target Spirit of Azuregos
step
    .turnin 14389 >>Rendez la quête C'était évident !
    .accept 14390 >>Acceptez la quête Pourquoi faire simple quand on peut faire compliqué ?
step
    .goto 76,27.79,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azuregos|r
    .complete 14390,1 --Convince Azuregos to meet with Kalecgos
    .target Spirit of Azuregos
    .skipgossip 36436,1
step
    .turnin 14390 >>Rendez la quête Pourquoi faire simple quand on peut faire compliqué ?
    .accept 14391 >>Acceptez la quête Retournement de situation
step
    .goto 76,27.617,39.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anara|r
    .gossipoption 111889 >>Ressuscitez
    .target Anara
    .isOnQuest 14391
step
    #xprate <1.2
    #completewith MeetingAgenda
    >>Tuez |cRXP_ENEMY_Talrendis Ambassadors|r. Ramassez le butin |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #completewith AmbRobes
    >>Ramassez |cRXP_LOOT_Briaroot Bière|r sur le sol
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_peut également lâcher|r |cRXP_LOOT_Briaroot Bière|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #label MeetingAgenda
    .goto 76,29.813,38.566
    >>Ramassez |cRXP_PICK_Important Documents|r sur le sol pour obtenir le |cRXP_LOOT_Blackmaw Rencontre Agenda|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    #xprate <1.2
    #label AmbRobes
    #loop
    .goto 76,30.564,37.729,0
    .waypoint 76,29.965,38.504,40,0
    .waypoint 76,30.564,37.729,40,0
    .waypoint 76,31.261,34.060,40,0
    .waypoint 76,32.123,32.756,40,0
    >>Tuez |cRXP_ENEMY_Talrendis Ambassadors|r. Ramassez le butin |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #loop
    .goto 76,30.365,37.578,0
    .waypoint 76,29.926,38.784,30,0
    .waypoint 76,30.365,37.578,30,0
    .waypoint 76,31.393,36.065,30,0
    .waypoint 76,31.073,34.994,30,0
    .waypoint 76,31.171,33.729,30,0
    >>Ramassez |cRXP_LOOT_Briaroot Bière|r sur le sol
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_peut également lâcher|r |cRXP_LOOT_Briaroot Bière|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #completewith Diplomatic
    .subzone 4825 >>Rendez-vous à la Station Nord du fusorail
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haggrum Poing-de-sang|r
    .turnin 14432 >>Rendez la quête L'heure du thé
    .turnin 14433 >>Rendez la quête Diplomatie à tout prix !
    .accept 14435 >>Acceptez la quête La trahison des Noiregueules
    .target Haggrum Bloodfist
    .maxlevel 20
step
    #xprate <1.2
    #label Diplomatic
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haggrum Poing-de-sang|r
    .turnin 14432 >>Rendez la quête L'heure du thé
    .turnin 14433 >>Rendez la quête Diplomatie à tout prix !
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andorel Ligesol|r
    .turnin 14430 >>Rendez la quête Pirater l'assemblage
    .target Andorel Sunsworn
step
    #xprate <1.2
    #optional
    .goto 76,42.435,23.696
    .aura 69054 >>|cRXP_WARN_Utilisez votre|r |T132671:0|t[Déguisement d'ambassadrice] |cRXP_WARN_à|r |cRXP_PICK_Haggrum's Smokepit|r
    .use 49368
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andorel Ligesol|r
    .gossipoption 111853 >>Téléportez-vous vers Repaire des Noiregueules
    .target Andorel Sunsworn
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,30.986,29.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andorel Ligesol|r
    .complete 14435,1 --Negotiations Sabotaged (1)
    .target Ungarl
    .skipgossip 36618,2,1,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,31.046,29.258,12,0
    .goto 76,31.889,30.192,12,0
    .goto 76,32.188,31.228,12,0
    .goto 76,32.755,32.247
    >>Tuez |cRXP_ENEMY_Blackmaw Warriors|r et |cRXP_ENEMY_Blackmaw Shamans|r pendant que vous vous battez pour sortir de Repaire des Noiregueules
    .complete 14435,2 --Blackmaw Warrior (4)
    .complete 14435,3 --Blackmaw Shaman (4)
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    #completewith next
    .goto 76,32.755,32.247,12 >> Quittez Repaire des Noiregueules
    .subzoneskip 1216,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haggrum Poing-de-sang|r
    .turnin 14435 >>Rendez la quête La trahison des Noiregueules
    .target Haggrum Bloodfist
    .isOnQuest 14435
step
    #xprate <1.2
    #completewith next
    .goto 1447/1,-5711.20020,4488.30029,5,0
    .goto 1447/1,-5718.10010,4477.89990,3 >>Prenez l'ascenseur jusqu'à la plate-forme
step
    #xprate <1.2
    .goto 76,42.526,24.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Jockey de fusée de Baille-Fonds|r
    .gossipoption 112443 >>Prenez la fusée vers Northern Rocketway Terminus
    .timer 51,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    #xprate >1.19
    #completewith next
    .goto 76,25.93,49.64,7 >>Voyagez vers le sommet de la plateforme Rocketway
step
    #xprate >1.19
    .goto 76,25.93,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Jockey de fusée de Baille-Fonds|r
    .gossipoption 112442 >>Prenez la fusée vers Northern Rocketway Terminus
    .timer 83,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    .goto Azshara,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Attaque éclair Rapido Turbulosplose|r
    .fp >>Apprenez le trajet de vol vers Confins Amers
    .target Blitz Blastospazz
    .isQuestAvailable 14261
step
    .goto 76,66.551,20.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalec|r
    .turnin 14391 >>Rendez la quête Retournement de situation
    .accept 24467 >>Acceptez la quête Le déclin du Crépuscule
    .target Kalec
step
    .goto 76,66.338,20.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jellix Allume-mèche|r
    .accept 14297 >>Acceptez la quête Pro-libération
    .target Jellix Fuselighter
step
    .goto 76,66.540,19.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Feno Explozmuso|r
    .accept 14261 >>Acceptez la quête Un froid glacial
    .target Feno Blastnoggin
step
    #completewith FadeToBlack
    >>Tuez |cRXP_ENEMY_Crépuscule Dragon Hunters|r, |cRXP_ENEMY_Crépuscule Desecrators|r et |cRXP_ENEMY_Sable Drakonids|r. Ramassez |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Utilisez les |T134245:0|t[Ironwrought Keys] pour ouvrir |cRXP_PICK_Crépuscule Cages|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #completewith LaborerRescue
    .use 49596 >>Utilisez votre |T133146:0|t[Cryomatic 16] sur |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Cela les tuera presque instantanément|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,71.627,16.433
    >>Tuez |cRXP_ENEMY_Crépuscule Dame du Crépuscule Katrana|r
    >>|cRXP_WARN_Ignorer|r |cRXP_ENEMY_Malicion|r|cRXP_WARN_. Il sera tué par|r |cRXP_FRIENDLY_Kalecgos|r |cRXP_WARN_après|r
    .complete 24467,1 --|1/1 Twilight Lord Katrana slain
    .complete 24467,2 --|1/1 Malicion slain
    .mob Twilight Lord Katrana
step
    #label FadeToBlack
    .goto 76,71.81,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 24467 >>Rendez la quête Le déclin du Crépuscule
    .target Kalecgos
step
    #label LaborerRescue
    #loop
    .goto 76,66.305,13.159,0
    .waypoint 76,69.095,16.926,40,0
    .waypoint 76,67.738,15.850,40,0
    .waypoint 76,66.305,13.159,40,0
    .waypoint 76,64.272,14.953,40,0
    .waypoint 76,64.953,16.437,40,0
    .waypoint 76,65.883,17.840,40,0
    >>Tuez |cRXP_ENEMY_Crépuscule Dragon Hunters|r, |cRXP_ENEMY_Crépuscule Desecrators|r et |cRXP_ENEMY_Sable Drakonids|r. Ramassez |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Utilisez les |T134245:0|t[Ironwrought Keys] pour ouvrir |cRXP_PICK_Crépuscule Cages|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #loop
    .goto 76,69.901,16.655,0
    .waypoint 76,69.901,16.655,40,0
    .waypoint 76,67.157,14.734,40,0
    .waypoint 76,65.900,16.034,40,0
    .waypoint 76,69.595,19.144,40,0
    .use 49596 >>Utilisez votre |T133146:0|t[Cryomatic 16] sur |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Cela les tuera presque instantanément|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,66.541,19.604
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Feno Explozmuso|r
    .turnin 14261 >>Rendez la quête Un froid glacial
    .target Feno Blastnoggin
step
    .goto 76,66.338,20.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jellix Allume-mèche|r
    .turnin 14297 >>Rendez la quête Pro-libération
    .target Jellix Fuselighter
step
    .goto 76,67.042,20.595
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azuregos|r
    .accept 14392 >>Acceptez la quête Ce n'est qu'un au revoir
    .target Azuregos
step << Druid Cata
    #completewith DruidTraining1
    .cast 18960 >>Lancez [Téléportation : Reflet-de-lune]
    .zoneskip Moonglade
step << Druid Cata
    #label DruidTraining1
    .goto 1450/1,-2593.69995,7867.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Havre Baille-Fonds
    .use 6948
    .subzoneskip 4821
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >> Apprenez vos sorts de classe
    .target Max Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulle Briquet|r
    .trainer >> Apprenez vos sorts de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doigt Bolik|r
    .trainer >> Apprenez vos sorts de classe
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Ecumelor|r
    .trainer >> Apprenez vos sorts de classe
    .target Sister Goldskimmer
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Puant Shapshiv|r
    .trainer >> Apprenez vos sorts de classe
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bamm Mégabombe|r
    .trainer >> Apprenez vos sorts de classe
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mécano-guerrier NX-01|r à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Warrior-Matic NX-01
step
    .goto 76,53.264,49.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sorata Filefeu|r
    .turnin 14392 >>Rendez la quête Ce n'est qu'un au revoir
    .target Sorata Firespinner
step
    .goto 76,52.977,49.761
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gurlorn|r
    .accept 24497 >>Acceptez la quête Prêtres au volant, on gagne du temps
    .target Gurlorn
step
    .goto 76,60.479,52.205
    .vehicle >>Montez sur |cRXP_FRIENDLY_Ailes d'acier|r
    .timer 130,Prêtres au volant, on gagne du temps RP
    .target Wings of Steel
    .isOnQuest 24497
    --VV No need for this if flight path is available automatically
step
    #completewith next
    +|cRXP_WARN_Retirez le|r |T135992:0|t[Parachute.] |cRXP_WARN_buff à votre arrivée pour éviter de voler vers la rivière|r
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chawg|r
    .turnin 24497 >>Rendre la quête Prêtres au volant, on gagne du temps
    .accept 14462 >>Acceptez la quête Où est ma tête ?
    .accept 24433 >>Acceptez la quête Semer la terreur
    .target Chawg
    .isOnQuest 24497
step
    #optional
    #label NorthAzsharaSkip
step
    #completewith next
    .goto Azshara,52.92,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kroum|r
    .fly Southern Rocketway >>Envolez-vous vers Terminus Sud du fusorail
    .target Kroum
    .subzoneskip 1237
step
    #completewith next
    .goto Azshara,50.78,74.52,5,0
    .goto Azshara,50.70,74.22,3 >>Prenez l'ascenseur jusqu'à la plate-forme
step
    .goto Azshara,50.70,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Jockey de fusée de Baille-Fonds|r
    .gossipoption 112434 >>Prenez le trajet en fusée vers le Terminus Sud du fusorail
    .timer 35,Terminus Sud du fusorail
    .target Bilgewater Rocket-jockey
    .subzoneskip 1237
    .isQuestAvailable 14392
step
    #completewith next
    .subzone 1237 >>Rendez-vous à Valormok
    .isQuestAvailable 14392
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chawg|r
    .accept 14462 >>Acceptez la quête Où est ma tête ?
    .accept 24433 >>Acceptez la quête Semer la terreur
    .target Chawg
step
    .goto 76,13.854,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andorel Ligesol|r
    .accept 24434 >>Acceptez la quête Opération commando
    .target Andorel Sunsworn
step
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kroum|r
    .accept 14475 >>Acceptez la quête Coursiers du vent à terre !
    .target Kroum
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Talrendis Sentinels|r, les |cRXP_ENEMY_Talrendis Defenders|r et les |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,14.453,75.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine bombardier Smooks|r
    .target Bombardier Captain Smooks
    .turnin 14475 >>Rendre la quête Coursiers du vent à terre !
    .accept 14476 >>Acceptez la quête Une idée explosive
step
    .goto 76,15.02,74.28
    >>Cliquez sur |cRXP_PICK_Detonator À la charge ! 1|r sur le sol
    .complete 14476,1 --Detonator Charge 1 Armed (1)
step
    .goto 76,15.47,73.72
    >>Cliquez sur |cRXP_PICK_Detonator À la charge ! 2|r sur le sol
    .complete 14476,2 --Detonator Charge 2 Armed (1)
step
    .goto 76,15.57,74.47
    >>Cliquez sur |cRXP_PICK_Detonator À la charge ! 3|r sur le sol
    .complete 14476,3 --Detonator Charge 3 Armed (1)
step
    .goto 76,14.459,75.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine bombardier Smooks|r
    .turnin 14476 >>Rendre la quête Une idée explosive
    .accept 14477 >>Acceptez la quête Appuyez sur le bouton !
    .target Bombardier Captain Smooks
step
    .goto 76,14.408,75.734
    >>Cliquez sur |cRXP_PICK_Goblin Détonateur|r
    .complete 14477,1 --Detonate the Explosives
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Talrendis Sentinels|r, les |cRXP_ENEMY_Talrendis Defenders|r et les |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,12.517,67.451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Slinky|r
    .turnin 14462 >>Rendre la quête Où est ma tête ?
    .accept 14464 >>Acceptez la quête Attentat à la foudre
    .target Slinky Sharpshiv
step
    #completewith next
    .goto 76,12.517,67.451
    +|cRXP_WARN_Escaladez la tour avec Slinky|r
    .target Slinky Sharpshiv
step
    .goto 76,12.01,68.06
    >>Tuez |cRXP_ENEMY_Capitaine Grunwald|r. Ramassez sa |cRXP_LOOT_Tête|r
    .complete 14464,1 --Grunwald's Head (1)
    .mob Captain Grunwald
step
    #loop
    .goto 76,10.899,70.438,0
    .goto 76,11.481,71.991,0
    .waypoint 76,10.899,70.438,50,0
    .waypoint 76,11.481,71.991,50,0
    .waypoint 76,10.320,73.798,50,0
    .waypoint 76,9.448,71.859,50,0
    >>Tuez les |cRXP_ENEMY_Talrendis Sentinels|r, les |cRXP_ENEMY_Talrendis Defenders|r et les |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,10.56,69.85
    >>Cliquez sur la |cRXP_PICK_Lorekeeper's Invocation Pierre|r
    .turnin 24434 >>Rendre la quête Opération commando
    .target Lorekeeper's Summoning Stone
step
    #completewith next
    .goto 76,10.56,69.85
    >>Cliquez sur la |cRXP_PICK_Lorekeeper's Invocation Pierre|r
    .gossipoption 111875 >>Retournez à Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,14.350,65.023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kroum|r
    .turnin 14477 >>Rendre la quête Appuyez sur le bouton !
    .target Kroum
step
    .goto 76,14.471,65.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apprenti bombardier Hackel|r
    .accept 24430 >>Acceptez la quête Les cieux s'obscurcissent
    .target Jr. Bombardier Hackel
step
    .goto 76,14.455,65.770
    .vehicle >>Montez le |cRXP_FRIENDLY_Coursier du vent immobilisé|r
    .target Grounded Wind Rider
    .isOnQuest 24430
step
    #completewith next
    >>|cRXP_WARN_Utilisez|r |T133709:0|t[Largage de bombe] |cRXP_WARN_pour détruire les|r |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    .goto 76,9.239,72.539
    >>|cRXP_WARN_Utilisez|r |T133709:0|t[Largage de bombe] |cRXP_WARN_pour détruire la|r |cRXP_ENEMY_Base stratégique|r
    .complete 24430,2 --Command Center Bombed (1)
step
    #loop
    .goto 76,12.374,72.832,0
    .goto 76,12.825,70.135,0
    .goto 76,11.672,67.149,0
    .goto 76,9.737,69.693,0
    .waypoint 76,12.374,72.832,40,0
    .waypoint 76,12.825,70.135,40,0
    .waypoint 76,11.672,67.149,40,0
    .waypoint 76,9.737,69.693,40,0
    >>|cRXP_WARN_Utilisez|r |T133709:0|t[Largage de bombe] |cRXP_WARN_pour détruire les|r |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    #completewith next
    .goto 76,14.471,65.721,50 >>Retournez vers |cRXP_FRIENDLY_Apprenti bombardier Hackel|r
step
    .goto 76,14.471,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apprenti bombardier Hackel|r
    .turnin 24430 >>Rendez la quête Les cieux s'obscurcissent
    .target Jr. Bombardier Hackel
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chawg|r
    .turnin 24433 >>Rendez la quête Semer la terreur
    .turnin 14464 >>Rendez la quête Attentat à la foudre
    .accept 24439 >>Acceptez la quête La conquête d'Azshara
    .target Chawg
step
    .goto 76,9.15,72.82
    >>Tuez |cRXP_ENEMY_Commandant Jarrodenus|r au deuxième étage du bâtiment
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step
    #completewith next
    .goto 76,10.56,69.85
    >>Cliquez sur |cRXP_PICK_Pierre d'invocation du Gardien des légendes|r
    .gossipoption 111875 >>Téléportez-vous vers Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chawg|r
    .turnin 24439 >>Rendez la quête La conquête d'Azshara
    .target Chawg
step
    .goto 76,14.345,65.025
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kroum|r
    .accept 24463 >>Acceptez la quête Enquête en Orneval
    .target Kroum
step
    #completewith next << !Warlock !Paladin
    #completewith FelsteedTraining << Warlock
    #completewith WarhorseTraining << Paladin
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kroum|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Kroum
    .zoneskip Orgrimmar
step
    .goto 1454/1,-4356.80029,1799.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maztha|r
    .train 33388 >>Entraînez-vous auprès d'Apprenti cavalier
    .target Maztha
    .xp <20,1
    .train 33391,1 --Journeyman Riding
    .train 34090,1 --Expert Riding
    .train 34091,1 --Artisan Riding
    .train 90265,1 --Master Riding
step << Orc !Warlock
    .goto 1454/1,-4569.50000,2095.10010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ogunaro Mène-loup|r
	.vendor >>|cRXP_BUY_Achetez un|r |T132224:0|t[Loup] |cRXP_BUY_chez lui si vous n'avez pas de monture dans votre collection encore|r
	.target Ogunaro Wolfrunner
	.mountcount 75-150,<1
    .xp <20,1
step << Goblin !Warlock
    .goto 1454/1,-4132.89990,1483.09998
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kall Vauthaton|r
	.vendor >>|cRXP_BUY_Achetez un|r |T134237:0|t[Rototops] |cRXP_BUY_chez lui si vous n'avez pas de monture dans votre collection encore|r
	.target Kall Worthaton
	.mountcount 75-150,<1
    .xp <20,1
step << !Orc !Goblin !Warlock !Paladin
    .goto 1454/1,-4439.39990,1573.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryshka|r
    .home >>Liez votre Pierre de foyer à Orgrimmar
    .target Gryshka
	.mountcount 75-150,<1
step << Troll !Warlock
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Sen'Jin Village >>Envolez-vous vers Sen'Jin Village
    .target Doras
    .subzoneskip 367
step << Troll !Warlock
    .goto 1411/1,-4882.50000,-857.90002
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zjolnir|r
	.vendor >>|cRXP_BUY_Achetez un|r |T132253:0|t[Raptor] |cRXP_BUY_chez lui si vous n'avez pas de monture dans votre collection encore|r
	.target Zjolnir
	.mountcount 75-150,<1
    .xp <20,1
step << Undead/BloodElf !Warlock
    .goto 1454/1,-4390.80029,1840.09998
    #completewith next << Undead
    #completewith SilvermoonPort << BloodElf
    .zone Tirisfal Glades >>Prenez le zeppelin vers Clairières de Tirisfal
    .zoneskip Undercity
step << Undead !Warlock
    .goto 1420/0,235.70000,2277.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zachariah Post|r
	.vendor >>|cRXP_BUY_Achetez un|r |T132264:0|t[Cheval squelette] |cRXP_BUY_chez lui si vous n'avez pas de monture dans votre collection encore|r
	.target Zachariah Post
	.mountcount 75-150,<1
    .xp <20,1
step << BloodElf !Warlock
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Voyagez à Undercity
step << BloodElf !Warlock
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Cliquez sur le |cRXP_PICK_Orb of Transposition|r pour aller à Lune-d'Argent
    .mountcount 75,<1
step << BloodElf !Warlock
    #completewith next
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059,15,0
    .zone Eversong Woods >>Quittez Lune-d'Argent
step << BloodElf !Warlock
    .goto 1941/0,-5096.30029,6844.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Winaestra|r
	.vendor >>|cRXP_BUY_Achetez un|r |T132227:0|t[Faucon-pérégrin] |cRXP_BUY_chez elle si vous n'avez pas de monture dans votre collection encore|r
	.target Winaestra
	.mountcount 75-150,<1
    .xp <20,1
step << Tauren !Paladin
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Doras
    .zoneskip Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Prenez l'ascenseur pour quitter Les Pitons-du-Tonnerre
    .zoneskip Mulgore
step << Tauren !Paladin
    .goto 1412/1,-392.20001,-2280.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harb Sabot-Griffu|r
	.vendor >>|cRXP_BUY_Achetez un|r |T132243:0|t[Kodo] |cRXP_BUY_chez elle si vous n'avez pas de monture dans votre collection encore|r
	.target Harb Clawhoof
	.mountcount 75-150,<1
    .xp <20,1
step << Warlock Cata
    #label FelsteedTraining
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 5784 >>Entraînez-vous |T136103:0|t[Palefroi corrompu]
    .target Mirket
    .mountcount 75-150,<1
step << Paladin Cata
    #label WarhorseTraining
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Atohmo|r
    .train 34769 >>Apprenez [Invocation d'un cheval de guerre] << BloodElf
    .train 69820 >>Entraînez-vous |T132245:0|t[Invocation : kodo marche-soleil] << Tauren
    .target Sunwalker Atohmo
    .mountcount 75-150,<1
step << !Orc !Goblin !Warlock !Paladin
    #optional
    #completewith FlyValormok
    .hs >>Utilisez votre Pierre de foyer pour revenir à Orgrimmar
    .use 6948
    .zoneskip Azshara
    .zoneskip Orgrimmar
    .zoneskip Ashenvale
step << Warrior/Paladin
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Achetez une|r |T135423:0|t[Hache d'armes] |cRXP_BUY_chez lui|r
    .collect 926,1,24463,1 --Battle Axe (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Achetez|r |T132941:0|t[Droite-Handed Griffe] |cRXP_BUY_et|r |T132941:0|t[Griffe de gaucher] |cRXP_BUY_chez lui|r
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas choisi la spécialisation Amélioration !|r
    .collect 15903,1,24463,1 --Collect Right-Handed Claw (1)
    .collect 15907,1,24463,1 --Collect Left-Handed Claw (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
    .target Shoma
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Achetez une|r |T135419:0|t[Epée longue] |cRXP_BUY_chez lui. Équipez-la une fois que vous atteindrez le niveau 21|r
    >>|cRXP_WARN_Achetez un|r |T135342:0|t[Kriss] |cRXP_WARN_plutôt si vous avez la spécialisation Assassinat ou Discrétion|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >21,1
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Achetez une|r |T135419:0|t[Epée longue] |cRXP_BUY_chez lui|r
    >>|cRXP_WARN_Achetez un|r |T135342:0|t[Kriss] |cRXP_WARN_plutôt si vous avez la spécialisation Assassinat ou Discrétion|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
    .zoneskip Orgrimmar,1
step << Warrior/Paladin
    #optional
    #optional
    #completewith AzsharaEnd
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Équipez la |T132941:0|t[Droite-Handed Griffe]
    .use 15903
    .itemcount 15903,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Équipez la |T132938:0|t[Griffe de gaucher]
    .use 15907
    .itemcount 15907,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Équipez la|r |T135419:0|t[Epée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step
    #label FlyValormok
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Valormok >>Envolez-vous vers Valormok
    .target Doras
    .zoneskip Azshara
    .zoneskip Ashenvale
step
    #completewith next
    .zone Ashenvale >>Traversez le pont vers Orneval
step
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kulg Crachetripes|r
    .turnin 24463 >>Rendez la quête Enquête en Orneval
    .accept 13866 >>Acceptez la quête Au Rempart !
    .target Kulg Gorespatter
step
    #label AzsharaEnd
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kulg Crachetripes|r
    .gossipoption 111683 >>Envolez-vous vers les Remparts de Mor'shan
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .isOnQuest 13866
step
    #optional
    .abandon 14407 >>Abandonnez la quête Le blues d'Azshara
    ]])
