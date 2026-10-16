if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 15-20 Redridge
#displayname 18-21 Redridge
#next 20-25 Bois de la Pénombre
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.716,17.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teldira Plumelune|r
    .target Teldira Moonfeather
    .fly Rut'theran Village >>Volez jusqu'au village de Rut'theran
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Franchissez le portail vers Darnassus
    .train 33388,1
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Franchissez le portail vers Darnassus
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>Parlez à |cRXP_FRIENDLY_Lelanai|r
    +|cRXP_BUY_Achetez une|r |T132267:0|t[Saber] |cRXP_BUY_monture, vous ne pourrez pas l'utiliser jusqu'au niveau 20, gardez-la dans vos sacs pour plus tard|r
    .target Lelanai
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.782,32.919
    >>Parlez à |cRXP_FRIENDLY_Jartsam|r
    .train 33388 >> Entraînez-vous auprès d'Apprenti cavalier
    .target Jartsam
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>Repassez par le portail à Rut'Theran Village
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>Parlez à |cRXP_FRIENDLY_Torallius le Pâtre|r
    +Achetez un Elekk, vous ne pourrez pas l'utiliser jusqu'au niveau 20, gardez-le dans vos sacs pour plus tard
    .target Torallius the Pack Handler
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>Parlez à |cRXP_FRIENDLY_Aalun|r
    .train 33388 >> Entraînez-vous auprès d'Apprenti cavalier
    .target Aalun
    .money <3.6000
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >> Prenez le bateau vers Rut'theran
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >> Prenez le bateau vers Hurlevent
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Kharanos >> Envolez-vous vers Kharanos << Gnome
    .fly Gol'Bolar Quarry >> Envolez-vous vers Carrière de Gol'Bolar << Dwarf
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Gnome
    .goto 1426/0,-618.400,-5451.100
    >>Parlez à |cRXP_FRIENDLY_Milli Siffleplume|r
    +|cRXP_BUY_Achetez un|r |T132247:0|t[Mécanotrotteur] |cRXP_BUY_monture, vous ne pourrez pas l'utiliser jusqu'au niveau 20, gardez-la dans vos sacs pour plus tard|r
    .target Milli Featherwhistle
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>Parlez à |cRXP_FRIENDLY_Veron Distillambre|r
    +|cRXP_BUY_Achetez une|r |T132248:0|t[Harrison Jones] |cRXP_BUY_monture, vous ne pourrez pas l'utiliser avant le niveau 20, gardez-la dans vos sacs pour plus tard|r
    .target Veron Amberstill
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Stormwind >> Volez à Stormwind
    .target Thorgrum Borrelson
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>Cliquez sur le |cRXP_PICK_Hero's Call Embarquement|r
    .accept 28563 >>Acceptez la quête L'appel du héros : les Carmines !
    >>|cRXP_WARN_Passez cette étape si vous ne recevez pas cette quête|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135280:0|t[Faux dace] |cRXP_BUY_chez elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135280:0|t[Faux dace] |cRXP_BUY_chez elle. Équipez-la quand vous êtes au niveau 21|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135324:0|t[Epée longue] |cRXP_BUY_chez elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135324:0|t[Epée longue] |cRXP_BUY_chez elle. Équipez-la quand vous êtes au niveau 21|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T132415:0|t[Hache double] |cRXP_BUY_chez elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Achetez un|r |T135612:0|t[BKP 2700 "Enforcer"] |cRXP_BUY_chez elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Achetez un|r |T135612:0|t[BKP 2700 "Enforcer"] |cRXP_BUY_chez elle. Équipez-le quand vous êtes au niveau 21|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Équipez la|r |T132415:0|t[Hache double]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Équipez le|r |T135612:0|t[BKP 2700 "Enforcer"]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >> Voyagez vers |cRXP_FRIENDLY_Dungar Grangodet|r
    .noflyable --Azeroth Flying
step
    #completewith EnterRR
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Eastvale Logging Camp >> Envolez-vous vers le Camp de bûcherons du val d'Est
	.target Dungar Longdrink
    .zoneskip 49 --Redridge Mountains
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Randal Chasseur|r
    .train 33388 >> Entraînez-vous auprès d'Apprenti cavalier
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katie Chasseur|r
    +|cRXP_BUY_Achetez un|r |T132261:0|t[Cheval] |cRXP_BUY_chez elle|r
    .money <0.08
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    #label EnterRR
    .goto 49,11.78,64.40
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .isQuestAvailable 26504
step
    #optional
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeshire >> Apprenez le trajet de vol vers Comté-du-Lac
    .target Ariena Stormfeather
    .xp <21,1
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 49,16.032,64.633
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 26504 >>Acceptez la quête ON RECHERCHE : les Gnolls des Carmines
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy Parker|r à l'intérieur
    .accept 26506 >>Acceptez la quête La recette du cassoulet
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Observation Capitaine de la garde Parker|r sur la Tour de guet
    .turnin 28563 >>Rendez la quête L'appel du héros : les Carmines !
    .accept 26503 >>Acceptez la quête Une autre appréciation du danger
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de la garde Parker|r au sommet de la Tour de guet
    .accept 26503 >>Acceptez la quête Une autre appréciation du danger
    .target Watch Captain Parker
step
    #optional
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,13.543,66.732,50,0
    .goto 49,12.566,69.384,50,0
    .goto 49,14.471,75.116,50,0
    .goto 49,15.220,73.203,50,0
    >>Tuez |cRXP_ENEMY_Tarantulas|r. Ramassez-les pour leurs |cRXP_LOOT_Yeux de tarentule|r
    >>Tuez les |cRXP_ENEMY_Dire Condors|r volant au-dessus ou perchés sur des branches. Ramassez-les pour leurs |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1,2 --Tarantula Eyes (2/4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .disablecheckbox
    .unitscan Dire Condor
    .mob Tarantula
    .maxlevel 20
step
    #completewith GnollGuide
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    >>Tuez |cRXP_ENEMY_Tarantulas|r. Ramassez-les pour leurs |cRXP_LOOT_Yeux de tarentule|r
    >>Tuez les |cRXP_ENEMY_Dire Condors|r volant au-dessus ou perchés sur des branches. Ramassez-les pour leurs |cRXP_LOOT_Condor Giblets|r
    >>Tuez les |cRXP_ENEMY_Great Goretusks|r. Ramassez-les pour leurs |cRXP_LOOT_Goretusk Kidneys|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .complete 26506,3 --Goretusk Kidney (4)
    .mob +Great Goretusk
    .maxlevel 20
step
    #completewith Kidneys
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Tuez |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, et |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>Rendez-vous vers |cRXP_PICK_Ordres gnolls|r
    .noflyable --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>Ramassez |cRXP_PICK_Ordres gnolls|r sur le tonneau
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>Ramassez |cRXP_PICK_Gnoll Guide de stratégie|r sur le sol
    .complete 26503,3 --Gnoll Strategy Guide (1)
step
    #label Kidneys
    #loop
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    .goto 49,27.403,59.815,50,0
    .goto 49,29.142,56.606,50,0
    .goto 49,32.433,54.249,50,0
    .goto 49,33.624,57.701,50,0
    .goto 49,35.378,64.225,50,0
    .goto 49,32.309,63.674,50,0
    .goto 49,29.952,64.571,50,0
    >>Tuez |cRXP_ENEMY_Great Goretusks|r. Ramassez-les pour leurs |cRXP_LOOT_Goretusk Kidneys|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
    .maxlevel 20
step
    #optional
    #completewith RRGnolls
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    >>Tuez |cRXP_ENEMY_Tarantulas|r. Ramassez-les pour leurs |cRXP_LOOT_Yeux de tarentule|r
    >>Tuez |cRXP_ENEMY_Dire Condors|r volant au-dessus ou perchés sur des perchoirs. Ramassez-les pour leurs |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .maxlevel 20
step
    #optional
    #completewith next
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Tuez |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, et |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>Ramassez |cRXP_PICK_Gnoll Plans de bataille|r sur le sol
    .complete 26503,1 --Gnoll Battle Plans (1)
step
    #label RRGnolls
    #loop
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    .goto 49,16.188,59.307,50,0
    .goto 49,18.410,58.985,50,0
    .goto 49,17.988,55.657,50,0
    .goto 49,15.728,54.280,50,0
    .goto 49,16.049,56.984,50,0
    >>Tuez les |cRXP_ENEMY_Redridge Thrashers|r, les |cRXP_ENEMY_Redridge Mongrels|r et les |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #sticky
    #label Eyes
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .waypoint 49,13.543,66.732,40,0
    .waypoint 49,12.566,69.384,40,0
    .waypoint 49,14.471,75.116,40,0
    .waypoint 49,15.220,73.203,40,0
    >>Tuez |cRXP_ENEMY_Tarantulas|r. Ramassez-les pour leurs |cRXP_LOOT_Yeux de tarentule|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob Tarantula
    .maxlevel 20
step
    #loop
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,16.461,54.587,40,0
    .goto 49,20.199,58.665,40,0
    .goto 49,20.881,65.321,40,0
    .goto 49,20.123,66.613,40,0
    .goto 49,16.993,63.436,40,0
    .goto 49,13.697,68.732,40,0
    .goto 49,13.265,62.483,40,0
    >>Tuez |cRXP_ENEMY_Dire Condors|r volant au-dessus ou perchés sur des perchoirs. Ramassez-les pour leurs |cRXP_LOOT_Condor Giblets|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy Parker|r à l'intérieur
    .turnin 26506 >>Rendez la quête La recette du cassoulet
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de la garde Parker|r au sommet de la Tour de guet
    .turnin 26504 >>Rendez la quête ON RECHERCHE : les Gnolls des Carmines
    .turnin 26503 >>Rendez la quête Une autre appréciation du danger
    .accept 26505 >>Acceptez la quête Le rapport de Parker
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeshire >> Apprenez le Vol du Comté-du-Lac
    .target Ariena Stormfeather
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shawn|r
    .accept 26508 >>Acceptez la quête Le collier de Nida
    .target Shawn
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shawn|r tandis que vous êtes sur le quai
    .accept 26508 >>Acceptez la quête Le collier de Nida
    .target Shawn
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entrez dans l'Hôtel de Ville de Comté du Lac
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailli Conacher|r et |cRXP_FRIENDLY_Magistrat Salomon|r à l'intérieur
    .accept 26511 >>Acceptez la quête Place nette au lac Placide
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>Rendez la quête Le rapport de Parker
    .accept 26510 >>Acceptez la quête Nous devons être prêts !
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Quittez l'Hôtel de Ville de Comté du Lac
step
    #sticky
    #label EverstillMurlocs
    #loop
    .goto 49,37.818,42.158,0
    .goto 49,39.626,46.404,0
    .waypoint 49,36.095,45.006,40,0
    .waypoint 49,36.580,43.202,40,0
    .waypoint 49,37.798,41.157,40,0
    .waypoint 49,38.840,41.673,40,0
    .waypoint 49,40.457,44.698,40,0
    .waypoint 49,42.557,47.125,40,0
    .waypoint 49,40.397,48.986,40,0
    .waypoint 49,36.943,50.290,40,0
    .waypoint 49,36.640,46.754,40,0
    >>Tuez les |cRXP_ENEMY_Murloc Flesheaters|r et les |cRXP_ENEMY_Murloc Repérage|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 49,37.818,42.158
    >>Ramassez |cRXP_PICK_Gnomotophone|r sur le sol
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entrez dans l'Hôtel de Ville de Comté du Lac
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailli Conacher|r et |cRXP_FRIENDLY_Magistrat Salomon|r à l'intérieur
    .turnin 26511 >>Rendez la quête Place nette au lac Placide
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>Rendez la quête Nous devons être prêts !
    .accept 26512 >>Acceptez la quête Régler le gnomotophone
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Quittez l'Hôtel de Ville de Comté du Lac
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .accept 26513 >>Acceptez la quête Ni vus, ni connus
    .target Marshal Marris
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_Voyagez vers le cimetière de Comté-du-Lac|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>Rendez la quête Régler le gnomotophone
    .accept 26514 >>Acceptez la quête Le grand canyon
--TODO: Quest is an auto turnin/pickup from the quest log, research how to automate it
--XX     >>|cRXP_WARN_Click the pop-up in your questlog|r
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #sticky
    #label DirtScroll
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Tuez les |cRXP_ENEMY_Redridge Gnolls|r. Ramassez-les pour |T134944:0|t|cRXP_LOOT_[Dirt-Stained Parchemin]|r
    >>|cRXP_WARN_Utilisez le |T134944:0|t|cRXP_LOOT_[Dirt-Stained Parchemin]|r pour commencer la quête|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>Acceptez la quête Celui qui contrôle les Ettins
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .use 58898
step
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .goto 49,36.305,30.502,50,0
    .goto 49,32.496,24.909,50,0
    .goto 49,30.051,28.018,50,0
    .goto 49,27.453,27.292,50,0
    .goto 49,27.470,34.077,50,0
    .goto 49,21.637,34.274,50,0
    .goto 49,23.390,26.005,50,0
    >>Ramassez les |cRXP_LOOT_Redridge Supply Caisses|r sur le sol
    >>Tuez les |cRXP_ENEMY_Redridge Drudgers|r, les |cRXP_ENEMY_Redridge Mystics|r, les |cRXP_ENEMY_Redridge Bashers|r, les |cRXP_ENEMY_Redridge Alphas|r et les |cRXP_ENEMY_Redridge Brutes|r. Ramassez-les pour leurs |cRXP_LOOT_Redridge Gnoll Collars|r
    >>|cRXP_WARN_Évitez de tirer sur les |cRXP_ENEMY_Canyon Ettins|r qui patrouillent la zone|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .disablecheckbox
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .unitscan Canyon Ettin
step
    .goto 49,20.431,26.655
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26514 >>Rendez la quête Le grand canyon
    .accept 26544 >>Acceptez la quête Ils sont dans le coup…
--TODO: Auto turn in, research how to automate it
step
    #optional
    #completewith next
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    >>Ramassez les |cRXP_LOOT_Redridge Supply Caisses|r sur le sol
    >>|cRXP_WARN_Évitez de tirer sur les |cRXP_ENEMY_Canyon Ettins|r qui patrouillent la zone|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >> Entrez dans les Cavernes de Rethban
    .isOnQuest 26544
step
    #sticky
    #requires DirtScroll
    #label Missive1
    #loop
    .goto 49,20.337,15.044,0
    .goto 49,22.424,17.323,0
    .goto 49,22.425,21.890,0
    .goto 49,21.588,23.647,0
    .goto 49,19.525,24.078,0
    .goto 49,20.141,21.509,0
    .goto 49,16.783,19.487,0
    .waypoint 49,20.337,15.044,20,0
    .waypoint 49,22.424,17.323,20,0
    .waypoint 49,22.425,21.890,20,0
    .waypoint 49,21.588,23.647,20,0
    .waypoint 49,19.525,24.078,20,0
    .waypoint 49,20.141,21.509,20,0
    .waypoint 49,16.783,19.487,20,0
    >>Tuez les |cRXP_ENEMY_Blackrock Overseers|r dans les Cavernes de Rethban. Ramassez-les pour |cRXP_LOOT_Blackrock Orc Missive|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26544 >>Rendez la quête Ils sont dans le coup…
    .accept 26545 >>Acceptez la quête Couineur doit mourir !
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>Rendez-vous vers |cRXP_ENEMY_Ardo Crassepatte|r dans les Cavernes de Rethban
step
    #requires DirtScroll
    #label Ardo
    >>Tuez |cRXP_ENEMY_Ardo Crassepatte|r. Cliquez sur |cRXP_PICK_Orbe de contrôle d'ettin|r à côté de lui
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>Rendez la quête Celui qui contrôle les Ettins
    .accept 26520 >>Acceptez la quête Il faut sauver le contremaître Oslow
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>Quittez les Cavernes de Rethban
    .isOnQuest 26520
    .zoneskip 49,1 --Redridge Mountains
step
    #sticky
    #label SupplyCrates
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Ramassez les |cRXP_LOOT_Redridge Supply Caisses|r sur le sol
    >>|cRXP_WARN_Évitez de tirer sur les |cRXP_ENEMY_Ettins du canyon|r qui patrouillent dans la zone|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>Tuez |cRXP_ENEMY_Couineur|r. Dépouillez-le pour le |cRXP_LOOT_Blackrock L'invasion Plans|r
    .complete 26545,1 --Yowler (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step
    #completewith next
    #requires SupplyCrates
    #loop
    .goto 49,23.859,29.302,0
    .goto 49,22.766,34.745,0
    .goto 49,24.022,35.828,0
    .goto 49,28.492,36.235,0
    .goto 49,27.799,30.853,0
    .line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
    .goto 49,23.859,29.302,50,0
    .goto 49,23.973,30.595,50,0
    .goto 49,23.762,32.089,50,0
    .goto 49,22.766,34.745,50,0
    .goto 49,23.014,35.134,50,0
    .goto 49,23.619,34.381,50,0
    .goto 49,24.022,35.828,50,0
    .goto 49,25.529,35.789,50,0
    .goto 49,26.902,36.339,50,0
    .goto 49,28.492,36.235,50,0
    .goto 49,28.357,34.410,50,0
    .goto 49,27.054,32.432,50,0
    .goto 49,27.799,30.853,50,0
    .goto 49,27.502,28.865,50,0
    .goto 49,26.595,28.355,50,0
    .goto 49,25.013,28.408,50,0
    .cast 80704 >> En restant immobile, utilisez le |T332402:0|t[Orbe de contrôle d'ettin] sur un |cRXP_ENEMY_Ettin du canyon|r
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>Voyagez vers Contremaître Oslow|cRXP_FRIENDLY_. Utilisez le |T332402:0|t[Orbe de contrôle d'ettin]|r à côté de lui en contrôlant un |cRXP_FRIENDLY_Subdued Ettin du canyon|r
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .turnin 26513 >>Rendez la quête Ni vus, ni connus
    .target Marshal Marris
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entrez dans l'Hôtel de Ville de Comté du Lac
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrat Salomon|r et à |cRXP_FRIENDLY_Colonel Troteman|r à l'intérieur
    .turnin 26545 >>Rendez la quête Couineur doit mourir !
    .turnin 26520 >>Rendez la quête Il faut sauver le contremaître Oslow
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>Acceptez la quête John J. Keeshan
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailli Conacher|r
    >>|cRXP_WARN_Si vous avez déjà accepté la quête L'appel du héros : le bois de la Pénombre ! précédemment à Hurlevent, sautez cette étape|r
    .accept 26728 >>Acceptez la quête L'appel du héros : le bois de la Pénombre !
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailli Conacher|r et à |cRXP_FRIENDLY_Magistrat Salomon|r à l'intérieur
    .accept 26728 >>Acceptez la quête L'appel du héros : le bois de la Pénombre !
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>Rendez la quête Couineur doit mourir !
    .turnin 26520 >>Rendez la quête Il faut sauver le contremaître Oslow
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Quittez l'Hôtel de Ville de Comté du Lac
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Acceptez la quête Un invité indésirable
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Tuez |cRXP_ENEMY_Fouailleventre|r. Ramassez-la pour |cRXP_LOOT_Défense de Fouailleventre|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Rendez la quête Un invité indésirable
    .target Martie Jainrose
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Nagez sous l'eau et vérifiez les emplacements d'apparition. Il y a 10 emplacements avec 2 apparitions actives à la fois|r
    >>Ouvrez le |cRXP_PICK_Glinting Mud|r. Ramassez-le pour |cRXP_LOOT_Le collier de Nida|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Eastvale Logging Camp >> Envolez-vous vers Camp de bûcherons du val d'Est
	.target Ariena Stormfeather
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katie Chasseur|r
    +|cRXP_BUY_Achetez un|r |T132261:0|t[Cheval] |cRXP_BUY_chez elle|r
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Randal Chasseur|r
    .train 33388 >> Entraînez-vous auprès d'Apprenti cavalier
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Goss le Preste|r
    .fly Lakeshire, Redridge >> Volez à Comté-du-Lac
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Rendez la quête Le collier de Nida
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nida|r tandis que vous êtes sur le quai
    .turnin 26508 >>Rendez la quête Le collier de Nida
    .target Nida
    .noflyable --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Entrez dans l'auberge de Comté-du-Lac
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brianna l'aubergiste|r.
    .home >> Liez votre Pierre de foyer à Comté-du-Lac
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Entrez dans l'arrière-salle, puis descendez vers |cRXP_FRIENDLY_John J. Keeshan|r
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r dans le sous-sol de l'Auberge du Comté-du-Lac
    .turnin 26567 >>Rendez la quête John J. Keeshan
    .accept 26568 >>Acceptez la quête C'est pas ma guerre
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >> Sortez de l'auberge de Comté-du-Lac --Exiting West (OPTIONAL SECTION)
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Acceptez la quête Un invité indésirable
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Tuez |cRXP_ENEMY_Fouailleventre|r. Ramassez |cRXP_LOOT_Défense de Fouailleventre|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Rendez la quête Un invité indésirable
    .target Martie Jainrose
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Nager sous l'eau et vérifiez les emplacements d'apparition. Il y a 10 emplacements avec 2 apparitions en même temps|r
    >>Ouvrez le |cRXP_PICK_Glinting Mud|r. Ramassez-le pour |cRXP_LOOT_Le collier de Nida|r
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Rendez la quête Le collier de Nida
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nida|r tandis que vous êtes sur le quai
    .turnin 26508 >>Rendez la quête Le collier de Nida
    .target Nida
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entrez dans l'Hôtel de Ville de Comté du Lac
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colonel Troteman|r à l'intérieur
    .turnin 26568 >>Rendez la quête C'est pas ma guerre
    .accept 26571 >>Acceptez la quête Des armes de guerre
    .accept 26586 >>Acceptez la quête À la recherche de la compagnie Bravo
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Quittez l'Hôtel de Ville de Comté du Lac
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Oslow|r et à |cRXP_FRIENDLY_Maréchal Marris|r
    .accept 26569 >>Acceptez la quête Équipement topographique
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>Acceptez la quête L’armée des vingt-cinq Orcs
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
	#completewith Render
    .goto 49,44.299,30.816,0
    .goto 49,41.458,35.639,0
    .goto 49,44.548,35.896,0
    .goto 49,47.950,33.981,0
    .goto 49,47.671,40.994,0
    .goto 49,51.823,42.459,0
    .goto 49,53.901,37.198,0
	>>Tuez les |cRXP_ENEMY_Blackrock Renegades|r et les |cRXP_ENEMY_Blackrock Repérage|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>Allez vers |cRXP_FRIENDLY_Messner|r
    .noflyable --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messner|r dans la cage
    .turnin 26586 >>Rendez la quête À la recherche de la compagnie Bravo
    .accept 26587 >>Acceptez la quête Mission évasion
    .target Messner
step
	>>Tuez |cRXP_ENEMY_Murdunk|r et |cRXP_ENEMY_Homurk|r. Ramassez-les pour |cRXP_LOOT_Arc de Keeshan|r et |cRXP_LOOT_Couteau de survie de Keeshan|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26571 >>Rendez la quête Des armes de guerre
    .accept 26573 >>Acceptez la quête Il doit y mettre tout son cœur !
step
    .goto 49,49.234,38.005
    >>Ouvrez le |cRXP_PICK_Blackrock Clé Pouch|r dans la souche. Ramassez-le pour la |cRXP_LOOT_Clé de cage de Messner|r
    >>|cRXP_WARN_Évitez le |cRXP_ENEMY_Capitaine des worgs rochenoire|r et les |cRXP_ENEMY_Blackrock Bataille Worgs|r|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messner|r dans la cage et quand il apparaît à côté de vous
    .turnin 26587 >>Rendez la quête Mission évasion
    .timer 3,RP de Messner
    .accept 26560 >>Acceptez la quête Jorgensen
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>Allez jusqu'au bord du Camp des Étripeurs
    .isOnQuest 26560
    .noflyable --Azeroth Flying
step
    #completewith Danforth
    #label Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Tuez |cRXP_ENEMY_Blackrock Summoners|r et |cRXP_ENEMY_Blackrock Pisteurs|r. Ramassez les |cRXP_LOOT_Blackrock Spyglasses|r qu'ils portent
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,<5 --Blackrock Spyglass (<5)
step
    #optional
    #completewith Danforth
    #requires Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Tuez |cRXP_ENEMY_Blackrock Summoners|r et |cRXP_ENEMY_Blackrock Pisteurs|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>Tuez |cRXP_ENEMY_Utroka la Maîtresse des clés|r. Ramassez-la pour la |cRXP_LOOT_Clé de cage de Jorgensen|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >> Voyagez vers |cRXP_FRIENDLY_Jorgensen|r
    .noflyable --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorgensen|r dans la cage et quand il apparaît à côté de vous
    .turnin 26560 >>Rendez la quête Jorgensen
    .timer 3,RP de Jorgensen
    .accept 26561 >>Acceptez la quête Krakauer
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >> Entrez dans la grotte au fond du camp
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>Tuez |cRXP_ENEMY_Ritualiste Tarak|r à l'intérieur
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>Voyagez vers le |cRXP_PICK_Coffre de Rochenoire|r à l'intérieur
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>Ouvrez le |cRXP_PICK_Coffre de Rochenoire|r sur le sol à l'intérieur. Ramassez-le pour le |cRXP_LOOT_Bandeau rouge de Keeshan|r et l'|cRXP_LOOT_Amulette de jade de Keeshan|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krakauer|r à l'intérieur sur l'autel et quand il apparaît à côté de vous
    .turnin 26561 >>Rendez la quête Krakauer
    .timer 3,RP de Krakauer
    .accept 26562 >>Acceptez la quête Et la cerise sur le gâteau… Danforth
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >Travel toward |cRXP_ENEMY_Overlord Barbarius|r inside
step
    .goto 49,27.634,18.155
    >>Tuez |cRXP_ENEMY_Suzerain Barbarius|r à l'intérieur. Ramassez-le pour la |cRXP_LOOT_Clé de Levier de Rochenoire|r
	>>|cRXP_WARN_Assurez-vous que vos Gardiens se téléportent vers le bas quand vous sautez|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_Cliquez sur la |cRXP_PICK_Chaîne|r de Levier sur le sol à l'intérieur|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danforth|r à l'intérieur dans l'eau et lorsqu'il réapparaît à côté de vous
    .turnin 26562 >>Rendez la quête Et la cerise sur le gâteau… Danforth
    .timer 3,RP de Danforth
    .accept 26563 >>Acceptez la quête Le retour de la compagnie Bravo
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >> Quittez dans la grotte au fond du camp
step
    #optional
    #loop
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    .goto 49,45.155,23.968,55,0
    .goto 49,42.789,21.487,55,0
    .goto 49,41.185,20.004,55,0
    .goto 49,41.167,17.881,55,0
    .goto 49,43.357,17.991,55,0
    .goto 49,44.269,13.930,55,0
    .goto 49,41.899,12.146,55,0
    .goto 49,42.034,14.041,55,0
    .goto 49,40.282,16.319,55,0
    .goto 49,38.889,17.678,55,0
    .goto 49,36.291,15.982,55,0
    .goto 49,34.239,13.808,55,0
    .goto 49,34.298,11.938,55,0
    .goto 49,32.625,10.192,55,0
    >>Tuez |cRXP_ENEMY_Blackrock Summoners|r et |cRXP_ENEMY_Blackrock Pisteurs|r. Dépouillez les |cRXP_ENEMY_Blackrock Pisteurs|r pour leurs |cRXP_LOOT_Blackrock Spyglasses|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Comté-du-Lac
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kimberly Hiett|r à l'Auberge du Comté-du-Lac
    .vendor >>Vendez et réparez
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entrez dans l'Hôtel de Ville de Comté du Lac
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26563 >>Rendez la quête Le retour de la compagnie Bravo
    .turnin 26573 >>Rendez la quête Il doit y mettre tout son cœur !
    .accept 26607 >>Acceptez la quête Ils ont fait couler le premier sang
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Quittez l'Hôtel de Ville de Comté du Lac
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Entrez dans l'auberge de Comté-du-Lac
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Entrez dans l'arrière-salle, puis descendez vers |cRXP_FRIENDLY_John J. Keeshan|r
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r au sous-sol de l'Auberge de Comté-du-Lac
    .turnin 26607 >>Rendez la quête Ils ont fait couler le premier sang
    .accept 26616 >>Acceptez la quête Ça n’en finit pas
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r au sous-sol de l'Auberge de Comté-du-Lac
    .turnin 26607 >>Rendez la quête Ils ont fait couler le premier sang
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >> Sortez de l'auberge de Comté-du-Lac --East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Oslow|r et |cRXP_FRIENDLY_Maréchal Marris|r
    .turnin 26569 >>Rendez la quête Équipement topographique
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>Rendez la quête L’armée des vingt-cinq Orcs
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >> Montez à bord du |cRXP_PICK_Bateau de Keeshan|r
	.timer 43,RP de Ça n’en finit pas
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>Attendez le temps du RP.
    >>|cRXP_WARN_Quittez manuellement le bateau quand le chronomètre termine|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Messner|r et |cRXP_FRIENDLY_Danforth|r
    .turnin 26616 >>Rendez la quête Ça n'en finit pas
    .accept 26639 >>Acceptez la quête Votre contact : Brubaker
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>Acceptez la quête Le paquetage de la compagnie Bravo : le camouflage
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>Acceptez la quête Le paquetage de la compagnie Bravo : du chloroforme
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>Acceptez la quête La chasse aux chasseurs
    .goto 49,52.533,55.557
	.target +Danforth
step
#questguide
    #loop
    .goto 49,48.669,54.976,0
    .goto 49,46.956,56.688,0
    .goto 49,43.168,55.127,0
    .goto 49,39.453,57.087,0
    .goto 49,39.358,50.183,0
    .goto 49,45.014,49.280,0
    .goto 49,48.669,54.976,55,0
    .goto 49,48.798,57.741,55,0
    .goto 49,46.786,58.420,55,0
    .goto 49,46.956,56.688,55,0
    .goto 49,44.610,54.864,55,0
    .goto 49,44.320,52.796,55,0
    .goto 49,43.168,55.127,55,0
    .goto 49,41.915,53.874,55,0
    .goto 49,40.214,54.370,55,0
    .goto 49,39.453,57.087,55,0
    .goto 49,38.895,60.012,55,0
    .goto 49,38.064,52.309,55,0
    .goto 49,39.358,50.183,55,0
    .goto 49,40.550,47.338,55,0
    .goto 49,42.860,49.655,55,0
    .goto 49,45.014,49.280,55,0
    >>Tuez |cRXP_ENEMY_Muckdwellers|r sous l'eau. Ramassez-les pour leurs |cRXP_LOOT_Muckdweller Glands|r
    >>|cRXP_WARN_Évitement|r |cRXP_ENEMY_Vieux Chicot|r
    .complete 26637,1 --Muckdweller Gland (8)
	.mob Muckdweller
	.unitscan Ol' Gummers
step
#questguide
    #sticky
    #label Hunters
    #loop
    .goto 49,55.822,66.568,0
    .goto 49,53.086,69.251,0
    .goto 49,50.922,65.688,0
    .goto 49,49.219,67.953,0
    .goto 49,47.151,66.384,0
    .goto 49,45.798,69.412,0
    .goto 49,43.679,70.878,0
    .goto 49,39.093,68.551,0
    .waypoint 49,55.822,66.568,20,0
    .waypoint 49,54.430,68.474,20,0
    .waypoint 49,53.627,69.824,20,0
    .waypoint 49,53.086,69.251,20,0
    .waypoint 49,52.089,69.305,20,0
    .waypoint 49,49.800,69.120,20,0
    .waypoint 49,50.922,65.688,20,0
    .waypoint 49,50.313,66.097,20,0
    .waypoint 49,49.024,66.516,20,0
    .waypoint 49,49.219,67.953,20,0
    .waypoint 49,48.006,68.721,20,0
    .waypoint 49,48.030,67.211,20,0
    .waypoint 49,47.151,66.384,20,0
    .waypoint 49,46.832,67.484,20,0
    .waypoint 49,45.871,66.825,20,0
    .waypoint 49,46.634,70.734,20,0
    .waypoint 49,45.798,69.412,20,0
    .waypoint 49,43.680,66.576,20,0
    .waypoint 49,43.679,70.878,20,0
    .waypoint 49,41.375,69.805,20,0
    .waypoint 49,39.093,68.551,20,0
    >>Tuez |cRXP_ENEMY_Blackrock Hunters|r
    >>|cRXP_WARN_Soyez prudent car ils sont|r |T136041:0|t[Camouflaged]
    .complete 26638,1 --Blackrock Hunter (8)
	.mob Blackrock Hunter
step
#questguide
    .goto 49,39.080,69.773,0
    .goto 49,41.122,69.990,0
    .goto 49,42.532,70.274,0
    .goto 49,45.198,68.405,0
    .goto 49,47.075,66.697,0
    .goto 49,39.080,69.773,40,0
    .goto 49,39.687,69.959,40,0
    .goto 49,40.424,68.797,40,0
    .goto 49,41.122,69.990,40,0
    .goto 49,41.557,68.559,40,0
    .goto 49,42.280,69.740,40,0
    .goto 49,42.532,70.274,40,0
    .goto 49,44.090,70.194,40,0
    .goto 49,43.958,67.755,40,0
    .goto 49,45.198,68.405,40,0
    .goto 49,46.057,69.072,40,0
    .goto 49,47.075,66.697,40,0
	>>Ramassez les |cRXP_LOOT_Piles of Leaves|r et |cRXP_LOOT_Fox Poop|r sur le sol
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brubaker|r
    .turnin 26639 >>Rendez la quête Votre contact : Brubaker
    .accept 26640 >>Acceptez la quête Des atrocités sans nom
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r et |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Rendez la quête Le paquetage de la compagnie Bravo : du chloroforme
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Rendez la quête Le paquetage de la compagnie Bravo : le camouflage
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Rendez la quête La chasse aux chasseurs
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Rendez la quête Des atrocités sans nom
    .accept 26646 >>Acceptez la quête Les prisonniers de guerre
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r, et |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Rendez la quête Le paquetage de la compagnie Bravo : du chloroforme
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Rendez la quête Le paquetage de la compagnie Bravo : le camouflage
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Rendez la quête La chasse aux chasseurs
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Rendez la quête Des atrocités sans nom
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Eastvale Logging Camp >> Envolez-vous vers Camp de bûcherons du val d'Est
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Randal Chasseur|r
    .skill riding,75 >> Apprenez [Apprenti cavalier]
    .target Randal Hunter
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katie Chasseur|r
    +|cRXP_BUY_Achetez n'importe lequel|r |T132261:0|t[Cheval] |cRXP_BUY_qui vous plaît auprès d'elle|r
	.target Katie Hunter
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Utilisez la |T132261:0|t[Pinto Bridle] pour l'apprendre
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Utilisez la |T132261:0|t[Jument alezane Bridle] pour l'apprendre
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Utilisez le |T132261:0|t[Cheval bai Bridle] pour l'apprendre
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>|cRXP_WARN_Glissez le|r |T132261:0|t[Pinto] |cRXP_WARN_sur vos Barres d'actions|r
    .cast 472 >> Montez votre |T132261:0|t[Pinto]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>|cRXP_WARN_Glissez la|r |T132261:0|t[Jument alezane] |cRXP_WARN_sur vos Barres d'actions|r
    .cast 6648 >> Montez votre |T132261:0|t[Jument alezane]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>|cRXP_WARN_Glissez le|r |T132261:0|t[Cheval bai] |cRXP_WARN_sur vos Barres d'actions|r
    .cast 458 >> Montez votre |T132261:0|t[Cheval bai]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Goss le Preste|r
    .fly Darkshire >> Volez à Sombre-Comté
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Darkshire >> Volez à Sombre-Comté
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_Utilisez le|r |T133878:0|t[Paquetage de la compagnie Bravo] |cRXP_WARN_dans|r |cRXP_WARN_Vallée des Étripeurs|r
    >>|cRXP_WARN_Vous pouvez monter normalement avec l'objet, mais vous ne pouvez pas être en|r |T136041:0|t[Camouflage]. << !Druid
    >>|cRXP_WARN_Vous pouvez monter normalement avec l'objet et vous envoler dans|r |T132128:0|t[Forme de vol] |cRXP_WARN_tandis que|r |T136041:0|t[Camouflaged] << Druid
    >>Lancez |T136074:0|t[Dissimulation] (1) pour devenir invisible|r
    >>Lancez |T132289:0|t[Diversion] (2) pour faire |cRXP_ENEMY_Blackrock Orcs|r se déplacer
    >>Lancez |T136090:0|t[Chloroforme] (3) pour endormir les |cRXP_ENEMY_Blackrock Wardens|r et les |cRXP_ENEMY_Blackrock Guards|r. Cela ne fonctionne pas sur les |cRXP_ENEMY_Blackrock Drake Riders|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .flyable << Druid --Azeroth Flying
step << Druid
    #questguide
    #optional
    #completewith SeaforiumD
    +|cRXP_WARN_Utilisez le|r |T133878:0|t[Paquetage de la compagnie Bravo] |cRXP_WARN_dans|r |cRXP_WARN_Vallée des Étripeurs|r
    >>|cRXP_WARN_Vous pouvez monter normalement avec l'objet, mais vous ne pouvez pas être en|r |T136041:0|t[Camouflage].
    >>Lancez |T136074:0|t[Dissimulation] (1) pour devenir invisible|r
    >>Lancez |T132289:0|t[Diversion] (2) pour faire bouger les |cRXP_ENEMY_Blackrock Orcs|r
    >>Lancez |T136090:0|t[Chloroforme] (3) pour endormir les |cRXP_ENEMY_Blackrock Wardens|r et les |cRXP_ENEMY_Blackrock Guards|r. Cela ne fonctionne pas sur |cRXP_ENEMY_Blackrock Drake Riders|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #completewith next
    .goto 49,68.486,75.120,20 >> Entrez dans la grotte dans la Vallée des Étripeurs
step
    #questguide
    .goto 49,69.525,76.315
    >>Ouvrez le |cRXP_PICK_Blackrock Clé Pouch|r à l'intérieur. Prélevez-le pour le |cRXP_LOOT_Blackrock Tenir Pen Clé|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>Ouvrez l'un des |cRXP_PICK_Blackrock Tenir Pens|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26646 >>Rendez la quête Les prisonniers de guerre
    .accept 26651 >>Acceptez la quête Pour survivre à la guerre, il faut devenir la guerre
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>Entrez à l'intérieur de la tour
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>Avec le |T133878:0|t[Paquetage de la compagnie Bravo] équipé, lancez |T136173:0|t[Poser l’hydroglycérine] (4) à l'étage central au milieu de la tour
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>Avec le |T133878:0|t[Paquetage de la compagnie Bravo] équipé, lancez |T136173:0|t[Poser l’hydroglycérine] (4) sur le mur extérieur de la hutte
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >> |cRXP_WARN_Supprimez le|r |T133878:0|t[Paquetage de la compagnie Bravo] |cRXP_WARN_Amélioration|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_Évitez les|cRXP_ENEMY_ |rBlackrock Wardens|cRXP_ENEMY_, les |rBlackrock Guards|r, et les |cRXP_ENEMY_Blackrock Drake Riders|r
    .goto 49,77.683,65.506,15 >> Rendez-vous vers |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r.
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .turnin 26651 >>Rendez la quête Pour survivre à la guerre, il faut devenir la guerre
    .accept 26668 >>Acceptez la quête Détonation
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r et |cRXP_FRIENDLY_Danforth|r
    .turnin 26668 >>Rendez la quête Détonation
    .accept 26693 >>Acceptez la quête La tour sombre
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>Acceptez la quête L'extinction des Sombrepoils
    .goto 49,77.628,65.341
    .target +Danforth
step
    #questguide
    #sticky
    #label Shadowhide
    .goto 49,73.167,48.650,0
    .goto 49,74.650,52.479,0
    .goto 49,72.277,51.252,0
    .goto 49,69.079,50.430,0
    .goto 49,67.317,43.754,0
    .goto 49,66.197,37.545,0
    .goto 49,71.332,33.267,0
    .goto 49,70.571,38.254,0
    .goto 49,73.004,43.909,0
    .waypoint 49,73.167,48.650,50,0
    .waypoint 49,73.795,49.819,50,0
    .waypoint 49,76.102,53.026,50,0
    .waypoint 49,74.650,52.479,50,0
    .waypoint 49,73.531,53.657,50,0
    .waypoint 49,73.185,50.399,50,0
    .waypoint 49,72.277,51.252,50,0
    .waypoint 49,71.567,50.196,50,0
    .waypoint 49,71.349,48.124,50,0
    .waypoint 49,69.079,50.430,50,0
    .waypoint 49,66.885,47.661,50,0
    .waypoint 49,67.015,45.857,50,0
    .waypoint 49,67.317,43.754,50,0
    .waypoint 49,65.054,40.527,50,0
    .waypoint 49,64.633,37.658,50,0
    .waypoint 49,66.197,37.545,50,0
    .waypoint 49,66.330,33.341,50,0
    .waypoint 49,68.025,35.534,50,0
    .waypoint 49,71.332,33.267,50,0
    .waypoint 49,72.209,34.231,50,0
    .waypoint 49,71.606,35.978,50,0
    .waypoint 49,70.571,38.254,50,0
    .waypoint 49,70.569,41.638,50,0
    .waypoint 49,73.004,43.909,50,0
    >>Tuez |cRXP_ENEMY_Rabid Shadowhide Gnolls|r, |cRXP_ENEMY_Shadowhide Darkweavers|r, |cRXP_ENEMY_Shadowhide Assassins|r, |cRXP_ENEMY_Shadowhide Warriors|r, |cRXP_ENEMY_Shadowhide Slayers|r, |cRXP_ENEMY_Shadowhide Brutes|r et |cRXP_ENEMY_Shadowhide Gnolls|r
    >>|cRXP_WARN_Faites attention car les|cRXP_ENEMY_ |rShadowhide Assassins|r sont |T132320:0|t[Camouflé]
    .complete 26692,1 --Shadowhide Gnoll (20)
    .mob Rabid Shadowhide Gnoll
    .mob *Shadowhide Darkweaver
    .mob *Shadowhide Assassins
    .mob *Shadowhide Warrior
    .mob *Shadowhide Slayer
    .mob *Shadowhide Brute
    .mob *Shadowhide Gnoll
step
    #questguide
    #sticky
    #requires Shadowhide
    #label Extinction
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26692 >>Rendez la quête L'extinction des Sombrepoils
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>Entrez la grotte du |cRXP_ENEMY_Général Tripecroc|r
step
    #questguide
    .goto 49,67.542,28.902
    >>Tuez |cRXP_ENEMY_Général Tripecroc|r à l'intérieur. Prélevez-le pour le |cRXP_LOOT_Key of Ilgalar|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26693 >>Rendez la quête La tour sombre
    .accept 26694 >>Acceptez la quête Le grand magus Doane
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>Dirigez-vous vers l'entrée de la Tour d'Ilgalar.
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >> Cliquez sur la |cRXP_PICK_Garde d'Ilgalar|r à la base de la Tour d'Ilgalar
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>Éliminez |cRXP_ENEMY_Grand magus Doane|r dans la Tour d'Ilgalar
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >> Allez auprès de |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John J. Keeshan|r.
    .turnin 26694 >>Acceptez la quête Le grand magus Doane
    .timer 29,RP de Le grand magus Doane
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>Attendez le temps du RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26708 >>Acceptez la quête AHHHHHHHHHHHH ! AHHHHHHHHH !! !
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >> Entrez dans le |cRXP_FRIENDLY_Char de siège de la compagnie Bravo|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_En étant à l'intérieur du |cRXP_FRIENDLY_Char de siège de la compagnie Bravo|r, retournez à la Vallée de Galardell
    .isOnQuest 26708
step
    #questguide
    #label BlackrockInvaders
    .goto 49,75.045,50.854,0
    .goto 49,71.179,48.591,0
    .goto 49,67.150,44.692,0
    .goto 49,63.587,39.740,0
    .goto 49,63.587,39.740,50,0
    .goto 49,75.045,50.854,50,0
    .goto 49,60.660,36.666
    >>|cRXP_WARN_Tandis que vous êtes dans le |cRXP_FRIENDLY_Char de siège de la compagnie Bravo|r, pilotez à travers les |cRXP_ENEMY_Blackrock Invaders|r vers le poste de Keeshan, en lançant|r |T252187:0|t[Harrison Jones] (1) |cRXP_WARN_sous recharge|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_Sortez du|r |cRXP_FRIENDLY_Char de siège de la compagnie Bravo|r
    >>|cRXP_WARN_Cela vous fera sortir immédiatement de la phase avec |cRXP_ENEMY_Blackrock Invaders|r et vous replacera dans la phase avec les|r |cRXP_ENEMY_Shadowhide Gnolls|r
    .goto 49,60.660,36.666,15 >> Allez auprès de |cRXP_FRIENDLY_Colonel Troteman|r
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26708 >>Rendez la quête AHHHHHHHHHHHH ! AHHHHHHHHH !! !
    .accept 26713 >>Acceptez la quête Confrontation à Guet-de-Pierre
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_Assurez-vous que votre équipe est avec vous avant de continuer. Ils devraient apparaître à l'approche de |cRXP_ENEMY_Tharil'zun|r. S'ils ne le font pas, déconnectez-vous et reconnectez-vous|r
step
    #questguide
    .goto 49,60.307,47.402
    >>Tuez |cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun (1)
    .mob Tharil'zun
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>Voyagez vers |cRXP_ENEMY_Gath'Ilzogg|r
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>Tuez |cRXP_ENEMY_Gath'Ilzogg|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    #questguide
    >>|cRXP_WARN_Cliquez sur la fenêtre pop-up dans votre journal de quêtes|r
    .turnin 26713 >>Rendez la quête Confrontation à Guet-de-Pierre
    .goto 49,58.651,55.469
    .accept 26714 >>Acceptez la quête Sombrembrase, la progéniture du Brise-monde
    .timer 25,RP de Sombrembrase
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_Attendez la transformation RP de |cRXP_ENEMY_Grand magus Doane|r|r
    >>|cRXP_WARN_Vainquez |cRXP_ENEMY_Sombrembrase|r une fois le RP fini|r
    >>|cRXP_WARN_Si vous échouez, utilisez le |cRXP_PICK_Horn of Invocation|r au sol pour invoquer à nouveau|r |cRXP_ENEMY_Grand magus Doane|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26714 >>Rendez la quête Sombrembrase, la progéniture du Brise-monde
    .accept 26726 >>Acceptez la quête Un retour triomphant
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Comté-du-Lac
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entrez dans l'Hôtel de Ville de Comté du Lac
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Salomon|r à l'intérieur
    .turnin 26726 >>Rendez la quête Un retour triomphant
	.target Magistrate Solomon
------End of optional Keeshan questline
step
    #optional
    #label endOfTheGuide
]])
