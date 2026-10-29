if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Quêtes journalières du Norfendre
#subgroup Faction Quêtes journalières
#wotlk
#cata
#name Quêtes journalières des Kalu'ak

step
	>>Allez à Port-Moa’ki dans la Désolation des dragons. Parlez à Mau'i
    .daily 11960 >>Acceptez la quête Préparer l'avenir
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>Faites un clic droit sur les petits Louveteaux varleus se trouvant près des huttes
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>Retournez au Port-Moa'ki. Parlez à Mau'i
    .turnin 11960 >>Rendez la quête Préparer l'avenir
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>Voyagez à Kaskala dans la Toundra Boréenne. Parlez à Utaik
    .daily 11945 >>Acceptez la quête Se préparer au pire
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>Ramassez les petits paniers parsemés dans tout le village
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>Retournez auprès de Utaik
    .turnin 11945 >>Rendez la quête Se préparer au pire
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>Voyagez à Kamagua au Fjord Hurlant. Parlez à Anunia
    .daily 11472 >>Acceptez la quête Le chemin de son cœur…
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>Utilisez le Filet d'Anuniaq dans vos sacs sur les Bancs de Délicieux poissons des récifs de la zone pour en attraper environ 7-8. Vous devriez en avoir assez en lançant le filet environ 2 fois
	.use 34127 >>Jetez le Délicieux poisson des récifs en restant à la portée maximale sur une Otarie des récifs mâle, elle se déplacera jusqu'à votre position
	>>Amenez-la sur une Otarie des récifs femelle de l'autre côté du littoral
	>>Si vous n'avez plus de poisson, attrapez-en 7-8 de plus et réessayez
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>Parlez à Anuniaq
    .turnin 11472 >>Rendez la quête Le chemin de son cœur…
	.isQuestComplete 11472
]])
