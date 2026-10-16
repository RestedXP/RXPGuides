if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name The Sons of Hodir - Route des quêtes journalières

step
	+Pour déverrouiller les quêtes journalières de The Sons of Hodir, vous devez d'abord compléter leur chaîne de quêtes dans Les pics Foudroyés. Consultez le guide de déverrouillage des quêtes journalières de The Sons of Hodir pour déverrouiller les quêtes journalières
	.isQuestAvailable 13047
step
	>>Parlez à l'enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des worgs de givre, la Lance de Hodir et Arngrim l'Insatiabilité
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acceptez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Acceptez la quête Planter la lance de Hodir
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >> Acceptez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Parlez à l'enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des worgs de givre et la Lance de Hodir
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acceptez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Acceptez la quête Planter la lance de Hodir
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Parlez à L'enclume de Fjorn, Corne de Hodir et Hodir's Helm
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Tuez les Revenants Fragiles. Ramassez leur Butin d'Essence de glace
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Utilisez l'Essence de glace à côté de la Ferraille fumante autour de L'enclume de Fjorn. Ramassez le Morceau de fer gelé
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Tuez les Ancêtres Niffelem et les Frostborn Tourmentés dans la zone. Utilisez la Corne de Hodir dans vos sacs sur leurs cadavres pour les libérer
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Utilisez le Crok du Worg Éthérien dans vos sacs sur le cadavre du Worg À terre. Suivez le Worg Éthérien de givre jusqu'à ce qu'il repère un Infiltrateur de la Forge de tempête, puis tuez-le
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Utilisez la Dent d'Arngrim dans vos sacs sur le Jormungar Errant. Infligez-lui des dégâts jusqu'à 30% de santé ou moins, mais ne le tuez pas
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Utilisez le Crok du Worg Éthérien dans vos sacs sur le cadavre du Worg À terre. Suivez le Worg Éthérien de givre jusqu'à ce qu'il repère un Infiltrateur de la Forge de tempête, puis tuez-le
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Tuez les Huiles Visqueuses dans la Caverne de l'Hibernation. Ramassez leur Butin d'Huile
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >> Utilisez la Lance de Hodir dans vos sacs pour vous agripper à un Wyrm Sauvage. Assurez-vous d'avoir votre santé au maximum avant de faire cela
	>>Utilisez Continuer à tenir (1) à plusieurs reprises pour augmenter votre Agrippé. Quand le wyrm vous attaque, utilisez Esquiver les griffes (2). Utilisez Coup de lance (3) et Coup de lance vengeresse (4) selon votre temps de recharge
	>>N'oubliez pas de continuer à tenir (1) en permanence, sinon vous tomberez si vous ne faites que spammer les attaques (3) et (4)!
	>>Une fois que le Wyrm Sauvage est en dessous de 30%, votre barre d'attaque changera. Utilisez Ouvrir les mâchoires de force (1) cinq fois, puis utilisez Frappe fatale (3). Si Frappe fatale échoue, continuez à utiliser Ouvrir les mâchoires de force (1) jusqu'à ce que le temps de recharge de Frappe fatale (3) soit prêt
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des worgs de givre, la Lance de Hodir et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendre la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendre la quête Polir le heaume
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Rendre la quête Planter la lance de Hodir
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendre la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à L'enclume de Fjorn, Corne de Hodir, Hodir's Helm, Lance de Hodir et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendre la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendre la quête Polir le heaume
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Rendre la quête Planter la lance de Hodir
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendre la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des worgs de givre et la Lance de Hodir
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendre la quête Souffler dans le cor de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendre la quête Polir le heaume
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Rendez la quête Comment tuer votre dragon
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir, la Mère des Worgs de givre et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Rendez la quête Nourrir Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et Arngrim l'Insatiabilité
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendez la quête Nourrir Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et la Lance de Hodir
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Rendez la quête Comment tuer votre dragon
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, la Corne de Hodir, le Heaume de Hodir et la Mère des Worgs de givre
    .turnin 12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendre la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Retournez à Dun Niffelem
	>>Parler à l'Enclume de Fjorn, la Corne de Hodir et le Heaume de Hodir
    .turnin -12981 >>Rendre la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Rendez la quête L'Appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Rendez la quête Un nettoyage visqueux
	.goto TheStormPeaks,64.24,59.23
step
	+Vous avez complété toutes les Quêtes journalières des Fils d'Hodir pour aujourd'hui :) Souvenez-vous que vous pouvez rendre les Éclats de permagivre trouvés par terre dans la zone pour une réputation supplémentaire ainsi que pour les Reliques d'Ulduar!
]])
