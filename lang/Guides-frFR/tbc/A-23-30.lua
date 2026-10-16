if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#xprate <1.5
#name 23-24 Les Paluns
#subgroup RestedXP Alliance 20-32
#next 24-27 Carmines/Bois de la Pénombre

step
.dungeon SFK
    #completewith FinalAccept
    +Commencez à cherche un groupe pour le Donjon d'Ombrecroc. Vous allez bientôt vous diriger vers la Forêt des Pins argentés pour faire le Donjon d'Ombrecroc
step
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Acceptez la quête Les peaux de jeune crocilisque
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    .target Karl Boran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >> Acceptez la quête Griffes des profondeurs
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Acceptez la quête La IIIe flotte
    .accept 463 >> Acceptez la quête Le Gouverneur vert
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Achetez une|r [Cruche d'hydromiel nain]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .target Archaeologist Flagongut
    .turnin 942 >> Rendez la quête Les absences du Prospecteur
    .accept 943 >>Acceptez la quête Les absences du Prospecteur
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .target Archaeologist Flagongut
    .accept 943 >>Acceptez la quête Les absences du Prospecteur
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Rendez la quête La IIIe flotte
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sidonie|r
    .accept 470 >> Acceptez la quête En creusant dans la vase
    .target Sida
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Achetez des|r [Flèche pointue]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Stoutfist|r à l'étage
    .accept 464 >> Acceptez la quête Bannières de guerre
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >> Acceptez la quête À la recherche de l'équipe de fouilles
step
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Tuez en boucle les |cRXP_ENEMY_Mosshides Gnolls|r en cherchant un groupe pour le Donjon d'Ombrecroc
step
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Il n'y a pas de quête pour le Donjon d'Ombrecroc. Vous devrez courir des Paluns à la Forêt des Pins argentés. Assurez-vous de rester sur la route quand vous traversez les Hautes-terres d'Arathi, et faites attention au |cRXP_ENEMY_Forsaken Courier|r
    >>Vous n'avez pas besoin d'aller au maître de vol des Hautes-terres d'Arathi pour l'instant
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Prenez le chemin de vol de Southshore
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entrez dans le Donjon d'Ombrecroc
step
.dungeon SFK
    +Il n'y a pas de quête pour le Donjon d'Ombrecroc
    >>Faites le Donjon d'Ombrecroc. Partez quand vous avez terminé
    .zoneskip 209,1
step
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>Tuez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux de jeune crocilisque|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>Tuez les |cRXP_ENEMY_Bluegill Murlocs|r
    >>Tuez l' |cRXP_ENEMY_Enfourneur|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Gobbler|r patrouille légèrement dans le marais
    .complete 279,1 -- Bluegill Murloc slain (12)
    .mob +Bluegill Murloc
    .complete 279,2 -- Gobbler's Head
    .unitscan +Gobbler
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fradd Swiftgear|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Il s'agit d'un objet est en quantité limitée. Passez cette étape si |cRXP_FRIENDLY_Fradd Vifembraye|r n'en a pas en stock|r
	.target Fradd Swiftgear
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >> Acceptez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >> Rendez la quête À la recherche de l'équipe de fouilles
    .accept 306 >> Acceptez la quête À la recherche de l'équipe de fouilles
    .target Merrin Rockweaver
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Ramassez le |cRXP_LOOT_Fossile de Flagongut|r au sol
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .isOnQuest 943
    #loop
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Tuez les |cRXP_ENEMY_Raptors tachetés|r et les |cRXP_ENEMY_Hurleurs tachetés|r. Dépouillez-les pour la |cRXP_LOOT_Pierre de Relu|r
    >>Si vous ne le trouvez pas le temps d'avoir tué 10 de chaque murloc, passez cette étape. Vous la complèterez plus tard
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .mob +Mottled Raptor
    .mob +Mottled Screecher
step
    #loop
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Tuez les |cRXP_ENEMY_Raptors tachetés|r et les |cRXP_ENEMY_Hurleurs tachetés|r.
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
step << Hunter/Warlock/Priest
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >>Rendez la quête La vengeance d'Ormer
    .accept 295 >>Acceptez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step << Hunter/Warlock/Priest
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81
    >>Tuez les |cRXP_ENEMY_Faucheurs tachetés|r et les |cRXP_ENEMY_Tranchegueules tachetés|r
    >>Cette quête est DIFFICILE comme les mobs sont d'un niveau bien supérieur au votre mais l'arme que vous gagnez en récompense en vaut le détour << Hunter
    >>Cette quête est DIFFICILE comme les mobs sont d'un niveau bien supérieur au votre mais la baguette que vous gagnez en récompense en vaut le détour << Priest
    >>Il est recommandé d'utiliser le spot de la vidéo lié ci-dessous pour abuser du trajet que prennent les mobs (pathing) ce qui va rendre cette quête bien plus facile. Si vous n'arrivez pas à la compléter, passez cette étape
    .link https://youtu.be/irmy9vPM9Lg >> Cliquez ici pour un exemple vidéo
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step << Hunter/Warlock/Priest
    .isQuestComplete 295
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >>Rendez la quête La vengeance d'Ormer
    .accept 296 >>Acceptez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step << Hunter/Warlock/Priest
    .isQuestTurnedIn 295
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 296 >>Acceptez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step << Hunter/Warlock/Priest
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Tuez |cRXP_ENEMY_Grondecroc|r. Dépouillez-le pour sa |cRXP_LOOT_Serre|r
    >>Il est habituellement sur la colline au-dessus du site d'excavation principal mais peut aussi patrouille vers le bas
    >>Cette quête est TRÈS DIFFICILE comme il est de niveau 29. Abusez le trajet des mobs (pathing) de la quête précédente pour le kite à l'infini
    .link https://youtu.be/zIOV0XrxB80 >> Cliquez ici pour un exemple vidéo
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
step << Hunter/Warlock/Priest
    .isQuestComplete 296
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >>Rendez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step
    #loop
    .goto Wetlands,43.009,41.675,0
    .goto Wetlands,40.828,45.966,0
    .goto Wetlands,43.009,41.675,50,0
    .goto Wetlands,40.828,45.966,50,0
    .goto Wetlands,45.222,44.251
    >>Tuez les |cRXP_ENEMY_Orcs Dragonmaw|r. Dépouillez-les pour leur |cRXP_LOOT_Bannières de guerre|r
    >>|cRXP_WARN_Faites attention les |cRXP_ENEMY_Dragonmaw Raiders|r vont lancer|r [Filet] sur vous
    .complete 464,1 -- Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Battlemaster
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Centurion
    .mob Dragonmaw Bonewarder
step
    .goto Wetlands,49.916,39.368
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einar Poignepierre|r
    .accept 469 >> Acceptez la quête Livraison quotidienne
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kixxle|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>Achetez des [Viétérule] |cRXP_WARN_si |cRXP_FRIENDLY_Kixxle|r en a en stock. Vous en aurez besoin pour la quête de la|r [|cFF0070FFWhirlwind Axe|r] plus tard << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_Ce sont des objets en stock limité. Passez cette étape si |cRXP_FRIENDLY_Kixxle|r n'en a plus en stock|r << Warrior
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Kixxle|r n'en a plus|r << !Warrior
    .target Kixxle
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rethiel le Gouverneur vert|r
    .turnin 463 >> Rendez la quête Le Gouverneur vert
    .accept 276 >> Acceptez la quête Piétinements de pattes
    .target Rethiel the Greenwarden
step
    #label
    #loop
    .goto Wetlands,63.93,63.54,0
    .goto Wetlands,61.58,73.07,0
    .goto Wetlands,63.93,63.54,60,0
    .goto Wetlands,62.34,69.34,60,0
    .goto Wetlands,61.58,73.07,60,0
    .goto Wetlands,62.34,69.34
	>>Tuez les |cRXP_ENEMY_Gnolls Poil-moussu|r et les |cRXP_ENEMY_Bâtards Poil-moussu|r
    .complete 276,1 -- Mosshide Gnoll slain (15)
    .mob +Mosshide Gnoll
    .complete 276,2 -- Mosshide Mongrel slain (10)
    .mob +Mosshide Mongrel
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rethiel le Gouverneur vert|r
    .turnin 276 >> Rendez la quête Piétinements de pattes
    .accept 277 >> Acceptez la quête Feu interdit
    .target Rethiel the Greenwarden
step << NightElf/Draenei
    #sticky
    >>Vous aurez besoin d'accéder à Ironforge bientôt. Vous pouvez soit y aller par le tunnel pour le Loch Modan (plus lent mais plus simple) ou utilisez le système pour débloquer votre personnage après avoir utilisé votre pierre de foyer pour le Port de Menethil (plus rapide et plus avancé)
    >>Si vous préférez la méthode en passant par le site web, alors commencez à charger le site. Il prend en général quelques minutes à charger. NE CHOISISSEZ PAS DE BOUGER VOTRE PERSONNAGE POUR LE MOMENT
    >>Si vous avez déjà fait les Mortemines et que vous avez déjà le vol pour Ironforge, passez cette étape
    +Cliquez ici pour compléter cette étape après avoir décidé quel chemin vous allez prendre
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs US
    .link https://eu.battle.net/support/en/article/32275 >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs EU
    .zoneskip Ironforge
    .zoneskip Stormwind City
step
    #loop
    .goto Wetlands,54.95,44.84,0
    .goto Wetlands,51.84,37.13,0
    .goto Wetlands,37.13,35.68,0
    .goto Wetlands,31.21,37.86,0
    .goto Wetlands,26.48,40.44,0
    .goto Wetlands,20.52,45.70,0
    .goto Wetlands,17.83,50.26,0
    .goto Wetlands,14.53,47.67,0
    .goto Wetlands,20.37,45.21,0
    .goto Wetlands,54.95,44.84,50,0
    .goto Wetlands,51.84,37.13,50,0
    .goto Wetlands,37.13,35.68,50,0
    .goto Wetlands,31.21,37.86,50,0
    .goto Wetlands,26.48,40.44,50,0
    .goto Wetlands,20.52,45.70,50,0
    .goto Wetlands,17.83,50.26,50,0
    .goto Wetlands,14.53,47.67,50,0
    .goto Wetlands,20.37,45.21,50,0
    >>Tuez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux de jeune crocilisque|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << Dwarf Paladin
    .goto Wetlands,11.458,52.163
    .isQuestAvailable 1785 -- Dwarf Paladin Redemption quest
    .isOnQuest 277,464,294,279,484
    .subzone 150 >> Retournez au Port de Menethil. Tuez des mobs sur la route. N'utilisez PAS votre pierre de foyer comme vous en aurez besoin bientôt
step << Dwarf Paladin
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Rendez la quête À la recherche de l'équipe de fouilles
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Stoutfist|r
    .turnin 464 >> Rendez la quête Bannières de guerre
    .target Captain Stoutfist
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Rendez la quête Livraison quotidienne
    .turnin 484 >> Rendez la quête Les peaux de jeune crocilisque
    .target James Halloran
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Rendez la quête Griffes des profondeurs
    .target Karl Boran
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sidonie|r
    .turnin 470 >> Rendez la quête En creusant dans la vase
    .target Sida
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 943
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 943
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .turnin 943 >>Rendez la quête Les absences du Prospecteur
    .target Archaeologist Flagongut
    .subzoneskip 150,1
step << !NightElf !Draenei
    #optional << Dwarf Paladin
    .isOnQuest 277,464,294,279,484
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
step << NightElf/Draenei
    .goto Loch Modan,25.11,8.99
    .hs >> |cRXP_WARN_Utilisez votre Pierre de foyer pour vous téléporter à Menethil ou courez-y si vous souhaitez vous rendre à Forgefer en utilisant le service de dépannage du site|r
    >>Voyagez à travers le tunnel Dun Algaz vers le Loch Modan si vous voulez aller à Ironforge à la marche
    .zoneskip Loch Modan --Completes if you run to Loch
    .subzoneskip 150 --Completes if u hearth to Menethil
step << skip --logout skip NightElf/Draenei
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Dirigez-vous vers la grotte à la base du barrage dans l'est des Paluns
	.zone Loch Modan >> Déconnectez-vous en haut des champignons au fond de la grotte.
    >>Quand vous vous reconnecterez, ceci vous téléportera à Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUEZ ICI pour un exemple vidéo
step << NightElf/Draenei
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
    .subzoneskip 150 --Completes if u hearth to Menethil
step << NightElf/Draenei
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>Commencez à retirer votre équipement en courant vers Dun Morogh
    .deathskip >> Attirez l'attention du |cRXP_ENEMY_Scarred Crag Boars|r pour mourir et réapparaître au |cRXP_FRIENDLY_Esprit Gardien des âmes|r une fois que vous êtes à Dun Morogh
    .mob Scarred Crag Boar
    .subzoneskip 150 --Completes if u hearth to Menethil
step << skip --logout skip NightElf/Draenei
	>>Entrez dans la grotte des Trogg au sud-est. Déconnectez-vous (logout skip)
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >> CLIQUEZ ICI pour un exemple vidéo
	.zone Ironforge >> Utilisez la technique de "Logout skip" ou voyagez vers Ironforge
step << NightElf/Draenei
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Loslor Rudge|r n'en a plus en stock|r
	.target Loslor Rudge
    .bronzetube
    .subzoneskip 150 --Completes if u hearth to Menethil
step << NightElf/Draenei
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >> Voyagez à Ironforge
    .subzoneskip 150 --Completes if u hearth to Menethil
step
    #optional
    .isQuestComplete 943
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
    .zoneskip Wetlands,1
step
    #optional
    .isQuestComplete 943
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .turnin 943 >>Rendez la quête Les absences du Prospecteur
    .target Archaeologist Flagongut
    .zoneskip Wetlands,1
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sidonie|r
    .turnin 470 >> Rendez la quête En creusant dans la vase
    .target Sida
    .zoneskip Wetlands,1
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Rendez la quête À la recherche de l'équipe de fouilles
    .zoneskip Wetlands,1
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Stoutfist|r
    .turnin 464 >> Rendez la quête Bannières de guerre
    .target Captain Stoutfist
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Rendez la quête Livraison quotidienne
    .turnin 484 >> Rendez la quête Les peaux de jeune crocilisque
    .target James Halloran
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Rendez la quête Griffes des profondeurs
    .target Karl Boran
    .zoneskip Wetlands,1
step << Draenei
.dungeon DM
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    >>Si vous n'avez pas fait les Mortemines et n'avez pas le vol pour Ironforge, passez cette étape
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
step << NightElf/Draenei
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Sautez dans l'eau au bout des quais et nagez jusqu'au point de repère.
    .zoneskip Elwynn Forest
    .zoneskip Dun Morogh
    .zoneskip Loch Modan
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utilisez le service d'assistance aux personnages coincés pour allez à Forgefer. Vous devez vous déconnectez à l'endroit prévu, puis naviguez le menu d'assistance sur un autre personnage (Sinon, vous pouvez c/c le lien du déblocage ci-dessous dans votre navigateur), puis faites défiler jusqu'au service d'assistance. Cliquez sur votre personnage et bougez. Si vous n'arrivez pas à vous débloquer, passez cette étape et nagez le long des montagnes jusqu'aux Marches de l'Ouest
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs US
    .link https://eu.battle.net/support/en/article/32275 >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs EU
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Loch Modan
    .zoneskip Elwynn Forest
    .zoneskip Dun Morogh
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milstaff Stormeye|r
    .trainer >> Apprenez [Téléportation : Ironforge]
    .target Milstaff Stormeye
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
step
    #optional
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 968 >> Rendez la quête Les puissances d'en-bas
    .target Gerrig Bonegrip
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 971 >> Rendez la quête La connaissance des profondeurs
    .target Gerrig Bonegrip
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Javad|r
    .trainer >> Apprenez vos sorts de classe
    .target Farseer Javad
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Acceptez la quête Le Tome de divinité
    .trainer >> Apprenez vos sorts de classe
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Rendez la quête Le Tome de divinité
    .accept 1645 >>Acceptez la quête Le Tome de divinité
    .turnin 1645 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1646 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >>Rendez la quête Le Tome de divinité
    .accept 1647 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r patrouille le cercle extérieur d'Ironforge près de l'Hôtel des Ventes
    .turnin 1647 >>Rendez la quête Le Tome de divinité
    .accept 1648 >>Acceptez la quête Le Tome de divinité
    .turnin 1648 >>Rendez la quête Le Tome de divinité
    .accept 1778 >>Acceptez la quête Le Tome de divinité
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
    .target Tiza Battleforge
    .turnin 1778 >>Rendez la quête Le Tome de divinité
    .accept 1779 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    .target Muiredon Battleforge
    .turnin 1779 >>Rendez la quête Le Tome de divinité
    .accept 1783 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,18.10,51.60
    .isQuestAvailable 1785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home Ironforge >> Liez votre Pierre de foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Quittez Ironforge
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>Utilisez le [Symbole de vie] sur |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    #label SymbolofLife
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Rendez la quête Le Tome de divinité
    .accept 1784 >>Acceptez la quête Le Tome de divinité
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Tuez les |cRXP_ENEMY_Dark Iron Spies|r. Dépouillez-les pour leur |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith TurnInScript
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .zoneskip Ironforge
    .bindlocation 1537,1
step << Dwarf Paladin
    #completewith TurnInScript
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> Voyagez vers |cRXP_FRIENDLY_Muiredon|r à l'étage
step << Dwarf Paladin
    #label TurnInScript
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Rendez la quête Le Tome de divinité
    .accept 1785 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf Hunter/Draenei Hunter
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Main-de-Pierre|r à l'intérieur
    .train 266 >> Apprenez la compétence pour porter des Fusils
    .target Buliwyf Stonehand
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regnus Thundergranite|r
    .goto Ironforge,69.872,82.890
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .goto Ironforge,70.856,85.839
    .trainer >> Apprenez les compétences de votre familier
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .goto Ironforge,65.905,88.405
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Il s'agit d'un objet en approvisionnement limité. Passez cette étape si le |cRXP_FRIENDLY_Coupebraquet Tournepignon|r n'en a pas en stock|r
	.target Gearcutter Cogspinner
    .bronzetube
step
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
step << skip
    #label exit2
	.goto Ironforge,56.2,46.8
	.goto Ironforge,76.4,51.2,50 >> Montez au-dessus de la tête du griffon puis déconnectez-vous pour faire la technique de logout et aller au tram.
    .zone Stormwind City >>Prenez le Tram des profondeurs pour Stormwind
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 24-27 Carmines/Bois de la Pénombre
#subgroup RestedXP Alliance 20-32
#next 27-30 Paluns/Contreforts d'Hillsbrad;28-30 Bois de la Pénombre

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchant si il est disponible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Billibub Cogspinner|r n'en a plus en stock|r
    .bronzetube
    .target Billibub Cogspinner
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >> Voyagez au Donjon de Hurlevent
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emissary Taluun|r
    .accept 9429 >> Accept Voyagez vers Goldshire
    .target Emissary Taluun
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>Faites bien attention à apprendre la capacité [Crochetage], vous en aurez besoin plus tard
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Voyagez vers |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r à l'intérieur du SI:7 en haut des escaliers
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >> Parlez à |cRXP_FRIENDLY_Duthorian Rall|r à l'intérieur de la Cathédrale
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acceptez la quête Le Tome de divinité
    .turnin 1641 >> Rendez la quête Le Tome de divinité
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1642 >>Acceptez la quête Le Tome de divinité
    .use 6775
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Rendez la quête Le Tome de divinité
    .accept 1643 >>Acceptez la quête Le Tome de divinité
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Rendez la quête Le Tome de divinité
    .accept 1644 >> Acceptez la quête Le Tome de divinité
    .turnin 1644 >> Rendez la quête Le Tome de divinité
    .accept 1780 >> Acceptez la quête Le Tome de divinité
    .target Stephanie Turner
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Rendez la quête Le Tome de divinité
    .target Duthorian Rall
    .accept 1781 >>Acceptez la quête Le Tome de divinité
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Rendez la quête Le Tome de divinité
    .target Gazin Tenorm
    .accept 1786 >>Acceptez la quête Le Tome de divinité
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r. Il vous donnera le [|cRXP_LOOT_Tome of Valor|r]
    .use 6776 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tome of Valor|r] pour commencer la quête|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Rendez la quête Le Tome de la bravoure
    .accept 1650 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_WARN_Si vous n'avez pas l'intention de monter votre |T133971:0|t[Cuisine] à au moins 50, sautez cette étape|r
    >>|cRXP_BUY_Achetez les|r [Herbes aromatiques de Stormwind]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
    --.skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Entrez dans l'auberge de L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crépi Roncebaie|r
    .vendor >> |cRXP_BUY_Achetez les|r [Grimoires] |cRXP_BUY_pour votre|r [Succubus]|cRXP_BUY_ que vous aurez très bientôt. Si vous avez assez d'or, achetez-en aussi pour votre|r [Marcheur du vide]
    .target Spackle Thornberry
step << Warlock
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Rendez la quête Le cœur du bois
    .turnin 65602 >> Rendez la quête Qu’est-ce que l’amour ?
    .accept 1739 >> Acceptez la quête Le lien
    .accept 65603 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
    .isOnQuest 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Rendez la quête Le cœur du bois
    .accept 1739 >> Acceptez la quête Le lien
    .accept 65603 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
    .isQuestTurnedIn 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Rendez la quête Le cœur du bois
    .accept 1739 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 8674 >> Utilisez le [Noyau du coeur du bois] pour appeler une |cRXP_ENEMY_Summoned Succubus|r
    .use 6913
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6913 >> Tuez la |cRXP_ENEMY_Summoned Succubus|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .use 190186 >> Utilisez la [Figurine en bois] pour invoquer une |cRXP_ENEMY_Summoned Incubus|r
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
    .isQuestTurnedIn 65602
step << Warlock
    #completewith TheBinding
    +Vous pouvez maintenant utiliser soit la [Succubus] ou le [Voidwalker] comme familier
    >>La [Succube] inflige des dégâts plus importants alors que le [Marcheur du vide] offre plus de survivabilité
step << Warlock
    .isOnQuest 1739
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >> Rendez la quête Le lien
step << Warlock
    #label TheBinding
    .isOnQuest 65603
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 65603 >> Rendez la quête Le lien
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Allez à la Tour des Mages
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
    .target Larimaine Purdue
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement au Bois de la Pénombre très bientôt
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>Note: Vous devriez aussi monter votre [Cuisine] à 50 pour une quête facile au Bois de la Pénombre offrant 2000xp. Achetez autant de [M|cRXP_WARN_or|rceau de viande de sanglier] ou de |cRXP_LOOT_[Stringy Wolf Meat]|r que vous avez besoin pour monter votre compétence à 50. Vous pouvez les cuisiner une fois que vous arriverez à l'auberge du Bois de la Pénombre
    >>|T133024:0|t[Tube en bronze]
    >>|T133970:0|t[Steak de loup]
    >>|T134321:0|t[Patte d'araignée fondante]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement au Bois de la Pénombre très bientôt
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T133024:0|t[Tube en bronze]
    >>|T133970:0|t[Steak de loup]
    >>|T134321:0|t[Patte d'araignée fondante]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >> Déposez les objets suivants dans votre banque: << Shaman
    >>|T132824:0|t[Gourde en peau remplie] << Shaman -- 23750
    .target Newton Burnside
step << !Human !Warlock
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step
    #completewith RRQuests
    .goto 1429/0,395.900,-9114.200,80 >> Quittez Stormwind
step
    #completewith RRQuests
    .goto Elwynn Forest,65.20,69.80,50 >> Voyagez à la tour d'Azora. Montez la tour
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r tout en haut
    .accept 94 >> Acceptez la quête L'œil attentif
    .xp <20,1
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << Warrior/Rogue
    .target Aurore Brillétoile
    .subzoneskip 91,1
step
    #completewith RRQuests
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .zoneskip Elwynn Forest,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .turnin 244 >> Rendez la quête Des gnolls encombrants
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acceptez la quête La menace des Rochenoires
    .target Marshal Marris
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailli Conacher|r
    .accept 91 >> Acceptez la quête La loi de Salomon
    .target Bailiff Conacher
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .accept 127 >> Acceptez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde Berton|r
    .accept 386 >> Acceptez la quête Ce qui se passait ailleurs...
    .target Guard Berton
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .accept 2282 >> Acceptez la quête La scierie d'Alther
    .target Lucius
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Tuez les |cRXP_ENEMY_Murloc Scouts|r et les |cRXP_ENEMY_Murloc Tidecallers|r. Dépouillez-les pour leur |cRXP_LOOT_Fins|r et leur |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step
    >>Tuez les |cRXP_ENEMY_Blackrock Grunts|r et les |cRXP_ENEMY_Blackrock Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Faites attention les |cRXP_ENEMY_Blackrock Outrunners|r vont lancer|r [Filet] sur vous
    >>|cRXP_WARN_Alternez entre tuer les |cRXP_ENEMY_Orcs|r et les |cRXP_ENEMY_Murlocs|r marqués sur la carte au sud-ouest|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    .goto Redridge Mountains,56.4,51.8
    >>Tuez les |cRXP_ENEMY_Murloc Scouts|r et les |cRXP_ENEMY_Murloc Tidecallers|r. Dépouillez-les pour leur |cRXP_LOOT_Fins|r et leur |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step << Rogue
    #completewith Token
    .goto Redridge Mountains,51.846,45.116,100 >> Dirigez-vous vers la scierie d'Alther
step << Rogue
    .goto Redridge Mountains,51.846,45.116
    >>Vous DEVEZ le faire pour votre quête de [Poisons] plus tard
    >>|cRXP_WARN_Restez sur la location du point de repère. Positionnez votre caméra et votre curseur jusqu'à ce que vous puissiez cliquer sur 3 |cRXP_PICK_Practice Lockboxes|r en même temps et sans avoir à bouger|r
    >>|cRXP_WARN_Ouvrez les |cRXP_PICK_Practice Lockboxes|r sur le sol dans la scierie d'Alther jusqu'à ce que votre score de|r [Crochetage] soit de 80|r
    .skill lockpicking,80,1
step << Rogue
    #label Token
	.goto Redridge Mountains,52.05,44.69
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery (1)
    .skill lockpicking,<80,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Rendez la quête La menace des Rochenoires
step
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
    .turnin 127 >> Rendez la quête Criée aux poissons
    .turnin 150 >> Rendez la quête Les braconniers murlocs
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Rendez la quête La scierie d'Alther
    .target Lucius
    .isQuestComplete 2282
step
    .goto Redridge Mountains,26.75,46.43
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 180 >> Acceptez la quête On recherche : lieutenant Tripecroc
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .accept 34 >> Acceptez la quête Un invité indésirable
step
    .goto Redridge Mountains,15.68,49.30
    >>Tuez |cRXP_ENEMY_Bellygrub|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Rendez la quête Un invité indésirable
    .target Martie Jainrose
step
    #completewith next
    .subzone 42 >> Voyagez vers Sombre-Comté au Bois de la Pénombre
step
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >> Acceptez la quête La légende de Stalvan
    .accept 101 >> Acceptez la quête Le Totem d'affliction
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Liez votre Pierre de foyer au Bois de la Pénombre
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef Grual|r
	>>Vous aurez besoin d'une compétence en [Cuisine] de 50 pour accepter cette quête
    .accept 90 >> Acceptez la quête Kébab de loup assaisonné
    .turnin 90 >> Rendez la quête Kébab de loup assaisonné
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .accept 56 >> Acceptez la quête Les Veilleurs
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 66 >> Rendez la quête La légende de Stalvan
    .accept 67 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Delan|r
    .turnin 9429 >> Turn in Voyagez vers Goldshire
    .target Anchorite Delan
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Acceptez la quête Worgens dans les bois
    .target Calor
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Acceptez la quête Colline-aux-Corbeaux
    .accept 164 >> Acceptez la quête Livraison à Sven
    .accept 165 >> Acceptez la quête L'ermite
    .target Elaine Carevin
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Prenez le chemin de vol du Bois de la Pénombre
    .target Felicia Maline
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Acceptez la quête Un œil dans les étoiles
    .turnin 174 >> Rendez la quête Un œil dans les étoiles
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marie l'aveugle|r
    .turnin 175 >> Rendez la quête Un œil dans les étoiles
    .accept 177 >> Acceptez la quête Un œil dans les étoiles
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_Si vous récupérez le [|cRXP_LOOT_An Old History Book|r] commencez la quête. Il peut tomber n'importe où dans les Bois de la Pénombre|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .use 2794 --An Old History Book
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Warriors|r et les |cRXP_ENEMY_Skeletal Mages|r
    >>Les |cRXP_ENEMY_Skeletal Warriors|r appliquent [Brise-genou]
    >>Les |cRXP_ENEMY_Skeletal Mages|r lancent [Éclair de givre] et peuvent aussi vous ralentir avec [Armure de givre]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tuez la |cRXP_ENEMY_Insane Ghoul|r. Dépouillez-la pour le |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_La |cRXP_ENEMY_Insane Ghoul|r peut être à l'intérieur de la chapelle ou marcher dans les alentours à l'extérieur|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    #loop
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
	#label HistoryBook1
    >>Tuez les |cRXP_ENEMY_Skeletal Warriors|r et les |cRXP_ENEMY_Skeletal Mages|r
    >>Les |cRXP_ENEMY_Skeletal Warriors|r appliquent [Brise-genou]
    >>Les |cRXP_ENEMY_Skeletal Mages|r lancent [Éclair de givre] et peuvent aussi vous ralentir avec [Armure de givre]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    #completewith Level25
    >>Tuez les |cRXP_ENEMY_Spiders|r dans le Bois de la Pénombre. Dépouillez-les pour leur |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >> Voyagez vers |cRXP_FRIENDLY_Jitters|r à l'est du Bois de la Pénombre
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_La Tremblote|r
    .turnin 163 >> Rendez la quête Colline-aux-Corbeaux
    .accept 5 >> Acceptez la quête L'estomac qui gargouille
    .target Jitters
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Rendez la quête Livraison à Sven
    .accept 95 >> Acceptez la quête La vengeance de Sven
    .target Sven Yorgen
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lars|r
    .accept 226 >> Acceptez la quête Des loups aux trousses
    .target Lars
step
    #completewith SFD
    >>Tuez les |cRXP_ENEMY_Starving Dire Wolves|r et les |cRXP_ENEMY_Rabid Dire Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith SFD
    >>Tuez les |cRXP_ENEMY_Starving Dire Wolves|r et les |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label SFD
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Rendez la quête L'ermite
    .accept 148 >> Acceptez la quête Les denrées de Sombre-Comté
    .target Abercrombie
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Tuez les |cRXP_ENEMY_Starving Dire Wolves|r et les |cRXP_ENEMY_Rabid Dire Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Tuez les |cRXP_ENEMY_Starving Dire Wolves|r et les |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .isQuestComplete 226
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lars|r
    .turnin 226 >> Rendez la quête Des loups aux trousses
    .target Lars
step
    #label Level25
    .xp 25
step
	.goto Duskwood,32.4,36.6,0
	.goto Duskwood,29.6,50.4,0
    .goto Duskwood,33.6,60.4,0
    .goto Duskwood,12.2,69.8,0
    .goto Duskwood,10.6,37.0,0
    .goto Duskwood,33.6,60.4,70,0
    .goto Duskwood,12.2,69.8,70,0
    .goto Duskwood,10.6,37.0,70,0
    .goto Duskwood,12.8,55.6,70,0
	.goto Duskwood,32.4,36.6,70,0
	.goto Duskwood,29.6,50.4,70,0
    >>Tuez les |cRXP_ENEMY_Spiders|r dans le Bois de la Pénombre. Dépouillez-les pour leur |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    >>Cliquez sur le |cRXP_PICK_A Weathered Grave|r
    .goto Duskwood,17.72,29.07
    .accept 225 >> Acceptez la quête La tombe effritée
step
    #completewith MoonbrookSt
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
step << Rogue
    #optional
    #completewith TowerKey
    +==PRÊTEZ ATTENTION À LA SECTION À VENIR==
    >>Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
    >>De plus, il est recommandé d'activer les barres d'info des ennemis (Touche par défaut: V) comme cela vous permet de voir les ennemis derrière certains des coins à l'intérieur de la tour
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ faire cette quête pour vos [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|tUtilisez [Vol à la tire] sur le |cRXP_ENEMY_Malformed Defias Drone|r. Volez-lui la |cRXP_LOOT_Defias Tower Key|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Le |cRXP_ENEMY_Malformed Defias Drone|r apparaissent à l'entrée de la tour, puis font le tour de celle-ci|r
    >>Faites attention, il tape TRÈS fort. Si vous perdez votre [Camouflage], utilisez rapidement votre [Sprint] et enfuyez-vous
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +Équipez la [Dague de Curvewood] pour cette quête si vous n'avez pas déjà de [Dague] équipée
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Allez jusqu'à l'avant dernier étage de la tour. Lorsque vous êtes en [Camouflage] |cRXP_WARN_et que les |cRXP_ENEMY_Defias Tower Sentries|r ne sont pas proches de vous, sautez sur la chaise, puis sur la lampe, et ensuite sur la bibliothèque au-dessus du point de repère|r
    >>Enlevez votre [Camouflage] manuellement|cRXP_WARN_, puis appuyez sur votre touche "Interagir avec la cible" pour ouvrir le |cRXP_PICK_Duskwood Chest|r. Récupérez le|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>NOTE: Votre [Camouflage] ne marchera pas plus temporairement après avoir récupéré le |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_Soyez prêt à courir si vous ne voulez pas tuer les |cRXP_ENEMY_Defias Tower Sentries|r au deuxième étage. Ils vont sûrement vous aggro de manière permanente (mais sans vous attaquer) lorsque vous êtes en haut de la bibliothèque comme il s'agit d'un evade spot|r
    >>Si vous avez une [Dague] dans vos sacs ou déjà équipée, vous pouvez lancez [Embuscade] |cRXP_WARN_sur le |cRXP_ENEMY_Defias Tower Patrollers|r et sur les |cRXP_ENEMY_Defias Tower Sentries|r à l'intérieur pour les tuer instantanément. Soyez prêt à vous enfuir après avoir tué le premier|cRXP_ENEMY_Defias Tower Sentry|r  et n'oubliez pas que vous pouvez être touché d'en dessous. Cette technique est plus lente, mais BEAUCOUP plus sure|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Malformed Defias Drone|r et les |cRXP_ENEMY_Defias Drones|r peuvent se trouver à l'entrée de la tour si vous devez vous enfuir de celle-ci|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step
    #completewith MoonbrookSt
    .subzone 20 >> Voyagez à Ruisselune
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Cliquez sur le |cRXP_PICK_Old Footlocker|r sur le sol
    .turnin 67 >> Rendez la quête La légende de Stalvan
    .accept 68 >> Acceptez la quête La légende de Stalvan
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daphne Morpuits|r
    .turnin 1650 >>Rendez la quête Le Tome de la bravoure
    .target Daphne Stilwell
    .accept 1651 >>Acceptez la quête Le Tome de la bravoure
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daphne Morpuits|r
    .turnin 1651 >>Rendez la quête Le Tome de la bravoure
    .target Daphne Stilwell
    .accept 1652 >>Acceptez la quête Le Tome de la bravoure
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Nagez jusqu'à sortir de la mer
step << Druid
    .goto Westfall,17.928,33.099
    >>Ouvrez la |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>Utilisez le [Demi-pendentif d'agilité aquatique] pour le combiner avec le [Demi-pendentif d'endurance aquatique] au sanctuaire de Remulos
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
    >>Ceci vous fera gagner le temps du retour
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >> Rendez la quête L'épreuve du lion de mer
    .accept 5061 >> Acceptez la quête Forme aquatique
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Volez à Teldrassil
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5061 >> Rendez la quête Forme aquatique
step
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Duskwood >> Volez à Sombre-Comté
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .zoneskip Stormwind City
	.cooldown item,6948,<0
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
	.cooldown item,6948,>0,1
    .zoneskip Stormwind City
    .bindlocation 1519,1
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Voyagez vers |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .skill firstaid,80 >> Montez vos [Premier soins] à un niveau de compétence de 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .train 7934 >> Apprenez [Anti-Venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>Rappelez-vous de re-équiper votre arme principale si vous avez équipé une [Dague] plus tôt << Rogue
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .target Master Mathias Shaw
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood>> Volez au Bois de la Pénombre
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Trelayne|r
    >>Si vous avez complété votre quête de Poisons vous pouvez mettre votre pierre de foyer à Sombre-Comté
    >>Si votre pierre de foyer était déjà liée à Sombre-Comté, passez cette étape
    .home >> Liez votre Pierre de foyer à Darkshire
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .accept 2607 >> Acceptez la quête Toucher de Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Dirigez-vous vers le sous-sol
    .turnin 2607 >> Rendez la quête Toucher de Zanzil
    .accept 2608 >> Acceptez la quête Toucher de Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Écrivez /lay (/allonger) dans le chat et attendez que la quête se complète toute seule
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >> Rendez la quête Toucher de Zanzil
    .accept 2609 >> Acceptez la quête Toucher de Zanzil
step << Rogue skip
    .goto Stormwind City,78.2,59.0
    >>Achetez une Fiole plombée au Marchand douteux
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue skip
    >>Dirigez-vous vers le vendeur de fleurs
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue skip
    >>Achetez un Tube en bronze à l'Hôtel des Ventes
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Dirigez-vous dans le magasin près du pont entre la Place de la Cathédrale et le Parc
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>Si vous n'arrivez pas à trouver un tube en bronze, vous allez devoir passer cette quête, montez votre compétence de Premiers soins à 80, tuez des araignées au Bois de la Pénombre pour une Petite glande à venin, et fabriquez un Anti-venin pour retirer le poison de Zanzil
step << Rogue skip
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >> Rendez la quête Toucher de Zanzil
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef Grual|r
	>>Vous avez besoin d'une compétence en [Cuisine] de 50 pour accepter cette quête
    .accept 90 >> Acceptez la quête Kébab de loup assaisonné
    .turnin 90 >> Rendez la quête Kébab de loup assaisonné
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >> Rendez la quête L'estomac qui gargouille
    .accept 93 >> Acceptez la quête Les tourtes au crabe de la Pénombre
    .turnin 93 >> Rendez la quête Gâteaux au crabe brun
    .accept 240 >> Acceptez la quête Retour vers la Tremblotte
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 56 >> Rendez la quête Les Veilleurs
    .target Commander Althea Ebonlocke
    .accept 57 >> Acceptez la quête Les Veilleurs
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 68 >> Rendez la quête La légende de Stalvan
    .accept 69 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Rendez la quête La tombe effritée
    .accept 227 >> Acceptez la quête Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 227 >> Rendez la quête Morgan Ladimore
    .accept 228 >> Acceptez la quête Mor'Ladim
    .target Commander Althea Ebonlocke
step
    #sticky
    .destroy 2154 >> Détruisez [L'histoire de Morgan Ladimore]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Acceptez la quête Les denrées de Sombre-Comté
    .target Madame Eva
    .accept 149 >> Acceptez la quête Mèche de cheveux fantômes
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Herble Baubbletump|r n'en a plus en stock|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Acceptez la quête Un œil dans les étoiles
    .turnin 174 >> Rendez la quête Un œil dans les étoiles
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marie l'aveugle|r
    .turnin 175 >> Rendez la quête Un œil dans les étoiles
    .accept 177 >> Acceptez la quête Un œil dans les étoiles
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marie l'aveugle|r
    .turnin 149 >> Rendez la quête Mèche de cheveux fantômes
    .accept 154 >> Acceptez la quête Le retour du peigne
    .target Blind Mary
step
	#completewith next
    >>|cRXP_WARN_Si vous récupérez le [|cRXP_LOOT_An Old History Book|r] commencez la quête. Il peut tomber n'importe où dans les Bois de la Pénombre|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tuez la |cRXP_ENEMY_Insane Ghoul|r. Dépouillez-la pour le |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_La |cRXP_ENEMY_Insane Ghoul|r peut être à l'intérieur de la chapelle ou marcher dans les alentours à l'extérieur|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Rendez la quête Un œil dans les étoiles
    .accept 181 >> Acceptez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Acceptez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Rendez la quête Le retour du peigne
    .accept 157 >> Acceptez la quête Apporter la mèche
    .target Madame Eva
step
    .goto Duskwood,49.85,77.71
    >>Cliquez sur le |cRXP_PICK_Mound of loose dirt|r sur le sol
    .turnin 95 >> Rendez la quête La vengeance de Sven
    .accept 230 >> Acceptez la quête Le camp de Sven
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Rendez la quête Apporter la mèche
    .target Abercrombie
    .accept 158 >> Acceptez la quête Le suc de zombie
step << Hunter/Warrior/Paladin
    .goto Duskwood,19.59,37.28
    >>Tuez |cRXP_ENEMY_Mor'Ladim|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Mor'Ladim|r est un Elite de niveau 30 qui frappe très fort mais bouge très lentement. Essayez de le kite autour des grands arbres si nécessaire
    >>Cette quête est TRÈS difficile. Trouvez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à le tuer seul, vous aurez une autre chance de le tuer plus tard
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Rendez la quête Le camp de Sven
    .target Sven Yorgen
    .accept 262 >> Acceptez la quête L'obscure silhouette
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Volez à Sombre-Comté
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >> Voyagez à Darkshire
step << Warrior/Paladin
    #optional
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Rendez la quête L'obscure silhouette
    .target Madame Eva
    .accept 265 >> Acceptez la quête L'obscure recherche se poursuit
    .subzoneskip 42,1
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 228 >> Rendez la quête Mor'Ladim
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 265 >> Rendez la quête L'obscure recherche se poursuit
    .accept 266 >> Acceptez la quête Une enquête à l'auberge
    .turnin 68 >> Rendez la quête La légende de Stalvan
    .accept 69 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
    .subzoneskip 42,1
step << Warrior/Paladin
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Rendez la quête Le suc de zombie
    .accept 156 >> Acceptez la quête Cueillette de racines pourries
    .turnin 266 >> Rendez la quête Une enquête à l'auberge
    .accept 453 >> Acceptez la quête À la recherche de l'Obscure Silhouette
    .target Tavernkeep Smitts
    .subzoneskip 42,1
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Gardienne Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r patrouille autour de Sombre-Comté
    .turnin 229 >> Rendez la quête La fille qui survécut
    .accept 231 >> Acceptez la quête L'amour d'une fille
    .target Watcher Ladimore
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Felicia Maline
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Cliquez sur la |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Rendez la quête L'amour d'une fille
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Volez vers Les Carmines
    .target Thor
    .zoneskip Redridge Mountains
    .maxlevel 27
step
#xprate <1.5
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde Howe|r
    .accept 128 >> Acceptez la quête La prime Blackrock
    .maxlevel 27
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .accept 19 >> Acceptez la quête Tharil'zun
    .accept 115 >> Acceptez la quête Magie des Ténèbres
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 169 >> Acceptez la quête On recherche : Gath'Ilzogg
    .maxlevel 27
step
    #completewith LookingFurther
    >>Tuez les |cRXP_ENEMY_Shadowhides|r. Dépouillez-les pour leur |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #label fangore
    .goto Redridge Mountains,80.17,37.05
    >>Tuez |cRXP_ENEMY_Lieutenant Fangore|r. Dépouillez-le pour sa |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r arrive avec 2 |cRXP_ENEMY_Gnolls|r supplémentaires
    >>|cRXP_ENEMY_Lieutenant Fangore|r est insensible aux dégâts d'Ombre. Assurez-vous que des membres du groupe peuvent vous aider, sinon passez cette étape << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    .goto Redridge Mountains,84.50,46.80
    >>Cliquez sur la |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >> Rendez la quête L'œil attentif
    .accept 248 >> Acceptez la quête En regardant plus loin
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>Cliquez sur la |cRXP_PICK_Old Lion Statue|r
    .accept 248 >> Acceptez la quête En regardant plus loin
    .isQuestTurnedIn 94
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>Tuez les |cRXP_ENEMY_Shadowhides|r. Dépouillez-les pour leur |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #completewith Gath
    >>Tuez les |cRXP_ENEMY_Blackrock Shadowcasters|r. Dépouillez-les pour leur |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,71.40,55.07
    >>Tuez |cRXP_ENEMY_Tharil'zun|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Tharil'zun|r est un Elite de niveau 25
    >>Cette quête est TRÈS difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    #label Gath
    .group 2
    .goto Redridge Mountains,69.599,55.797
    >>Entrez dans le donjon de Guet-de-Pierre
    >>Tuez |cRXP_ENEMY_Gath'Ilzogg|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    .goto Redridge Mountains,66.68,56.26
    >>Tuez les |cRXP_ENEMY_Blackrock Shadowcasters|r. Dépouillez-les pour leur |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>Cliquez sur |cRXP_PICK_An Empty Jar|r sur le tonneau au sommet du Donjon de Guet-de-pierre
    >>N'acceptez pas la suite de quête
    .turnin 248 >> Rendez la quête En regardant plus loin
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>Tuez les |cRXP_ENEMY_Blackrock Champions|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    .goto Redridge Mountains,28.388,12.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Corporal Keeshan|r au fond du Rocher de Render
    >>Passez cette étape si il n'est pas présent
    .accept 219 >> Acceptez la quête Porté disparu
    .target Corporal Keeshan
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.414,48.499
    >>Escortez le |cRXP_FRIENDLY_Corporal Keeshan|r à Comté-du-Lac
    >>Faites attention à de pas engager trop de mobs juste après avoir quitté la grotte
    .complete 219,1
	.isOnQuest 219
    .target Corporal Keeshan
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .turnin 219 >> Rendez la quête Porté disparu
	.isQuestComplete 219
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .turnin 19 >> Rendez la quête Tharil'zun
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .turnin 115 >> Rendez la quête Magie des Ténèbres
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 180 >> Abandonnez la quête On recherche : lieutenant Tripecroc
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailli Conacher|r
    .turnin 91 >> Rendez la quête La loi de Solomon
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 169 >> Rendez la quête On recherche : Gath'Ilzogg
    .target Magistrate Solomon
    .isQuestComplete 169
step
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde Howe|r
    .turnin 128 >> Rendez la quête La prime Blackrock
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Duskwood >> Volez à Sombre-Comté
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >> Voyagez à Darkshire
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Rendez la quête L'obscure silhouette
    .target Madame Eva
    .accept 265 >> Acceptez la quête L'obscure recherche se poursuit
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 228 >> Rendez la quête Mor'Ladim
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 265 >> Rendez la quête L'obscure recherche se poursuit
    .accept 266 >> Acceptez la quête Une enquête à l'auberge
    .turnin 68 >> Rendez la quête La légende de Stalvan
    .accept 69 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Conseiller Millstipe|r
    .accept 377 >> Acceptez la quête Crime et Châtiments
    .target Councilman Millstipe
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Rendez la quête Le suc de zombie
    .accept 156 >> Acceptez la quête Cueillette de racines pourries
    .turnin 266 >> Rendez la quête Une enquête à l'auberge
    .accept 453 >> Acceptez la quête À la recherche de l'Obscure Silhouette
    .target Tavernkeep Smitts
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Gardienne Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r patrouille autour de Sombre-Comté
    .turnin 229 >> Rendez la quête La fille qui survécut
    .accept 231 >> Acceptez la quête L'amour d'une fille
    .target Watcher Ladimore
step
    #loop
    .goto Duskwood,66.0,44.6,0
    .goto Duskwood,64.2,38.8,0
    .goto Duskwood,60.8,37.4,0
    .goto Duskwood,61.2,46.0,0
    .goto Duskwood,67.6,46.6,0
    .goto Duskwood,63.6,41.2,0
    .goto Duskwood,66.0,44.6,60,0
    .goto Duskwood,64.2,38.8,60,0
    .goto Duskwood,60.8,37.4,60,0
    .goto Duskwood,61.2,46.0,60,0
    .goto Duskwood,67.6,46.6,60,0
    .goto Duskwood,63.6,41.2,60,0
	>>Tuez les |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Rendez la quête Worgens dans les bois
    .accept 221 >> Acceptez la quête Worgens dans les bois
    .target Calor
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Felicia Maline
step
	#completewith HistoryB3
    >>|cRXP_WARN_Si vous récupérez le [|cRXP_LOOT_An Old History Book|r] commencez la quête. Il peut tomber n'importe où dans les Bois de la Pénombre|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_La Tremblote|r
    .turnin 453 >> Rendez la quête À la recherche de l'Obscure Silhouette
    .accept 268 >> Acceptez la quête Retourner voir Sven
    .turnin 240 >> Rendez la quête Retour vers la Tremblotte
    .target Jitters
step
    #loop
    .goto Duskwood,22.95,44.75,0
    .goto Duskwood,20.39,47.02,0
    .goto Duskwood,15.65,42.81,0
    .goto Duskwood,22.11,46.93,0
    .goto Duskwood,21.21,47.07,0
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07,70,0
    >>Tuez les |cRXP_ENEMY_Skeletal Fiends|r et les |cRXP_ENEMY_Skeletal Horrors|r. Dépouillez-les pour leur |cRXP_LOOT_Rot Blossoms|r et leur |cRXP_LOOT_Doigt|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    .mob +Skeletal Fiend
    .complete 57,2 -- Skeletal Horror slain (15)
    .mob +Skeletal Horror
    .complete 156,1 -- Rot Blossom (8)
    .mob +Skeletal Fiend
    .mob +Skeletal Horror
    .complete 101,3 --10/10 Skeleton Finger
    .mob +Skeletal Fiend
    .mob +Skeletal Horror
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Rendez la quête Retourner voir Sven
    .accept 323 >> Acceptez la quête Prouver votre valeur
    .target Sven Yorgen
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Cliquez sur la |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Rendez la quête L'amour d'une fille
step
    .goto Duskwood,16.01,38.79
    >>Tuez les |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r et les |cRXP_ENEMY_Skeletal Warders|r
    >>Entrez dans les catacombes du Bois-de-l'aube pour les |cRXP_ENEMY_Skeletal Warders|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob +Skeletal Warder
step
	.xp 27 >> Montez au niveau 27. Si vous avez prévu de faire la Prison, vous pouvez passer cette étape
step
    .goto Duskwood,19.59,37.28
    >>Tuez |cRXP_ENEMY_Mor'Ladim|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Mor'Ladim|r est un Elite de niveau 30 qui frappe très fort mais bouge très lentement. Essayez de le kite autour des grands arbres si nécessaire
    >>Cette quête est TRÈS difficile. Trouvez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à le tuer seul, vous aurez une autre chance de le tuer plus tard
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Rendez la quête Prouver votre valeur
    .accept 269 >> Acceptez la quête À la recherche de la sagesse
    .target Sven Yorgen
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Volez à Sombre-Comté
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 228 >> Rendez la quête Mor'Ladim
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Gardienne Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r patrouille autour de Sombre-Comté
    .turnin 229 >> Rendez la quête La fille qui survécut
    .accept 231 >> Acceptez la quête L'amour d'une fille
    .target Watcher Ladimore
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Felicia Maline
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Cliquez sur la |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Rendez la quête L'amour d'une fille
step
#completewith RunStocks
.dungeon Stockades
    +Vous allez bientôt vous diriger vers Stormwind, cherchez un groupe pour la Prison
step
.dungeon !Stockades
    #completewith TLOS
    .deathskip >>Dirigez-vous vers la Forêt d'Elwynn, engagez plusieurs mobs de bas niveau, mourez volontaire et ressuscitez à Comté-de-l'Or
step
    #completewith next
    .subzone 87 >> Voyagez vers Goldshire
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 69 >> Rendez la quête La légende de Stalvan
    .accept 70 >> Acceptez la quête La légende de Stalvan
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez à l'étage
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.trainer >> Apprenez vos sorts de classe
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Apprenez vos sorts de classe
    .target Keryn Sylvius
step
    .goto Elwynn Forest,44.302,65.823
    >>Ouvrez les |cRXP_PICK_Storage Chest|r. Ramassez la |cRXP_LOOT_An Undelivered Letter|r
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >> Téléportez-vous à Hurlevent
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> Lancez [Téléportation : Stormwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
	.target Jennea Cannon
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Umbrua|r
	.trainer >> Apprenez vos sorts de classe
    .target Farseer Umbrua
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Dirigez-vous vers l'auberge de L'Agneau Assassiné. Descendez les escaliers
step
#xprate <1.5
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zardeth de la Griffe noire|r
    .accept 335 >> Acceptez la quête Un noble brassage
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Conservateur Folsom|r
    .turnin 70 >> Rendez la quête La légende de Stalvan
    .target Caretaker Folsom
    .accept 72 >> Acceptez la quête La légende de Stalvan
step
    .goto Stormwind City,29.44,61.52
    >>Cliquez sur le |cRXP_PICK_Sealed Crate|r sur le sol
    .turnin 72 >> Rendez la quête La légende de Stalvan
    .accept 74 >> Acceptez la quête La légende de Stalvan
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .trainer >> Apprenez vos sorts de classe
    .target Sheldras Moontree
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .target Duthorian Rall
    .turnin 1652 >>Rendez la quête Le Tome de la bravoure
step
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sarno|r
    .accept 2923 >> Acceptez la quête Maître-bricoleur Suprétincelle
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Evêque Farthing|r
    .turnin 269 >> Rendez la quête À la recherche de la sagesse
    .accept 270 >> Acceptez la quête La Flotte perdue
    .target Bishop Farthing
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 389 >> Acceptez la quête Bazil Thredd
    .target Baros Alexston
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Cassius|r
    >>|cRXP_BUY_Achetez 2|r [Rune de Téléportation] |cRXP_BUY_à Brother Cassius|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Brother Cassius
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r patrouille dans la Vieille Ville
    .accept 388 >> Acceptez la quête La couleur du Sang
    .unitscan Nikova Raskol
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Acceptez la quête Écraser la rébellion
    .turnin 389 >> Rendez la quête Bazil Thredd
    .accept 391 >> Acceptez la quête Les Emeutes de la Prison
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 391 >> Acceptez la quête Les Emeutes de la Prison
    .accept 387 >> Acceptez la quête Écraser la rébellion
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Acceptez la quête Écraser la rébellion
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +Montez un groupe pour la Prison
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>Tuez les |cRXP_ENEMY_Defias|r. Dépouillez-les pour leur |cRXP_LOOT_Bandanas|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>Tuez |cRXP_ENEMY_Targorr the Dread|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r a un endroit d'apparition aléatoire
    >>Tuez |cRXP_ENEMY_Dextren Ward|r à dans l'aile à l'ouest de la prison. Dépouillez-le pour sa |cRXP_LOOT_Hand|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>Tuez |cRXP_ENEMY_Bazil Thredd|r dans l'aile à l'est de la prison. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    >>Faites en sorte d'avoir 3 [Etoffe de soie] pour la suite de cette chaîne de quêtes
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    .mob Bazil Thredd
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Rendez la quête Écraser la rébellion
    .turnin 391 >> Rendez la quête Les Emeutes de la Prison
    .accept 392 >> Acceptez la quête Un curieux visiteur
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Rendez la quête Écraser la rébellion
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Rendez la quête Un curieux visiteur
    .accept 393 >> Acceptez la quête Les Ombres du Passé
    .target Baros Alexston
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r patrouille dans la Vieille Ville
    .turnin 388 >> Rendez la quête La couleur du Sang
    .unitscan Nikova Raskol
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Rendez la quête Les Ombres du Passé
    .accept 350 >> Acceptez la quête Le point de vue d'un vieil ami
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r en haut des escaliers
    .turnin 350 >> Rendez la quête Le point de vue d'un vieil ami
    .accept 2745 >> Acceptez la quête En infiltrant le château
    .target Elling Trias
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Voyagez au Donjon de Hurlevent
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Rendez la quête En infiltrant le château
    .accept 2746 >> Acceptez la quête Des objets d'une certaine importance
    .target Tyrion
    .isQuestTurnedIn 391
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_Si vous trouvez un [|cRXP_LOOT_An Old History Book|r] vous pouvez le rendre|r
    .accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .turnin 337 >> Rendez la quête Un vieux livre d'histoire
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Acceptez la quête Southshore
    .target Milton Sheaf
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >> Quittez Stormwind. Voyagez à la maison de campagne de Clara dans la Forêt d'Elwynn
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>Ramassez les |cRXP_LOOT_Clara's Fresh Apples|r sur la table
    >>Si vous avez toujours besoin d' [Etoffe de soie] vous pouvez en acheter à l'Hôtel des Ventes
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
    #ssf
    >>Ramassez les |cRXP_LOOT_Clara's Fresh Apples|r sur la table
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Voyagez au Donjon de Hurlevent
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tyrion|r
    >>Assurez-vous que tout votre groupe a rendu Des objets d'une certaine importance avant d'accepter L'attaque !
    >>La validation automatique des quêtes a été désactivée pour cette étape. Notez que vous pouvez ne pas être capable d'accepter la quête si un autre joueur est en train de le faire
    .turnin 2746 >> Rendez la quête Des objets d'une certaine importance
    .accept 434,1 >> Acceptez la quête L'attaque !
    .timer 124,L'attaque ! RP
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Attendez au centre de la cour que |cRXP_ENEMY_Lord Gregor Lescovar|r et |cRXP_ENEMY_Marzon the Silent Blade|r arrivent. Cela prend environ 2 minutes|r
    >>Tuez |cRXP_ENEMY_Lord Gregor Lescovar|r et |cRXP_ENEMY_Marzon the Silent Blade|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r en haut des escaliers
    .turnin 434 >> Rendez la quête L'attaque !
    .accept 394 >> Acceptez la quête La tête de la bête
    .target Elling Trias
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Rendez la quête La tête de la bête
    .accept 395 >> Acceptez la quête La fin de la Confrérie
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Rendez la quête La fin de la Confrérie
    .accept 396 >> Acceptez la quête Une audience avec le roi
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >> Voyagez au Donjon de Hurlevent
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Rendez la quête Une audience avec le roi
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391


--xx
step << skip
--Rogue
    .goto Ironforge,45.2,6.6
    >>Achetez les améliorations d'armes de niveau 41 (17dps)
    .collect 2520,1
    .collect 2526,1
    >>Passez cette étape si vous pouvez trouver une meilleure arme à l'Hôtel des Ventes
step << skip
--Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Acheter la compétence pour porter des haches à deux mains << !Rogue
	.train 266 >> Apprenez la compétence pour porter des Fusils << Hunter/Warrior/Rogue
    .train 199 >> Achetez la compétence pour porter des masses à deux mains << Warrior/Shaman
    .train 54 >> Acheter la compétence pour porter des masses à une main << Rogue/Shaman
    .train 44 >> Acheter la compétence pour porter des haches à une main << Shaman
--xx


step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers Les Carmines
    .target Dungar Longdrink
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde Berton|r
    .turnin 386 >> Rendez la quête Ce qui se passait ailleurs...
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>Lancez [Téléportation : Stormwind]
    .usespell 3561
    .zoneskip Redridge Mountains,1
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +Commencez à trouver un groupe pour Gnoneregan. Vous allez bientôt faire Gnomeregan
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2928 >> Acceptez la quête Excavateurs gyrodrilmatiques
    .target Shoni the Shilent
step << Mage
#xprate <1.5
    #completewith next
    .zone Ironforge >> Lancez [Téléportation : Ironforge]
step << !Mage
#xprate <1.5
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
step
#xprate <1.5
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-artisan Overspark|r
    .turnin 2923 >> Rendez Maître-artisan Overspark
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gnoarn|r, au |cRXP_FRIENDLY_TMaître-bricoleur Suprétincelle|r, au |cRXP_FRIENDLY_Grand Bricoleur Mekkanivelle|r, au |cRXP_FRIENDLY_Maître mécanicien Fontuyau|r et à |cRXP_FRIENDLY_Pléthorloge Cléventail|r
    .accept 2927 >> Acceptez la quête Le jour d'après
    .target +Gnoarn
    .goto Ironforge,69.182,50.556
    .turnin -2923 >> Rendez Maître-artisan Overspark
    .accept 2922 >> Acceptez la quête Sauver le cerveau de Techbot !
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Rendez la quête La grande trahison
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .accept 2930 >> Acceptez la quête Sauvetage de données
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .accept 2924 >> Acceptez la quête Les cerveaux mécaniques
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .goto Ironforge,18.10,51.60
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Quittez Ironforge
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozzie Virevolt|r
    .turnin 2927 >> Rendez la quête Le jour d'après
    .accept 2926 >> Acceptez la quête Gnogaine
    .target Ozzie Togglevolt
step
.dungeon Gnomer
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Voyagez à Gnomeregan
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    .use 9283 >>Utilisez la [Flasque plombée vide] |cRXP_WARN_sur un |cRXP_ENEMY_Irradiated Invader|r ou unr|r |cRXP_ENEMY_Irradiated Pillager|r
    >>|cRXP_WARN_Les |cRXP_ENEMY_Irradiated Invader|r ou les |cRXP_ENEMY_Irradiated Pillager|r doivent être VIVANTS lorsque vous l'utilisez|r
    >>Cette quête se complète À L’EXTÉRIEUR du donjon
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >> Voyagez vers |cRXP_FRIENDLY_Ozzie Togglevolt|r à Kharanos
    >>Vous aurez une suite lorsque vous irez à l'intérieur du donjon
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozzie Virevolt|r
    .turnin 2926 >> Rendez la quête Gnogaine
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozzie Virevolt|r
    .accept 2962 >> Acceptez la quête Encore plus de Lueur verte !
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Voyagez à Gnomeregan
    .isOnQuest 2962
step
.dungeon Gnomer
    .goto 1415/0,733.8032,-4996.5115,70,0
    .goto 1415/0,828.8429,-4926.1117
    >>Tuez les |cRXP_ENEMY_Troggs|r et les |cRXP_ENEMY_Gnomes|r. Dépouillez-les pour une [|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>Tuez |cRXP_ENEMY_Techbot|r. Dépouillez-le pour son |cRXP_LOOT_Memory Core|r
    >>Cette quête se complète À L’EXTÉRIEUR du donjon
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>Tuez les |cRXP_ENEMY_Troggs|r et les |cRXP_ENEMY_Gnomes|r. Dépouillez-les pour une [|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1 -- White Punch Card (1)
    >>Cette quête se complète À L’EXTÉRIEUR du donjon
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>Utilisez la [|cRXP_LOOT_White Punch Card|r] au |cRXP_PICK_Matrix Punchograph 3005-A|r
    >>Cette quête se complète À L’EXTÉRIEUR du donjon
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,804.2030,-5055.1780,40,0
    .goto 1415/0,941.4826,-5160.7777
    .subzone 721,2 >> Entrez dans le portail pour l'instance Gnomeregan
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Tuez tous les |cRXP_ENEMY_Gnomeregan Mobs|r. Dépouillez-les pour leur |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>Utilisez la [|cRXP_LOOT_Yellow Punch Card|r] au |cRXP_PICK_Matrix Punchograph 3005-B|r
    >>La machine ressemblant à une console est située à la zone sûre gnome à l'étage inférieur, près de la grande salle circulaire où les Gelée se trouvent
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte. |cRXP_FRIENDLY_Kernobee|r apparaît au hasard dans Le Dortoir, juste après la zone sûre gnome|r
    .accept 2904 >> Acceptez la quête Une jolie pagaille
    .unitscan Kernobee
step
.dungeon Gnomer
    >>Escortez |cRXP_FRIENDLY_Kernobee|r jusqu'au début du donjon
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
    .use 9364 >>|cRXP_WARN_Utilisez la|r |T132788:0|t[Flasque plombée lourde] |cRXP_WARN_sur une |cRXP_ENEMY_Gelée irradiée|r ou sur une|r |cRXP_ENEMY_Horreur irradiée|r
    >>|cRXP_WARN_La |cRXP_ENEMY_Gelée irradiée|r ou l' |cRXP_ENEMY_Horreur irradiée|r doit être VIVANTE lorsque vous l'utilisez|r
    >>Note: Vous devez rendre cette quête dans les 2 heures après avoir récupéré la [Matière radioactive à haut potentiel]
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    .mob Irradiated Slime
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Ouvrez les |cRXP_PICK_Artificial Extrapolators|r. Ramassez les |cRXP_LOOT_Essential Artificials|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    >>Utilisez la [|cRXP_LOOT_Blue Punch Card|r] au |cRXP_PICK_Matrix Punchograph 3005-C|r
    >>Les Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
    >>Utilisez la [|cRXP_LOOT_Red Punch Card|r] au |cRXP_PICK_Matrix Punchograph 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    #label Thermaplugg
    >>Tuez |cRXP_ENEMY_Mekgineer Thermaplugg|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
    #completewith Finished
    >>Ouvrez les |cRXP_PICK_Artificial Extrapolators|r. Ramassez les |cRXP_LOOT_Essential Artificials|r
    >>Si vous n'avez pas encore fini cette quête, retournez aux endroits où vous les avez dépouillés avant, comme ils réapparaissent après quelques minutes
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    #completewith Finished
    >>Tuez tous les |cRXP_ENEMY_Gnomeregan Mobs|r. Dépouillez-les pour leur |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>Utilisez le [|cRXP_LOOT_Grime-Encrusted Ring|r] pour commencer la quête
    .accept 2945 >> Acceptez la quête Anneau sali
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>Ramenez le [|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_au |cRXP_PICK_The Sparklematic 5200|r dans La Salle Propre|r
    *Vous allez devoir retourner à la Zone Propre près de l'entrée de l'instance, faites en sorte que vos coéquipiers sont présents pour vous aider sur le chemin du retour
    .turnin 2945 >> Rendez la quête Anneau sali
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>Cliquez sur le |cRXP_PICK_The Sparklematic 5200|r une fois de plus
    .accept 2947 >> Acceptez la quête Le retour de l'anneau
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .bindlocation 1537,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Quittez Ironforge
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozzie Virevolt|r
    .turnin 2962 >> Rendez la quête Encore plus de Lueur verte !
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Binjy Featherwhistle|r et |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veron Amberstill|r et |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >> Voyagez à Ironforge
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >> Rendez la quête Le retour de l'anneau
    .accept 2948 >> Acceptez la quête Amélioration gnomique
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talvash del Kissel|r
    >>Si vous êtes capable d'obtenir une [Barre d'argent] et une [Agate mousse] finissez cette quête. Sinon, abandonnez-la
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >> Rendez la quête Amélioration gnomique
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-bricoleur Suprétincelle|r, au |cRXP_FRIENDLY_Grand Bricoleur Mekkanivelle|r, au |cRXP_FRIENDLY_Maître mécanicien Fontuyau|r et à |cRXP_FRIENDLY_Pléthorloge Cléventail|r
    .turnin -2922,1 >> Rendez Sauver le cerveau de Techbot !
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >> Rendez La grande trahison
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >> Rendez Sauvetage de données
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >> Rendez Les cerveaux mécaniques
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
#xprate <1.5
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Volez aux Paluns
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#xprate <1.5
#name 27-30 Paluns/Contreforts d'Hillsbrad
#subgroup RestedXP Alliance 20-32
#next 30-32 Bois de la Pénombre/Vallée de Strangleronce

step
    .isQuestComplete 279
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Rendez la quête Griffes des profondeurs
    .accept 281 >> Acceptez la quête Récupération de marchandises
    .target Karl Boran
step
    .isQuestTurnedIn 279
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karl Boran|r
    .accept 281 >> Acceptez la quête Récupération de marchandises
    .target Karl Boran
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Rendez la quête Livraison quotidienne
    .isOnQuest 469
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >> Rendez la quête Les peaux de jeune crocilisque
    .isOnQuest 484
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .accept 471 >> Acceptez la quête Les devoirs de l'apprenti
    .isQuestTurnedIn 484
step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Acceptez la quête La IIIe flotte
step
    #optional
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Achetez une|r [Cruche d'hydromiel nain]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .target Innkeeper Helbrek
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .bindlocation 2104
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Rendez la quête La Flotte perdue
    .accept 321 >> Acceptez la quête Le fer de sancteforge
step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Rendez la quête La IIIe flotte
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 289 >> Acceptez la quête L'équipage maudit
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sidonie|r
    .accept 470 >> Acceptez la quête En creusant dans la vase
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Acceptez la quête La chute de Dun Modr
step
    .isQuestTurnedIn 464
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Stoutfist|r à l'étage
    .accept 465 >> Acceptez la quête La manœuvre de Nek'rosh
    .target Captain Stoutfist
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Rendez la quête À la recherche de l'équipe de fouilles
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Cliquez sur le |cRXP_PICK_Damaged Crate|r sur le sol
    .turnin 281 >> Rendez la quête Récupération de marchandises
    .accept 284 >> Acceptez la quête La recherche continue
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Cliquez sur le |cRXP_PICK_Tonneau scellé|r au sol
    .turnin 284 >> Rendez la quête La recherche continue
    .accept 285 >> Acceptez la quête À la recherche d'autres taudis
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Cliquez sur le |cRXP_PICK_Tonneau à moitié enseveli|r au sol
    .turnin 285 >> Rendez la quête À la recherche d'autres taudis
    .accept 286 >> Acceptez la quête Rapporter la statuette
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Tuez les |cRXP_ENEMY_Marins maudits|r, les |cRXP_ENEMY_Soldats de marine maudits|r et le |cRXP_ENEMY_Premier officier Snellig|r. Dépouillez-le pour sa |cRXP_LOOT_Tabatière de Snellig|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig
step
    #loop
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>Tuez les |cRXP_ENEMY_Crocilisques géants des Paluns|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>Tuez les |cRXP_ENEMY_Poil-moussu|r. Dépouillez-les pour leur |cRXP_LOOT_Silex bruts|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,44.25,25.61
    >>Tuez les |cRXP_ENEMY_Limons cramoisis|r, les |cRXP_ENEMY_Limons monstrueux|r et les |cRXP_ENEMY_Limons noirs|r. Dépouillez-les pour le |cRXP_LOOT_Sac de Sidonie|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze
step
    #loop
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .goto Wetlands,30.8,31.0,80,0
    .goto Wetlands,37.8,29.6,80,0
    .goto Wetlands,43.0,33.2,80,0
    >>Tuez les |cRXP_ENEMY_Poil-moussu|r. Dépouillez-les pour leur |cRXP_LOOT_Silex bruts|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >>Rendez la quête La vengeance d'Ormer
    .accept 295 >>Acceptez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Whelgar|r
    .accept 299 >> Acceptez la quête Découverte du passé
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Ramassez le |cRXP_LOOT_Fossile de Flagongut|r au sol
    .complete 943,2 -- Flagongut's Fossil (1)
step
    #completewith Sarltooth
    .goto Wetlands,34.71,49.95,0
    >>Ouvrez les |cRXP_PICK_Reliques anciennes|r et la |cRXP_PICK_Terre meuble|r. Récupérez-y les |cRXP_LOOT_Fragments|r
    >>|cRXP_WARN_Les |cRXP_LOOT_Fragments|r ont des endroits d'apparition aléatoires dans le Site d'excavation |r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Tuez les |cRXP_ENEMY_Faucheurs tachetés|r et les |cRXP_ENEMY_Tranchegueules tachetés|r. Dépouillez-les pour la |cRXP_LOOT_Pierre de Relu|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .isOnQuest 943
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Tuez les |cRXP_ENEMY_Faucheurs tachetés|r et les |cRXP_ENEMY_Tranchegueules tachetés|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >>Rendez la quête La vengeance d'Ormer
    .accept 296 >>Acceptez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Whelgar|r
    .turnin 299 >>Rendez la quête Découverte du passé
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    #completewith FragmentDone
    >>Tuez les |cRXP_ENEMY_Faucheurs tachetés|r et les |cRXP_ENEMY_Tranchegueules tachetés|r. Dépouillez-les pour la |cRXP_LOOT_Pierre de Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Tuez |cRXP_ENEMY_Grondecroc|r. Dépouillez-le pour sa |cRXP_LOOT_Serre|r
    >>Il est habituellement sur la colline au-dessus du site d'excavation principal mais peut aussi patrouille vers le bas
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
step
    #label FragmentDone
    #loop
    .goto Wetlands,34.32,51.79,40,0
    .goto Wetlands,35.73,49.06,40,0
    .goto Wetlands,33.86,46.85,40,0
    .goto Wetlands,34.91,44.22,40,0
    .goto Wetlands,36.62,42.16,40,0
    >>Ouvrez les |cRXP_PICK_Reliques anciennes|r et la |cRXP_PICK_Terre meuble|r. Récupérez-y les |cRXP_LOOT_Fragments|r
    >>|cRXP_WARN_Les |cRXP_LOOT_Fragments|r ont des endroits d'apparition aléatoires dans le site d'excavation, dont le terrain surélevé où se situe |cRXP_ENEMY_Sarltooth|r|r
    >>Faites en sorte de vérifier aussi derrière le Grand Arbre marqué sur votre carte
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Tuez les |cRXP_ENEMY_Faucheurs tachetés|r et les |cRXP_ENEMY_Tranchegueules tachetés|r. Dépouillez-les pour la |cRXP_LOOT_Pierre de Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
    .isOnQuest 943
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >>Rendez la quête La vengeance d'Ormer
    .target Ormer Ironbraid
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Whelgar|r
    .turnin 299 >>Rendez la quête Découverte du passé
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rethiel le Gouverneur vert|r
    .turnin 277 >> Rendez la quête Feu interdit
    .target Rethiel the Greenwarden
    .accept 275 >> Acceptez la quête Fièvre sur le pays
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rethiel le Gouverneur vert|r
    .target Rethiel the Greenwarden
    .accept 275 >> Acceptez la quête Fièvre sur le pays
step
    .goto Wetlands,64.78,75.31
    >>Ramassez la |cRXP_LOOT_Racine de Musquash|r au sol
    .complete 335,2 -- Musquash Root
step << Druid
	#completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
	>>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 2104,1
    .subzoneskip 2104
    .subzoneskip 150
step
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
step
    .isQuestTurnedIn 942
    .goto Wetlands,10.84,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r
    .turnin 943 >>Rendez la quête Les absences du Prospecteur
    .target Archaeologist Flagongut
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Rendez la quête L'équipage maudit
    .accept 290 >> Acceptez la quête Levée de la malédiction
    .target First Mate Fitzsimmons
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sidonie|r
    .turnin 470 >> Rendez la quête En creusant dans la vase
    .target Sida
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Rendez la quête Rapporter la statuette
    .target Karl Boran
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Rendez la quête Les devoirs de l'apprenti
    .target James Halloran
    .isQuestComplete 471
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Montez le mât du bateau
    >>Tuez le |cRXP_ENEMY_Capitaine Halyndor|r. Dépouillez-le pour la |cRXP_LOOT_Clé du coffre de l'Intrépide|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Passez par le grand trou sur le côté du navira
    >>Cliquez sur le |cRXP_PICK_Coffre verrouillé de l'Intrépide|r au sol
    .turnin 290 >>Rendez la quête Levée de la malédiction
    .accept 292 >>Acceptez la quête L'Oeil de Paleth
step
    #loop
    .goto Wetlands,27.6,37.2,50,0
    .goto Wetlands,40.8,32.8,50,0
    .goto Wetlands,46.6,29.6,50,0
    .goto Wetlands,48.8,37.2,50,0
    .goto Wetlands,54.8,37.8,50,0
    .goto Wetlands,27.6,37.2,0
    .goto Wetlands,40.8,32.8,0
    .goto Wetlands,46.6,29.6,0
    .goto Wetlands,48.8,37.2,0
    .goto Wetlands,54.8,37.8,0
    .goto Wetlands,20.72,28.74,50,0
    >>Tuez les |cRXP_ENEMY_Rampants des tourbières|r
    >>Les |cRXP_ENEMY_Rampants des tourbières|r |cRXP_WARN_sont |r |T132320:0|t[Camouflés] |cRXP_WARN_le long des cours d'eau|r
    .complete 275,1 --12/12 Fen Creeper
    .mob Fen Creeper
    .isOnQuest 275
step
    .isQuestTurnedIn 464
    .goto Wetlands,47.45,47.01
    >>Cliquez sur la |cRXP_PICK_Catapulte des Dragonmaw|r
    .turnin 465 >>Rendez la quête La manœuvre de Nek'rosh
    .accept 474 >>Acceptez la quête Vaincre Nek'rosh
step
    .isQuestTurnedIn 474
    .goto Wetlands,47.45,47.01
    >>Cliquez sur la |cRXP_PICK_Catapulte des Dragonmaw|r
    .accept 474 >>Acceptez la quête Vaincre Nek'rosh
step
    .isOnQuest 474
    .goto Wetlands,53.459,54.663
    >>Tuez le |cRXP_ENEMY_Chef Nek'rosh|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 474,1 --1/1 Nek'rosh's Head
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rethiel le Gouverneur vert|r
    .turnin 275 >>Rendez la quête Fièvre sur le pays
    .target Rethiel the Greenwarden
    .isQuestComplete 275
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Acceptez la quête Le viaduc de Thandol
    .target Rhag Garmason
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longbraid le Macabre|r
    .turnin 472 >>Rendez la quête La chute de Dun Modr
    .accept 304 >> Acceptez la quête Une tâche sinistre
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Acceptez la quête La guerre contre les Sombrefer
    .target Motley Garmason
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Nains Sombrefers|r, les |cRXP_ENEMY_Tunneliers Sombrefers|r, les |cRXP_ENEMY_Saboteurs Sombrefers|r et les |cRXP_ENEMY_Démolisseurs Sombrefers|r
    >>Les |cRXP_ENEMY_Dark Iron Saboteurs|r vont lancer [Sapeur explosion] lorsqu'ils meurent ce qui inflige des dégâts de feu à proximité
    >>Les |cRXP_ENEMY_Dark Iron Demolitionists|r vont continuellement vous lancer des [Bombes] à distance
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Tuez |cRXP_ENEMY_Balgaras le Crasseux|r. Dépouillez-le pour son |cRXP_LOOT_Oreille|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>Tuez les |cRXP_ENEMY_Nains Sombrefers|r, les |cRXP_ENEMY_Tunneliers Sombrefers|r, les |cRXP_ENEMY_Saboteurs Sombrefers|r et les |cRXP_ENEMY_Démolisseurs Sombrefers|r
    >>Les |cRXP_ENEMY_Dark Iron Saboteurs|r vont lancer [Sapeur explosion] lorsqu'ils meurent ce qui inflige des dégâts de feu à proximité
    >>Les |cRXP_ENEMY_Dark Iron Demolitionists|r vont continuellement vous lancer des [Bombes] à distance
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longbraid le Macabre|r
    .turnin 304 >> Rendez la quête Une tâche sinistre
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Rendez la quête La guerre contre les Sombrefer
    .target Motley Garmason
    .isQuestComplete 303
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Dirigez-vous vers les escaliers en colimaçon sur le pont
    >>Cliquez sur le |cRXP_PICK_Cadavre d'Ebenezer Rustlocke|r
    .turnin 631 >>Rendez la quête Le viaduc de Thandol
    .accept 632 >>Acceptez la quête Le viaduc de Thandol
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Rendez la quête Le viaduc de Thandol
    .accept 633 >>Acceptez la quête Le viaduc de Thandol
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foggy MacKreel|r
    >>Commencez par sauter sur la chaîne invisible, puis sur la poutre cassée sur le pont. Toutes les classes peuvent faire ce saut. Si vous n'êtes pas capable de le faire, passez cette étape
    .accept 647 >>Acceptez la quête Le tord-boyaux de MacKreel
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>Cliquez ici pour un guide vidéo
step
    .goto Arathi Highlands,44.28,92.877
    >>Plongez dans l'eau
    >>Ouvrez la |cRXP_PICK_Lettre détrempée|r. Récupérez-y l' |T133469:0|t[|cRXP_LOOT_Enveloppe détrempée|r]
    >>|cRXP_WARN_Utilisez l' [|cRXP_LOOT_Waterlogged Envelope|r] pour commencer la quête|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Acceptez la quête Lettre de Sully Balloo
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Nagez à l'est vers la rampe
step
    .goto Arathi Highlands,48.789,88.058
    >>Cliquez sur la |cRXP_PICK_Cache d'explosifs|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Rendez la quête Le viaduc de Thandol
    .accept 634 >>Acceptez la quête L'appel à l'Alliance
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >> Voyagez au Refuge de l'Ornière
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Nials|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Rendez la quête L'appel à l'Alliance
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cedrik Prose|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >> Prenez le chemin de vol des Hautes-terres d'Arathi
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brewmeister Bilger|r dans le sous-sol
    >>Si vous ratez cette quête chronométrée, abandonnez-la et passez cette étape
    .turnin 647 >>Rendez la quête Le tord-boyaux de MacKreel
    .target Brewmeister Bilger
    .isOnQuest 647
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Acceptez Le long de la côte
    .target Lieutenant Farren Orinelle
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Rendez Southshore
    .target Loremaster Dibbs
step
    #completewith SSFP
    .subzone 271 >> Voyagez jusqu'à Southshore
step << Hunter
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wesley|r
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >> Mettez votre familier à l'étable. Vous allez bientôt domptez un |cRXP_ENEMY_Elder Moss Creeper|r
    .target Wesley
step << Hunter
    .goto Hillsbrad Foothills,56.6,53.8
    >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoiser la bête] |cRXP_WARN_sur une |cRXP_ENEMY_Ancienne Rampemousse|r pour le dompter|r -- .tame 2348
    .train 17264 >>Attaquez des créatures pour apprendre [Morsure (Rang 4)]
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
	.unitscan Elder Moss Creeper
step << Hunter
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    >>Tuez les |cRXP_ENEMY_Torn Fin Tidehunters|r et les |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1 --10/10 Torn Fin Tidehunter slain
    .mob +Torn Fin Tidehunter
    .complete 536,2 --10/10 Torn Fin Oracle slain
    .mob +Torn Fin Oracle
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >> Rendez Le long de la côte
    .accept 559 >> Acceptez La preuve de Farren
    .target Lieutenant Farren Orinelle
step << Hunter
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    .goto Hillsbrad Foothills,31.47,72.51,50,0
    .goto Hillsbrad Foothills,28.81,73.18,50,0
    .goto Hillsbrad Foothills,24.84,70.21,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    >>Tuez les |cRXP_ENEMY_Torn Fin Tidehunters|r, |cRXP_ENEMY_Torn Fin Oracles|r, |cRXP_ENEMY_Torn Fin Coastrunners|r et les |cRXP_ENEMY_Torn Fin Muckdwellers|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 559,1 --10/10 Murloc Head
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >> Rendez Le long de la côte
    .accept 560 >> Acceptez La preuve de Farren
    .target Lieutenant Farren Orinelle
step << Hunter
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >> Rendez Le long de la côte
    .accept 561 >> Acceptez La preuve de Farren
    .target Marshal Redpath
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >> Rendez Le long de la côte
    .accept 562 >> Acceptez Stormwind me voilà
    .target Lieutenant Farren Orinelle
step << Hunter
    #loop
    .goto Hillsbrad Foothills,52.97,64.67,0
    .goto Hillsbrad Foothills,55.32,63.35,0
    .goto Hillsbrad Foothills,58.35,66.37,0
    .goto Hillsbrad Foothills,59.55,73.43,0
    .goto Hillsbrad Foothills,56.97,67.01,0
    .goto Hillsbrad Foothills,52.97,64.67,60,0
    .goto Hillsbrad Foothills,55.32,63.35,60,0
    .goto Hillsbrad Foothills,58.35,66.37,60,0
    .goto Hillsbrad Foothills,59.55,73.43,60,0
    .goto Hillsbrad Foothills,56.97,67.01,60,0
    >>Tuez les |cRXP_ENEMY_Daggerspine Shorehunters|r et les |cRXP_ENEMY_Daggerspine Sirens|r
    >>Vous allez peut être devoir nagez hors de l'eau pour les trouver
    .complete 562,1 --10/10 Daggerspine Shorehunter
    .mob +Daggerspine Shorehunter
    .complete 562,2 --10/10 Daggerspine Siren
    .mob +Daggerspine Siren
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >> Rendez Stormwind me voilà
    .accept 563 >> Acceptez Nouvelle affectation
    .target Lieutenant Farren Orinelle
step
    #label SSFP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Prenez le chemin de vol de Southshore
    .target Darla Harris
step
    #completewith next
    .goto Hillsbrad Foothills,56.8,50.2,85,0
    .goto Hillsbrad Foothills,61.8,43.2,85,0
    .goto Hillsbrad Foothills,67.0,35.4,85,0
    .goto Hillsbrad Foothills,68.6,17.0,85,0
    .goto Hillsbrad Foothills,71.6,8.0,85,0
    >>Dirigez-vous vers le nord le long du ruisseau en tuant les |cRXP_ENEMY_Snapjaws|r sur le chemin pour leur |cRXP_LOOT_Turtle Meat|r
    >>|cRXP_WARN_Vous n'avez pas besoin de collecter toutes les |cRXP_LOOT_Turtle Meat|r maintenant|r
    .collect 3712,10,555,1
    .zoneskip Western Plaguelands
    .mob Snapjaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>> Prenez le chemin de vol des Maleterres de l'Ouest
    .target Bibilfaz Featherwhistle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fly Wetlands >> Volez aux Paluns
    .target Bibilfaz Featherwhistle
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Stoutfist|r à l'étage
    .goto Wetlands,9.86,57.48
    .turnin 474 >> Rendez la quête Vaincre Nek'rosh
    .target Captain Stoutfist
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >>Rendez la quête L'Oeil de Paleth
    .accept 293 >>Acceptez la quête Purifier l'Oeil
    .target Glorin Steelbrow
step
    >>Cliquez sur le |cRXP_PICK_Coffre détrempé|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Rendez la quête Le fer de sancteforge
    .accept 324 >>Acceptez la quête Les lingots perdus
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Tuez les |cRXP_ENEMY_Ecumeurs Branchie-bleue|r. Dépouillez-les pour les |cRXP_LOOT_Lingots|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    .xp 30-6600 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 6600xp pour le niveau 30 (29700/36300)
    .mob Bluegill Raider
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Rendez la quête Les lingots perdus
    .accept 322 >>Acceptez la quête Béni soit ce bras
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step << !Mage
    #completewith KingsTribute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .goto Wetlands,9.49,59.70
    .fly Ironforge >>Volez à Ironforge
    .target Shellei Brondir
    .zoneskip Ironforge
step << Mage
    #completewith KingsTribute
    .zone Ironforge >> Lancez [Téléportation : Ironforge]
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Rendez la quête Lettre de Sully Balloo
    .timer 17,Lettre de Sully Balloo RP
    .accept 683 >> Acceptez la quête Requête de Sara Balloo
    .target Sara Balloo
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pilote Longbeard|r
    .accept 1179 >>Acceptez la quête Les frères Brassbolts
    .target Pilot Longbeard
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thalgus Thunderfist|r en bas des escaliers
    >>|cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Heavy Quiver|r]
	.collect 7371,1
    .target Thalgus Tonnepoing
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Rendez la quête Requête de Sara Balloo
    .accept 686 >> Acceptez Hommage royal
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Rendez Hommage royal
    .accept 689 >> Acceptez Hommage royal
    .target Grand Mason Marblesten
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#xprate <1.5
#name 30-32 Bois de la Pénombre/Vallée de Strangleronce
#subgroup RestedXP Alliance 20-32
#next 32-33 Les Salines

step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Il s'agit d'un objet en approvisionnement limité. Passez cette étape si le |cRXP_FRIENDLY_Coupebraquet Tournepignon|r n'en a pas en stock|r
	.target Gearcutter Cogspinner
    .bronzetube
    .zoneskip Ironforge,1
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>Voyagez vers Kharanos et achetez votre Mécanotrotteur << Gnome !Warlock
    .zone Dun Morogh >>Voyagez vers la Ferme des Distillambre et achetez votre [Bélier] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Binjy Featherwhistle|r et |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veron Amberstill|r et |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    .goto Ironforge,16.57,84.04
    .zone Ironforge >> Retournez à Ironforge
step << !Mage
    #completewith CleansingtheEye
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
step << !Mage
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze] |cRXP_BUY_au marchand si il est disponible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Billibub Cogspinner|r n'en a plus en stock|r
    .bronzetube
    .target Billibub Cogspinner
step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Rendez la quête Excavateurs gyrodrilmatiques
    .target Shoni the Shilent
    .isQuestComplete 2928
step << Mage
    #completewith CleansingtheEye
    .zone Stormwind City >> Lancez [Téléportation : Stormwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
	.target Jennea Cannon
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Rendez la quête Béni soit ce bras
    .accept 325 >> Acceptez la quête En armes et prêt
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r fait le tour de la Cathédrale
    .accept 1274 >> Acceptez Un diplomate a disparu
    .target Thomas
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 293 >> Rendez la quête Purifier l'Oeil
    .target Archbishop Benedictus
    .isOnQuest 293
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r fait le tour de la Cathédrale
    .accept 1274 >> Acceptez Un diplomate a disparu
    .target Thomas
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Rendez la quête Béni soit ce bras
    .accept 325 >> Acceptez la quête En armes et prêt
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Rendez la quête Excavateurs gyrodrilmatiques
    .target Shoni the Shilent
    .isQuestComplete 2928
step << Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Entrez dans l'auberge de L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .trainer >> Apprenez vos sorts de classe
    .target Sheldras Moontree
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_Si vous trouvez un [|cRXP_LOOT_An Old History Book|r] vous pouvez le rendre|r
    .accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .turnin 337 >> Rendez la quête Un vieux livre d'histoire
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Acceptez la quête Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Evêque DeLavey|r
    .turnin 1274 >> Rendez Un diplomate a disparu
    .accept 1241 >> Acceptez Un diplomate a disparu
    .target Bishop DeLavey
step << Hunter
    .isOnQuest 563
    .goto Stormwind City,72.571,15.888
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >> Rendez Nouvelle affectation
    .target Major Samuelson
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >> Acceptez la quête L'île mortelle
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Rendez Un diplomate a disparu
    .accept 1242 >> Acceptez Un diplomate a disparu
    .target Jorgen
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Umbrua|r
    .accept 10491 >> Acceptez la quête L'appel de l'air
	.trainer >> Apprenez vos sorts de classe
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Rendez Un diplomate a disparu
    .accept 1243 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >> Déposez les objets suivants dans votre banque:
    >>|T134187:0|t[Racine de Musquas] -- 2784
    >>|T132765:0|t[Caisse de casque anti-accidents] -- 5849
    .target Newton Burnside
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement au Bois de la Pénombre très bientôt
    >>|T133024:0|t[Tube en bronze]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood>> Volez au Bois de la Pénombre
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Conseiller Millstipe|r
    .turnin 377 >> Rendez la quête Crime et Châtiments
    .target Councilman Millstipe
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    >>Passez cette étape si vous n'avez pas trouvé de Tube en bronze
    .accept 174 >> Acceptez la quête Un œil dans les étoiles
    .turnin 174 >> Rendez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marie l'aveugle|r
    .turnin 175 >> Rendez la quête Un œil dans les étoiles
    .accept 177 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Blind Mary
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tuez la |cRXP_ENEMY_Insane Ghoul|r. Dépouillez-la pour le |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_La |cRXP_ENEMY_Insane Ghoul|r peut être à l'intérieur de la chapelle ou marcher dans les alentours à l'extérieur|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Rendez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Rendez la quête Cueillette de racines pourries
    .accept 159 >> Acceptez la quête La livraison de suc
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Liez votre Pierre de foyer au Bois de la Pénombre
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    >>|cRXP_WARN_Elle peut être morte ou occupée à combattre|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_si il attaque Sombre-Comté. Si cela se produit, pensez à tuer des mobs près de la ville jusqu'à ce qu'elle réapparaisse ou de change de layer (si possible)|r
    .turnin 57 >> Rendez la quête Les Veilleurs
    .accept 58 >> Acceptez la quête Les Veilleurs
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 228 >> Rendez la quête Mor'Ladim
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Gardienne Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r patrouille autour de Sombre-Comté
    .turnin 229 >> Rendez la quête La fille qui survécut
    .accept 231 >> Acceptez la quête L'amour d'une fille
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >> Rendez Un diplomate a disparu
    .accept 1244 >> Acceptez Un diplomate a disparu
    .target Watcher Backus
step
    #completewith next
    .goto Elwynn Forest,84.60,69.37,100 >> Voyagez au Camp de bûcherons du Val d'est
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Haggard|r
    .turnin 74 >> Rendez la quête La légende de Stalvan
    .accept 75 >> Acceptez la quête La légende de Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Montez les escaliers dans la maison
    >>Ouvrez le |cRXP_PICK_Marshal Haggard's Chest|r. Ramassez la |cRXP_LOOT_A Faded Journal Page|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Haggard|r
    .turnin 75 >> Rendez la quête La légende de Stalvan
    .accept 78 >> Acceptez la quête La légende de Stalvan
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katie Hunter|r et |cRXP_FRIENDLY_Randal Hunter|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFHorse|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Rendez la quête La légende de Stalvan
    .accept 79 >> Acceptez la quête La légende de Stalvan
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    >>|cRXP_WARN_Elle peut être morte ou occupée à combattre|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_si il attaque Sombre-Comté. Si cela se produit, pensez à tuer des mobs près de la ville jusqu'à ce qu'elle réapparaisse ou de change de layer (si possible)|r
    .turnin 79 >> Rendez la quête La légende de Stalvan
    .accept 80 >> Acceptez la quête La légende de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 80 >> Rendez la quête La légende de Stalvan
    .accept 97 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 97 >> Rendez la quête La légende de Stalvan
    .accept 98 >> Acceptez la quête La légende de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Ramassez le |cRXP_LOOT_Tear of Tilloa|r sur le sol
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >> Tuez |cRXP_ENEMY_Stalvan Mistmantle|r. Dépouillez-le pour son |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_peut frapper très fort. Ramenez-le en bas de la tour et faites vous aider par les |cRXP_FRIENDLY_Watchers|r si nécessaire|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r à l'intérieur
    .turnin 98 >> Rendez la quête La légende de Stalvan
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>> Volez vers la Marche de l'Ouest
    .target Felicia Maline
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    .use 6866 >> |cRXP_WARN_Utilisez le|r |T133439:0|t[Symbole de vie] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Henze Faulk|r
    .complete 1786,1 -- resurrect Henze Faulk in Elwynn.
    .target Henze Faulk
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Rendez la quête Le Tome de divinité
    .accept 1787 >>Acceptez la quête Le Tome de divinité
    .target Henze Faulk
step << Human Paladin
    #loop
    .goto Elwynn Forest,74.2,46.8,60,0
    .goto Elwynn Forest,76.6,53.6,60,0
    .goto Elwynn Forest,73.0,54.2,60,0
    >>Tuez |cRXP_ENEMY_Defias Voleur Wizards|r. Dépouillez-les pour obtenir le |cRXP_LOOT_Defias Script|r
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Shaman
    #completewith next
    .goto Duskwood,28.10,31.46,100 >> Voyagez vers |cRXP_FRIENDLY_Abercrombie|r au Bois de la Pénombre
step << !Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Black Widow Hatchlings|r sur le chemin vers |cRXP_FRIENDLY_Abercrombie|r. Dépouillez-les pour leur |cRXP_LOOT_Vials of Spider Venom|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Rendez la quête La livraison de suc
    .accept 133 >> Acceptez la quête L'épouvantail à goules
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Tuez les |cRXP_ENEMY_Plague Spreaders|r. Dépouillez-les pour leur |cRXP_LOOT_Ribs|r et leur |cRXP_LOOT_Fangs|r
    >>Les |cRXP_WARN_autres |cRXP_ENEMY_Ghouls|r peuvent aussi donner leur |cRXP_LOOT_Ribs|r et leur |cRXP_LOOT_Fangs|r mais concentrez-vous sur les |r |cRXP_ENEMY_Plague Spreaders|r
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Rendez la quête L'épouvantail à goules
    .accept 134 >> Acceptez la quête Les ogres voleurs
    .target Abercrombie
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Black Widow Hatchlings|r sur le chemin pour la maison Défias
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Ouvrez les |cRXP_PICK_Defias Strongbox|r. Ramassez les |cRXP_LOOT_Defias Docket|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Ouvrez le |cRXP_LOOT_Abercrombie's Crate|r sur le sol
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >> Entrez dans la grotte des Ogres Vul'Gol
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Tuez |cRXP_ENEMY_Zzarc' Vul|r. Dépouillez-le pour son |cRXP_LOOT_Monocle|r
    >>|cRXP_ENEMY_Zzarc' Vul|r a deux points d'apparition à l'intérieur de la Grotte
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Tuez les |cRXP_ENEMY_Black Widow Hatchlings|r et les |cRXP_ENEMY_Carrion Recluses|r. Dépouillez-les pour leur |cRXP_LOOT_Spider Venom|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Rendez la quête Les Ogres sont de sales voleurs
    .accept 160 >> Acceptez la quête La lettre au maire
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Cliquez sur la |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Rendez la quête L'amour d'une fille
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Rendez la quête En armes et prêt
    .accept 55 >> Acceptez la quête Morbent Fel
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    #completewith next
    >>Libérez votre chemin vers le second étage de la maison
    .cast 8913 >>Équipez le [Fléau de Morbent] dans votre main gauche
    >>Utilisez le [Fléau de Morbent] sur |cRXP_ENEMY_Morbent Fel|r pour l'affaiblir
    >>Rappelez-vous d'équiper votre arme/arme en main gauche après l'avoir affaibli
    .use 7297
step
    .goto Duskwood,16.90,33.40
    >>Tuez |cRXP_ENEMY_Morbent Fel|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Rendez la quête Morbent Fel
    .isQuestComplete 55
    .target Sven Yorgen
step
    .isOnQuest 181,101,78,58,160
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >> |T136010:0|tLancez [Rappel astral] pour retourner à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
    >>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Volez à Sombre-Comté
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Rendez la quête La légende de Stalvan
    .accept 79 >> Acceptez la quête La légende de Stalvan
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    >>|cRXP_WARN_Elle peut être morte ou occupée à combattre|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_si il attaque Sombre-Comté. Si cela se produit, pensez à tuer des mobs près de la ville jusqu'à ce qu'elle réapparaisse ou de change de layer (si possible)|r
    .turnin 58 >> Rendez la quête Les Veilleurs
    .turnin 79 >> Rendez la quête La légende de Stalvan << !Shaman
    .accept 80 >> Acceptez la quête La légende de Stalvan << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 80 >> Rendez la quête La légende de Stalvan
    .accept 97 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .turnin 160 >> Rendez la quête La lettre au maire
    .accept 251 >> Acceptez la quête La traduction de la lettre d'Abercrombie
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Rendez la quête La traduction de la lettre d'Abercrombie
    .target Sirra Von'Indi
    .accept 401 >> Acceptez la quête Attendre la fin des travaux de Sirra
    .turnin 401 >> Rendez la quête Attendre la fin des travaux de Sirra
    .accept 252 >> Acceptez la quête La traduction pour Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .turnin 252 >> Rendez la quête La traduction pour Ello
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .accept 253 >> Acceptez la quête La fiancée de l'Embaumeur
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Jetez la [Lettre traduire de l'Embaumeur], vous n'en avez plus besoin
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 97 >> Rendez la quête La légende de Stalvan
    .accept 98 >> Acceptez la quête La légende de Stalvan
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r à l'intérieur
    .turnin 101 >> Rendez la quête Le Totem d'affliction
    .target Madame Eva
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Rendez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >> Rendez Un diplomate a disparu
    .accept 1245 >> Acceptez Un diplomate a disparu
    .target Watcher Backus
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Ramassez le |cRXP_LOOT_Tear of Tilloa|r sur le sol
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >> Tuez |cRXP_ENEMY_Stalvan Mistmantle|r. Dépouillez-le pour son |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_peut frapper très fort. Ramenez-le en bas de la tour et faites vous aider par les |cRXP_FRIENDLY_Watchers|r si nécessaire|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r à l'intérieur
    .turnin 98 >> Rendez la quête La légende de Stalvan
    .target Madame Eva
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>Tuez les |cRXP_ENEMY_Nightbane Dark Runners|r
    >>Les |cRXP_ENEMY_Messagers Plaie-de-nuit|r |cRXP_WARN_bougent très rapidement et vous engagent de très loin|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Rendez la quête Worgens dans les bois
    .accept 222 >> Acceptez la quête Worgens dans les bois
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >> Tuez les |cRXP_ENEMY_Nightbane Vile Fangs|r et les |cRXP_ENEMY_Nightbane Tainted Ones|r
	>>Faites attention car les mobs dans la zone réapparaissent d'un coup après quelques minutes
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >> Dirigez-vous vers la Vallée de Strangleronce au sud
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nizzle|r
    .fp Rebel >> Apprenez le trajet aérien vers Camp Rebelle
    .target Nizzle
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Gardez un oeil sur l'événement spécial du |cRXP_FRIENDLY_Private Thorsen|r. Il patrouille en descendant la route du Camp rebel toutes les 30 minutes|r
    >>Le |cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_se fera attaquer par 2 |cRXP_ENEMY_Kurzen's Agents|r. si vous ne voyez pas cet événement, ignorez cette étape|r
    >>Tuez les deux |cRXP_ENEMY_Kurzen's Agents|r et acceptez ensuite la quête du |cRXP_FRIENDLY_Private Thorsen|r qui devienne disponible après l'avoir sauvé
    .accept 215 >> Acceptez Les secrets de la jungle
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barnil Stonepot|r et |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 583 >> Acceptez Bienvenue dans la jungle
    .target +Barnil Stonepot
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Rendez Bienvenue dans la jungle
    .target +Hemet Nesingwary Jr.
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ajeck Rouack|r et |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Acceptez Maîtrise de la chasse au tigre
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Acceptez Maîtrise de la chasse à la panthère
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #loop
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,0
    .goto Stranglethorn Vale,31.76,9.00,0
    .goto Stranglethorn Vale,35.40,12.50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
	>>Tuez les |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    #loop
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,42.74,12.40,0
    .goto Stranglethorn Vale,41.43,9.77,0
    .goto Stranglethorn Vale,40.67,11.65,0
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
	>>Tuez les |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ajeck Rouack|r et |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>N'acceptez pas les suites pour l'instant
    .turnin 185 >> Rendez Maîtrise de la chasse au tigre
    --.accept 186 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Rendez Maîtrise de la chasse à la panthère
    --.accept 191 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Doren|r
    >>N'acceptez pas encore la quête suivante
    .turnin 215 >> Rendez Les secrets de la jungle
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >> Retournez à Sombre-Comté
step
    .goto Duskwood,28.864,30.765
    >>Cliquez sur |cRXP_PICK_Eliza's Grave Dirt|r pour invoquer |cRXP_ENEMY_Eliza|r
    >>Tuez |cRXP_ENEMY_Eliza|r. Dépouillez-la pour le |cRXP_LOOT_Embalmer's Heart|r
    >>|cRXP_ENEMY_Eliza|r va lancer [Éclair de givre] et [Nova de givre] en plus d'invoquer plusieurs |cRXP_ENEMY_Guards|r
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step << Druid
    #completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >> |T136010:0|tLancez [Rappel astral] pour retourner à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
    >>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >> Retournez à Sombre-Comté
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .turnin 253 >> Rendez la quête La fiancée de l'Embaumeur
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Rendez la quête Worgens dans les bois
    .accept 223 >> Acceptez la quête Worgens dans les bois
    .target Calor
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Rendez la quête Worgens dans les bois
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>> Volez à Stormwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> Lancez [Téléportation : Stormwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Acceptez la quête La demande de Malin
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Acceptez la quête James Hyal
    .target Connor Rivers
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >> Récupérez les objets suivants de votre banque:
    >>|T134187:0|t[Racine de Musquas] -- 2784
    >>|T132765:0|t[Caisse de casque anti-accidents] -- 5849
    .target Newton Burnside
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Umbrua|r
	.trainer >> Apprenez vos sorts de classe
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Rendez Un diplomate a disparu
    .accept 1246 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >> Acceptez la quête L'île mortelle
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r va devenir hostile après avoir accepté la suite de quête. Vainquez-le
    .turnin 1246 >> Rendez Un diplomate a disparu
    .accept 1447,1 >> Acceptez Un diplomate a disparu
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Vainquez contre |cRXP_ENEMY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_vous attaquera avec 2 |cRXP_ENEMY_Old Town Thugs|r. Ignorez-les et concentrez-vous sur|r |cRXP_ENEMY_Dashel Stonefist|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dashel Stonefist|r
    .turnin 1447 >> Rendez Un diplomate a disparu
    .accept 1247 >> Acceptez Un diplomate a disparu
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Rendez Un diplomate a disparu
    .accept 1248 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement à Southshore
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>10 [Viande de tortue]
    .collect 3712,10,555,1
    .target Auctioneer Jaxon
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >> Récupérez les objets suivants de votre banque:
    >>|T134187:0|t[Racine de Musquas] -- 2784
    >>|T132765:0|t[Caisse de casque anti-accidents] -- 5849
    >>|T132824:0|t[Gourde en peau remplie] << Shaman -- 23750
    .target Newton Burnside
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Acceptez la quête La demande de Malin
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Acceptez la quête James Hyal
    .target Connor Rivers
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné et descendez les escaliers
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zardeth de la Griffe noire|r
    .turnin 335 >> Rendez la quête Un noble brassage
    .accept 336 >> Acceptez la quête Un noble brassage
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >> Acceptez la quête À la recherche de Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Demisette Cloyce|r
    >>Passez cette étape si vous avez pris la même quête à Ironforge plus tôt
    .accept 4738 >> Acceptez la quête À la recherche de Menara Voidrender
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Rendez la quête Le Tome de divinité
    .target Gazin Tenorm
    .accept 1788 >>Acceptez la quête Le Tome de divinité
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Rendez la quête Le Tome de divinité << Human
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0 << !Human
    .goto StormwindClassic,38.67,32.82
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Baurles K. Wishock|r
    .turnin 336 >> Rendez la quête Un noble brassage
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_Si vous trouvez un [|cRXP_LOOT_An Old History Book|r] vous pouvez le rendre|r
    .accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .turnin 337 >> Rendez la quête Un vieux livre d'histoire
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Acceptez la quête Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .accept 543 >>Acceptez La tiare de Perenolde
    .target Count Remington Ridgewell
step << Druid
    #completewith DruidMount
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Volez à Teldrassil
    .target Silva Fil'naveth
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lelanai|r et |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFFrostsaber|r] |cRXP_BUY_ou un|r [|cFF0070FFNightsaber|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << !Mage
    #completewith FlyWetlands
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
    >>Montez votre compétence en [Premiers soins] si nécessaire en attendant pour le Tram
    .zoneskip Wetlands
step << Mage
    #completewith FlyWetlands
    .zone Ironforge >> Lancez [Téléportation : Ironforge]
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>Voyagez à Kharanos et achetez votre [Mécanotrotteur] << Gnome !Warlock
    .zone Dun Morogh >>Voyagez à la Ferme des Distillambre et achetez votre [Bélier] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Binjy Featherwhistle|r et |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veron Amberstill|r et |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    #completewith next
    .goto Ironforge,16.57,84.04
    .zone Ironforge >> Retournez à Ironforge
step
    #label FlyWetlands
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
	.fly Wetlands >> Volez aux Paluns
    .target Gryth Thurden
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Accepter cette quête fera que |cRXP_ENEMY_Tapoke "Slim" Jahn|r à l'entrée de l'auberge utilisera|r [Camouflage] et s'enfuira
    .turnin 1248 >> Rendez Un diplomate a disparu
    .accept 1249,1 >> Acceptez Un diplomate a disparu
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>Courez vite à l'extérieur !
    >>|cRXP_WARN_Vainquez contre |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slim's Friend|r s'enfuira une fois que |cRXP_ENEMY_Tapoke "Slim" Jahn|r se rendra|r
    >>|cRXP_WARN_Utilisez n'importe lequel contrôle des foules (CC) sur |cRXP_ENEMY_Slim's Friend|r si nécessaire|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mikhail|r
    >>Attendez le temps du RP
    .turnin 1249 >> Rendez Un diplomate a disparu
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Acceptez Un diplomate a disparu
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Rendez Un diplomate a disparu
    .accept 1264 >> Acceptez Un diplomate a disparu
    .target Mikhail
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lelanai|r et |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFFrostsaber|r] |cRXP_BUY_ou  un|r [|cFF0070FFNightsaber|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >> Entrez à Exodar par l'entrée arrière
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Farseer Nobundo|r en haut de la rampe
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r patrouille légèrement
    .target Farseer Nobundo
    .turnin 10491 >> Rendez la quête L'appel de l'air
    .accept 9552 >> Acceptez la quête L'appel de l'air
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Quittez l'Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torallius the Pack Handler|r et |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFElekk|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Envolez-vous vers Le Guet du sang
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aqueous|r sous l'eau
    .turnin 9504 >> Rendez la quête L'appel de l'eau
    .accept 9508 >> Acceptez la quête L'appel de l'eau
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >> Cliquez sur le |cRXP_PICK_Barrel of Filth|r pour invoquer |cRXP_ENEMY_Tel'athion the Impure|r
    .timer 3,L'appel de l'eau RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Tuez |cRXP_ENEMY_Tel'athion the Impure|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aqueous|r sous l'eau
    .turnin 9508 >> Rendez la quête L'appel de l'eau
    .accept 9509 >> Acceptez la quête L'appel de l'eau
    .target Aqueous
step << Shaman
	.deathskip >> Noyez-vous volontairement. Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 3596,1
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >> Voyagez vers le Guet du Sang
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >> Suivez la flèche méticuleusement autour des bords de l'Exodar pour vous rendre au chemin des Vent-sauvage
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >> Continuez de suivre la route pour le Chemin des Vent-sauvage
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Rendez la quête L'appel de l'air
    .accept 9553 >> Acceptez la quête L'appel de l'air
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Rendez la quête L'appel de l'air
    .accept 9554 >> Acceptez la quête L'appel de l'air
    .target Susurrus
step << Shaman
    .gossip 17435,0 >> Parlez à |cRXP_FRIENDLY_Susurrus|r de nouveau pour retourner à l'Exodar
    .timer 89,L'appel de l'air RP
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >> Descendez dans l'Exodar de nouveau
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r patrouille légèrement
    >>Vous allez gagner le buff [Vent léger] pendant 1 heure après avoir rendu cette quête, augmentant votre vitesse de déplacement de 40% et votre vitesse d'attaque de 30%
    >>Ne soyez pas ABS lorsque vous avez ce buff !
    .target Farseer Nobundo
    .turnin 9509 >> Rendez la quête L'appel de l'eau
    .turnin 9554 >> Rendez la quête L'appel de l'air
step << Draenei
    #optional
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >> |T136010:0|tLancez [Rappel astral] pour revenir aux Paluns
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Wetlands
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Acceptez James Hyal
    .accept 1302 >> Acceptez la quête James Hyal
    .target Vincent Hyal
step
    #label TheramoreBoat
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >> Prenez le bateau pour Theramore
    >>Montez votre compétence en [Premiers soins] pendant que vous attendez
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])

--1.5x guides:
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 28-30 Bois de la Pénombre
#version 7
#group RestedXP Guide TBC (A)
#subgroup RestedXP Alliance 20-32
#next 30-32 Hautebrande
#xprate >1.49

step << !Mage
    #optional
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Lancez|r |T135763:0|t[Téléportation : Hurlevent]
    .usespell 3561
    .zoneskip Stormwind City
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r fait le tour de la Cathédrale
    .accept 1274 >> Acceptez Un diplomate a disparu
    .target Thomas
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Evêque DeLavey|r
    .turnin 1274 >> Rendez Un diplomate a disparu
    .accept 1241 >> Acceptez Un diplomate a disparu
    .target Bishop DeLavey
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Rendez Un diplomate a disparu
    .accept 1242 >> Acceptez Un diplomate a disparu
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Rendez Un diplomate a disparu
    .accept 1243 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood>> Volez au Bois de la Pénombre
    .target Dungar Longdrink
    .zoneskip Duskwood
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    >>Passez cette étape si vous n'avez pas trouvé de Tube en bronze
    .accept 174 >> Acceptez la quête Un œil dans les étoiles
    .turnin 174 >> Rendez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marie l'aveugle|r
    .turnin 175 >> Rendez la quête Un œil dans les étoiles
    .accept 177 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Blind Mary
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tuez la |cRXP_ENEMY_Insane Ghoul|r. Dépouillez-la pour le |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_La |cRXP_ENEMY_Insane Ghoul|r peut être à l'intérieur de la chapelle ou marcher dans les alentours à l'extérieur|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Rendez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Acceptez la quête Un œil dans les étoiles
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Rendez la quête Cueillette de racines pourries
    .accept 159 >> Acceptez la quête La livraison de suc
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Liez votre Pierre de foyer au Bois de la Pénombre
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    >>|cRXP_WARN_Elle peut être morte ou occupée à combattre|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_si il attaque Sombre-Comté. Si cela se produit, pensez à tuer des mobs près de la ville jusqu'à ce qu'elle réapparaisse ou de change de layer (si possible)|r
    .turnin 57 >> Rendez la quête Les Veilleurs
    .accept 58 >> Acceptez la quête Les Veilleurs
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 228 >> Rendez la quête Mor'Ladim
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .accept 229 >> Acceptez la quête La fille qui survécut
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Gardienne Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r patrouille autour de Sombre-Comté
    .turnin 229 >> Rendez la quête La fille qui survécut
    .accept 231 >> Acceptez la quête L'amour d'une fille
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >> Rendez Un diplomate a disparu
    .accept 1244 >> Acceptez Un diplomate a disparu
    .target Watcher Backus
step
    #completewith next
    .goto Elwynn Forest,84.60,69.37,100 >> Voyagez au Camp de bûcherons du Val d'est
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Haggard|r
    .turnin 74 >> Rendez la quête La légende de Stalvan
    .accept 75 >> Acceptez la quête La légende de Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Montez les escaliers dans la maison
    >>Ouvrez le |cRXP_PICK_Marshal Haggard's Chest|r. Ramassez la |cRXP_LOOT_A Faded Journal Page|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Haggard|r
    .turnin 75 >> Rendez la quête La légende de Stalvan
    .accept 78 >> Acceptez la quête La légende de Stalvan
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katie Hunter|r et |cRXP_FRIENDLY_Randal Hunter|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFHorse|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Rendez la quête La légende de Stalvan
    .accept 79 >> Acceptez la quête La légende de Stalvan
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    >>|cRXP_WARN_Elle peut être morte ou occupée à combattre|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_si il attaque Sombre-Comté. Si cela se produit, pensez à tuer des mobs près de la ville jusqu'à ce qu'elle réapparaisse ou de change de layer (si possible)|r
    .turnin 79 >> Rendez la quête La légende de Stalvan
    .accept 80 >> Acceptez la quête La légende de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 80 >> Rendez la quête La légende de Stalvan
    .accept 97 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 97 >> Rendez la quête La légende de Stalvan
    .accept 98 >> Acceptez la quête La légende de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Ramassez le |cRXP_LOOT_Tear of Tilloa|r sur le sol
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >> Tuez |cRXP_ENEMY_Stalvan Mistmantle|r. Dépouillez-le pour son |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_peut frapper très fort. Ramenez-le en bas de la tour et faites vous aider par les |cRXP_FRIENDLY_Watchers|r si nécessaire|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r à l'intérieur
    .turnin 98 >> Rendez la quête La légende de Stalvan
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>> Volez vers la Marche de l'Ouest
    .target Felicia Maline
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    .use 6866 >> |cRXP_WARN_Utilisez le|r |T133439:0|t[Symbole de vie] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Henze Faulk|r
    .complete 1786,1 -- resurrect Henze Faulk in Elwynn.
    .target Henze Faulk
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Rendez la quête Le Tome de divinité
    .accept 1787 >>Acceptez la quête Le Tome de divinité
    .target Henze Faulk
step << Human Paladin
    #loop
    .goto Elwynn Forest,74.2,46.8,60,0
    .goto Elwynn Forest,76.6,53.6,60,0
    .goto Elwynn Forest,73.0,54.2,60,0
    >>Tuez |cRXP_ENEMY_Defias Voleur Wizards|r. Dépouillez-les pour obtenir le |cRXP_LOOT_Defias Script|r
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Shaman
    #completewith next
    .goto Duskwood,28.10,31.46,100 >> Voyagez vers |cRXP_FRIENDLY_Abercrombie|r au Bois de la Pénombre
step << !Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Black Widow Hatchlings|r sur le chemin vers |cRXP_FRIENDLY_Abercrombie|r. Dépouillez-les pour leur |cRXP_LOOT_Vials of Spider Venom|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Rendez la quête La livraison de suc
    .accept 133 >> Acceptez la quête L'épouvantail à goules
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Tuez les |cRXP_ENEMY_Plague Spreaders|r. Dépouillez-les pour leur |cRXP_LOOT_Ribs|r et leur |cRXP_LOOT_Fangs|r
    >>Les |cRXP_WARN_autres |cRXP_ENEMY_Ghouls|r peuvent aussi donner leur |cRXP_LOOT_Ribs|r et leur |cRXP_LOOT_Fangs|r mais concentrez-vous sur les |r |cRXP_ENEMY_Plague Spreaders|r
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Rendez la quête L'épouvantail à goules
    .accept 134 >> Acceptez la quête Les ogres voleurs
    .target Abercrombie
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Black Widow Hatchlings|r sur le chemin pour la maison Défias
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Ouvrez les |cRXP_PICK_Defias Strongbox|r. Ramassez les |cRXP_LOOT_Defias Docket|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Ouvrez le |cRXP_LOOT_Abercrombie's Crate|r sur le sol
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >> Entrez dans la grotte des Ogres Vul'Gol
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Tuez |cRXP_ENEMY_Zzarc' Vul|r. Dépouillez-le pour son |cRXP_LOOT_Monocle|r
    >>|cRXP_ENEMY_Zzarc' Vul|r a deux points d'apparition à l'intérieur de la Grotte
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Tuez les |cRXP_ENEMY_Black Widow Hatchlings|r et les |cRXP_ENEMY_Carrion Recluses|r. Dépouillez-les pour leur |cRXP_LOOT_Spider Venom|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Rendez la quête Les Ogres sont de sales voleurs
    .accept 160 >> Acceptez la quête La lettre au maire
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Cliquez sur le |cRXP_PICK_A Weathered Grave|r
    .turnin 231 >> Rendez la quête L'amour d'une fille
step
    .isOnQuest 181,101,78,58,160
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >> |T136010:0|tLancez [Rappel astral] pour retourner à Sombre-Comté
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
    >>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Volez à Sombre-Comté
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Rendez la quête La légende de Stalvan
    .accept 79 >> Acceptez la quête La légende de Stalvan
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    >>|cRXP_WARN_Elle peut être morte ou occupée à combattre|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_si il attaque Sombre-Comté. Si cela se produit, pensez à tuer des mobs près de la ville jusqu'à ce qu'elle réapparaisse ou de change de layer (si possible)|r
    .turnin 58 >> Rendez la quête Les Veilleurs
    .turnin 79 >> Rendez la quête La légende de Stalvan << !Shaman
    .accept 80 >> Acceptez la quête La légende de Stalvan << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Greffier Daltry|r.
    .turnin 80 >> Rendez la quête La légende de Stalvan
    .accept 97 >> Acceptez la quête La légende de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .turnin 160 >> Rendez la quête La lettre au maire
    .accept 251 >> Acceptez la quête La traduction de la lettre d'Abercrombie
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Rendez la quête La traduction de la lettre d'Abercrombie
    .target Sirra Von'Indi
    .accept 401 >> Acceptez la quête Attendre la fin des travaux de Sirra
    .turnin 401 >> Rendez la quête Attendre la fin des travaux de Sirra
    .accept 252 >> Acceptez la quête La traduction pour Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .turnin 252 >> Rendez la quête La traduction pour Ello
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Ello Ebonlocke|r.
    .accept 253 >> Acceptez la quête La fiancée de l'Embaumeur
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Jetez la [Lettre traduire de l'Embaumeur], vous n'en avez plus besoin
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commandant Althea Ebonlocke|r
    .turnin 97 >> Rendez la quête La légende de Stalvan
    .accept 98 >> Acceptez la quête La légende de Stalvan
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r à l'intérieur
    .turnin 101 >> Rendez la quête Le Totem d'affliction
    .target Madame Eva
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Rendez la quête Un œil dans les étoiles
    .target Viktori Prism'Antras
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >> Rendez Un diplomate a disparu
    .accept 1245 >> Acceptez Un diplomate a disparu
    .target Watcher Backus
step << !Shaman
    .goto Duskwood,77.30,36.20
    >> Tuez |cRXP_ENEMY_Stalvan Mistmantle|r. Dépouillez-le pour son |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_peut frapper très fort. Ramenez-le en bas de la tour et faites vous aider par les |cRXP_FRIENDLY_Watchers|r si nécessaire|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Madame Eva|r à l'intérieur
    .turnin 98 >> Rendez la quête La légende de Stalvan
    .target Madame Eva
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>Tuez les |cRXP_ENEMY_Nightbane Dark Runners|r
    >>Les |cRXP_ENEMY_Messagers Plaie-de-nuit|r |cRXP_WARN_bougent très rapidement et vous engagent de très loin|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Rendez la quête Worgens dans les bois
    .accept 222 >> Acceptez la quête Worgens dans les bois
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >> Tuez les |cRXP_ENEMY_Nightbane Vile Fangs|r et les |cRXP_ENEMY_Nightbane Tainted Ones|r
	>>Faites attention car les mobs dans la zone réapparaissent d'un coup après quelques minutes
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto Duskwood,62.33,81.77
    .xp 30-7575
    .mob Nightbane Tainted One
    .mob Nightbane Vile Fang
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Rendez la quête Worgens dans les bois
    .accept 223 >> Acceptez la quête Worgens dans les bois
    .target Calor
step
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Rendez la quête Worgens dans les bois
    .target Jonathan Carevin
step
    #optional
    .goto Duskwood,62.33,81.77
    .xp 30
    .mob Nightbane Tainted One
    .mob Nightbane Vile Fang
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katie Hunter|r et |cRXP_FRIENDLY_Randal Hunter|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFHorse|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Lancez|r |T135763:0|t[Téléportation : Hurlevent]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>> Volez à Stormwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step
    #completewith next
    .zone Stormwind City >> Retour à Hurlevent
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Long-voyante Umbrua|r
    .accept 10491 >> Acceptez la quête L'appel de l'air
	.trainer >> Apprenez vos sorts de classe
    .target Farseer Umbrua
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jennea|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
	.target Jennea Cannon
step << !Mage
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Rendez Un diplomate a disparu
    .accept 1246 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Acceptez la quête La demande de Malin
    .target Archmage Malin
step
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Acceptez la quête James Hyal
    .target Connor Rivers
step << Mage
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Rendez Un diplomate a disparu
    .accept 1246 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné et descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >> Acceptez la quête À la recherche de Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Demisette Cloyce|r
    >>Passez cette étape si vous avez pris la même quête à Ironforge plus tôt
    .accept 4738 >> Acceptez la quête À la recherche de Menara Voidrender
    .target Demisette Cloyce
    .xp <31,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >> Acceptez la quête L'île mortelle
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r va devenir hostile après avoir accepté la suite de quête. Vainquez-le
    .turnin 1246 >> Rendez Un diplomate a disparu
    .accept 1447,1 >> Acceptez Un diplomate a disparu
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Vainquez contre |cRXP_ENEMY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_vous attaquera avec 2 |cRXP_ENEMY_Old Town Thugs|r. Ignorez-les et concentrez-vous sur|r |cRXP_ENEMY_Dashel Stonefist|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dashel Stonefist|r
    .turnin 1447 >> Rendez Un diplomate a disparu
    .accept 1247 >> Acceptez Un diplomate a disparu
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Rendez Un diplomate a disparu
    .accept 1248 >> Acceptez Un diplomate a disparu
    .target Elling Trias
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Rendez la quête Le Tome de divinité
    .target Gazin Tenorm
    .accept 1788 >>Acceptez la quête Le Tome de divinité
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Rendez la quête Le Tome de divinité << Human
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0 << !Human
    .goto StormwindClassic,38.67,32.82
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_Si vous trouvez un [|cRXP_LOOT_An Old History Book|r] vous pouvez le rendre|r
    .accept 337 >> Acceptez la quête Un vieux livre d'histoire
    .turnin 337 >> Rendez la quête Un vieux livre d'histoire
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Acceptez la quête Southshore
    .target Milton Sheaf
step << skip
    #sticky
	#completewith next
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Cliquez ici pour un "logout skip" à l'intérieur du tram
    .zone Ironforge >> Prenez le tram pour Ironforge
    >>Téléportez-vous vers Forgefer à la place si vous avez ce sort entraîné << Mage
    .zoneskip Wetlands
step
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-artisan Overspark|r
    .turnin 2923 >> Rendez Maître-artisan Overspark
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milstaff Stormeye|r
    .trainer >> Apprenez [Téléportation : Ironforge]
    .target Milstaff Stormeye

step << skip
--Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Acheter la compétence pour porter des haches à deux mains << !Rogue
	.train 266 >> Apprenez la compétence pour porter des Fusils << Hunter/Warrior/Rogue
    .train 199 >> Achetez la compétence pour porter des masses à deux mains << Warrior/Shaman
    .train 198 >> Acheter la compétence pour porter des masses à une main << Rogue/Shaman
    .train 44 >> Acheter la compétence pour porter des haches à une main << Warrior wotlk/Shaman/Rogue wotlk
    .zoneskip Wetlands

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Acceptez la quête Le Tome de divinité
    .trainer >> Apprenez vos sorts de classe
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Rendez la quête Le Tome de divinité
    .accept 1645 >>Acceptez la quête Le Tome de divinité
    .turnin 1645 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1646 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >>Rendez la quête Le Tome de divinité
    .accept 1647 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r patrouille le cercle extérieur d'Ironforge près de l'Hôtel des Ventes
    .turnin 1647 >>Rendez la quête Le Tome de divinité
    .accept 1648 >>Acceptez la quête Le Tome de divinité
    .turnin 1648 >>Rendez la quête Le Tome de divinité
    .accept 1778 >>Acceptez la quête Le Tome de divinité
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
    .target Tiza Battleforge
    .turnin 1778 >>Rendez la quête Le Tome de divinité
    .accept 1779 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    .target Muiredon Battleforge
    .turnin 1779 >>Rendez la quête Le Tome de divinité
    .accept 1783 >>Acceptez la quête Le Tome de divinité
step << !NightElf !Draenei !Mage
    .goto Ironforge,18.10,51.60
    .isQuestAvailable 1785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home Ironforge >> Liez votre Pierre de foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
    .itemcount 8563,<1 << Gnome !Warlock--Red Mechanostrider
    .itemcount 8595,<1 << Gnome !Warlock --Blue Mechanostrider
    .itemcount 13321,<1 << Gnome !Warlock --Green Mechanostrider
    .itemcount 13322,<1 << Gnome !Warlock --Unpainted Mechanostrider
    .itemcount 5864,<1 << Dwarf -- Gray Ram
    .itemcount 5872,<1 << Dwarf -- Brown Ram
    .itemcount 5873,<1 << Dwarf -- White Ram
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Quittez Ironforge
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>Utilisez le [Symbole de vie] sur |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    #label SymbolofLife
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Rendez la quête Le Tome de divinité
    .accept 1784 >>Acceptez la quête Le Tome de divinité
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Tuez les |cRXP_ENEMY_Dark Iron Spies|r. Dépouillez-les pour leur |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Gnome !Warlock -- checking if gnomes can get mount
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Binjy Featherwhistle|r et |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFMechanostrider|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veron Amberstill|r et |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFRam|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step << Dwarf/Gnome !Warlock
	#completewith TurnInScript
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .zoneskip Ironforge
    .bindlocation 1537,1
step << Dwarf Paladin
    #completewith TurnInScript
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> Voyagez vers |cRXP_FRIENDLY_Muiredon|r à l'étage
step << Dwarf Paladin
    #label TurnInScript
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Rendez la quête Le Tome de divinité
    .accept 1785 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Volez aux Paluns
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#version 7
#group RestedXP Guide TBC (A)
#subgroup RestedXP Alliance 20-32
#name 30-32 Hautebrande
#next 32-33 Les Salines
#xprate >1.49

step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Acceptez la quête La IIIe flotte
step
    #optional
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Achetez une|r [Cruche d'hydromiel nain]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .target Innkeeper Helbrek
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .bindlocation 2104
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Rendez la quête La Flotte perdue
    .accept 321 >> Acceptez la quête Le fer de sancteforge
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Accepter cette quête fera que |cRXP_ENEMY_Tapoke "Slim" Jahn|r à l'entrée de l'auberge utilisera|r [Camouflage] et s'enfuira
    .turnin 1248 >> Rendez Un diplomate a disparu
    .accept 1249,1 >> Acceptez Un diplomate a disparu
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>Courez vite à l'extérieur !
    >>|cRXP_WARN_Vainquez contre |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slim's Friend|r s'enfuira une fois que |cRXP_ENEMY_Tapoke "Slim" Jahn|r se rendra|r
    >>|cRXP_WARN_Utilisez n'importe lequel contrôle des foules (CC) sur |cRXP_ENEMY_Slim's Friend|r si nécessaire|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mikhail|r
    >>Attendez le temps du RP
    .turnin 1249 >> Rendez Un diplomate a disparu
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Acceptez Un diplomate a disparu
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Rendez Un diplomate a disparu
    .accept 1264 >> Acceptez Un diplomate a disparu
    .target Mikhail
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Acceptez James Hyal
    .accept 1302 >> Acceptez la quête James Hyal
    .target Vincent Hyal
step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Rendez la quête La IIIe flotte
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 289 >> Acceptez la quête L'équipage maudit
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sidonie|r
    .accept 470 >> Acceptez la quête En creusant dans la vase
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Acceptez la quête La chute de Dun Modr
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Stoutfist|r à l'étage
    .accept 464 >> Acceptez la quête Bannières de guerre
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lelanai|r et |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFFrostsaber|r] |cRXP_BUY_ou un|r [|cFF0070FFNightsaber|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >> Entrez à Exodar par l'entrée arrière
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Farseer Nobundo|r en haut de la rampe
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r patrouille légèrement
    .target Farseer Nobundo
    .turnin 10491 >> Rendez la quête L'appel de l'air
    .accept 9552 >> Acceptez la quête L'appel de l'air
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Quittez l'Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torallius the Pack Handler|r et |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Apprenez [Apprenti cavalier]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFElekk|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Envolez-vous vers Le Guet du sang
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aqueous|r sous l'eau
    .turnin 9504 >> Rendez la quête L'appel de l'eau
    .accept 9508 >> Acceptez la quête L'appel de l'eau
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >> Cliquez sur le |cRXP_PICK_Barrel of Filth|r pour invoquer |cRXP_ENEMY_Tel'athion the Impure|r
    .timer 3,L'appel de l'eau RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Tuez |cRXP_ENEMY_Tel'athion the Impure|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aqueous|r sous l'eau
    .turnin 9508 >> Rendez la quête L'appel de l'eau
    .accept 9509 >> Acceptez la quête L'appel de l'eau
    .target Aqueous
step << Shaman
	.deathskip >> Noyez-vous volontairement. Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 3596,1
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >> Voyagez vers le Guet du Sang
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >> Suivez la flèche méticuleusement autour des bords de l'Exodar pour vous rendre au chemin des Vent-sauvage
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >> Continuez de suivre la route pour le Chemin des Vent-sauvage
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Rendez la quête L'appel de l'air
    .accept 9553 >> Acceptez la quête L'appel de l'air
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Rendez la quête L'appel de l'air
    .accept 9554 >> Acceptez la quête L'appel de l'air
    .target Susurrus
step << Shaman
    .gossip 17435,0 >> Parlez à |cRXP_FRIENDLY_Susurrus|r de nouveau pour retourner à l'Exodar
    .timer 89,L'appel de l'air RP
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >> Descendez dans l'Exodar de nouveau
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r patrouille légèrement
    >>Vous allez gagner le buff [Vent léger] pendant 1 heure après avoir rendu cette quête, augmentant votre vitesse de déplacement de 40% et votre vitesse d'attaque de 30%
    >>Ne soyez pas ABS lorsque vous avez ce buff !
    .target Farseer Nobundo
    .turnin 9509 >> Rendez la quête L'appel de l'eau
    .turnin 9554 >> Rendez la quête L'appel de l'air
step << Draenei
    #optional
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >> |T136010:0|t[Rappel astral] vers Les Paluns
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Wetlands
step
    >>Cliquez sur le |cRXP_PICK_Coffre détrempé|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Rendez la quête Le fer de sancteforge
    .accept 324 >>Acceptez la quête Les lingots perdus
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Tuez les |cRXP_ENEMY_Ecumeurs Branchie-bleue|r. Dépouillez-les pour les |cRXP_LOOT_Lingots|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Rendez la quête Les lingots perdus
    .accept 322 >>Acceptez la quête Béni soit ce bras
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Cliquez sur le |cRXP_PICK_Damaged Crate|r sur le sol
    .turnin 281 >> Rendez la quête Récupération de marchandises
    .accept 284 >> Acceptez la quête La recherche continue
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Cliquez sur le |cRXP_PICK_Tonneau scellé|r au sol
    .turnin 284 >> Rendez la quête La recherche continue
    .accept 285 >> Acceptez la quête À la recherche d'autres taudis
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Cliquez sur le |cRXP_PICK_Tonneau à moitié enseveli|r au sol
    .turnin 285 >> Rendez la quête À la recherche d'autres taudis
    .accept 286 >> Acceptez la quête Rapporter la statuette
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Tuez les |cRXP_ENEMY_Marins maudits|r, les |cRXP_ENEMY_Soldats de marine maudits|r et le |cRXP_ENEMY_Premier officier Snellig|r. Dépouillez-le pour sa |cRXP_LOOT_Tabatière de Snellig|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig
step
    .goto Wetlands,44.25,25.61
    >>Tuez les |cRXP_ENEMY_Limons cramoisis|r, les |cRXP_ENEMY_Limons monstrueux|r et les |cRXP_ENEMY_Limons noirs|r. Dépouillez-les pour le |cRXP_LOOT_Sac de Sidonie|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze








step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Acceptez la quête Le viaduc de Thandol
    .target Rhag Garmason
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longbraid le Macabre|r
    .turnin 472 >>Rendez la quête La chute de Dun Modr
    .accept 304 >> Acceptez la quête Une tâche sinistre
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Acceptez la quête La guerre contre les Sombrefer
    .target Motley Garmason
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Nains Sombrefers|r, les |cRXP_ENEMY_Tunneliers Sombrefers|r, les |cRXP_ENEMY_Saboteurs Sombrefers|r et les |cRXP_ENEMY_Démolisseurs Sombrefers|r
    >>Les |cRXP_ENEMY_Dark Iron Saboteurs|r vont lancer [Sapeur explosion] lorsqu'ils meurent ce qui inflige des dégâts de feu à proximité
    >>Les |cRXP_ENEMY_Dark Iron Demolitionists|r vont continuellement vous lancer des [Bombes] à distance
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Tuez |cRXP_ENEMY_Balgaras le Crasseux|r. Dépouillez-le pour son |cRXP_LOOT_Oreille|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>Tuez les |cRXP_ENEMY_Nains Sombrefers|r, les |cRXP_ENEMY_Tunneliers Sombrefers|r, les |cRXP_ENEMY_Saboteurs Sombrefers|r et les |cRXP_ENEMY_Démolisseurs Sombrefers|r
    >>Les |cRXP_ENEMY_Dark Iron Saboteurs|r vont lancer [Sapeur explosion] lorsqu'ils meurent ce qui inflige des dégâts de feu à proximité
    >>Les |cRXP_ENEMY_Dark Iron Demolitionists|r vont continuellement vous lancer des [Bombes] à distance
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longbraid le Macabre|r
    .turnin 304 >> Rendez la quête Une tâche sinistre
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Rendez la quête La guerre contre les Sombrefer
    .target Motley Garmason
    .isQuestComplete 303
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Dirigez-vous vers les escaliers en colimaçon sur le pont
    >>Cliquez sur le |cRXP_PICK_Cadavre d'Ebenezer Rustlocke|r
    .turnin 631 >>Rendez la quête Le viaduc de Thandol
    .accept 632 >>Acceptez la quête Le viaduc de Thandol
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Rendez la quête Le viaduc de Thandol
    .accept 633 >>Acceptez la quête Le viaduc de Thandol
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foggy MacKreel|r
    >>Commencez par sauter sur la chaîne invisible, puis sur la poutre cassée sur le pont. Toutes les classes peuvent faire ce saut. Si vous n'êtes pas capable de le faire, passez cette étape
    .accept 647 >>Acceptez la quête Le tord-boyaux de MacKreel
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>Cliquez ici pour un guide vidéo
step
    .goto Arathi Highlands,44.28,92.877
    >>Plongez dans l'eau
    >>Ouvrez la |cRXP_PICK_Lettre détrempée|r. Récupérez-y l' |T133469:0|t[|cRXP_LOOT_Enveloppe détrempée|r]
    >>|cRXP_WARN_Utilisez l' [|cRXP_LOOT_Waterlogged Envelope|r] pour commencer la quête|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Acceptez la quête Lettre de Sully Balloo
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Nagez à l'est vers la rampe
step
    .goto Arathi Highlands,48.789,88.058
    >>Cliquez sur la |cRXP_PICK_Cache d'explosifs|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Rendez la quête Le viaduc de Thandol
    .accept 634 >>Acceptez la quête L'appel à l'Alliance
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >> Voyagez au Refuge de l'Ornière
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Nials|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Rendez la quête L'appel à l'Alliance
    .target Captain Nials
step
    .isOnQuest 690
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >> Rendez La demande de Malin
    .target Skuerto
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cedrik Prose|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >> Prenez le chemin de vol des Hautes-terres d'Arathi
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brewmeister Bilger|r dans le sous-sol
    >>Si vous ratez cette quête chronométrée, abandonnez-la et passez cette étape
    .turnin 647 >>Rendez la quête Le tord-boyaux de MacKreel
    .target Brewmeister Bilger
    .isOnQuest 647
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Acceptez Le long de la côte
    .target Lieutenant Farren Orinelle
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Rendez Southshore
    .target Loremaster Dibbs
step
    #completewith SSFP
    .subzone 271 >> Voyagez jusqu'à Southshore
step << Hunter
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wesley|r
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >> Mettez votre familier à l'étable. Vous allez bientôt domptez un |cRXP_ENEMY_Elder Moss Creeper|r
    .target Wesley
step << Hunter
    .goto Hillsbrad Foothills,56.6,53.8
    >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoiser la bête] |cRXP_WARN_sur une |cRXP_ENEMY_Ancienne Rampemousse|r pour le dompter|r -- .tame 2348
    .train 17264 >>Attaquez des créatures pour apprendre [Morsure (Rang 4)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
	.unitscan Elder Moss Creeper
step
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    >>Tuez les |cRXP_ENEMY_Torn Fin Tidehunters|r et les |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1 --10/10 Torn Fin Tidehunter slain
    .mob +Torn Fin Tidehunter
    .complete 536,2 --10/10 Torn Fin Oracle slain
    .mob +Torn Fin Oracle
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >> Rendez Le long de la côte
    .accept 559 >> Acceptez La preuve de Farren
    .target Lieutenant Farren Orinelle
step
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    .goto Hillsbrad Foothills,31.47,72.51,50,0
    .goto Hillsbrad Foothills,28.81,73.18,50,0
    .goto Hillsbrad Foothills,24.84,70.21,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    >>Tuez les |cRXP_ENEMY_Torn Fin Tidehunters|r, |cRXP_ENEMY_Torn Fin Oracles|r, |cRXP_ENEMY_Torn Fin Coastrunners|r et les |cRXP_ENEMY_Torn Fin Muckdwellers|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 559,1 --10/10 Murloc Head
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >> Rendez Le long de la côte
    .accept 560 >> Acceptez La preuve de Farren
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >> Rendez Le long de la côte
    .accept 561 >> Acceptez La preuve de Farren
    .target Marshal Redpath
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >> Rendez Le long de la côte
    .accept 562 >> Acceptez Stormwind me voilà
    .target Lieutenant Farren Orinelle
step
    #loop
    .goto Hillsbrad Foothills,52.97,64.67,0
    .goto Hillsbrad Foothills,55.32,63.35,0
    .goto Hillsbrad Foothills,58.35,66.37,0
    .goto Hillsbrad Foothills,59.55,73.43,0
    .goto Hillsbrad Foothills,56.97,67.01,0
    .goto Hillsbrad Foothills,52.97,64.67,60,0
    .goto Hillsbrad Foothills,55.32,63.35,60,0
    .goto Hillsbrad Foothills,58.35,66.37,60,0
    .goto Hillsbrad Foothills,59.55,73.43,60,0
    .goto Hillsbrad Foothills,56.97,67.01,60,0
    >>Tuez les |cRXP_ENEMY_Daggerspine Shorehunters|r et les |cRXP_ENEMY_Daggerspine Sirens|r
    >>Vous allez peut être devoir nagez hors de l'eau pour les trouver
    .complete 562,1 --10/10 Daggerspine Shorehunter
    .mob +Daggerspine Shorehunter
    .complete 562,2 --10/10 Daggerspine Siren
    .mob +Daggerspine Siren
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >> Rendez Stormwind me voilà
    .accept 563 >> Acceptez Nouvelle affectation
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,50.986,58.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huraan|r
    .accept 9435 >> Acceptez Les cristaux manquants
    .target Huraan
step
    #label SSFP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Prenez le chemin de vol de Southshore
    .target Darla Harris
step
    .goto Hillsbrad Foothills,55.572,35.218
    >>Ouvrez le |cRXP_PICK_Unopened Crate|r. Dépouillez-les pour les |cRXP_LOOT_Shipment of Rare Crystals|r
    .complete 9435,1 --Collect Shipment of Rare Crystals (x1)
step
    .goto Alterac Mountains,58.317,67.951
    >>Cliquez sur les |cRXP_PICK_Syndicate Documents|r sur la table
    .accept 510 >> Acceptez Documents d'annonce d'attaque
    .accept 511 >> Acceptez Lettre codée
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>> Prenez le chemin de vol des Maleterres de l'Ouest
    .fly Southshore>> Volez à Southshore
    .target Bibilfaz Featherwhistle
step
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >> Rendez Lettre codée
    .accept 514 >> Acceptez Le maître des lettres
    .target Loremaster Dibbs
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 510 >> Rendez Foreboding Plans
    .target Magistrate Henry Maleb
step
    .goto Hillsbrad Foothills,50.986,58.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huraan|r
    .turnin 9435 >> Rendez Les cristaux manquants
    .target Huraan
step << Draenei/NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>Volez à Ironforge
    .target Darla Harris
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Javad|r
    .trainer >> Apprenez vos sorts de classe
    .target Farseer Javad
step << !Draenei !NightElf !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
step << Mage
    #optional
    #completewith next
    .cast 3562 >>Lancez [Téléportation : Ironforge]
    .usespell 3562
    .zoneskip Ironforge
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Rendez la quête Lettre de Sully Balloo
    .timer 17,Lettre de Sully Balloo RP
    .accept 683 >> Acceptez la quête Requête de Sara Balloo
    .target Sara Balloo
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regnus Thundergranite|r
    .goto Ironforge,69.872,82.890
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .goto Ironforge,70.856,85.839
    .trainer >> Apprenez les compétences de votre familier
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .goto Ironforge,65.905,88.405
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step
    .isOnQuest 514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Stormpike|r
    .goto Ironforge,74.645,11.742
    .turnin 514 >>Rendez Le maître des lettres
    .target Prospector Stormpike
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Rendez la quête Requête de Sara Balloo
    .accept 686 >> Acceptez Hommage royal
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Rendez Hommage royal
    .target Grand Mason Marblesten
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .goto Ironforge,51.495,15.330
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
step
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Volez aux Paluns
    .target Gryth Thurden
    .zoneskip Wetlands
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Rendez la quête L'équipage maudit
    .target First Mate Fitzsimmons
]])
