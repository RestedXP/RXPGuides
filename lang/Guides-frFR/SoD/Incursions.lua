if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Quêtes journalières Incursions de cauchemar
#name (25-32) Incursion de cauchemar Bois de la Pénombre

step
    #optional
    #completewith travel
    +|cRXP_WARN_Vous avez dépassé le niveau de cette zone d'incursion et vous n'obtiendrez que des récompenses d'expérience quête réduites ici. Sélectionnez une autre incursion dans la liste, plus adaptée à votre niveau.|r
    >>|cRXP_WARN_Les gains de réputation sont les mêmes indépendamment de votre niveau, mais dès le niveau 53, vous pouvez simplement rendre une quête de composants de métiers en boucle pour gagner de la réputation extrêmement vite|r
    .xp <33,1
    .xp >53,1
step
#ah
    >>Achetez 10 |T133852:0|t[|cRXP_LOOT_Mousses des cauchemars|r], 10 |T134314:0|t[|cRXP_LOOT_Écailles de dragon touchée par le rêve|r] et 10 |T134575:0|t[|cRXP_LOOT_Minerais de fer froid|r] à l'hôtel des ventes avant de vous rendre au Bois de la Pénombre
    >>|cRXP_WARN_Passez cette étape si vous n'êtes pas près d'un Hôtel des Ventes ou si les prix n'en valent pas la peine. Ces trois quêtes donnent un total combiné de 16000xp et 225 de réputation|r
    .collect 219399,10 --Nightmare Moss
    .collect 219402,10 --Dream-Touched Dragonscale
    .collect 219401,10 --Cold Iron Ore
    .maxlevel 53
step
#completewith next
.zone Duskwood >> |cRXP_WARN_Voyagez vers le Bois de la Pénombre. Assurez-vous d'avoir beaucoup de place dans votre journal de quêtes. Vous devrez y conserver entre 12 à 15 quêtes de l'incursion en même temps|r
.maxlevel 53
step
    #label travel
  .goto 1431/0,-438.800,-10793.400,30 >> Prenez le chemin menant au Bosquet crépusculaire
  .maxlevel 53
step
    .goto 1431/0,-376.600,-10768.500,30 >> Remontez le chemin
    .maxlevel 53
step
    >>Cherchez un intendant des |cRXP_FRIENDLY_Gardiens émeraudes|r à l'endroit marqué et achetez-lui votre rune
    .goto Duskwood,45.6,51.2
    .target Quartermaster Falinar
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie nihiliste|r] |cRXP_WARN_pour apprendre|r |T132886:0|t[Zone de vide] << Priest
    .train 429308 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Armure de la fournaise|r] |cRXP_WARN_pour apprendre|r |T132221:0|t[Armure de la fournaise] << Mage
    .train 431747 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’affliction|r] |cRXP_WARN_pour apprendre|r |T136228:0|t[Affliction instable] << Warlock
    .train 416066 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de brûlure|r] |cRXP_WARN_pour apprendre|r |T135822:0|t[Brûlure] << Shaman
    .train 432297 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’empressement|r] |cRXP_WARN_pour apprendre|r |T236269:0|t[Tailler dans le vif] << Rogue
    .train 431611 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de détonation|r] |cRXP_WARN_pour apprendre|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'effusion de sang|r] |cRXP_WARN_pour apprendre|r |T304501:0|t[Étripage] << Druid
    .train 429261 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du marteau|r] |cRXP_WARN_pour apprendre|r |T236262:0|t[Marteau de courroux amélioré] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendant Falinar|r
    .vendor >> |cRXP_BUY_Achetez-lui jusqu'à 5|r |T134718:0|t[Potions de soins supérieures] |cRXP_BUY_si vous le voulez.|r |cRXP_WARN_Vous ne pouvez les utilisez que dans les zones d'incursion|r
    .target Quartermaster Falinar
    .xp >40,1
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendant Falinar|r
    .vendor >> |cRXP_BUY_Achetez-lui jusqu'à 5|r |T236885:0|t[Potions de soins majeure] |cRXP_BUY_si vous le souhaitez.|r |cRXP_WARN_Vous ne pouvez utiliser ces potions que dans les zones d'incursion|r
    .target Quartermaster Falinar
    .xp <40,1
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Acceptez la quête Mission du bois de la Pénombre X : mousse des cauchemars
    .accept 81740 >> Acceptez la quête Mission du bois de la Pénombre XI : minerai de fer froid
    .accept 81741 >> Acceptez la quête Mission du bois de la Pénombre XII : écailles de dragon touchées par le Rêve
    .itemcount 219399,10 --Nightmare Moss
    .itemcount 219401,10 --Cold Iron Ore
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Acceptez la quête Mission du bois de la Pénombre X : mousse des cauchemars
    .itemcount 219399,10 --Nightmare Moss
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81740 >> Acceptez la quête Mission du bois de la Pénombre XI : minerai de fer froid
    .itemcount 219401,10 --Cold Iron Ore
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81741 >> Acceptez la quête Mission du bois de la Pénombre XII : écailles de dragon touchées par le Rêve
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    .goto Duskwood,45.6,51.2
    .turnin -81739 >> Rendez la quête Mission du bois de la Pénombre X : mousse des cauchemars
    .turnin -81740 >> Rendez la quête Mission du bois de la Pénombre XI : minerai de fer froid
    .turnin -81741 >> Rendez la quête Mission du bois de la Pénombre XII : écailles de dragon touchées par le Rêve
    .isOnQuest 81739
    .isOnQuest 81740
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    >>|cRXP_WARN_Vous allez maintenant faire une série de quêtes d'incursion. Toutes ces quêtes peuvent se faire en groupe, et être accompagné rend le processus bien plus efficace. Si vous voyez des joueurs près du donneur de quêtes, n'hésitez pas à monter un groupe. Si vous trouvez quelques joueurs, vous pouvez aussi faire les quêtes de boss qui ne sont pas possibles seul|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .accept 81730 >> Rendez la quête Mission du bois de la Pénombre I : vaincre les worgens
    .accept 81731 >> Acceptez la quête Mission du bois de la Pénombre II : vaincre les ogres
    .accept 81732 >> Acceptez la quête Mission du bois de la Pénombre III : vaincre les draconiens
    .accept 81733 >> Acceptez la quête Mission du bois de la Pénombre IV : rapport sur les ogres
    .accept 81734 >> Acceptez la quête Mission du bois de la Pénombre V : rapport sur les worgens
    .accept 81735 >> Acceptez la quête Mission du bois de la Pénombre VI : rapport sur les dragons
    .accept 81736 >> Acceptez la quête Mission du bois de la Pénombre VII : récupérer la faux d’ombre
    .accept 81737 >> Acceptez la quête Mission du bois de la Pénombre VIII : récupérer le texte de l’ogre magi
    .accept 81738 >> Acceptez la quête Mission du bois de la Pénombre IX : récupérer l’œuf de dragon
    .accept 81745 >> Acceptez la quête Mission du bois de la Pénombre XVI : sauver Kroll Ombremontagne
    .accept 81746 >> Acceptez la quête Mission du bois de la Pénombre XVII : sauver Alara Sauvebosquet
    .accept 81747 >> Acceptez la quête Mission du bois de la Pénombre XVIII : sauver Elénora Marchemarais
    .maxlevel 53
step
.group 3
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    >>|cRXP_WARN_Si vous être dans un groupe, pensez à prendre les quêtes élite. Les boss que vous allez devoir tuer pour ces quêtes ont énormément de vie et pourraient être difficiles en fonction de votre groupe.|r
    .accept 81742 >> Acceptez la quête Mission des bois de la Pénombre XIII : vaincre Ylanthrius
    .accept 81743 >> Acceptez la quête Mission du bois de la Pénombre XIV : vaincre Vvarc’zul
    .accept 81744 >> Acceptez la quête Mission du bois de la Pénombre XV : vaincre Amokarok
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Cliquez sur le portail près du donneur de quête|r pour vous téléporter au Rêve d'émeraude
    .maxlevel 53
step
    .goto Duskwood,47.07,49.64,10 >> Sortez du Bosquet crépusculaire |cRXP_WARN_quand vous êtes dans le Rêve d’émeraude|r
    .maxlevel 53
step
    #sticky
    #label Ogres
    >>Tuez les |cRXP_ENEMY_Ogres dérangés|r et les |cRXP_ENEMY_Tisseurs de flammes déments|r en complétant les autres objectifs
    .complete 81731,1
    .complete 81731,2
    .mob Deranged Ogre
    .mob Demented Fire Weaver
    .maxlevel 53
step
    .goto Duskwood,32.48,69.60
    .gossipoption 122140 >> Parlez à |cRXP_FRIENDLY_Elénora Marchemarais|r allongée sur le sol. Elle devrait commencer à vous suivre
    >>|cRXP_WARN_Si elle n'est pas présent, cela signifie qu'un autre joueur est en train de faire l'escorte. Passez cette étape si n'arrivez pas à la trouver|r
    .target Elenora Marshwalker
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Attention, si vous mourez, tous les PNJ d'escorte qui vous suivent reviendront à leur emplacement initial et vous devrez les trouver à nouveau.|r
    >>|cRXP_WARN_Le PNJ de l'escorte arrêtera aussi de vous suivre 15 minutes après les avoir recrutés, alors ne traînez pas !|r
    .maxlevel 53
step
    .goto Duskwood,35.67,80.35
    >>Entrez dans la grotte et récupérez le [|cRXP_LOOT_Texte de l’ogre magi|r] posé sur la plateforme en plein milieu
    .complete 81737,1 --Ogre Magi Text(1)
    .maxlevel 53
step
    .goto Duskwood,36.62,83.75
    >>Engouffrez-vous plus profondément dans la grotte et parlez au |cRXP_FRIENDLY_Garderêve Thalinar|r pour obtenir le |T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    .complete 81733,1
    .target Dreamwarden Thalinar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,37.6,84.6
    .group 3
    >>|cRXP_WARN_Tuez|r |cRXP_ENEMY_Vvarc'Zul|r|cRXP_WARN_. Soyez prudent, comme il a énormément de vie, lance|r |T135812:0|t[Boule de feu] |cRXP_WARN_et invoque des|r |T135819:0|t[Elémentaires de feu] |cRXP_WARN_pour l'aider|r
    .complete 81743,1 --Vvarc'Zul slain
    .target Vvarc'Zul
    .isOnQuest 81743
    .maxlevel 53
step
    #sticky
    #label Dragons
    #requires Ogres
    >>Tuez les |cRXP_ENEMY_Dragonnets de terreur nocturnes|r et les |cRXP_ENEMY_Marcheterreurs wyrmides|r en complétant les autres objectifs
    .complete 81732,1
    .complete 81732,2
    .mob Nightterror Whelp
    .mob Wyrmkin Terrorwalker
    .maxlevel 53
step
    #requires Ogres
    .goto Duskwood,48.92,72.97
    >>Récupérez l' [|cRXP_LOOT_Œuf de dragon vert non éclos|r] allongé au sol à côté de la souche d'arbre
    .complete 81738,1
    .maxlevel 53
step
    .goto Duskwood,49.13,77.41
    .gossipoption 122136 >> Parlez à |cRXP_FRIENDLY_Alara Sauvebosquet|r allongée sur le sol. Elle devrait commencer à vous suivre
    >>|cRXP_WARN_Si elle n'est pas présent, cela signifie qu'un autre joueur est en train de faire l'escorte. Passez cette étape si n'arrivez pas à la trouver|r
    .target Alara Grovemender
    .maxlevel 53
step
    .goto Duskwood,50.6,77.0
    >>Entrez dans la ferme et parlez à la |cRXP_FRIENDLY_Garderêve Amalia|r pour obtenir le |T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    .complete 81735,1
    .target Dreamwarden Amalia
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,49.8,74.4
    .group 3
    >>|cRXP_WARN_Tuez|r |cRXP_ENEMY_Ylanthrius|r. |cRXP_WARN_Un dragon vert volant au-dessus de la ferme|r|cRXP_WARN_. Il a énormément de vie, est insensible aux sorts de nature, dispose de|r|T132338:0|t[Enchaînement]|cRXP_WARN_,|r |T134307:0|t[Balayage de queue] |cRXP_WARN_et il|r |T135745:0|t[Invoques] |cRXP_WARN_un|r |cRXP_ENEMY_Drake|r |cRXP_WARN_pour l'aider qui lance un souffle frontal qui inflige des dégâts énormes|r
    .complete 81742,1 --Ylanthrius (1)
    .maxlevel 53
    .isOnQuest 81742
step
    #sticky
    #label Worgen
    #requires Dragons
    >>Tuez les |cRXP_ENEMY_Coureurs de cauchemar|r et les |cRXP_ENEMY_Tisseurs de cauchemar|r en complétant les autres objectifs
    .complete 81730,1
    .complete 81730,2
    .mob Nightmare Runner
    .mob Nightmare Weaver
    .maxlevel 53
step
    #requires Dragons
    .goto Duskwood,66.32,76.09
    >>Entrez dans la grange et parlez au |cRXP_FRIENDLY_Garderêve Dorilar|r pour obtenir le|T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    >>|cRXP_WARN_N'ALLEZ PAS LOIN DANS LA GRANGE. Vous pouvez parler au PNJ à travers le mur intérieur en le ciblant puis en utilisant votre touche pour interagir|r
    >>|cRXP_WARN_Soyez prudent, le boss|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_se tient juste à côté du PNJ|r
    .complete 81734,1
    .target Dreamwarden Dorilar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,66.0,76.4
    >>|cRXP_WARN_Tuez|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_à l'intérieur de la grange. Soyez prudent comme il a énormément de vie et lance un effet de|r |T136183:0|t[Peur] en AoE
    .complete 81744,1 --Amokarok (1)
    .maxlevel 53
    .isOnQuest 81744
    .group 3
step
    .goto Duskwood,65.99,69.36
    .gossipoption 122146 >> Parlez à |cRXP_FRIENDLY_Kroll Ombremontagne|r allongé sur le sol. Il devrait commencer à vous suivre
    >>|cRXP_WARN_S'il n'est pas présent, cela signifie qu'un autre joueur est en train de faire l'escorte. Passez cette étape si n'arrivez pas à le trouver|r
    .target Kroll Mountainshade
    .maxlevel 53
step
    .goto Duskwood,65.60,67.30
    >>Allez au deuxième étage de la plus grande maison et ouvrez la boîte qui s'y trouve pour récupérer la |T135138:0|t[|cRXP_LOOT_Faux d’ombre|r]
    .complete 81736,1
    .maxlevel 53
step
    #requires Worgen
    .goto Duskwood,70.93,65.90
    .goto Duskwood,44.60,65.80,50 >> Allez vers l'ouest jusqu'à arriver dans une zone hors du cauchemar. Votre écran brillera en vert et vous serez téléportés près de l'entrée. |cRXP_WARN_Ne vous inquiétez pas, les PNJs que vous escortez vous suivront|r
    .maxlevel 53
step
    #completewith next
    .goto 1431/0,-421.400,-10360.601,5 >> Retournez au portail du cauchemar. |cRXP_WARN_Ne mourez pas sur la route ou les quêtes d'escorte échoueront ! Si vous atteignez le portail sans aucun problème, les trois quêtes devraient se terminer|r
    .maxlevel 53
step
    .goto 1431/0,-421.400,-10360.601
    >>Vérifiez d'avoir reçu la complétion de toutes les quêtes d'escorte. Elles devraient toutes se compléter à l'arrivée au portail. |cRXP_WARN_Essayez d'avancer et de reculer si elle ne se sont pas validées|r
    .complete 81745,1
    .complete 81746,1
    .complete 81747,1
    .maxlevel 53
step
    .goto Duskwood,46.63,47.90,5 >> Revenez au portail que vous avez utilisé pour entrer dans le Rêve d’émeraude et |cRXP_WARN_cliquez dessus pour revenir dans le monde normal|r
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .turnin 81730 >> Rendez la quête Mission du bois de la Pénombre I : vaincre les worgens
    .turnin 81731 >> Rendez la quête Mission du bois de la Pénombre II : vaincre les ogres
    .turnin 81732 >> Rendez la quête Mission du bois de la Pénombre III : vaincre les draconiens
    .turnin 81733 >> Rendez la quête Mission du bois de la Pénombre IV : rapport sur les ogres
    .turnin 81734 >> Rendez la quête Mission du bois de la Pénombre V : rapport sur les worgens
    .turnin 81735 >> Rendez la quête Mission du bois de la Pénombre VI : rapport sur les dragons
    .turnin 81736 >> Rendez la quête Mission du bois de la Pénombre VII : récupérer la faux d’ombre
    .turnin 81737 >> Rendez la quête Mission du bois de la Pénombre VIII : récupérer le texte de l’ogre magi
    .turnin 81738 >> Rendez la quête Mission du bois de la Pénombre IX : récupérer l’œuf de dragon
    .turnin 81745 >> Rendez la quête Mission du bois de la Pénombre XVI : sauver Kroll Ombremontagne
    .turnin 81746 >> Rendez la quête Mission du bois de la Pénombre XVII : sauver Alara Sauvebosquet
    .turnin 81747 >> Rendez la quête Mission du bois de la Pénombre XVIII : sauver Elénora Marchemarais
    .maxlevel 53
step
    #optional
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Palandar|r
    >>|cRXP_WARN_Si vous être dans un groupe, pensez à prendre les quêtes élite. Les boss que vous allez devoir tuer pour ces quêtes ont énormément de vie et pourraient être difficiles en fonction de votre groupe.|r
    .turnin -81742 >> Rendez la quête Mission des bois de la Pénombre XIII : vaincre Ylanthrius
    .turnin -81743 >> Rendez la quête Mission du bois de la Pénombre XIV : vaincre Vvarc’zul
    .turnin -81744 >> Rendez la quête Mission du bois de la Pénombre XV : vaincre Amokarok
    .maxlevel 53
    .target Field Captain Palandar
step
    #optional
    +|cRXP_WARN_Vous êtes de trop haut niveau pour toutes les zones d'incursion et ne pouvez plus prendre de quêtes normales dans aucune d'entre elles|r
    >>Si vous cherchez à gagner de la réputation avec les|r |cRXP_FRIENDLY_Gardiens d'émeraude|r il y a des quêtes répétables infiniment à Féralas où vous pouvez rendre 10 |T134186:0|t[|cRXP_LOOT_Racines lunaires|r], |T133594:0|t[|cRXP_LOOT_Pierres de lune supérieures|r] ou d' |T134312:0|t[|cRXP_LOOT_Écailles de dragon lunaires|r]
    >>Ces quêtes de donnent ni expérience ni or mais vous récompense de 100 de réputation à chaque fois que vous la rendez. Achetez autant que nécessaire des matériaux les plus rentables à l'Hôtel des ventes, puis allez à Féralas pour les rendre
    .xp <53,1
step
    #optional
    +Vous avez terminé cette boucle des Incursions de Cauchemar. Les quêtes seront à nouveau disponibles après la réinitialisation quotidienne. |cRXP_WARN_Sélectionnez un autre guide de la liste pour continuer|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Quêtes journalières Incursions de cauchemar
#name (40-49) Incursion de cauchemar Ashenvale

step
    #optional
    #completewith next
    +|cRXP_WARN_Vous avez dépassé le niveau de cette zone d'incursion et vous n'obtiendrez que des récompenses d'expérience quête réduites ici. Sélectionnez une autre incursion dans la liste, plus adaptée à votre niveau.|r
    >>|cRXP_WARN_Les gains de réputation sont les mêmes indépendamment de votre niveau, mais dès le niveau 53, vous pouvez simplement rendre une quête de composants de métiers en boucle pour gagner de la réputation extrêmement vite|r
    .xp <48,1
    .xp >53,1
step
    #ah
    >>Achetez 10 |T132106:0|t[|cRXP_LOOT_Oniracine|r], 10 |T134306:0|t[|cRXP_LOOT_Écailles de dragon imprégnée du rêve|r] et 10 |T133848:0|t[|cRXP_LOOT_Poussières de pyrite|r] à l'Hôtel des ventes avant de vous rendre à Ashenvale
    >>|cRXP_WARN_Passez cette étape si vous n'êtes pas près d'un Hôtel des Ventes ou si les prix n'en valent pas la peine. Ces trois quêtes donnent un total combiné de 25 875xp et 225 de réputation|r
    .collect 219444,10 --Dreamroot
    .collect 219446,10 --Dream-Infused Dragonscale
    .collect 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #label travel
    .zone Ashenvale >> |cRXP_WARN_Voyagez à Ashenvale. Assurez-vous d'avoir beaucoup de place dans votre journal de quêtes. Vous devrez y conserver entre 12 à 15 quêtes de l'incursion en même temps|r
    >>Si vous avez le chemin de vol d'Azshara, il est plus rapide de voler là-bas et d'y aller à pied que de voler à Astranaar << Alliance
    .maxlevel 53
step
    .goto Ashenvale,88.9,42.0,65 >>Voyagez au portail du Cauchemar émeraude dans la zone au nord-est d'Ashenvale
    .maxlevel 53
step
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendante Kyleen|r
    .target Quartermaster Kyleen
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie nihiliste|r] |cRXP_WARN_pour apprendre|r |T132886:0|t[Zone de vide] << Priest
    .train 429308 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Armure de la fournaise|r] |cRXP_WARN_pour apprendre|r |T132221:0|t[Armure de la fournaise] << Mage
    .train 431747 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’affliction|r] |cRXP_WARN_pour apprendre|r |T136228:0|t[Affliction instable] << Warlock
    .train 416066 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de brûlure|r] |cRXP_WARN_pour apprendre|r |T135822:0|t[Brûlure] << Shaman
    .train 432297 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’empressement|r] |cRXP_WARN_pour apprendre|r |T236269:0|t[Tailler dans le vif] << Rogue
    .train 431611 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de détonation|r] |cRXP_WARN_pour apprendre|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'effusion de sang|r] |cRXP_WARN_pour apprendre|r |T304501:0|t[Étripage] << Druid
    .train 429261 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du marteau|r] |cRXP_WARN_pour apprendre|r |T236262:0|t[Marteau de courroux amélioré] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .accept 81777 >> Acceptez la quête Mission d’Ashenvale X : oniracine
    .accept 81778 >> Acceptez la quête Mission d’Ashenvale XI : poussière de pyrite
    .accept 81779 >> Acceptez la quête Mission d’Ashenvale XII : écailles de dragon imprégnées du Rêve
    .itemcount 219444,10 --Dreamroot
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .accept 81777 >> Acceptez la quête Mission d’Ashenvale X : oniracine
    .itemcount 219444,10 --Dreamroot
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .accept 81778 >> Acceptez la quête Mission d’Ashenvale XI : poussière de pyrite
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .accept 81779 >> Acceptez la quête Mission d’Ashenvale XII : écailles de dragon imprégnées du Rêve
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .turnin -81777 >> Rendez la quête Mission d’Ashenvale X : oniracine
    .turnin -81778 >> Rendez la quête Mission d’Ashenvale XI : poussière de pyrite
    .turnin -81779 >> Rendez la quête Mission d’Ashenvale XII : écailles de dragon imprégnées du Rêve
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .accept 81772 >>Acceptez la quête Mission d’Ashenvale V : rapport sur les satyres
    .accept 81785 >>Acceptez la quête Mission d’Ashenvale XVIII : sauver Maseara Lune-d’Automne
    .accept 81784 >>Acceptez la quête Mission d’Ashenvale XVII : sauver Doran Branchonirique
    .accept 81783 >>Acceptez la quête Mission d’Ashenvale XVI : sauver l’imploratrice céleste Alyssian
    .accept 81776 >>Acceptez la quête Mission d’Ashenvale IX : récupérer l’œuf de dragon touché par le Rêve
    .accept 81775 >>Acceptez la quête Mission d’Ashenvale VIII : récupérer la prophétie d’Azshara
    .accept 81774 >>Acceptez la quête Mission d’Ashenvale VII : récupérer le moteur onirique
    .accept 81773 >>Acceptez la quête Mission d’Ashenvale VI : rapport sur les tréants
    .accept 81771 >>Acceptez la quête Mission d’Ashenvale IV : rapport sur les dragons
    .accept 81768 >>Acceptez la quête Mission d’Ashenvale I : vaincre les satyres
    .accept 81769 >>Acceptez la quête Mission d’Ashenvale II : vaincre les tréants
    .accept 81770 >>Acceptez la quête Mission d’Ashenvale III : vaincre les draconiens
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .group 3
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    >>|cRXP_WARN_Si vous être dans un groupe, pensez à prendre les quêtes élite. Les boss que vous allez devoir tuer pour ces quêtes ont énormément de vie et pourraient être difficiles en fonction de votre groupe.|r
    .accept 81780 >> Acceptez la quête Mission d’Ashenvale XIII : vaincre Larsera
    .accept 81781 >> Acceptez la quête Mission d’Ashenvale XIV : vaincre Zalius
    .accept 81782 >> Acceptez la quête Mission d’Ashenvale XV : vaincre le déchiqueteur 9000
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendante Kyleen|r
    .vendor >>|cRXP_BUY_Achetez-lui jusqu'à 5|r |T236885:0|t[Potions de soins majeure] |cRXP_BUY_si vous en voulez|r
    >>|cRXP_WARN_Elles ne peuvent être utiliser que dans les zones d'incursion|r
    .target Quartermaster Kyleen
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Prenez le |cRXP_PICK_Portail vers le Rêve Émeraude|r
    >>|cRXP_WARN_Courez et dépassez les |cRXP_ENEMY_Satyres|r, les |cRXP_ENEMY_Gangrechiens|r et les |cRXP_ENEMY_Diablotins|r. Vous sortirez de combat en prenant le portail|r
    .aura 444759
    .maxlevel 53
step
    #season 2
    #completewith EllodarReport
    >>Tuez les |cRXP_ENEMY_Traquenuits wyrmides|r et les |cRXP_ENEMY_Dragonnets de la terreur|r
    >>|cRXP_WARN_Attention.|r Les |cRXP_ENEMY_Traquenuits wyrmides|r |cRXP_WARN_sont des élites de niveau 41|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,87.24,43.58
    .gossipoption 122139 >>Parlez à |cRXP_FRIENDLY_Doran Branchonirique|r. Il devrait commencer à vous suivre.
    .target Doran Dreambough
    .isOnQuest 81784
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Attention, si vous mourez, tous les PNJ d'escorte qui vous suivent reviendront à leur emplacement initial et vous devrez les trouver à nouveau.|r
    >>|cRXP_WARN_Le PNJ de l'escorte arrêtera aussi de vous suivre 15 minutes après les avoir recrutés, alors ne traînez pas !|r
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,86.11,45.87
    >>Ramassez un |cRXP_LOOT_Œuf de dragon touché par le rêve|r au sol
    .complete 81776,1 --Dream-Touched Dragon Egg: 1/1
    .maxlevel 53
step
    #season 2
    .group 3
    .goto Ashenvale,86.0,46.0
    >>|cRXP_WARN_Tuez|r |cRXP_ENEMY_Larsera|r. |cRXP_WARN_Elle a énormément de vie, est insensible aux sorts de nature, dispose de|r|T132338:0|t[Enchaînement]|cRXP_WARN_,|r |T134307:0|t[Balayage de queue] |cRXP_WARN_et il|r |T135745:0|t[Invoques] |cRXP_WARN_un|r |cRXP_ENEMY_Drake|r |cRXP_WARN_pour l'aider qui lance un souffle frontal qui inflige des dégâts énormes|r
    .complete 81780,1 --Defeat Larsera
    .isOnQuest 81780
    .maxlevel 53
step
    #season 2
    #label EllodarReport
    .goto Ashenvale,83.64,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garderêve Ellodar|r
    .complete 81771,1 --Intelligence Report: Forest Song: 1/1
    .target Dreamwarden Ellodar
    .skipgossip
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,81.54,48.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garderêve Mandoran|r
    .complete 81772,1 --Intelligence Report: Satyrnaar: 1/1
    .target Dreamwarden Mandoran
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith MasearaAut
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,79.89,49.31,0
    .goto Ashenvale,80.78,48.47,0
    .goto Ashenvale,81.72,48.52,0
    .goto Ashenvale,82.20,50.18,0
    .goto Ashenvale,80.00,46.71,0
    .goto Ashenvale,78.29,44.73,0
    .goto Ashenvale,80.72,50.24,0
    >>Tuez les |cRXP_ENEMY_Traîtres Rêvefeux|r et les |cRXP_ENEMY_Implorateurs de l'enfer Rêvefeux|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-2950.700,2791.700
    >>Ramassez la |cRXP_LOOT_Prophétie d’Azshara|r au sol
    .complete 81775,1 --Azsharan Prophecy: 1/1
    .maxlevel 53
step
    #season 2
    #label MasearaAut
    #season 2
    .goto 1440/1,-2978.000,2739.500
    .gossipoption 122150 >>Parlez à |cRXP_FRIENDLY_Maseara Lune-d'Automne|r. Elle devrait commencer à vous suivre.
    .target Maseara Autumnmoon
    .isOnQuest 81785
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,50,0
    .goto Ashenvale,79.89,49.31,50,0
    .goto Ashenvale,80.78,48.47,50,0
    .goto Ashenvale,81.72,48.52,50,0
    .goto Ashenvale,82.20,50.18,50,0
    .goto Ashenvale,80.00,46.71,50,0
    .goto Ashenvale,78.29,44.73,50,0
    .goto Ashenvale,80.72,50.24,50,0
    >>Tuez les |cRXP_ENEMY_Traîtres Rêvefeux|r et les |cRXP_ENEMY_Implorateurs de l'enfer Rêvefeux|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-3394.600,2540.900
    >>Ouvrez la |cRXP_PICK_Caisse vibrante|r. Récupérez-y le |cRXP_LOOT_Moteur onirique|r
    .complete 81774,1 --Dreamengine: 1/1
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,90.14,58.08,10 >>Entrez dans le Donjon de Kargathia
    >>|cRXP_WARN_L'entrée est bloquée par un|r |cRXP_ENEMY_Récolte-rêve|r|cRXP_WARN_ (Elite de niveau 41). Contrôlez-le ou tuez-le alors que vous entrez à l'intérieur|r
    .mob Dreamharvester
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,91.23,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Garderêve Lanaria|r
    .complete 81773,1 --Intelligence Report: Warsong Lumber Camp: 1/1
    .target Dreamwarden Lanaria
    .skipgossip
    .maxlevel 53
step
.group 3
    #season 2
    .goto Ashenvale,87.6,62.2
    >>|cRXP_WARN_Tuez le|r |cRXP_ENEMY_Déchiqueteur 9000|r. Faites attention comme il a énormément de vie, une capacité|T132338:0|t[Enchaînement] et peut vous |T132338:0|t[Repousser en AoE]
    .complete 81782,1 --Defeat Shredder 9000
    .isOnQuest 81782
    .maxlevel 53
step
    #sticky
    #label Treants
    .goto Ashenvale,85.6,65.6,0
    .goto Ashenvale,86.6,59.6,0
    .goto Ashenvale,90.0,50.2,0
    >>Tuez les |cRXP_ENEMY_Anciens vengeurs|r dans la zone
    >>|cRXP_WARN_Faites attention comme ce sont des élites, passez cette étape si vous n'êtes pas assez fort pour les vaincre seul|r
    .complete 81769,1 --Vengeful Ancient slain (7)
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,92.11,54.21
    .gossipoption 122138 >>Parlez à l' |cRXP_FRIENDLY_Imploratrice céleste Alyssian|r. Elle devrait commencer à vous suivre.
    .target Alyssian Windcaller
    .isOnQuest 81783
    .maxlevel 53
step
    #season 2
    #requires Treants
    .goto Ashenvale,81.0,50.6
    .group 3
    >>Tuez |cRXP_ENEMY_Zalius|r |cRXP_WARN_. Faites attention comme il a énormément de vie|r
    .complete 81781,1 --Defeat Zalius (1)
    .isOnQuest 81781
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,86.31,43.07,0
    .goto Ashenvale,86.57,47.66,50,0
    .goto Ashenvale,87.03,45.92,50,0
    .goto Ashenvale,88.26,42.14,50,0
    .goto Ashenvale,86.31,43.07,50,0
    .goto Ashenvale,84.36,45.06,50,0
    .goto Ashenvale,83.90,47.38,50,0
    >>Terminez de tuer les |cRXP_ENEMY_Traquenuits wyrmides|r et les |cRXP_ENEMY_Dragonnets de la terreur|r
    >>|cRXP_WARN_Attention.|r Les |cRXP_ENEMY_Traquenuits wyrmides|r |cRXP_WARN_sont des élites de niveau 41|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    #requires Treants
    #label IncursionsComplete
    .goto Ashenvale,93.97,38.02
    >>Voyagez au |cRXP_PICK_Portail vers le Rêve Émeraude|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r ou |cRXP_FRIENDLY_Doran|r ne vous suit plus, revenez sur vos pas et parlez-leur à nouveau|r
    >>|cRXP_WARN_Avancez et reculez à l'emplacement indiqué par la flèche (en bas de la rampe du portail) plusieurs fois. Cela fera passer les PNJs à la limite de validation de la quête|r
    .complete 81783,1 --Rescue Alyssian Windcaller: 1/1
    .target +Alyssian Windcaller
    .goto Ashenvale,92.11,54.21,0
    .complete 81784,1 --Rescue Doran Dreambough: 1/1
    .goto Ashenvale,87.24,43.58,0
    .target +Doran Dreambough
    .complete 81785,1 --Rescue Maseara Autumnmoon: 1/1
    .goto Ashenvale,81.16,50.28,0
    .target +Maseara Autumnmoon
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Quittez le |cRXP_PICK_Portail vers le Rêve Émeraude|r
    .aura -444759
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.57,40.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .turnin 81771 >>Rendez la quête Mission d’Ashenvale IV : rapport sur les dragons
    .turnin 81772 >>Rendez la quête Mission d’Ashenvale V : rapport sur les satyres
    .turnin 81773 >>Rendez la quête Mission d’Ashenvale VI : rapport sur les tréants
    .turnin 81774 >>Rendez la quête Mission d’Ashenvale VII : récupérer le moteur onirique
    .turnin 81775 >>Rendez la quête Mission d’Ashenvale VIII : récupérer la prophétie d’Azshara
    .turnin 81776 >>Rendez la quête Mission d’Ashenvale IX : récupérer l’œuf de dragon touché par le Rêve
    .turnin 81783 >>Rendez la quête Mission d’Ashenvale XVI : sauver l’imploratrice céleste Alyssian
    .turnin 81784 >>Rendez la quête Mission d’Ashenvale XVII : sauver Doran Branchonirique
    .turnin 81785 >>Rendez la quête Mission d’Ashenvale XVIII : sauver Maseara Lune-d’Automne
    .turnin 81768 >>Rendez la quête Mission d’Ashenvale I : vaincre les satyres
    .turnin 81769 >>Rendez la quête Mission d’Ashenvale II : vaincre les tréants
    .turnin 81770 >>Rendez la quête Mission d’Ashenvale III : vaincre les draconiens
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Hannalah|r
    .turnin -81780 >> Rendez la quête Mission d’Ashenvale XIII : vaincre Larsera
    .turnin -81781 >> Rendez la quête Mission d’Ashenvale XIV : vaincre Zalius
    .turnin -81782 >> Rendez la quête Mission d’Ashenvale XV : vaincre le déchiqueteur 9000
    .target Field Captain Hannalah
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Vous êtes de trop haut niveau pour toutes les zones d'incursion et ne pouvez plus prendre de quêtes normales dans aucune d'entre elles|r
    >>Si vous cherchez à gagner de la réputation avec les|r |cRXP_FRIENDLY_Gardiens d'émeraude|r il y a des quêtes répétables infiniment à Féralas où vous pouvez rendre 10 |T134186:0|t[|cRXP_LOOT_Racines lunaires|r], |T133594:0|t[|cRXP_LOOT_Pierres de lune supérieures|r] ou d' |T134312:0|t[|cRXP_LOOT_Écailles de dragon lunaires|r]
    >>Ces quêtes de donnent ni expérience ni or mais vous récompense de 100 de réputation à chaque fois que vous la rendez. Achetez autant que nécessaire des matériaux les plus rentables à l'Hôtel des ventes, puis allez à Féralas pour les rendre
    .xp <53,1
step
    #optional
    +Vous avez terminé cette boucle des Incursions de Cauchemar. Les quêtes seront à nouveau disponibles après la réinitialisation quotidienne. |cRXP_WARN_Sélectionnez un autre guide de la liste pour continuer|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Quêtes journalières Incursions de cauchemar
#name (50-53) Incursion de cauchemar Les Hinterlands


step
    #ah
    >>Achetez 10 |T134207:0|t[|cRXP_LOOT_Lotus stellaires|r], 10 |T134964:0|t[|cRXP_LOOT_Coquilles stellaires|r] et 10 |T237436:0|t[|cRXP_LOOT_Minerais d’astrargent|r] à l'hôtel des ventes avant de vous rendre aux Hinterlands
    >>|cRXP_WARN_Passez cette étape si vous n'êtes pas près d'un Hôtel des Ventes ou si les prix n'en valent pas la peine. Ces trois quêtes donnent un total combiné de 38250xp et 300 de réputation|r
    .collect 219454,10 --Star Lotus
    .collect 219487,10 --Starshell
    .collect 219486,10 --Starsilver Ore
    .maxlevel 53
step
    #completewith next
    #label travel
    .zone The Hinterlands >> Voyagez aux Hinterlands
    .maxlevel 53
step
    .goto The Hinterlands,60.81,37.86,20 >> Dirigez-vous vers le pont menant à Seradane
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendante Alandra|r
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie nihiliste|r] |cRXP_WARN_pour apprendre|r |T132886:0|t[Zone de vide] << Priest
    .train 429308 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Armure de la fournaise|r] |cRXP_WARN_pour apprendre|r |T132221:0|t[Armure de la fournaise] << Mage
    .train 431747 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’affliction|r] |cRXP_WARN_pour apprendre|r |T136228:0|t[Affliction instable] << Warlock
    .train 416066 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de brûlure|r] |cRXP_WARN_pour apprendre|r |T135822:0|t[Brûlure] << Shaman
    .train 432297 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’empressement|r] |cRXP_WARN_pour apprendre|r |T236269:0|t[Tailler dans le vif] << Rogue
    .train 431611 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de détonation|r] |cRXP_WARN_pour apprendre|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'effusion de sang|r] |cRXP_WARN_pour apprendre|r |T304501:0|t[Étripage] << Druid
    .train 429261 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du marteau|r] |cRXP_WARN_pour apprendre|r |T236262:0|t[Marteau de courroux amélioré] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #optional
    >>Traversez le pont et |Tinterface/worldmap/chatbubble_64grey.blp:20|tparlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Acceptez la quête Mission des Hinterlands X : lotus stellaires
    .accept 81834 >> Acceptez la quête Mission des Hinterlands XI : minerai d’astrargent
    .accept 81835 >> Acceptez la quête Mission des Hinterlands XII : coquilles stellaires
    .itemcount 219454,10 --Star Lotus
    .itemcount 219487,10 --Starshell
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Traversez le pont et |Tinterface/worldmap/chatbubble_64grey.blp:20|tparlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Acceptez la quête Mission des Hinterlands X : lotus stellaires
    .itemcount 219454,10 --Star Lotus
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Traversez le pont et |Tinterface/worldmap/chatbubble_64grey.blp:20|tparlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81834 >> Acceptez la quête Mission des Hinterlands XI : minerai d’astrargent
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Traversez le pont et |Tinterface/worldmap/chatbubble_64grey.blp:20|tparlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81835 >> Acceptez la quête Mission des Hinterlands XII : coquilles stellaires
    .itemcount 219487,10 --Starshell
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Traversez le pont et |Tinterface/worldmap/chatbubble_64grey.blp:20|tparlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin -81833 >> Rendez la quête Mission des Hinterlands X : lotus stellaires
    .turnin -81834 >> Rendez la quête Mission des Hinterlands XI : minerai d’astrargent
    .turnin -81835 >> Rendez la quête Mission des Hinterlands XII : coquilles stellaires
    .target Field Captain Korlian
step
    >>Traversez le pont et |Tinterface/worldmap/chatbubble_64grey.blp:20|tparlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 82068 >> Acceptez la quête Combattre les incursions de cauchemar
    .accept 81786 >> Acceptez la quête Mission des Hinterlands I : vaincre les séléniens
    .accept 81787 >> Acceptez la quête Mission des Hinterlands II : vaincre les tortues géantes
    .accept 81788 >> Acceptez la quête Mission des Hinterlands III : vaincre les draconiens
    .accept 81789 >> Acceptez la quête Mission des Hinterlands IV : rapport sur les dragons
    .accept 81817 >> Acceptez la quête Mission des Hinterlands V : rapport sur les tortues
    .accept 81820 >> Acceptez la quête Mission des Hinterlands VI : rapport sur les séléniens
    .accept 81826 >> Acceptez la quête Mission des Hinterlands VII : récupérer l’œuf de dragon touché par les étoiles
    .accept 81830 >> Acceptez la quête Mission des Hinterlands VIII : récupérer la relique d’Elune
    .accept 81832 >> Acceptez la quête Mission des Hinterlands IX : récupérer la perle onirique
    .accept 81850 >> Acceptez la quête Mission des Hinterlands XVI : sauver Elianar Buveur-d’Ombre
    .accept 81851 >> Acceptez la quête Mission des Hinterlands XVII : sauver Serlina Vivétoile
    .accept 81852 >> Acceptez la quête Mission des Hinterlands XVIII : sauver Veanna Noctanuage
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    .group 3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    >>|cRXP_WARN_Si vous être dans un groupe, pensez à prendre les quêtes élite. Les boss que vous allez devoir tuer pour ces quêtes ont énormément de vie et pourraient être difficiles en fonction de votre groupe.|r
    .accept 81837 >> Acceptez la quête Mission des Hinterlands XIII : vaincre Florius
    .accept 81838 >> Acceptez la quête Mission des Hinterlands XIV : vaincre les funestiens
    .accept 81839 >> Acceptez la quête Mission des Hinterlands XV : vaincre Ghamoo-Raja
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendante Alandra|r
    .vendor >> |cRXP_BUY_Achetez-lui jusqu'à 5|r |T236885:0|t[Potions de soins majeure] |cRXP_BUY_si vous le souhaitez.|r |cRXP_WARN_Vous ne pouvez utiliser ces potions que dans les zones d'incursion|r
    .target Quartermaster Alandra
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Cliquez sur le portail près du donneur de quête|r pour vous téléporter au Rêve d'émeraude
step
    .goto 1425/0,-3788.100,468.800,20 >> Dirigez-vous vers le rocher de l'Affût. |cRXP_WARN_Évitez de passer dans les |cRXP_ENEMY_Feux follets instables|r ou ils exploseront et vous infligeront environ 700 dégâts|r
    .maxlevel 53
step
    #sticky
    #label Moonkin
    .goto The Hinterlands,57.9,39.6,0
    >>Tuez le |cRXP_ENEMY_Sélénien déchu|r à l'intérieur du Rocher de l’Affût
    .complete 81786,1 --Fallen Moonkin slain (20)
    .mob Fallen Moonkin
    .maxlevel 53
step
    >>Entrez dans la grotte et libérez la rampe menant vers la droite. Ouvrez le coffre qui s'y trouve pour la |T133247:0|t[|cRXP_PICK_Relique d’Elune|r]
    .goto 1425/0,-3799.300,354.700
    .complete 81830,1 --|Elunar Relic: 1/1
    .maxlevel 53
step
    .solo
    >>Libérez-vous un chemin jusqu'à la grande salle au fond de la grotte, parlez au |cRXP_FRIENDLY_Garderêve Valori|r pour recevoir son |T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    >>|cRXP_WARN_Il est camouflé juste à côté du boss|r |cRXP_ENEMY_Funestien|r. |cRXP_WARN_Essayez de récupérer rapidement le rapport et de vous enfuir, ne combattez pas le boss|r
    >>|cRXP_WARN_Vous risquez fortement de mourir en faisant cette quête à cause des|r |cRXP_ENEMY_Funestien|r |cRXP_WARN_infligeant des dégâts importants mais le chemin pour revenir est très court|r
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    #sticky
    #label groupSkulk
    .group 3
    >>Libérez-vous un chemin jusqu'à la grande salle au fond de la grotte, parlez au |cRXP_FRIENDLY_Garderêve Valori|r pour recevoir son |T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    >>|cRXP_WARN_Il est camouflé juste à côté du |rboss|cRXP_ENEMY_ |rFunestien|cRXP_WARN_.
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,56.6,44.6
    >>Tuez le boss |cRXP_ENEMY_Funestien|r dans la grande salle au fond de la grotte.
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T136096:0|t[Eclat lunaire] |cRXP_WARN_et|r |T136006:0|t[Colère] |cRXP_WARN_infligeant des dégâts importants, et possède un effet de|r |T136183:0|t[Peur] en AoE
    .complete 81838,1 --Defeat Doomkin
    .mob Doomkin
    .isOnQuest 81838
    .maxlevel 53
step
    #requires Moonkin
    #requires groupSkulk
    .goto The Hinterlands,53.58,39.10
    .gossipoption 122141 >> Parlez à |cRXP_FRIENDLY_Elianar Buveur-d'Ombre|r allongé au sol. Il devrait commencer à vous suivre
    >>|cRXP_WARN_Vous pouvez lui parler depuis l'arrière de la clôture en bois sans avoir à entrer à l'intérieur|r
    >>|cRXP_WARN_S'il n'est pas présent, cela signifie qu'un autre joueur est en train de faire l'escorte. Passez cette étape si n'arrivez pas à le trouver|r
    .target Elianar Shadowdrinker
    .maxlevel 53
step
    #sticky
    #label Dragonkin
    .goto The Hinterlands,46.7,39.9,0
    >>Tuez les |cRXP_ENEMY_Dragonnets courroucés|r et les |cRXP_ENEMY_Wyrmides chassétoiles|r dans les ruines
    >>|cRXP_WARN_Soyez prudent face aux|r |cRXP_ENEMY_Wyrmides chassétoiles|r |cRXP_WARN_qui sont élites et lancent|r |T135812:0|t[Boule de feu] |cRXP_WARN_qui inflige plus de 500 dégâts. Passez cette quête si vous n'arrivez pas à les tuer seul|r
    .complete 81788,1 --Wrath Whelp Slain (10)
    .complete 81788,2 --Wyrmkin Starhunter SLain (3)
    .mob Wrath Whelp
    .mob Wyrmkin Starhunter
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Attention, si vous mourez, tous les PNJ d'escorte qui vous suivent reviendront à leur emplacement initial et vous devrez les trouver à nouveau.|r
    >>|cRXP_WARN_Le PNJ de l'escorte arrêtera aussi de vous suivre 15 minutes après les avoir recrutés, alors ne traînez pas !|r
    .maxlevel 53
step
    .goto The Hinterlands,46.85,41.17
    >>Parlez au |cRXP_FRIENDLY_Garderêve Laninar|r camouflé à l'emplacement marqué afin d'obtenir le |T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    .complete 81789,1 --|Intelligence Report: Agol'watha: 1/1
    .target Dreamwarden Laninar
    .skipgossip
    .maxlevel 53
step
    >>Ramassez l' |T236997:0|t[|cRXP_PICK_Œuf de dragon touché par les étoiles|r] à l'intérieur de la tente
    >>|cRXP_WARN_Essayez de contourner le bord extérieur des murs pour éviter d'engager les draconiens élites de la zone. Vous pouvez ramasser l'œuf depuis l'arrière de la tente sans avoir à combattre d'élites|r
    .goto 1425/0,-3320.800,474.500
    .complete 81826,1 --|Star-Touched Dragonegg: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,46.0,39.8
    >>Tuez |cRXP_ENEMY_Florius|r, le dragon vert qui vole au-dessus des ruines
    >>|cRXP_WARN_Faites attention comme il a énormément de vie, est insensible aux sorts de nature, dispose de|r|T132338:0|t[Enchaînement]|cRXP_WARN_,|r |T134307:0|t[Balayage de queue] |cRXP_WARN_et il|r |T135745:0|t[Invoques] |cRXP_WARN_un|r |cRXP_ENEMY_Drake|r |cRXP_WARN_pour l'aider qui lance un souffle frontal qui inflige des dégâts énormes|r
    .complete 81837,1 --Defeat Florius
    .mob Florius
    .isOnQuest 81837
    .maxlevel 53
step
    #requires Dragonkin
    .goto The Hinterlands,42.31,31.43
    .goto The Hinterlands,60.67,38.32,150 >> Dirigez-vous vers l'ouest jusqu'à ce que votre écran devienne vert. Vous allez être téléporté plus proche de la position de départ
    >>|cRXP_WARN_Ne vous inquiétez pas, tous les PNJ de l'escorte vont finir par vous suivre|r
    .maxlevel 53
step
    #sticky
    #label Turtles
    .goto The Hinterlands,62.9,41.0,0
    .goto The Hinterlands,62.9,45.0,0
    .goto The Hinterlands,67.1,41.5,0
    .goto The Hinterlands,66.0,47.5,0
    .goto The Hinterlands,71.5,45.3,0
    .goto The Hinterlands,69.8,51.2,0
    .goto The Hinterlands,65.1,39.1,0
    .goto The Hinterlands,58.6,36.0,0
    >>Tuez les |cRXP_ENEMY_Vile-mâchoire de l'eau onirique|r en complétant les autres objectifs
    .complete 81787,1 --Dreamwater Vicejaw slain (20)
    .mob Dreamwater Vicejaw
    .maxlevel 53
step
    .goto The Hinterlands,57.30,42.95
    .gossipoption 122151 >>Montez  la colline. Parlez à |cRXP_FRIENDLY_Veanna Noctanuage|r allongée par terre. Elle devrait commencer à vous suivre
    >>|cRXP_WARN_Si elle n'est pas présent, cela signifie qu'un autre joueur est en train de faire l'escorte. Passez cette étape si n'arrivez pas à la trouver|r
    .target Veanna Cloudsleeper
    .maxlevel 53
step
    .goto The Hinterlands,71.09,48.14
    .gossipoption 122149 >> Entrez dans le petit fort en bois. Parlez à |cRXP_FRIENDLY_Serlina Vivétoile|r allongée par terre. Elle devrait commencer à vous suivre
    >>|cRXP_WARN_Si elle n'est pas présent, cela signifie qu'un autre joueur est en train de faire l'escorte. Passez cette étape si n'arrivez pas à la trouver|r
    .target Serlina Starbright
    .maxlevel 53
step
    >>Entrez dans les ruines de Shaol’watha et ramassez la |T237371:0|t[|cRXP_PICK_Perle onirique|r]. |cRXP_WARN_Faites attention à ne pas aggro le boss|r |cRXP_ENEMY_Ghamoo-Raja|r
    .goto 1425/0,-4355.400,79.400
    .complete 81832,1 --|Dreampearl: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,72.7,54.2
    >>Tuez |cRXP_ENEMY_Ghamoo-Raja|r
    >>|cRXP_WARN_Soyez prudent comme elle lance|r |T136231:0|t[Perce-armure] |cRXP_WARN_et |r|T132270:0|t[Triple mâchouillage] |cRXP_WARN_une attaque qui vous frappera 3 fois très rapidement.|r |T132270:0|t[Triple mâchouillage] |cRXP_WARN_peut aussi vous toucher à distance|r
    .complete 81839,1 --Defeat Ghamoo-Raja
    .isOnQuest 81839
    .maxlevel 53
step
    >>Parlez au |cRXP_FRIENDLY_Garderêve Sanathel|r camouflé à la position marquée afin de recevoir le |T134939:0|t[|cRXP_LOOT_Rapport de surveillance|r]
    .goto 1425/0,-4389.800,81.400
    .complete 81817,1 --|Intelligence Report: Shaol'watha: 1/1
    .target Dreamwarden Sanathel
    .skipgossip
    .maxlevel 53
step
    .goto The Hinterlands,77.13,54.35
    .goto The Hinterlands,60.67,38.32,150 >> Dirigez-vous vers l'est jusqu'à ce que votre écran devienne vert. Vous allez être téléporté plus proche de la position de départ
    >>|cRXP_WARN_Ne vous inquiétez pas, tous les PNJ de l'escorte vont finir par vous suivre|r
    .maxlevel 53
step
    #requires Turtles
    .goto 1425/0,-4010.800,758.000
    >>Vérifiez que toutes les quêtes d'escorte se sont validées. Elles devraient toutes se compléter à votre arrivée au grand portail du Rêve
    >>|cRXP_WARN_Si l'un des trois PNJs ne vous suit plus, retournez lui parler|r
    >>|cRXP_WARN_Avancez et reculez à l'emplacement indiqué par la flèche (en bas de la rampe du portail) plusieurs fois. Cela fera passer les PNJs à la limite de validation de la quête|r
    .complete 81850,1
    .complete 81851,1
    .complete 81852,1
    .maxlevel 53
step
    .goto The Hinterlands,61.35,34.58,5 >> Reprenez le portail pour revenir dans le monde réel dans les Hinterlands
    .maxlevel 53
step
    >>Parlez à |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin 82068 >> Rendez la quête Combattre les incursions de cauchemar
    .turnin 81786 >> Rendez la quête Mission des Hinterlands I : vaincre les séléniens
    .turnin 81787 >> Rendez la quête Mission des Hinterlands II : vaincre les tortues géantes
    .turnin 81788 >> Rendez la quête Mission des Hinterlands III : vaincre les draconiens
    .turnin 81789 >> Rendez la quête Mission des Hinterlands IV : rapport sur les dragons
    .turnin 81817 >> Rendez la quête Mission des Hinterlands V : rapport sur les tortues
    .turnin 81820 >> Rendez la quête Mission des Hinterlands VI : rapport sur les séléniens
    .turnin 81826 >> Rendez la quête Mission des Hinterlands VII : récupérer l’œuf de dragon touché par les étoiles
    .turnin 81830 >> Rendez la quête Mission des Hinterlands VIII : récupérer la relique d’Elune
    .turnin 81832 >> Rendez la quête Mission des Hinterlands IX : récupérer la perle onirique
    .turnin 81850 >> Rendez la quête Mission des Hinterlands XVI : sauver Elianar Buveur-d’Ombre
    .turnin 81851 >> Rendez la quête Mission des Hinterlands XVII : sauver Serlina Vivétoile
    .turnin 81852 >> Rendez la quête Mission des Hinterlands XVIII : sauver Veanna Noctanuage
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Korlian|r
    .turnin -81837 >> Rendez la quête Mission des Hinterlands XIII : vaincre Florius
    .turnin -81838 >> Rendez la quête Mission des Hinterlands XIV : vaincre les funestiens
    .turnin -81839 >> Rendez la quête Mission des Hinterlands XV : vaincre Ghamoo-Raja
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53

step
    #optional
    +|cRXP_WARN_Vous êtes de trop haut niveau pour toutes les zones d'incursion et ne pouvez plus prendre de quêtes normales dans aucune d'entre elles|r
    >>Si vous cherchez à gagner de la réputation avec les|r |cRXP_FRIENDLY_Gardiens d'émeraude|r il y a des quêtes répétables infiniment à Féralas où vous pouvez rendre 10 |T134186:0|t[|cRXP_LOOT_Racines lunaires|r], |T133594:0|t[|cRXP_LOOT_Pierres de lune supérieures|r] ou d' |T134312:0|t[|cRXP_LOOT_Écailles de dragon lunaires|r]
    >>Ces quêtes de donnent ni expérience ni or mais vous récompense de 100 de réputation à chaque fois que vous la rendez. Achetez autant que nécessaire des matériaux les plus rentables à l'Hôtel des ventes, puis allez à Féralas pour les rendre
    .xp <53,1
step
    #optional
    +Vous avez terminé cette boucle des Incursions de Cauchemar. Les quêtes seront à nouveau disponibles après la réinitialisation quotidienne. |cRXP_WARN_Sélectionnez un autre guide de la liste pour continuer|r
    ]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Quêtes journalières Incursions de cauchemar
#name (50-53) Incursion de cauchemar Féralas

step
    #ah
    >>Achetez 10 |T134186:0|t[|cRXP_LOOT_Racines lunaires|r], |T133594:0|t[|cRXP_LOOT_Pierres de lune supérieures|r] et |T134312:0|t[|cRXP_LOOT_Écailles de dragon lunaire|r] à l'hôtel des ventes avant de vous diriger aux Hinterlands
    >>|cRXP_WARN_Passez cette étape si vous n'êtes pas près d'un Hôtel des Ventes ou si les prix n'en valent pas la peine. Ces trois quêtes donnent un total combiné de 38250xp et 300 de réputation|r
    .maxlevel 53
    .collect 219514,10 --Moonroot
    .collect 219517,10 --Moondragon Scale
    .collect 219515,10 --Greater Moonstone
step
    #completewith next
    .zone Feralas >> Voyagez à Féralas
    .maxlevel 53
step
    .goto Feralas,48.0,13.2,50 >> Voyagez au portail du Cauchemar émeraude dans la zone au nord-ouest de Féralas
    .maxlevel 53
step
    .goto Feralas,48.6,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendant Valdane|r
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .target Quartermaster Valdane
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie nihiliste|r] |cRXP_WARN_pour apprendre|r |T132886:0|t[Zone de vide] << Priest
    .train 429308 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Armure de la fournaise|r] |cRXP_WARN_pour apprendre|r |T132221:0|t[Armure de la fournaise] << Mage
    .train 431747 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’affliction|r] |cRXP_WARN_pour apprendre|r |T136228:0|t[Affliction instable] << Warlock
    .train 416066 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de brûlure|r] |cRXP_WARN_pour apprendre|r |T135822:0|t[Brûlure] << Shaman
    .train 432297 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’empressement|r] |cRXP_WARN_pour apprendre|r |T236269:0|t[Tailler dans le vif] << Rogue
    .train 431611 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de détonation|r] |cRXP_WARN_pour apprendre|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'effusion de sang|r] |cRXP_WARN_pour apprendre|r |T304501:0|t[Étripage] << Druid
    .train 429261 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du marteau|r] |cRXP_WARN_pour apprendre|r |T236262:0|t[Marteau de courroux amélioré] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .accept 81865 >> Acceptez la quête Mission de Feralas X : racine lunaire
    .accept 81866 >> Acceptez la quête Mission de Feralas XI : pierre de lune supérieure
    .accept 81867 >> Acceptez la quête Mission de Feralas XII : écailles de dragon lunaire supérieur
    .itemcount 219514,10 --Moonroot
    .itemcount 219517,10 --Moondragon Scale
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .accept 81865 >> Acceptez la quête Mission de Feralas X : racine lunaire
    .itemcount 219514,10 --Moonroot
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .accept 81866 >> Acceptez la quête Mission de Feralas XI : pierre de lune supérieure
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .accept 81867 >> Acceptez la quête Mission de Feralas XII : écailles de dragon lunaire supérieur
    .itemcount 219517,10 --Moondragon Scale
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .turnin -81865 >> Rendez la quête Mission de Feralas X : racine lunaire
    .turnin -81866 >> Rendez la quête Mission de Feralas XI : pierre de lune supérieure
    .turnin -81867 >> Rendez la quête Mission de Feralas XII : écailles de dragon lunaire supérieur
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .accept 81855 >>Acceptez la quête Mission de Feralas I : vaincre les enfants de Cénarius
    .accept 81856 >>Acceptez la quête Mission de Feralas II : vaincre les harpies
    .accept 81857 >>Acceptez la quête Mission de Feralas III : vaincre les draconiens
    .accept 81858 >>Acceptez la quête Mission de Feralas IV : rapport sur les Dragons
    .accept 81859 >>Acceptez la quête Mission de Feralas V : rapport cénarien
    .accept 81860 >>Acceptez la quête Mission de Feralas VI : rapport sur les harpies
    .accept 81861 >>Acceptez la quête Mission de Feralas VII : récupérer un œuf de dragon lueur-de-lune
    .accept 81863 >>Acceptez la quête Mission de Feralas VIII : récupérer les notes du gardien
    .accept 81864 >>Acceptez la quête Mission de Feralas IX : récupérer la diatribe de harpie
    .accept 81872 >>Acceptez la quête Mission de Feralas XVI : sauver Mellias Soigneterre
    .accept 81873 >>Acceptez la quête Mission de Feralas XVII : sauver Nérène Chanteru
    .accept 81874 >>Acceptez la quête Mission de Feralas XVIII : sauver Jamniss Soigne-arbre
    .accept 82068 >>Acceptez la quête Combattre les incursions de cauchemar
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    >>|cRXP_WARN_Si vous être dans un groupe, pensez à prendre les quêtes élite. Les boss que vous allez devoir tuer pour ces quêtes ont énormément de vie et pourraient être difficiles en fonction de votre groupe.|r
    .accept 81868 >> Acceptez la quête Mission de Feralas XIII : vaincre Tyrannikus
    .accept 81870 >> Acceptez la quête Mission de Feralas XIV : vaincre Alondrius
    .accept 81871 >> Acceptez la quête Mission de Feralas XV : vaincre Slirena
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Prenez le |cRXP_PICK_Portail vers le Rêve Émeraude|r
    >>|cRXP_WARN_Courez et dépassez les |cRXP_ENEMY_Satyres|r, les |cRXP_ENEMY_Gangrechiens|r et les |cRXP_ENEMY_Diablotins|r. Vous sortirez de combat en prenant le portail|r
    .aura 444762
    .maxlevel 53
step
    #season 2
    #completewith DreamWardenGorlas
    >>Tuez les |cRXP_ENEMY_Dragonnets frénétiques|r et les |cRXP_ENEMY_Wyrmides berserkers|r
    >>|cRXP_WARN_Soyez prudent.|r Les |cRXP_ENEMY_Wyrmides berserkers|r |cRXP_WARN_sont des élites. Ils sont difficiles à tuer seul|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,49.64,15.44
    .gossipoption 122147 >>Parlez à |cRXP_FRIENDLY_Mellias Soigneterre|r. Elle commencera à vous suivre
    .target Mellias Earthtender
    .isOnQuest 81872
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Attention, si vous mourez, tous les PNJ d'escorte qui vous suivent reviendront à leur emplacement initial et vous devrez les trouver à nouveau.|r
    >>|cRXP_WARN_Le PNJ de l'escorte arrêtera aussi de vous suivre 15 minutes après les avoir recrutés, alors ne traînez pas !|r
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.71,17.17
    >>Ramassez un |cRXP_LOOT_Œuf de dragon lueur-de-lune|r sur le sol
    .complete 81861,1 --Moonglow Dragonegg: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,53.2,16.6
    >>Tuez le boss dragon |cRXP_ENEMY_Tyrannikus|r
    >>|cRXP_WARN_Faites attention comme il a énormément de vie, est insensible aux sorts de nature, dispose de|r|T132338:0|t[Enchaînement]|cRXP_WARN_,|r |T134307:0|t[Balayage de queue] |cRXP_WARN_et il|r |T135745:0|t[Invoques] |cRXP_WARN_un|r |cRXP_ENEMY_Drake|r |cRXP_WARN_pour l'aider qui lance un souffle frontal qui inflige des dégâts énormes|r
    .complete 81868,1 --Tyrannikus slain
    .mob Tyrannikus
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.73,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garderêve Sheldryn|r
    .complete 81858,1 --Intelligence Report: Oneiros: 1/1
    .target Dreamwarden Sheldryn
    .skipgossip
    .maxlevel 53
step
    .solo
    #completewith RuinsofRav
    #season 2
    +|cRXP_WARN_Faites attention à|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, un boss élite qui patrouille sur la route. Essayez de l'éviter.|r
    .unitscan Alondrius
    .maxlevel 53
step
    .group 3
    #completewith RuinsofRav
    #season 2
    #label Alondrius
    .goto Feralas,46.8,19.6
    .line Feralas,47.6,25.5,48.1,24.2,48.0,23.0,46.9,22.2,46.2,20.9,46.3,18.1,46.3,16.2,46.1,14.1
    >>|cRXP_WARN_Cherchez|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, un boss élit patrouillant sur la route. Tuez-le.|r
    .complete 81870,1 --Alondrius Slain
    .unitscan Alondrius
    .maxlevel 53
step
    #season 2
    #label DreamWardenGorlas
    .goto Feralas,47.14,21.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garderêve Gorlas|r
    .complete 81859,1 --Intelligence Report: Twin Colossals: 1/1
    .target Dreamwarden Gorlas
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith RuinsofRav
    #requires Alondrius
    >>Tuez les |cRXP_ENEMY_Filles perdues|r et les |cRXP_ENEMY_Fils vengeurs|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #requires Alondrius
    .goto Feralas,46.63,18.94
    >>Ramassez les |cRXP_LOOT_Notes du gardien fou|r au sol
    .complete 81863,1 --Mad Keeper's Notes: 1/1
    .maxlevel 53
step
    #season 2
    .goto Feralas,45.81,16.47
    .gossipoption 122148 >>Parlez à |cRXP_FRIENDLY_Nérène Chanteru|r. Elle commencera à vous suivre
    .target Nerene Brooksinger
    .skipgossip
    .isOnQuest 81873
    .maxlevel 53
step
    #season 2
    #label RuinsofRav
    .goto Feralas,41.94,12.93
    .subzone 1114 >>Voyagez aux Ruines de Vent-du-Corbeau
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    >>Tuez les |cRXP_ENEMY_Volplumes ruisserêves|r et les |cRXP_ENEMY_Mande-foudres ruisserêves|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    .goto Feralas,38.94,13.13
    >>Ramassez le |cRXP_LOOT_Diatribe de harpie|r au sol
    >>|cRXP_WARN_Vous le ramasserez instantanément|r |cRXP_ENEMY_Slirena|r |cRXP_WARN_pourrait vous attaquer, préparez un chemin pour vous enfuir.|r
    .complete 81864,1 --Harpy Screed: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,39.6,13.8
    >>Tuez la boss des harpies |cRXP_ENEMY_Slirena|r
    >>|cRXP_WARN_Soyez prudent face à elle comme elle lance|r |T136015:0|t[Chaîne d'éclairs], |T136018:0|t[Linceul de vents] |cRXP_WARN_un cyclone de 10 secondes, et|r |T132104:0|t[Pluie acide] |cRXP_WARN_un cercle qui inflige des dégâts si vous ne vous n'en sortez pas|r
    .complete 81871,1 --Slirena slain
    .mob Slirena
    .maxlevel 53
step
    #season 2
    .goto Feralas,37.71,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Garderêve Anadelle|r
    .complete 81860,1 --Intelligence Report: Ruins of Ravenwind: 1/1
    .target Dreamwarden Anadelle
    .skipgossip
    .maxlevel 53
step
    #season 2
    #label IncursionsComplete3
    .goto Feralas,40.58,8.09
    .gossipoption 122145 >>Parlez à |cRXP_FRIENDLY_Jamniss Soigne-arbre|r. Elle commencera à vous suivre
    .target Jamniss Treemender
    .isOnQuest 81874
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,42.11,9.07,0
    .goto Feralas,38.98,16.20,0
    .goto Feralas,42.11,9.07,60,0
    .goto Feralas,42.19,11.58,60,0
    .goto Feralas,41.02,13.08,60,0
    .goto Feralas,40.19,15.21,60,0
    .goto Feralas,38.98,16.20,60,0
    .goto Feralas,38.31,15.77,60,0
    .goto Feralas,37.95,14.21,60,0
    .goto Feralas,39.42,13.77,60,0
    .goto Feralas,39.58,10.69,60,0
    >>Tuez les |cRXP_ENEMY_Volplumes ruisserêves|r et les |cRXP_ENEMY_Mande-foudres ruisserêves|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,46.44,15.89,0
    .goto Feralas,45.36,22.36,0
    .goto Feralas,44.45,12.29,50,0
    .goto Feralas,46.44,15.89,50,0
    .goto Feralas,46.35,18.82,50,0
    .goto Feralas,45.36,22.36,50,0
    .goto Feralas,45.55,19.10,50,0
    >>Tuez les |cRXP_ENEMY_Filles perdues|r et les |cRXP_ENEMY_Fils vengeurs|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,49.81,15.80,0
    .goto Feralas,53.85,12.74,0
    .goto Feralas,49.81,15.80,50,0
    .goto Feralas,50.68,17.37,50,0
    .goto Feralas,51.62,19.54,50,0
    .goto Feralas,52.76,16.27,50,0
    .goto Feralas,53.68,15.81,50,0
    .goto Feralas,53.85,12.74,50,0
    .goto Feralas,54.32,10.44,50,0
    >>Tuez les |cRXP_ENEMY_Dragonnets frénétiques|r et les |cRXP_ENEMY_Wyrmides berserkers|r
    >>|cRXP_WARN_Soyez prudent.|r Les |cRXP_ENEMY_Wyrmides berserkers|r |cRXP_WARN_sont des élites. Ils sont difficiles à tuer seul|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,51.00,11.69
    >>Voyagez au |cRXP_PICK_Portail vers le Rêve Émeraude|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Mellias|r, |cRXP_FRIENDLY_Nerene|r ou |cRXP_FRIENDLY_Jamniss|r ne vous suivent plus, revenez sur vos pas et parlez-leur à nouveau.|r
    >>|cRXP_WARN_Avancez et reculez à l'emplacement indiqué par la flèche (en bas de la rampe du portail) plusieurs fois. Cela fera passer les PNJs à la limite de validation de la quête|r
    .complete 81872,1 --Rescue Mellias Earthtender: 1/1
    .goto Feralas,49.64,15.44,0
    .target +Mellias Earthtender
    .complete 81873,1 --Rescue Nerene Brooksinger: 1/1
    .goto Feralas,45.81,16.47,0
    .target +Nerene Brooksinger
    .complete 81874,1 --Rescue Jamniss Treemender: 1/1
    .goto Feralas,40.58,8.09,0
    .target
    .target +Jamniss Treemender
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Quittez le |cRXP_PICK_Portail vers le Rêve Émeraude|r
    .aura -444762
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    .turnin 81855 >>Rendez la quête Mission de Feralas I : vaincre les enfants de Cénarius
    .turnin 81856 >>Rendez la quête Mission de Feralas II : vaincre les harpies
    .turnin 81857 >>Rendez la quête Mission de Feralas III : vaincre les draconiens
    .turnin 81858 >>Rendez la quête Mission de Feralas IV : rapport sur les Dragons
    .turnin 81859 >>Rendez la quête Mission de Feralas V : rapport cénarien
    .turnin 81860 >>Rendez la quête Mission de Feralas VI : rapport sur les harpies
    .turnin 81861 >>Rendez la quête Mission de Feralas VII : récupérer un œuf de dragon lueur-de-lune
    .turnin 81863 >>Rendez la quête Mission de Feralas VIII : récupérer les notes du gardien
    .turnin 81864 >>Rendez la quête Mission de Feralas IX : récupérer la diatribe de harpie
    .turnin 81872 >>Rendez la quête Mission de Feralas XVI : sauver Mellias Soigneterre
    .turnin 81873 >>Rendez la quête Mission de Feralas XVII : sauver Nérène Chanteru
    .turnin 81874 >>Rendez la quête Mission de Feralas XVIII : sauver Jamniss Soigne-arbre
    .turnin 82068 >>Rendez la quête Combattre les incursions de cauchemar
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine de terrain Arunnel|r
    >>|cRXP_WARN_Si vous être dans un groupe, pensez à prendre les quêtes élite. Les boss que vous allez devoir tuer pour ces quêtes ont énormément de vie et pourraient être difficiles en fonction de votre groupe.|r
    .turnin -81868 >> Rendez la quête Mission de Feralas XIII : vaincre Tyrannikus
    .turnin -81870 >> Rendez la quête Mission de Feralas XIV : vaincre Alondrius
    .turnin -81871 >> Rendez la quête Mission de Feralas XV : vaincre Slirena
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Vous êtes de trop haut niveau pour toutes les zones d'incursion et ne pouvez plus prendre de quêtes normales dans aucune d'entre elles|r
    >>Si vous cherchez à gagner de la réputation avec les|r |cRXP_FRIENDLY_Gardiens d'émeraude|r il y a des quêtes répétables infiniment à Féralas où vous pouvez rendre 10 |T134186:0|t[|cRXP_LOOT_Racines lunaires|r], |T133594:0|t[|cRXP_LOOT_Pierres de lune supérieures|r] ou d' |T134312:0|t[|cRXP_LOOT_Écailles de dragon lunaires|r]
    >>Ces quêtes de donnent ni expérience ni or mais vous récompense de 100 de réputation à chaque fois que vous la rendez. Achetez autant que nécessaire des matériaux les plus rentables à l'Hôtel des ventes, puis allez à Féralas pour les rendre
    .xp <53,1
step
    #optional
    +Vous avez terminé cette boucle des Incursions de Cauchemar. Les quêtes seront à nouveau disponibles après la réinitialisation quotidienne. |cRXP_WARN_Sélectionnez un autre guide de la liste pour continuer|r
]])
