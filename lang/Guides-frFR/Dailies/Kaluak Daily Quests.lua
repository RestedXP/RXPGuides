if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Quêtes journalières des Kalu'ak

step
	>>Rendez-vous à Moa'ki à Désolation des dragons. Parlez à Mau'i
    .daily 11960 >>Acceptez la quête Préparer l'avenir
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>Cliquez à droite sur les jeunes Wolvar Pups situés près des huttes
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>Rendez-vous à Port-Moa'ki. Parlez à Mau'i
    .turnin 11960 >>Rendez la quête Préparer l'avenir
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>Rendez-vous à Kaskala à Toundra Boréenne. Parlez à Utaik
    .daily 11945 >>Acceptez la quête Se préparer au pire
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>Ramassez les petits paniers dispersés dans tout le village
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>Rendez-vous à Utaik
    .turnin 11945 >>Rendez la quête Se préparer au pire
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>Rendez-vous à Kamagua à Fjord Hurlant. Parlez à Anunia
    .daily 11472 >>Acceptez la quête Le chemin de son cœur…
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>Utilisez le Filet d'Anuniaq de vos sacs sur les bancs de Délicieux poisson des récifs de la zone pour en attraper environ 7-8. Vous devriez en avoir assez en environ 2 lancers du filet.
	.use 34127 >>Lancez le Poisson des récifs appétissant à distance maximale sur une Otarie des récifs mâle, il se déplacera vers votre position
	>>Dirigez-la sur une Otarie des récifs femelle de l'autre côté du littoral
	>>Si vous n'avez plus de poisson, attrapez-en 7-8 de plus et réessayez
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>Parlez à Anuniaq
    .turnin 11472 >>Rendez la quête Le chemin de son cœur…
	.isQuestComplete 11472
]])
