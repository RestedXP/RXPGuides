if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Quêtes journalières du Norfendre
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Route de Quêtes journalières des Fils de Hodir

step
	+Pour débloquer les quêtes journalières des Fils d'Hodir, vous devez d'abord compléter leur suite de quêtes dans les Pics Foudroyés. Veuillez vous rendre sur le guide pour débloquer les quêtes journalières des Fils d'Hodir pour débloquer les quêtes journalières
	.isQuestAvailable 13047
step
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir, la Mère de la tanière worg de givre, la Lance de Hodir et à Arngrim l'Insatiable
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acceptez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Acceptez la quête L’art de bien tuer son dragon
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >> Acceptez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir, la Mère de la tanière worg de givre et à la Lance de Hodir 
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acceptez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Acceptez la quête L’art de bien tuer son dragon
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir et au Heaume de Hodir
    .daily 12981 >>Acceptez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acceptez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acceptez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Tuez les Revenants vermoulus. Dépouillez-les pour leurs Essences de glace
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Utilisez les Essences de glace à côté de la Feraille fumante autour de l'Enclume de Fjorn. Récupérez le Morceau de fer gelé
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Tuez les Ancêtres Niffelem et les Givre-né sans repos dans la zone. Utilisez le Cor de Hodir dans votre sac sur leurs cadavres pour les libérer
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Utilisez le Croc de worg éthérien dans votre sac sur le Cadavre du worg déchu. Suivez le Worg Éthérien jusqu'à ce qu'il repère un Agent infiltré forge-foudre, puis tuez-le.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Utilisez la Dent d'Arngrim dans votre sac sur le Jormungar mobile. Infligez-lui des dégâts jusqu'à ce qu'il est 30% de vie ou moins, mais ne le tuez pas
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Utilisez le Croc de worg éthérien dans votre sac sur le Cadavre du worg déchu. Suivez le Worg Éthérien jusqu'à ce qu'il repère un Agent infiltré forge-foudre, puis tuez-le.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Tuez les Huiles Visqueuses dans la Caverne de l'Hibernation. Dépouillez-les pour leur Huile
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >> Utilisez la Lance de Hodir dans votre sac pour vous agripper à une Wyrm sauvage. Faites en sorte d'avoir toute votre vie avant de le faire
	>>Utilisez Continuer à tenir (1) à plusieurs reprises pour augmenter votre Agrippé. Quand le wyrm vous frappe, utilisez Esquiver les griffes (2). Utilisez Coup de lance (3) et Coup de lance vengeresse (4) dès qu'ils sont disponibles
	>>N'oubliez pas de toujours utiliser Continuer à tenir (1), sinon vous tomberez si vous ne faites que spammer les attaques (3) et (4) !
	>>Lorsque la Wyrm Sauvage passe en dessous de 30%, votre barre d'attaque changera. Utilisez Ouvrir les mâchoires de force (1) à 5 reprises, puis utilisez Frappe fatale (3). Si Frappe fatale échoue, continuez à utiliser Ouvrir les mâchoires de force (1) jusqu'à ce que Frappe fatale (3) soit disponible
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir, la Mère de la tanière worg de givre, la Lance de Hodir et à Arngrim l'Insatiable
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Rendez la quête L’art de bien tuer son dragon
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir, à la Lance de Hodir et à Arngrim l'Insatiable
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Rendez la quête L’art de bien tuer son dragon
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir, la Mère de la tanière worg de givre et à la Lance de Hodir 
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Rendez la quête L’art de bien tuer son dragon
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir, la Mère de la tanière worg de givre et à Arngrim l'Insatiable
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Rendez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir et à Arngrim l'Insatiable
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Rendez la quête Caler la dent creuse d'Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, au Heaume de Hodir et à la Lance de Hodir
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Rendez la quête L’art de bien tuer son dragon
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir, le Heaume de Hodir et à la Mère de la tanière worg de givre
    .turnin 12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Rendez la quête À la chasse aux espions
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Retournez à Dun Niffelem
	>>Parlez à l'Enclume de Fjorn, au Cor de Hodir et au Heaume de Hodir
    .turnin -12981 >>Rendez la quête Chaud et froid
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Rendez la quête L’appel de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Rendez la quête Nettoyage à suc
	.goto TheStormPeaks,64.24,59.23
step
	+Vous avez complété toutes les Quêtes journalières des Fils d'Hodir pour aujourd'hui :) N'oubliez pas que vous pouvez rendre les Morceaux de permagivre parsemés au sol dans la zone pour de la réputation supplémentaire et en rendant aussi les Reliques d'Ulduar !
]])
