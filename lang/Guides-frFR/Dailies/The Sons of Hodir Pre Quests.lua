if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Déverrouiller les quêtes journalières des Fils de Hodir

step
    +Vous avez terminé la chaîne préalable des Fils de Hodir. Veuillez utiliser le guide Route des quêtes journalières des Fils de Hodir pour compléter les quêtes journalières.
	.isQuestTurnedIn 13047
step
	.goto TheStormPeaks,41.15,86.14
	>>Envolez-vous vers K3
    >>Allez à l'intérieur de l'auberge. Parlez à Gretchen
    .accept 12843 >>Acceptez la quête Elles ont pris nos hommes !
step
    .goto TheStormPeaks,40.1,73.8,70,0
    .goto TheStormPeaks,40.3,69.8,70,0
    .goto TheStormPeaks,42.2,71.0,70,0
    .goto TheStormPeaks,41.6,73.7,60,0
    .goto TheStormPeaks,40.7,72.7
	>>Envolez-vous vers Sifreldar
	>>Tuez à Sifreldar pour les Clés de Fer Froid. Utilisez-les sur les cages des prisonniers gobelins dans la zone
    .collect 40641,5,12843,1,-1
    .complete 12843,1 --Goblin Prisoner freed (5)
step
    .goto TheStormPeaks,41.15,86.14
	>>Retournez à K3. Parlez à Gretchen à l'intérieur de l'auberge
    .turnin 12843 >>Rendez la quête Elles ont pris nos hommes !
    .accept 12846 >>Acceptez la quête Le gobelin manquant
step << !Human
	#completewith tribute
	>>Ramassez les Reliques d'Ulduar que les ennemis lâchent partout dans les pics Foudroyés. Vous pouvez également les acheter à l'Hôtel des ventes.
    .collect 42780,10 --Relic of Ulduar (10)
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step
    .goto TheStormPeaks,42.1,69.5,60,0
    .goto TheStormPeaks,42.80,68.90
	>>Entrez dans la Mine du désespoir. Parlez à Lok'lira.
    .turnin 12846 >>Rendez la quête Le gobelin manquant
    .accept 12841 >>Acceptez la quête La proposition de la mégère
step
    .goto TheStormPeaks,44.3,67.1,30,0
    .goto TheStormPeaks,44.1,70.2,30,0
    .goto TheStormPeaks,45.1,71.0
	>>Tuez la Surveillante Syra dans la Mine du désespoir. Ramassez les Runes d'Yrkvinn sur elle.
    .complete 12841,1 --Runes of the Yrkvinn (1)
	.unitscan Overseer Syra
step
    .goto TheStormPeaks,42.80,68.90
	>>Retournez à Lok'lira
    .turnin 12841 >>Rendez la quête La proposition de la mégère
    .accept 12905 >>Acceptez la quête Mildred la Cruelle
step
    .goto TheStormPeaks,44.39,68.93
	>>Montez les escaliers. Parlez à Mildred
    .turnin 12905 >>Rendez la quête Mildred la Cruelle
    .accept 12906 >>Acceptez la quête Discipline
step
    .goto TheStormPeaks,44.8,67.2,40,0
    .goto TheStormPeaks,44.6,70.6,40,0
    .goto TheStormPeaks,44.1,69.9,40,0
    .goto TheStormPeaks,44.8,71.3,40,0
    .goto TheStormPeaks,44.3,66.8,40,0
    .goto TheStormPeaks,43.0,68.0,40,0
    .goto TheStormPeaks,43.4,70.5
	.use 42837 >> Utilisez le Bâton de discipline dans vos sacs sur les Vrykul épuisés dans les galeries de la mine
    .complete 12906,1 --Exhausted Vrykul Disciplined (6)
step
    .goto TheStormPeaks,44.39,68.93
	>>Parlez à Mildred
    .turnin 12906 >>Rendez la quête Discipline
    .accept 12907 >>Acceptez la quête Faire des exemples
step
    .goto TheStormPeaks,45.40,69.10
	>>Tuez Garhal juste à l'est de Mildred dans la grotte
    .complete 12907,1 --Garhal (1)
step
    .goto TheStormPeaks,44.39,68.93
	>>Parlez à Mildred
    .turnin 12907 >>Rendez la quête Faire des exemples
    .accept 12908 >>Acceptez la quête La bravache et la prisonnière
step
    .goto TheStormPeaks,42.80,68.90
	>>Parlez à Lok'lira
    .turnin 12908 >>Rendez la quête La bravache et la prisonnière
    .accept 12921 >>Acceptez la quête Changer de décor
step
    .goto TheStormPeaks,41.8,69.6,30,0
    .goto TheStormPeaks,47.47,69.09
	>>Quittez The Forlon Mine. Envolez-vous vers Brunnhildar
    .turnin 12921 >>Rendez la quête Changer de décor
    .accept 12969 >>Acceptez la quête Il est à vous, ce gobelin ?
step
    .goto TheStormPeaks,48.25,69.77
	>>Parlez à Agnetta. Tuez-la pour libérer Zeev
    .complete 12969,1 --Agnetta Tyrsdottar (1)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Parlez à Lok'lira
    .turnin 12969 >>Rendez la quête Il est à vous, ce gobelin ?
    .accept 12970 >>Acceptez la quête Le Hyldsmeet
	>>Parlez à Lok'lira la Mégère de sa proposition.
    .complete 12970,1 --Listen to Lok'lira's proposal (1)
	.skipgossip 29975,1
    .turnin 12970 >>Rendez la quête Le Hyldsmeet
    .accept 12971 >>Acceptez la quête Accepter tous les défis
step
    .goto TheStormPeaks,50.5,68.1,30,0
    .goto TheStormPeaks,51.5,66.2
	>>Parlez aux Victorieux Challengers dans la zone pour les attaquer. Tuez-les
    .complete 12971,1 --Victorious Challenger (6)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Parlez à Lok'lira
    .turnin 12971 >>Rendez la quête Accepter tous les défis
    .accept 12972 >>Acceptez la quête Vous aurez besoin d'un ours
step
    .goto TheStormPeaks,53.14,65.72
	>>Parlez à Brijana
    .turnin 12972 >>Rendez la quête Vous aurez besoin d'un ours
    .accept 12851 >>Acceptez la quête La pro de l'ours
step
   	#completewith next
    .goto The Storm Peaks,53.12,65.61
	.vehicle >>Montez Croc-de-glace juste à côté de Brijana
step
    .goto TheStormPeaks,53.1,65.6,0
    .goto TheStormPeaks,57.4,63.0
	>>Utilisez Flèche enflammée (1) pour brûler les worgs de givre et les géants de givre. N'utilisez PAS Éruption de vitesse (2), concentrez-vous simplement sur l'atteinte de toutes les cibles
    .complete 12851,1 --Frostworgs Burned (7)
    .complete 12851,2 --Frost Giants Burned (15)
step
    .goto TheStormPeaks,53.14,65.72
	>>Utilisez « Éruption de vitesse » (2) pour revenir plus vite à Brijana. Parlez-lui
    .turnin 12851 >>Rendez la quête Accroché par un ours
    .accept 12856 >>Acceptez la quête Un cœur froid
step
    #completewith next
    .goto TheStormPeaks,63.20,62.88
	.vehicle >>Envolez-vous vers Dun Niffelem. Montez à un Proto-drake captif, ils sont enchaînés aux gros pics de glace autour des murs extérieurs de Dun Niffelem
step
    .waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
    .goto The Storm Peaks,66.75,60.63
	>>Utilisez la première capacité de votre drake sur l'un des captifs de Brunnhildar gelés dans le Bloc de glace quand vous êtes près d'eux
    >> Retournez à Brunnhildar quand vous avez 3 prisonniers sur votre Proto-drake. Faites cela 3 fois
    .complete 12856,1 --Rescued Brunnhildar Prisoners (9)
    .complete 12856,2 --Freed Proto-Drakes (3)
step
    .goto TheStormPeaks,53.14,65.72
	>>Parlez à Brijana
    .turnin 12856 >>Rendez la quête Un cœur froid
    .accept 13063 >>Acceptez la quête Digne d'intérêt
step
    .goto TheStormPeaks,49.75,71.81
	>>Retournez à Brunnhildar. Parlez à Astrid
    .turnin 13063 >>Rendez la quête Digne d'intérêt
    .accept 12900 >>Acceptez la quête Harnais de combat
step
    .goto TheStormPeaks,48.3,74.7,70,0
    .goto TheStormPeaks,48.3,77.1,70,0
    .goto TheStormPeaks,44.8,74.1
	>>Tuez les Yétis crinière-de-glace. Pillez-les pour obtenir leurs Peaux
    .complete 12900,1 --Icemane Yeti Hide (3)
step
    .goto TheStormPeaks,49.75,71.81
	>>Parlez à Astrid
    .turnin 12900 >>Rendez la quête Harnais de combat
    .accept 12983 >>Acceptez la quête La Dernière de son espèce
    .accept 12989 >>Acceptez la quête L'Obscurité rampante
step
    #completewith next
    .goto TheStormPeaks,55.8,63.9,30 >>Entrez dans la Caverne de l'Hibernation
step
    .goto TheStormPeaks,54.8,60.4
	>>Tuez le Jormungar dans la caverne
 	>>N'enfourchez pas l'ours blessé au milieu de la caverne pour l'instant
    .complete 12989,1 --Ravenous Jormungar (8)
step
	#completewith next
    .goto TheStormPeaks,54.79,60.37
	.vehicle >>Cliquez droit sur la Matriarche Griffe-de-glace pour la monter hors de la Caverne de l'Hibernation
step
    .goto TheStormPeaks,49.82,71.12
	>>Chevauchrez l'ours de retour à Brunnhildar. Cela prend 1m 8s, donc vous pouvez faire une pause pendant ce temps
    .complete 12983,1 --Icemaw Matriarch Rescued (1)
step
    .goto TheStormPeaks,49.75,71.81
	>>Parlez à Astrid
    .turnin 12983 >>Rendez la quête La Dernière de son espèce
    .accept 12996 >>Acceptez la quête L'Échauffement
    .turnin 12989 >>Rendez la quête L'Obscurité rampante
step
	#completewith next
    .goto TheStormPeaks,50.79,67.68
	.vehicle >> Envolez-vous vers Kirgaraak. Utilisez les Rênes de matriarche ours de guerre dans vos sacs pour la monter
	.use 42481
step
    .goto TheStormPeaks,50.79,67.68
	.use 42481 >>Tuez Kirgaraak. Utilisez Mutilation (1) pour infliger des dégâts. Utilisez Écrasement (2) suivi de À la charge ! (3) pour infliger des dégâts supplémentaires
    .complete 12996,1 --Kirgaraak Defeated (1)
step
	.goto TheStormPeaks,49.75,71.81
	>>Descendez l'ours. Parlez à Astrid
    .turnin 12996 >>Rendez la quête L'Échauffement
    .accept 12997 >>Acceptez la quête Dans la fosse
step
	#completewith next
    .goto TheStormPeaks,49.24,68.46
	.vehicle >> Envolez-vous vers La fosse du Croc. Utilisez les Rênes de matriarche ours de guerre dans vos sacs pour la monter
	.use 42499
step
    .goto TheStormPeaks,49.24,68.46
	.use 42499 >>Tuez les ours de guerre dans la fosse. Utilisez Mutilation (1) pour infliger des dégâts. Utilisez Écrasement (2) suivi de À la charge ! (3) pour infliger des dégâts supplémentaires
    .complete 12997,1 --Hyldsmeet Warbear (6)
step
    .goto TheStormPeaks,49.75,71.81
	>>Descendez l'ours. Parlez à Astrid
    .turnin 12997 >>Rendez la quête Dans la fosse
    .accept 13061 >>Acceptez la quête Préparez-vous à la gloire
step
    .goto TheStormPeaks,47.47,69.09
	>>Parlez à Lok'lira
    .turnin 13061 >>Rendez la quête Préparez-vous à la gloire
    .accept 13062 >>Acceptez la quête Le cadeau d'adieu de Lok'lira
step
    .goto TheStormPeaks,50.88,65.58
	>>Parlez à Gretta
    .turnin 13062 >>Rendez la quête Le cadeau d'adieu de Lok'lira
    .accept 12886 >>Acceptez la quête Le Drakkensryd
step
    .goto TheStormPeaks,35.4,57.8
	.use 41058 >>Envolez-vous sur le drake vers le Temple des Tempêtes (cela prend 1m 10s, donc vous pouvez faire une pause pendant ce temps). Utilisez le Harpon hyldnir dans vos sacs pour sauter sur les drakes qui ont des Cavaliers du Drakken. Tuez-les
    .complete 12886,1 --Hyldsmeet Drakerider Defeated (10)
step
    .goto TheStormPeaks,33.42,57.95
	>>Utilisez le Harpon hyldnir sur un Ornement de colonne (petits orbes) sur les colonnes du Temple des Tempêtes pour sauter dessus
	>>Parlez à Thorim
    .turnin 12886 >>Rendez la quête Le Drakkensryd
    .accept 13064 >>Acceptez la quête Rivalité fraternelle
	>>Parlez à Thorim
    .complete 13064,1 --Thorim's History Heard (1)
	.skipgossip 29445,1
    .turnin 13064 >>Rendez la quête Rivalité fraternelle
    .accept 12915 >>Acceptez la quête Rentrer dans les bonnes grâces
	.use 41058
step
	#completewith Giants
	#label Slag
    .goto TheStormPeaks,71.8,61.1,0
	>>Tuez les Géants de fer Stormforged. Ramassez-les pour leur Métal couvert de scories. Commencez la quête.
	.collect 41556,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Acceptez la quête Le feu du raffineur
step
	#completewith next
	#requires Slag
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Tuez tous les Revenants bouillonnants que vous voyez. Ramassez-les pour leurs Etincelles.
    .complete 12922,1 --Furious Spark (10)
step
	#label Giants
    .goto TheStormPeaks,75.0,63.6,70,0
    .goto TheStormPeaks,71.8,61.1
	>>Ramassez les Rochers de granit trouvés sur le sol à Lac du Champ-gelé et à l'Enclume de Fjorn (vous ne pouvez en porter qu'un à la fois)
	.use 41505 >> Utilisez l'Amulette de terre de Thorim dans vos sacs quand vous avez un Rocher aux Géants de fer Stormforged pour aider à les tuer
	.collect 41506,1,12915,1,-1
    .complete 12915,2 --Stormforged Iron Giants (5)
step
    .goto TheStormPeaks,71.8,61.1
	>>Tuez les Géants de fer Stormforged. Ramassez-les pour leur Métal couvert de scories. Commencez la quête.
	.collect 41505,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Acceptez la quête Le feu du raffineur
step
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Tuez tous les Revenants bouillonnants. Ramassez-les pour leurs Etincelles.
    .complete 12922,1 --Furious Spark (10)
step
	#completewith end
	#label FjornAnvil
    .goto TheStormPeaks,77.17,62.84
	>>Cliquez sur l'Enclume à côté de Fjorn
    .turnin 12922 >>Rendez la quête Le feu du raffineur
    .accept 12956 >>Acceptez la quête Une faible lueur d'espoir
step
    .goto TheStormPeaks,77.34,62.87
	>>Ramassez les Rochers de granit trouvés sur le sol à Lac du Champ-gelé et à l'Enclume de Fjorn (vous ne pouvez en porter qu'un à la fois)
	.use 41505 >> Utilisez l'Amulette de terre de Thorim dans vos sacs quand vous avez un Rocher sur Fjorn pour aider à le tuer
    .complete 12915,1 --Fjorn (1)
step
	#label Thorim1
    .goto TheStormPeaks,33.4,57.9
	>>Envolez-vous vers Thorim
    .turnin 12915 >>Rendez la quête Rentrer dans les bonnes grâces
    .turnin 12956 >>Rendez la quête Une faible lueur d'espoir
    .accept 12924 >>Acceptez la quête Forger une alliance
step
	.goto TheStormPeaks,65.45,60.16
	>>Parlez au Roi Jokkum
    .accept 12966 >>Acceptez la quête Vous ne pourrez pas le rater
step
	.goto TheStormPeaks,75.37,63.57
	>>Parlez à Njormeld
    .turnin 12966 >>Rendez la quête Vous ne pourrez pas le rater
    .accept 12967 >>Acceptez la quête Affronter les éléments
step
    #completewith next
    .goto TheStormPeaks,75.71,63.91
    .vehicle >>Clic droit sur Snorri pour le monter :3
step
    .goto TheStormPeaks,77.2,62.7
	>>Utilisez «Ramasser de la neige» (1) pour récupérer de la neige des Congères à proximité. Utilisez «Lancer de boule de neige» (2) sur les Revenants bouillonnants pour les tuer.
    .complete 12967,1 --Seething Revenants (10)
step
    .goto TheStormPeaks,75.37,63.57
	>>Parlez à Njormeld
    .turnin 12967 >>Rendez la quête Affronter les éléments
    .complete 12924,1 --Fjorn's Anvil Brought to Dun Niffelem (1)
step << Human
	>>Retournez à Dun Niffelem. Parlez à Njormeld et à l'Enclume
    .turnin 12924 >>Rendez la quête Forger une alliance
    .accept 13009 >>Acceptez la quête Un nouveau départ
    .accept 12985 >>Acceptez la quête Forger une tête
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Retournez à Dun Niffelem. Parlez à Njormeld et à l'Enclume
    .turnin 12924 >>Rendez la quête Forger une alliance
    .accept 13009 >>Acceptez la quête Un nouveau départ
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << Human
    .goto TheStormPeaks,65.45,60.16
	>>Parlez au Roi Jokkum
    .accept 13011 >>Acceptez la quête Jormuttar est si grosse…
    .accept 12975 >>Acceptez la quête In Memoriam
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Parlez au Roi Jokkum
    .accept 12975 >>Acceptez la quête In Memoriam
step << Human
	#completewith HornF
	>>Faites attention aux objets Éclats de permafrost dans la zone. Si vous en voyez un, ramassez-le et commencez la quête.
	.accept 13420 >> Acceptez la quête Le permagivre
step << Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Tuez les Revenants Fragiles. Ramassez leur Butin d'Essence de glace
	.use 42424 >> Utilisez la Pioche en diamant sur les Géants de fer. Parfois, des monstres peuvent apparaître que vous devez tuer, puis les ramasser pour leurs Yeux de Stormforged.
	.collect 42246,6 --Essence of Ice (6)
	.complete 12985,1 --Stormforged Eye (8)
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Tuez les Revenants Fragiles. Ramassez leur Butin d'Essence de glace
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Utilisez l'Essence de glace à côté de la Ferraille fumante autour de L'enclume de Fjorn. Ramassez le Morceau de fer gelé
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isQuestAvailable 13047
step
	#label HornF
    .goto TheStormPeaks,71.7,47.6
	>>Ramassez les petites pierres plates sur le sol dans la zone
    .complete 12975,1 --Horn Fragment (8)
step << Human
	>>Retournez à Dun Niffelem. Parlez à Calder, au Roi Jokkum, à Njormeld, à l'Enclume de Fjorn et à la Corne d'Hodir
	.turnin 13420 >> Rendez la quête Le permagivre
    .goto TheStormPeaks,67.11,60.97
    .turnin 12975 >>Rendez la quête In Memoriam
    .accept 12976 >>Acceptez la quête Un monument à ceux qui sont tombés
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Rendez la quête Un monument à ceux qui sont tombés
    .turnin 12985 >>Rendez la quête Forger une tête
    .accept 12987 >>Acceptez la quête Installer le heaume de Hodir
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
	.isQuestAvailable 13047
step << Human
	>>Rendez-vous à Dun Niffelem. Parlez à Roi Jokkum, Njormeld et L'enclume de Fjorn
    .turnin 12975 >>Rendez la quête In Memoriam
    .accept 12976 >>Acceptez la quête Un monument à ceux qui sont tombés
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Rendez la quête Un monument à ceux qui sont tombés
    .turnin 12985 >>Rendez la quête Forger une tête
    .accept 12987 >>Acceptez la quête Installer le heaume de Hodir
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Rendez-vous à Dun Niffelem. Parlez à Roi Jokkum, L'enclume de Fjorn et Njormeld
    .turnin 12975 >>Rendez la quête In Memoriam
    .accept 12976 >>Acceptez la quête Un monument à ceux qui sont tombés
    .goto TheStormPeaks,65.45,60.16
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12976 >>Rendez la quête Un monument à ceux qui sont tombés
    .goto TheStormPeaks,63.20,63.27
 step << !Human
	#label tribute
	.goto TheStormPeaks,66.16,61.44
    >>Vous devrez peut-être rendre une seule fois Relics of Ulduar pour devenir Allié avec The Sons of Hodir. Passez cette étape si vous êtes déjà Allié.
    >>Les Relics of Ulduar peuvent être trouvées en tuant tous les mobs autour de Pics Foudroyés ou peuvent être achetées auprès de l'Hôtel des ventes
	>>Parlez à Lillehoff
    .collect 42780,10 --Relic of Ulduar (10)
	.turnin 13559 >>Rendez la quête Un tribut à Hodir
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step << !Human
    >>Parlez à Njormeld
    .accept 12985 >>Acceptez la quête Forger une tête
    .goto TheStormPeaks,63.20,63.27
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	.use 42424 >> Utilisez la Pioche à pointe de diamant sur les Géants de fer morts. Parfois, des mobs peuvent apparaître, que vous devez tuer, puis les piller pour leur Œil de Forge-foudre.
	.complete 12985,1 --Stormforged Eye (8)
step << !Human
	>>Rendez-vous à Dun Niffelem. Parlez à Njormeld et à la Corne de Hodir
    .turnin 12985 >>Rendez la quête Forger une tête
    .accept 12987 >>Acceptez la quête Installer le heaume de Hodir
    .goto TheStormPeaks,63.20,63.27
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,64.24,59.23
	.use 42442 >> Envolez-vous vers le pic de glace étincelant dans Dun Niffelem. Utilisez les Tablets of Pronouncement dans vos sacs quand vous êtes sur votre monture volante.
    .complete 12987,1 --Hodir's Helm Mounted (1)
step
    .goto TheStormPeaks,63.20,63.27
	>>Parlez à Njormeld
    .turnin 12987 >>Rendez la quête Installer le heaume de Hodir
step
    .goto TheStormPeaks,64.22,59.39
	>>Parlez au Heaume que vous venez de placer
    .daily 13006 >>Acceptez la quête Un nettoyage visqueux
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Parlez à Roi Jokkum
    .accept 13011 >>Acceptez la quête Jormuttar est si grosse…
step
	#completewith Jorcuttar
    .goto TheStormPeaks,54.4,63.2,0
	>>Tuez les Huiles Visqueuses dans la Caverne de l'Hibernation. Ramassez leur Butin d'Huile
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,55.8,63.9,30,0
    .goto TheStormPeaks,54.7,60.6
	.use 42732 >> Entrez dans la Caverne de l'Hibernation et restez près du côté droit. Utilisez le Rasoir permagivre sur les Ours gueule-de-glace morts jusqu'à ce que vous obteniez un Flanchet d'ours gueule-de-glace.
	.collect 42733,1 --Icemaw Bear Flank (1)
	.isQuestAvailable 13047
step
	#label Jorcuttar
    .goto TheStormPeaks,54.8,60.8
	.use 42733 >>Continuez à longer le côté droit de la caverne jusqu'à ce que vous atteigniez la salle principale. Utilisez le Flanchet d'ours gueule-de-glace au milieu du lac gelé et hérissé — tuez Jormuttar.
    .complete 13011,1 --Jorcuttar (1)
step
    .goto TheStormPeaks,54.4,63.2
	>>Tuez les Huiles Visqueuses dans la Caverne de l'Hibernation. Ramassez leur Butin d'Huile
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Envolez-vous vers Thorim au sommet du Temple des Tempêtes. Parlez-lui.
    .turnin 13009 >>Rendez A New Beginning
    .accept 13050 >>Acceptez la quête Veranas
step
    .goto TheStormPeaks,45.4,66.9,40,0
    .goto TheStormPeaks,43.7,67.5
	>>Ramassez les Œufs dans les nids au sommet de la montagne
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto TheStormPeaks,33.42,57.95
	>>Envolez-vous vers Thorim au sommet du Temple des Tempêtes. Parlez-lui.
    .turnin 13050 >>Rendez la quête Veranas
    .accept 13051 >>Acceptez la quête Violation de territoire
step
    .goto TheStormPeaks,38.73,65.54
	.cast 56788 >> Utilisez les Œufs de proto-dragon volés dans vos sacs au sommet du nid de la Mère des couvées pour attirer Veranas.
	.timer 42,Veranas RP (CONTINUER LES QUÊTES)
	.use 42797
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Envolez-vous vers Thorim au sommet du Temple des Tempêtes. Parlez-lui. Attendez près de Thorim que le RP de la quête précédente se termine. Cela prend environ 1 minute.
    .turnin 13051 >>Rendez la quête Violation de territoire
    .accept 13010 >>Acceptez la quête Krolmir, le marteau des tempêtes
step
	#completewith DunNif2
    .goto TheStormPeaks,29.5,74.3
	>>Envolez-vous vers Dun Niffelem
	.isQuestAvailable 13047
step
	>>Parlez à la Corne de Hodir
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
	#label DunNif2
	>>Parlez au Casque de Hodir et à Roi Jokkum dans Dun Niffelem
    .turnin 13006 >>Rendez la quête Un nettoyage visqueux
    .goto TheStormPeaks,64.22,59.39
    .turnin 13011 >>Rendez la quête Le massacre de Jormuttar
	.vehicle >> Parlez à Roi Jokkum. Conduisez-le vers Chute-tonnerre
	.timer 118,Krolmir, le marteau des tempêtes RP
	.skipgossip
	.isQuestAvailable 13047
step
	#completewith TerraceM
	>>Cherchez les objets Éclats de Permagivre dans la zone. Si vous en voyez un, ramassez-le et commencez la quête.
	.accept 13420 >> Acceptez la quête Le permagivre
	.isQuestAvailable 13047
step
	#completewith ThorimRP
    .goto TheStormPeaks,70.7,47.3,0
    .goto TheStormPeaks,70.1,52.5,0
    .goto TheStormPeaks,72.7,52.1,0
    .goto TheStormPeaks,74.7,48.3,0
	.use 42164 >> Tuez les Ancêtres Niffelem et les Frostborn Tourmentés dans la zone. Utilisez la Corne de Hodir dans vos sacs sur leurs cadavres pour les libérer
	>>Vous pouvez faire ceci pendant que le jeu de rôle se déroule.
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,71.37,48.78
	>>Attendez que le jeu de rôle se termine.
    .complete 13010,1 --Krolmir's Fate Discovered (1)
	.isQuestAvailable 13047
step
	#label ThorimRP
    .goto TheStormPeaks,71.37,48.78
	>>Parlez à Thorim avant qu'il disparaisse
    .turnin 13010 >>Rendez la quête Krolmir, le marteau des tempêtes
    .accept 13057 >>Acceptez la quête La terrasse des Faiseurs
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,70.7,47.3,60,0
    .goto TheStormPeaks,70.1,52.5,60,0
    .goto TheStormPeaks,72.7,52.1,60,0
    .goto TheStormPeaks,74.7,48.3
	.use 42164 >> Tuez les Ancêtres Niffelem et les Frostborn Tourmentés dans la zone. Utilisez la Corne de Hodir dans vos sacs sur leurs cadavres pour les libérer
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
	#label TerraceM
    .goto TheStormPeaks,56.26,51.36
	>>Parlez à Thorim à la Terrasse des Faiseurs
    .turnin 13057 >>Rendez la quête La terrasse des Faiseurs
    .accept 13005 >>Acceptez la quête Le serment des Terrestres
    .accept 13035 >>Acceptez la quête Les laquais de Loken
	.isQuestAvailable 13047
step
	#completewith Duronn
    .goto TheStormPeaks,52.0,50.4,0
	.use 42840 >> Utilisez le Cor des pics dans vos sacs pour vous aider à tuer les Nains de fer et les Sentinelles de fer en route vers les ennemis nommés
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,48.72,45.65
	.use 42840 >> Utilisez le Cor des pics dans vos sacs pour invoquer une petite armée. Utilisez-le pour tuer Halefnir
    .complete 13035,2 --Halefnir the Windborn (1)
step
	#label Duronn
    .goto TheStormPeaks,44.94,38.03
	.use 42840 >> Utilisez le Cor des pics dans vos sacs pour invoquer une petite armée. Utilisez-le pour tuer Duronn
    .complete 13035,3 --Duronn the Runewrought (1)
step
	#completewith next
    .goto TheStormPeaks,57.7,44.5,50,0
    .goto TheStormPeaks,57.7,44.5,0
	.use 42840 >> Utilisez le Cor des pics pour vous aider à tuer les Sentinelles de fer en dehors de la grotte d'Eisenfaust
    .complete 13005,1 --Iron Sentinel (7)
step
    .goto TheStormPeaks,56.9,44.1,30,0
    .goto TheStormPeaks,55.30,43.32
	>>Entrez dans la Salle du Façonneur au pied de la montagne côté est
	.use 42840 >> Utilisez le Cor des pics pour invoquer une petite armée. Utilisez-le pour tuer Eisenfaust
    .complete 13035,1 --Eisenfaust (1)
step
    .goto TheStormPeaks,58.48,45.21
	.use 42840 >> Utilisez le Cor des pics dans vos sacs pour vous aider à tuer les Nains de fer et les Sentinelles de fer dans la zone
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
step
    .goto TheStormPeaks,56.26,51.36
	>>Parlez à Thorim à la Terrasse des Faiseurs
    .turnin 13005 >>Rendez la quête Le serment des Terrestres
    .turnin 13035 >>Rendez la quête Les laquais de Loken
    .accept 13047 >>Acceptez la quête La rétribution
step
    #completewith next
	.goto TheStormPeaks,44.49,28.19
	>>Envolez-vous vers l'extérieur d'Ulduar
    .fp Ulduar >> Apprenez le trajet de Vol d'Ulduar
    .skill riding,<300,1
step
    .goto TheStormPeaks,35.93,31.52
	>>Envolez-vous vers Thorim en dehors d'Ulduar. Parlez-lui et attendez la fin de l'événement JDR
    .complete 13047,1 --Witness the Reckoning (1)
	.skipgossip
	.timer 91,La rétribution RP
step
	#completewith end
    .goto TheStormPeaks,44.49,28.19
	>>Envolez-vous vers l'extérieur d'Ulduar
    .fp Ulduar >> Apprenez le trajet de Vol d'Ulduar
	.fly Dun Niffelem >> Envolez-vous vers Dun Niffelem. Cela prend 1m 44s, donc vous pouvez faire une pause pendant ce temps
    .skill riding,300,1
step
	#completewith next
    .goto TheStormPeaks,36.2,49.3,200 >> Envolez-vous vers Dun Niffelem sur votre monture volante
    .skill riding,<300,1
step
	>>Retournez à Dun Niffelem. Parlez à Jokkum, Calder et la Corne d'Hodir
    .turnin 13047 >>Rendez la quête La rétribution
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
	.turnin 13420 >> Rendez la quête Le permagivre
    .goto TheStormPeaks,67.11,60.97
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
step
	#label end
	>>Retournez à Dun Niffelem. Parlez à Jokkum et la Corne d'Hodir
    .turnin 13047 >>Rendez la quête La rétribution
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
step -- checking that player has honored with hodir to get this quest. will only be humans and any other that turned in rep items
	>>Parlez au Gardien du savoir Randvir à Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.accept 13001 >>Acceptez la quête Fabriquer la lance de Hodir
	.reputation 1119,honored,<0,1
step
	>>Tuez les Mammoths stoïques. Récupérez le Butin sur leurs Peaux
	.goto TheStormPeaks,58.68,60.94,60,0
	>>Ramassez l'Eclat permagivre dans la Caverne de l'Hibernation
	.complete 13001,2 --Stoic Mammoth Hide (3)
	.complete 13001,1 --Everfrost Shard (3)
	.goto TheStormPeaks,55.84,63.94,50,0
   	.goto TheStormPeaks,54.72,60.82
	.isOnQuest 13001
step
	>>Parlez au Gardien du savoir Randvir à Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.turnin 13001 >>Rendez la quête Fabriquer la lance de Hodir
	.isQuestComplete 13001
step
    +Vous avez terminé la chaîne de quêtes préalables Les Fils d'Hodir. Veuillez consulter le guide Route des Quêtes journalières Les Fils d'Hodir pour compléter les quêtes quotidiennes. Notez que certaines peuvent ne pas être disponibles aujourd'hui car elles ont déjà été complétées.
	.isQuestTurnedIn 13047
]])
