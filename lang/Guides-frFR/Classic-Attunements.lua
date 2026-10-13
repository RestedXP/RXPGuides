if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Guides Endgame
#subgroup Accès
#name Accès au Repaire d'Onyxia (A)


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_Voyagez aux|r |cFFfa9602Steppes ardentes|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >> Acceptez la quête La menace des draconiens
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Tuez les |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r et un |cRXP_ENEMY_Black Drake|r
    >>Les |cRXP_ENEMY_Draconides noirs|r|cRXP_WARN_,|r les |cRXP_ENEMY_Wyrmides noirs|r |cRXP_WARN_et les|r |cRXP_ENEMY_Drakes noir|r |cRXP_WARN_sont des élites. Allez-y avec un groupe si nécessaire|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Drake
    .complete 4182,3 -- Black Drake slain
    .mob +Black Wyrmkin
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >> Rendez la quête La menace des draconiens
    .accept 4183 >> Acceptez la quête Les véritables maîtres
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4183 >> Acceptez la quête Les véritables maîtres
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borgus Stoutarm|r
    .fly Redridge >> Volez vers Les Carmines
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4183 >> Rendez la quête Les véritables maîtres
    .accept 4184 >> Acceptez la quête Les véritables maîtres
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4184 >> Rendez la quête Les véritables maîtres
    .accept 4185 >> Acceptez la quête Les véritables maîtres
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >> Rendez la quête Les véritables maîtres
    .accept 4186 >> Acceptez la quête Les véritables maîtres
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge>> Volez vers Les Carmines
    .target Dungar Longdrink
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >> Rendez la quête Les véritables maîtres
    .accept 4223 >> Acceptez la quête Les véritables maîtres
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Burning Steppes >> Volez jusqu'aux Steppes ardentes
    .target Ariena Stormfeather
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4223 >> Rendez la quête Les véritables maîtres
    .accept 4224 >> Acceptez la quête Les véritables maîtres
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >> Voyagez à la Corniche des Flammes
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John le Loqueteux|r
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4224 >> Rendez la quête Les véritables maîtres
    .accept 4241 >> Acceptez la quête Maréchal Windsor
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entrez dans les profondeurs de Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Windsor|r
    >>|cRXP_WARN_Si votre groupe n'a pas de Voleur, vous devrez peut-être tuer la|r |cRXP_ENEMY_Grande Interrogatrice Gerstahn|r |cRXP_WARN_pour la|r |cRXP_LOOT_Clé de la prison|r |cRXP_WARN_afin d'ouvrir les portes|r
    .turnin 4241 >> Rendez la quête Maréchal Windsor
    .accept 4242 >> Acceptez la quête Espoir abandonné
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>Allez à la Veille de Morgan dans les |cFFfa9602Steppes ardentes|r
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Maxwell|r
    >>|cRXP_WARN_La suite de quêtes s'arrêtera ici jusqu'à ce que vous trouviez|r |T134331:0|t[Une note chiffonnée] |cRXP_WARN_ dans les profondeurs de Rochenoire|r
    .turnin 4242 >> Rendez la quête Espoir abandonné
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>Entrez dans les profondeurs de Rochenoire
step
    .isQuestTurnedIn 4242
    >>Tuez les |cRXP_ENEMY_Nains|r dans les profondeurs de Rochenoire. Dépouillez-les pour |T134331:0|t[Une note chiffonnée]
    .use 11446 >> |cRXP_WARN_Utilisez|r |T134331:0|t[Une note chiffonnée] |cRXP_WARN_pour commencer la quête|r
    >>|cRXP_WARN_Il est important que vous fassiez cela avant de tuer les boss |cRXP_ENEMY_Général Forgehargne|r et|r le |cRXP_ENEMY_Seigneur golem Argelmach|r
    >>|cRXP_WARN_Si vous ne l'avez toujours pas trouvé à ce stade, nettoyez la zone autour du Mitard jusqu'à ce qu'il tombe|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >> Acceptez la quête Une note chiffonnée
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Windsor|r
    .turnin 4264 >> Rendez la quête Une note chiffonnée
    .accept 4282 >> Acceptez la quête Un espoir en lambeaux
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Windsor|r
    .accept 4282 >> Acceptez la quête Un espoir en lambeaux
step
    .isOnQuest 4282
    >>Tuez le |cRXP_ENEMY_Général Forgehargne|r et le |cRXP_ENEMY_Seigneur golem Argelmach|r. Dépouillez-les tous les deux pour les |cRXP_LOOT_Informations égarées du maréchal Windsor|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Windsor|r
    >>|cRXP_WARN_ASSUREZ-VOUS QUE TOUS LES MEMBRES DU GROUPE ONT L'ACCEPTATION AUTOMATIQUE DES QUÊTES DÉSACTIVÉE POUR CETTE ÉTAPE !|r
    >>|cRXP_WARN_Accepter cette quête commencera l'escorte Évasion !. Assurez-vous d'avoir nettoyé toute la zone du Mitard pour escorter plus facilement le |r |cRXP_FRIENDLY_Maréchal Windsor|r
    .turnin 4282 >> Rendez la quête Un espoir en lambeaux
    .accept 4322,1 >> Acceptez la quête Évasion !
step
    .isOnQuest 4322
    >>Escortez le |cRXP_FRIENDLY_Maréchal Windsor|r à travers les profondeurs de Rochenoire
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>Allez à la Veille de Morgan dans les |cFFfa9602Steppes ardentes|r
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4322 >> Rendez la quête Évasion !
    .accept 6402 >> Acceptez la quête Le rendez-vous à Hurlevent
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 6402 >> Acceptez la quête Le rendez-vous à Hurlevent
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Rowe|r et à |cRXP_FRIENDLY_Reginald Windsor|r
    >>L' |cRXP_FRIENDLY_Ecuyer Rowe|r annoncera l'arrivée de |cRXP_FRIENDLY_Reginald Windsor|r après que vous lui ayez parlé aux Portes de Hurlevent
    >>|cRXP_WARN_SI VOUS ÊTES DANS UN GROUPE, ASSUREZ-VOUS QUE PERSONNE N'ACCEPTE AUTOMATIQUEMENT La grande mascarade. L'ACCEPTATION AUTOMATIQUE DES QUÊTES A ÉTÉ DÉSACTIVÉE POUR CETTE ÉTAPE|r
    .turnin 6402 >> Rendez la quête Le rendez-vous à Hurlevent
    .accept 6403,1 >> Acceptez la quête La grande mascarade
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>Escortez |cRXP_FRIENDLY_Reginald Windsor|r jusqu'au Donjon de Hurlevent
    >>N'aidez pas |cRXP_FRIENDLY_Reginald Windsor|r à combattre tant que vous êtes à l'intérieur du Donjon. Si vous le faites, il y a une grande chance que vous mouriez. Restez en arrière à la position de la flèche et laissez l'événement se terminer tout seul. Cela prendra quelques minutes
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 6403 >> Rendez la quête La grande mascarade
    .accept 6501 >> Acceptez la quête L'Œil de dragon
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .accept 6501 >> Acceptez la quête L'Œil de dragon
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .zone Winterspring >>Voyagez au |cFFfa9602Berceau-de-l'Hiver|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Prenez le raccourci par la montagne pour atteindre |cRXP_FRIENDLY_Haleh|r
    >>La position de départ est marquée sur votre carte. Suivez attentivement la flèche du point de repère
    >>|cRXP_WARN_Si vous avez des|r |T134863:0|t[Elixirs Brouillecaboche]|cRXP_WARN_, vous pouvez les utiliser pour obtenir le buff|r |T135992:0|t[Chute lente] |cRXP_WARN_pour rendre le saut plus facile|r << !Priest !Mage
    >>|cRXP_WARN_Si vous avez des|r |T134863:0|t[Elixirs Brouillecaboche] |cRXP_WARN_ou des|r |T132917:0|t[Plumes légères]|cRXP_WARN_, vous pouvez les utiliser pour obtenir le buff|r |T135992:0|t[Chute lente] |cRXP_WARN_pour rendre le saut plus facile|r << Mage
    >>|cRXP_WARN_Si vous avez des|r |T134863:0|t[Elixirs Brouillecaboche] |cRXP_WARN_ou des|r |T132917:0|t[Plumes légères]|cRXP_WARN_, vous pouvez les utiliser pour obtenir le buff|r |T135992:0|t[Chute lente] |cRXP_WARN_ou|r |T135928:0|t[Lévitation] |cRXP_WARN_pour rendre le saut plus facile|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Cliquez ici pour un exemple vidéo|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haleh|r
    .turnin 6501 >>Rendez la quête L'Œil de dragon
    .accept 6502 >>Acceptez la quête Amulette drakefeu
    .target Haleh
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    .isQuestTurnedIn 6403
    >>Tuez le |cRXP_ENEMY_Général Drakkisath|r. Dépouillez-le pour le |cRXP_LOOT_Sang du Champion des dragons noirs|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>Voyagez au |cFFfa9602Berceau-de-l'Hiver|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Prenez le raccourci par la montagne pour atteindre |cRXP_FRIENDLY_Haleh|r
    >>La position de départ est marquée sur votre carte. Suivez attentivement la flèche du point de repère
    >>|cRXP_WARN_Si vous avez des|r |T134863:0|t[Elixirs Brouillecaboche]|cRXP_WARN_, vous pouvez les utiliser pour obtenir le buff|r |T135992:0|t[Chute lente] |cRXP_WARN_pour rendre le saut plus facile|r << !Priest !Mage
    >>|cRXP_WARN_Si vous avez des|r |T134863:0|t[Elixirs Brouillecaboche] |cRXP_WARN_ou des|r |T132917:0|t[Plumes légères]|cRXP_WARN_, vous pouvez les utiliser pour obtenir le buff|r |T135992:0|t[Chute lente] |cRXP_WARN_pour rendre le saut plus facile|r << Mage
    >>|cRXP_WARN_Si vous avez des|r |T134863:0|t[Elixirs Brouillecaboche] |cRXP_WARN_ou des|r |T132917:0|t[Plumes légères]|cRXP_WARN_, vous pouvez les utiliser pour obtenir le buff|r |T135992:0|t[Chute lente] |cRXP_WARN_ou|r |T135928:0|t[Lévitation] |cRXP_WARN_pour rendre le saut plus facile|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Cliquez ici pour un exemple vidéo|r
step
    #softcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Attention au cercle bleu devant |cRXP_FRIENDLY_Haleh|r. Si vous marchez dessus, vous serez téléporté dans la grotte|r
    .turnin 6502 >>Rendez la quête Amulette drakefeu
    .target Haleh
step
    #hardcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Attention ! Ne marchez PAS sur le cercle bleu devant |cRXP_FRIENDLY_Haleh|r. Cela vous téléportera dans la grotte auprès d'un dragon élite et vous pourriez mourir|r
    .turnin 6502 >>Rendez la quête Amulette drakefeu
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Guides Endgame
#subgroup Accès
#name Accès au Repaire d'Onyxia (H)

step
    #completewith next
    .subzone 340 >>Voyagez vers Kargath dans les |cFFfa9602Terres ingrates|r
step
    .goto Badlands,5.81,47.52
	>>Parlez au |cRXP_FRIENDLY_Seigneur de guerre Sangredent|r pour recevoir la |T133473:0|t[|cRXP_LOOT_Ordres du seigneur de guerre Sangredent|r]. Utilisez-la pour accepter la quête
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>Acceptez la quête Ordre du chef de guerre
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Il s'agit d'un donjon de 5 à 10 joueurs|r
step
    #sticky
    #label ImportantDocuments
    >>Ramassez les |cRXP_LOOT_Importants documents Rochenoire|r
    >>Il peut se trouver à 4 emplacements différents dans le donjon :
    >>|cRXP_WARN_Aux pieds du|r |cRXP_ENEMY_Seigneur Wyrmthalak|r
    >>|cRXP_WARN_Dans un coin vide à côté du|r |cRXP_ENEMY_Maître de guerre Voone|r
    >>|cRXP_WARN_Près du|r |cRXP_ENEMY_Généralissime Omokk|r
    >>|cRXP_WARN_À côté du tribut d' |cRXP_ENEMY_Urok Hurleruine|r|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>Tuez le |cRXP_ENEMY_Généralissime Omokk|r, le |cRXP_ENEMY_Maître de guerre Voone|r et le |cRXP_ENEMY_Seigneur Wyrmthalak|r
    .complete 4903,2 --Highlord Omokk 1/1
    .mob +Highlord Omokk
    .complete 4903,3 --War Master Voone 1/1
    .mob +War Master Voone
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob +Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>Voyagez vers Kargath dans les |cFFfa9602Terres ingrates|r
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur de guerre Sangredent|r
    .turnin 4903 >>Rendez la quête Ordre du chef de guerre
    .accept 4941 >>Acceptez la quête Sagesse d'Eitrigg
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,34.27,39.35,10,0
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eitrigg|r et écoutez son dialogue, puis parlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Rendez la quête Sagesse d'Eitrigg
    .accept 4974 >>Acceptez la quête Pour la Horde !
    .target Eitrigg
    .target Thrall
    .skipgossip
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .subzone 1583,2 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    >>Tuez |cRXP_ENEMY_Rend Main-Noire|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 4974 >>Rendez la quête Pour la Horde !
    .accept 6566 >>Acceptez la quête Ce que le vent apporte
    .target Thrall
step
    .goto Orgrimmar,31.74,37.82
    >>Écoutez l'histoire de |cRXP_FRIENDLY_Thrall|r
    .complete 6566,1 --Thrall's Tale
    .target Thrall
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 6566 >>Rendez la quête Ce que le vent apporte
    .accept 6567 >>Acceptez la quête Le Champion de la Horde
    .target Thrall
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Sun Rock Retreat >> Volez jusqu'à la Retraite des Roche-Soleil
    .target Doras
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrouille du nord au sud le long de |cFFfa9602Désolace|r. Le chemin de sa patrouille est marqué sur la carte. Suivez la flèche du point de repère pour vous assurer de couvrir tout le trajet de sa patrouille|r
    >>|cRXP_WARN_Il disparaît une fois qu'il atteint les Colosses jumeaux à |cFFfa9602Féralas|r. Au bout de 5 minutes, il réapparaît à la |cFFfa9602frontière entre les Serres-Rocheuses/Désolace|r
    .turnin 6567 >>Rendez la quête Le Champion de la Horde
    .accept 6568 >>Acceptez la quête Le testament de Rexxar
    .unitscan Rexxar
step
    #completewith next
    .zone Western Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Ouest|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myranda la Mégère|r
    .turnin 6568 >>Rendez la quête Le testament de Rexxar
    .accept 6569 >>Acceptez la quête Illusions d'Occulus
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    >>Tuez tous les |cRXP_ENEMY_Draconiens|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil de draconide noir|r
    >>|cRXP_WARN_Seul les |cRXP_ENEMY_Draconiens|r dans le Sommet du pic Rochenoire peut faire tomber les |cRXP_LOOT_Yeux|r
    .complete 6569,1 --Black Dragonspawn Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Ouest|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myranda la Mégère|r
    .turnin 6569 >>Rendez la quête Illusions d'Occulus
    .accept 6570 >>Acceptez la quête Brandeguerre
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
step
    #completewith Emberstrife1
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entrez dans la Tanière de Brandeguerre
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Attention ! Assurez-vous d'utiliser l'|r |T133608:0|t[Amulette de subversion draconique] |cRXP_WARN_avant de vous approcher de |cRXP_ENEMY_Brandeguerre|r ou il pourrait vous TUER|r
    .use 16787
step
    #label Emberstrife1
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandeguerre|r
    .use 16787 >>|cRXP_WARN_Utilisez l'|r |T133608:0|t[Amulette de subversion draconique] |cRXP_WARN_pour vous déguiser|r
    .turnin 6570 >>Rendez la quête Brandeguerre
    .accept 6582 >>Acceptez la quête L'épreuve des crânes, Clairvoyant
    .accept 6583 >>Acceptez la quête L'épreuve des crânes, Somnus
    .accept 6584 >>Acceptez la quête L'épreuve des crânes, Chronalis
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>Tuez |cRXP_ENEMY_Clairvoyant|r au |cFFfa9602Berceau-de-l'Hiver|r
    >>Tuez |cRXP_ENEMY_Somnus|r au |cFFfa9602Marais des Chagrins|r
    >>Tuez |cRXP_ENEMY_Chronalis|r à |cFFfa9602Tanaris|r
    >>Dépouillez-les pour leur |cRXP_LOOT_Crânes|r
    >>|cRXP_WARN_Leurs emplacements sont marqués sur la carte. Il est recommandé de le faire avec au moins 5 joueurs|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>Voyagez au |cFFfa9602Berceau-de-l'Hiver|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>Entrez dans la grotte de Mazthoril
step
    .goto Winterspring,52.91,55.77
    >>Tuez |cRXP_ENEMY_Clairvoyant|r à l'arrière de la grotte. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_WARN_Attention à son sort de|r |T135848:0|t[Souffle de givre] |cRXP_WARN_(jet en éventail devant lui)|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au |cFFfa9602Marais des Chagrins|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>Tuez |cRXP_ENEMY_Somnus|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_WARN_Attention à son sort|r |T136007:0|t[Souffle d'acide corrosif] |cRXP_WARN_(jet en éventail devant lui)|r
    >>|cRXP_WARN_Il patrouille dans un petit cercle au sud/est du lac|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>Voyagez à |cFFfa9602Tanaris|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>Voyagez vers les Grottes du Temps
step
    .goto Tanaris,64.85,50.52
    >>Tuez |cRXP_ENEMY_Chronalis|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_WARN_Attention à son sort|r |T135831:0|t[Souffle de sable] |cRXP_WARN_ (jet en éventail devant lui)|r
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
step
    #requires SkullofDragons
    #completewith Emberstrife2
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entrez dans la Tanière de Brandeguerre
step
    #requires SkullofDragons
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Attention ! Assurez-vous d'utiliser l'|r |T133608:0|t[Amulette de subversion draconique] |cRXP_WARN_avant de vous approcher de |cRXP_ENEMY_Brandeguerre|r ou il pourrait vous TUER|r
    .use 16787
step
    #label Emberstrife2
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandeguerre|r
    .use 16787 >>|cRXP_WARN_Utilisez l'|r |T133608:0|t[Amulette de subversion draconique] |cRXP_WARN_pour vous déguiser|r
    .turnin 6582 >>Rendez la quête L'épreuve des crânes, Clairvoyant
    .turnin 6583 >>Rendez la quête L'épreuve des crânes, Somnus
    .turnin 6584 >>Rendez la quête L'épreuve des crânes, Chronalis
    .accept 6585 >>Acceptez la quête L'épreuve des crânes, Axtroz
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>Voyagez aux |cFFfa9602Paluns|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>Voyagez aux Portes des Gueules-de-dragon
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>Tuez |cRXP_ENEMY_Axtroz|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_WARN_Attention à son sort|r |T135831:0|t[Souffle de flammes] |cRXP_WARN_(jet en éventail devant lui)|r
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
step
    #completewith Emberstrife3
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entrez dans la Tanière de Brandeguerre
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Attention ! Assurez-vous d'utiliser l'|r |T133608:0|t[Amulette de subversion draconique] |cRXP_WARN_avant de vous approcher de |cRXP_ENEMY_Brandeguerre|r ou il pourrait vous TUER|r
    .use 16787
step
    #label Emberstrife3
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandeguerre|r
    .use 16787 >>|cRXP_WARN_Utilisez l'|r |T133608:0|t[Amulette de subversion draconique] |cRXP_WARN_pour vous déguiser|r
    .turnin 6585 >>Rendez la quête L'épreuve des crânes, Axtroz
    .accept 6601 >>Acceptez la quête Ascension...
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrouille du nord au sud le long de |cFFfa9602Désolace|r. Le chemin de sa patrouille est marqué sur la carte. Suivez la flèche du point de repère pour vous assurer de couvrir tout le trajet de sa patrouille|r
    >>|cRXP_WARN_Il disparaît une fois qu'il atteint les Colosses jumeaux à |cFFfa9602Féralas|r. Au bout de 5 minutes, il réapparaît à la |cFFfa9602frontière entre les Serres-Rocheuses/Désolace|r
    .turnin 6601 >>Rendez la quête Ascension...
    .accept 6602 >>Acceptez la quête Le sang du champion des dragons noirs
    .unitscan Rexxar
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    .isQuestTurnedIn 6601
    >>Tuez le |cRXP_ENEMY_Général Drakkisath|r. Dépouillez-le pour le |cRXP_LOOT_Sang du Champion des dragons noirs|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
step
    .isQuestComplete 6602
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrouille du nord au sud le long de |cFFfa9602Désolace|r. Le chemin de sa patrouille est marqué sur la carte. Suivez la flèche du point de repère pour vous assurer de couvrir tout le trajet de sa patrouille|r
    >>|cRXP_WARN_Il disparaît une fois qu'il atteint les Colosses jumeaux à |cFFfa9602Féralas|r. Au bout de 5 minutes, il réapparaît à la |cFFfa9602frontière entre les Serres-Rocheuses/Désolace|r
    .turnin 6602 >>Rendez la quête Le sang du champion des dragons noirs
    .unitscan Rexxar

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#subgroup Accès
#group RestedXP Guides Endgame
#name Accès pour le Cœur du Magma

step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lothos Ouvrefaille|r
    .accept 7848 >>Acceptez la quête Harmonisation avec le Cœur du Magma
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entrez dans les profondeurs de Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    #softcore
    >>Tournez à droite avant d'entrer dans le Lyceum et ramassez le |cRXP_LOOT_Fragment du Magma|r au sol à l'extérieur du portail de l'instance |cFFfa9602Coeur du Magma|r
    >>|cRXP_WARN_La route la plus rapide pour y accéder est en faisant ce qu'on appelle un 'Lava skip'. Cette technique démarre de la plateforme du|r |cRXP_ENEMY_Seigneur Incendius|r
    --.link >> |cRXP_WARN_Click here for video reference|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #hardcore
    >>Tournez à droite avant d'entrer dans le Lyceum et ramassez le |cRXP_LOOT_Fragment du Magma|r au sol à l'extérieur du portail de l'instance |cFFfa9602Coeur du Magma|r
    .complete 7848,1 --Core Fragment 1/1
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lothos Ouvrefaille|r
    .turnin 7848 >>Rendez la quête Harmonisation avec le Cœur du Magma
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guides Endgame
#subgroup Accès
#name Accès au Repaire de l'Aile noire

step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #hardcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Tuez l' |cRXP_ENEMY_Intendant du Bouclier balafré|r. Dépouillez-le pour les |T133473:0|t[|cRXP_LOOT_Ordres de Main-noire|r]. Utilisez-les pour commence une quête
    >>|cRXP_WARN_Il s'agit d'un puissant ennemi d'élite de niveau 55t. Faites-le en groupe pour être sûr|r
    >>|cRXP_WARN_Il se situe dans le couloir à droite du portail de l'instance du Pic Rochenoire|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Acceptez la quête Les ordres de Main-noire
    .unitscan Scarshield Quartermaster
step
    #softcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Tuez l' |cRXP_ENEMY_Intendant du Bouclier balafré|r. Dépouillez-le pour les |T133473:0|t[|cRXP_LOOT_Ordres de Main-noire|r]. Utilisez-les pour commence une quête
    >>|cRXP_WARN_Il se situe dans le couloir à droite du portail de l'instance du Pic Rochenoire|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Acceptez la quête Les ordres de Main-noire
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    >>Cliquez sur la |cRXP_PICK_Marque de Drakkisath|r dans la salle finale du Sommet du pic Rochenoire derrière le |cRXP_ENEMY_Général Drakkisath|r
    .turnin 7761 >>Rendez la quête Les ordres de Main-noire

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guides Endgame
#subgroup Clés
#name Clé du Sommet du pic Rochenoire

step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    >>Tuez tous les ennemis dans le Pic Rochenoire jusqu'à ce que vous ramassiez un |T135725:0|t[|cRXP_LOOT_Sceau d'ascension non orné|r]
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infiltrateur du Bouclier balafré|r
    >>|cRXP_WARN_Après avoir entré dans la Cité d'Hordemar au début du donjon, il sera situé sur une plateforme à votre gauche|r
    .accept 4742 >>Acceptez la quête Le Sceau d'ascension
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>Tuez le |cRXP_ENEMY_Généralissime Omokk|r. Dépouillez-le pour la |cRXP_LOOT_Gemme de Spirestone|r
    >>Tuez le |cRXP_ENEMY_Maître de Guerre Voone|r. Dépouillez-le pour la |cRXP_LOOT_Gemme de Smolderthorn|r
    >>Tuez le |cRXP_ENEMY_Seigneur Wyrmthalak|r. Dépouillez-le pour la |cRXP_LOOT_Gemme de Bloodaxe|r
    >>|cRXP_WARN_Les|r |cRXP_LOOT_Gemmes|r |cRXP_WARN_ont environ ~30%. Vous devrez probablement faire le Bas du Pic Rochenoire plusieurs fois|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .target +Highlord Omokk
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .target +War Master Voone
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target +Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infiltrateur du Bouclier balafré|r
    >>|cRXP_WARN_Après avoir entré dans la Cité d'Hordemar au début du donjon, il sera situé sur une plateforme à votre gauche|r
    .turnin 4742 >>Rendez la quête Le Sceau d'ascension
    .accept 4743 >>Acceptez la quête Le Sceau d'ascension
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_Ouvrez le|r |T132595:0|t[Cadeau de Vaelan] |cRXP_WARN_pour récupérer le|r |T133276:0|t[|cRXP_LOOT_Sceau d'ascension brut|r] |cRXP_WARN_et l'|r |T134334:0|t[|cRXP_LOOT_Orbe d'énergie draconique|r]
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
step
    #softcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entrez dans la Tanière de Brandeguerre
    >>|cRXP_WARN_Vous aurez besoin d'un groupe d'au moins 3 joueurs pour terminer cette prochaine partie|r
step
    #hardcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entrez dans la Tanière de Brandeguerre
    >>|cRXP_WARN_Vous aurez besoin d'un groupe d'au moins 3 joueurs pour terminer cette prochaine partie, y compris un Tank et un soigneur pour votre sécurité !|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_Placez le|r |T133276:0|t[|cRXP_LOOT_Sceau d'ascension brut|r] |cRXP_WARN_sur le sol avant d'attaquer|r |cRXP_ENEMY_Brandeguerre|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_Attaquez|r |cRXP_ENEMY_Brandeguerre|r. |cRXP_WARN_Une fois qu'il passe en dessous de 10% de vie, utilisez l'|r |T134334:0|t[|cRXP_LOOT_Orbe d'énergie draconique|r] |cRXP_WARN_pour prendre le contrôle de|r |cRXP_ENEMY_Brandeguerre|r
    >>|cRXP_WARN_Lancez|r |T135824:0|t[Flammes des dragons noirs] |cRXP_WARN_pour forger le|r |T133276:0|t[|cRXP_LOOT_Sceau d'ascension brut|r] |cRXP_WARN_que vous avez placé sur le sol|r
    >>Une fois complété, récupérez le |cRXP_PICK_Sceau d'ascension forgé|r au sol
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Entrez dans le Pic Rochenoire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infiltrateur du Bouclier balafré|r
    >>|cRXP_WARN_Après avoir entré dans la Cité d'Hordemar au début du donjon, il sera situé sur une plateforme à votre gauche|r
    .turnin 4743 >>Rendez la quête Le Sceau d'ascension
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Guides Endgame
#subgroup Clés
#name La clé de Scholomance (A)

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Allez à l'Hôtel des ventes dans n'importe quelle capitale et achetez 2|r |T133221:0|t[Barres de thorium]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >> Voyagez à |cFFfa9602Forgefer|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Tombemartel|r
    >>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrouille à travers l'ensemble d'Ironforge|r
    >>|cRXP_WARN_Cette quête peut être acceptée à|r |cFFfa9602Hurlevent|r |cRXP_WARN_ou à|r |cFFfa9602Darnassus|r
    .acceptmultiple 5091,5090,5066 >> Acceptez la quête Un appel aux armes : les Maleterres
    .unitscan Courier Hammerfall --IF
    .unitscan Herald Moonstalker --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>Voyagez au Camp du Noroît aux |cFFfa9602Maleterres de l'Ouest|r
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5066 >> Rendez la quête Un appel aux armes : les Maleterres
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5091 >> Rendez la quête Un appel aux armes : les Maleterres
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5090 >> Rendez la quête Un appel aux armes : les Maleterres
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>Tuez les |cRXP_ENEMY_Skeletal Flayers|r et les |cRXP_ENEMY_Slavering Ghouls|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5098 >> Acceptez la quête Tout au long des tours de guet
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5098 >> Rendez la quête Tout au long des tours de guet
    .accept 5533 >> Acceptez la quête Scholomance
    .target Commander Ashlam Valorfist
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Détruisez la |T135432:0|t[Torche-balise]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5533 >>Rendez la quête Scholomance
    .accept 5537 >>Acceptez la quête Fragments de squelette
    .target Alchemist Arbington
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Tuez les |cRXP_ENEMY_Skeletal Executioners|r et les |cRXP_ENEMY_Skeletal Acolytes|r. Dépouillez-les pour leur |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >>Rendez la quête Fragments de squelette
    .accept 5538 >>Acceptez la quête À la pêche au moule...
    .target Alchemist Arbington
step
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Froisse Bonnacier|r
    >>|cRXP_WARN_Valider cette quête exige que vous payiez 15 pièces d'or|r
    .turnin 5538 >>Rendez la quête À la pêche au moule...
    .accept 5801 >>Acceptez la quête Forgée dans la Fournaise
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Si vous ne les avez pas achetées plus tôt, allez à l'Hôtel des ventes dans n'importe quelle capitale et achetez 2|r |T133221:0|t[Barres de thorium]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bera Stonehammer|r
    .fly Un'Goro >> Volez au Cratère d'Un Goro
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Voyagez vers le sommet de la montagne à la Crête de la Fournaise
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Utilisez le|r |T134457:0|t[Moule de clé squelette] |cRXP_WARN_au bassin lave pour créer la|r |cRXP_LOOT_Clé squelette inachevée|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>Voyagez au Camp du Noroît aux |cFFfa9602Maleterres de l'Ouest|r
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5801 >>Rendez la quête Forgée dans la Fournaise
    .accept 5803 >>Acceptez la quête Le Scarabée d'Araj
    .target Alchemist Arbington
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Voyagez vers le centre des Ruines d'Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissant. Il est recommandé de le tuer avec un groupe d'au moins 3 joueurs|r
    .use 12650 >>|cRXP_WARN_Utilisez un|r |T134961:0|t[Atténuateur en phase] |cRXP_WARN_sur lui si vous en avez un|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissant. Il est recommandé de le tuer avec un groupe d'au moins 3 joueurs|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissante et est entouré de nombreux d'ennemis, tuez-les soigneusement. Il est recommandé de le tuer avec un groupe d'au moins 4 joueurs|r
    .use 12650 >>|cRXP_WARN_Utilisez un|r |T134961:0|t[Atténuateur en phase] |cRXP_WARN_sur lui si vous en avez un|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissante et est entouré de nombreux d'ennemis, tuez-les soigneusement. Il est recommandé de le tuer avec un groupe d'au moins 4 joueurs|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5803 >>Rendez la quête Le Scarabée d'Araj
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5505 >>Rendez la quête La clé de Scholomance
    .target Alchemist Arbington

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Guides Endgame
#subgroup Clés
#name La clé de Scholomance (H)


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Allez à l'Hôtel des ventes dans n'importe quelle capitale et achetez 2|r |T133221:0|t[Barres de thorium]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>Voyagez à |cFFfa9602Fossoyeuse|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Balthazad|r
    .acceptmultiple 5093,5094,5095 >>Acceptez la quête Un appel aux armes : les Maleterres
    >>|cRXP_WARN_Cette quête peut aussi être acceptée à|r |cFFfa9602Orgrimmar|r |cRXP_WARN_ou aux|r |cFFfa9602Pitons-du-Tonnerre|r
    .unitscan Warcaller Gorlach --ORG
    .unitscan Harbinger Balthazadd --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >> Voyagez à la Barricade dans les |cFFfa9602Clairières de Tirisfal|r
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5093 >>Rendez la quête Un appel aux armes : les Maleterres
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5094 >>Rendez la quête Un appel aux armes : les Maleterres
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5095 >>Rendez la quête Un appel aux armes : les Maleterres
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
    .isOnQuest 5095
step
	.goto Western Plaguelands,26.55,56.18
	>>Cliquez sur la |cRXP_PICK_Box of Incendiaries|r près du feu
	.collect 12814,1,5095,1 --Flame in a Bottle (1)
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acceptez la quête Diversions écarlates
	.target High Executor Derrington
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Cliquez sur la|cRXP_PICK_Command Tent|r, puis utilisez votre |T132484:0|t[Scourge Banner]
	>>Ces créatures sont assez difficiles à tuer et peuvent chain-pull, faites attention
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Rendez la quête Diversions écarlates
    .accept 5098 >>Acceptez la quête Tout au long des tours de guet
	.target High Executor Derrington
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Utilisez la|r |T135432:0|t[Torche-balise] |cRXP_WARN_à côté de l'entrée de la Tour. Vous pouvez le faire sans attirer l'attention de l'Élite |cRXP_ENEMY_Chef de guerre Squelette|r à l'intérieur de la tour|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Rendez la quête Tout au long des tours de guet
    .accept 838 >>Acceptez la quête Scholomance
	.target High Executor Derrington
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Détruisez la |T135432:0|t[Torche-balise]
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 838 >>Rendez la quête Scholomance
    .accept 964 >>Acceptez la quête Fragments de squelette
	.target Apothecary Dithers
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Tuez les |cRXP_ENEMY_Skeletal Executioners|r et les |cRXP_ENEMY_Skeletal Acolytes|r. Dépouillez-les pour leur |cRXP_LOOT_Skeletal Fragments|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 964 >>Rendez la quête Fragments de squelette
    .accept 5514 >>Acceptez la quête À la pêche au moule...
	.target Apothecary Dithers
step
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Froisse Bonnacier|r
    >>|cRXP_WARN_Valider cette quête exige que vous payiez 15 pièces d'or|r
    .turnin 5514 >>Rendez la quête À la pêche au moule...
    .accept 5802 >>Acceptez la quête Forgée dans la Fournaise
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Si vous ne les avez pas achetées plus tôt, allez à l'Hôtel des ventes dans n'importe quelle capitale et achetez 2|r |T133221:0|t[Barres de thorium]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Silithus,48.69,36.67
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Runk Windtamer|r
    .fly Un'Goro >>Volez au Cratère d'Un Goro
	.target Runk Windtamer
	.zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Voyagez vers le sommet de la montagne à la Crête de la Fournaise
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Utilisez le|r |T134457:0|t[Moule de clé squelette] |cRXP_WARN_au bassin lave pour créer la|r |cRXP_LOOT_Clé squelette inachevée|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >> Voyagez à la Barricade dans les |cFFfa9602Clairières de Tirisfal|r
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 5802 >>Rendez la quête Forgée dans la Fournaise
    .accept 5804 >>Acceptez la quête Le Scarabée d'Araj
	.target Apothecary Dithers
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Voyagez vers le centre des Ruines d'Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissant. Il est recommandé de le tuer avec un groupe d'au moins 3 joueurs|r
    .use 12650 >>|cRXP_WARN_Utilisez un|r |T134961:0|t[Atténuateur en phase] |cRXP_WARN_sur lui si vous en avez un|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissant. Il est recommandé de le tuer avec un groupe d'au moins 3 joueurs|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissante et est entouré de nombreux d'ennemis, tuez-les soigneusement. Il est recommandé de le tuer avec un groupe d'au moins 4 joueurs|r
    .use 12650 >>|cRXP_WARN_Utilisez un|r |T134961:0|t[Atténuateur en phase] |cRXP_WARN_sur lui si vous en avez un|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tuez |cRXP_ENEMY_Araj l'Invocateur|r. Récupérez le |cRXP_PICK_Phylactère d'Araj|r au sol pour obtenir |cRXP_LOOT_le Scarabée d'Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_est un élite puissante et est entouré de nombreux d'ennemis, tuez-les soigneusement. Il est recommandé de le tuer avec un groupe d'au moins 4 joueurs|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 5804 >>Rendez la quête Le Scarabée d'Araj
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Dithers|r
    .turnin 5511 >>Rendez la quête La clé de Scholomance
	.target Apothecary Dithers

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guides Endgame
#subgroup Clés
#name La clé des Profondeurs de Rochenoire


step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Franclorn Le Forgebusier|r
    >>|cRXP_WARN_Vous devez être en|r |T132331:0|t[Fantôme] |cRXP_WARN_pour pouvoir parler à|r |cRXP_FRIENDLY_Franclorn Le Forgebusier|r
    >>|cRXP_WARN_Mourez intentionnellement dans la lave au Mont Rochenoire, idéalement près de l'entrée du Cœur du Magma|r
    .accept 3801 >> Acceptez la quête Héritage Sombrefer
    .turnin 3801 >> Rendez la quête Héritage Sombrefer
    .accept 3802 >> Acceptez la quête Héritage Sombrefer
    .target Franclorn Forgewright
step
    #hardcoreserver
    #completewith next
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_Cliquez sur le|r |cRXP_PICK_Brasier de Braisevue|r |cRXP_WARN_pour obtenir le debuff|r |T136215:0|t[Vision de Braiseluise] |cRXP_WARN_|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Franclorn Le Forgebusier|r
    >>|cRXP_WARN_Vous devez avoir le debuff|r |T136215:0|t[Vision de Braiseluise] |cRXP_WARN_pour le voir|r
    .accept 3801 >> Acceptez la quête Héritage Sombrefer
    .turnin 3801 >> Rendez la quête Héritage Sombrefer
    .accept 3802 >> Acceptez la quête Héritage Sombrefer
    .target Franclorn Forgewright
step
    #softcore
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Ressuscitez-vous sur votre cadavre et entrez dans Les Profondeurs de Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    #hardcoreserver
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entrez dans les profondeurs de Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    >>Tuez |cRXP_ENEMY_Fineous Sombrevire|r. Dépouillez-le pour |cRXP_LOOT_Souillefer|r
    >>|cRXP_WARN_Il patrouille dans la carrière à l'extérieur de la salle du Seigneur Incendius|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>Retournez près de la position au-dessus du Cercle de la loi
    >>Cliquez sur le |cRXP_PICK_Monument de Franclorn Le Forgebusier|r
    .turnin 3802 >> Rendez la quête Héritage Sombrefer
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guides Endgame
#subgroup Clés
#name Clé de Hache-Tripes

step
    #completewith next
    .zone Feralas >>Voyagez à |cFFfa9602Féralas|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entrez dans Hache-Tripes par l'entrée est
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pusillin|r
    >>|cRXP_WARN_Il s'agit d'un |cRXP_FRIENDLY_Diablotin|r vert au début de l'instance. Il s'enfuira après que vous lui ayez parlé. Vous devez le poursuivre et lui parler plusieurs fois jusqu'à ce qu'il devienne hostile dans la chambre de la Retraite cachée|r
    .skipgossip
    .unitscan Pusillin
step
    >>Tuez |cRXP_ENEMY_Pusillin|r une fois qu'il devient hostile. Dépouillez-le pour la |T134244:0|t[|cRXP_LOOT_Clé en croissant|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guides Endgame
#name Accès à Naxxramas
#subgroup Accès

step
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Cinq |T134135:0|t[|cRXP_FRIENDLY_Cristaux des arcanes|r]
    >>Deux |T132880:0|t[|cRXP_PICK_Cristaux de nexus|r]
    >>Une |T134122:0|t[|cRXP_FRIENDLY_Orbe de piété|r]
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    >>|cRXP_WARN_Vous en aurez besoin pour rendre la quête qui vous donnera l'accès à Naxxramas. Atteindre des niveaux de réputation plus élevés avec l'Aube d'argent rendra cela moins coûteux en matériaux et en or !|r
    .collect 12363,5 --Arcane Crystal (x5)
    .collect 20725,2 --Nexus Crystal (x2)
    .collect 12811,1 --Righteous Orb (x1)
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Deux |T134135:0|t[|cRXP_FRIENDLY_Cristaux des arcanes|r]
    >>Un |T132880:0|t[|cRXP_PICK_Cristal de nexus|r]
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    >>|cRXP_WARN_Vous en aurez besoin pour rendre la quête qui vous donnera l'accès à Naxxramas. Atteindre des niveaux de réputation plus élevés avec l'Aube d'argent rendra cela moins coûteux en matériaux et en or !|r
    .collect 12363,2 --Arcane Crystal (x2)
    .collect 20725,1 --Nexus Crystal (x1)
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #completewith AttuneComplete
    .zone Eastern Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Est|r
step
    #optional
    .reputation 529,honored >>Obtenez une réputation honorée avec l'Aube d'argent
    >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Morts-vivants|r dans les Maleterres de l'Ouest/Est ou faites des donjons avec votre|r |T133440:0|t[Brevet de l'Aube d'argent] |cRXP_WARN_équipé pour récupérer les|r |T133447:0|t[Pierre du Fléau] et rendez-les
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Angela Dosantos|r
    >>|cRXP_WARN_Vous devez avoir un niveau de réputation Honoré afin de prendre cette quête|r
    >>|cRXP_WARN_Vous devrez aussi payer|r |cRXP_WARN_60 pièces d'or|r |cRXP_WARN_pour rendre la quête|r
    .accept 9121 >>Acceptez la quête Naxxramas, la citadelle de l'effroi
    .turnin 9121 >>Rendez la quête Naxxramas, la citadelle de l'effroi
    .target Archmage Angela Dosantos
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Angela Dosantos|r
    >>|cRXP_WARN_Vous devez avoir un niveau de réputation Révéré afin de prendre cette quête|r
    >>|cRXP_WARN_Vous devrez aussi payer|r |cRXP_WARN_30 pièces d'or|r |cRXP_WARN_pour rendre la quête|r
    .accept 9122 >>Acceptez la quête Naxxramas, la citadelle de l'effroi
    .turnin 9122 >>Rendez la quête Naxxramas, la citadelle de l'effroi
    .target Archmage Angela Dosantos
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #label AttuneComplete
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Angela Dosantos|r
    >>|cRXP_WARN_Vous devez avoir un niveau de réputation Exalté afin de prendre cette quête|r
    .accept 9123 >>Acceptez la quête Naxxramas, la citadelle de l'effroi
    .turnin 9123 >>Rendez la quête Naxxramas, la citadelle de l'effroi
    .target Archmage Angela Dosantos
    .reputation 529,exalted,<0,1 --Exalted AD
    .isQuestAvailable 9123 --The Dread Citadel - Naxxramas

]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guides Endgame
#name Accès du Canyon de la Malechute
#subgroup Accès
<<sod

step
    #completewith next
    .subzone 2479 >>Allez au Sanctuaire d'Émeraude à |cFFfa9602Gangrebois|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Émissaire crocs-d'ombre|r
    .accept 84384 >> Acceptez la quête Supercheries démoniaques
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Voyagez au |cFFfa9602Berceau-de-l'Hiver|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>Tuez les |cRXP_ENEMY_Chouettards berserk|r. Dépouillez-les pour leur |T237413:0|t[|cRXP_LOOT_Épiphyses de chouettard|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>Allez au Sanctuaire d'Émeraude à |cFFfa9602Gangrebois|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Émissaire crocs-d'ombre|r
    .turnin 84384 >> Rendez la quête Supercheries démoniaques
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
