if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name Die Kalu'ak Tagesquests

step
	>>Reist zum Hafen Moa'ki in Drachenöde. Sprecht mit Mau'i
    .daily 11960 >>Akzeptiert die Quest Zukunftsplanungen
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>Klickt auf die kleinen Wolvar-Welpen in der Nähe der Hütten
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>Kehrt zum Hafen Moa'ki zurück. Sprecht mit Mau'i
    .turnin 11960 >>Gebt die Quest Zukunftsplanungen ab
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>Reist nach Kaskala in der Boreanischen Tundra. Sprecht mit Utaik
    .daily 11945 >>Akzeptiert die Quest Auf das Schlimmste gefasst sein
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>Sammelt die kleine Körbe überall im Dorf
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>Kehrt zu Utaik zurück
    .turnin 11945 >>Gebt die Quest Auf das Schlimmste gefasst sein ab
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>Reist zu Kamagua im Heulenden Fjord. Sprecht mit Anunia
    .daily 11472 >>Akzeptiert die Quest Der Weg zu seinem Herzen...
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>Benutzt Anuniaqs Netz in Taschen von Euch auf Schulen von Schmackhaftem Rifffisch in der Gegend, um ungefähr 7-8 Schmackhafter Rifffisch zu fangen. Ihr solltet diese in etwa 2 Würfen des Netzes haben.
	.use 34127 >>Werft den Schmackhaften Rifffisch auf maximale Reichweite auf einen Riffbulle, er wird jetzt zu euch gehen
	>>Führt es auf die Riffkuh auf der anderen Seite der Küste
	>>Falls euch die Fische ausgehen, besorgt euch 7-8 weitere und versucht es erneut
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>Sprecht mit Anuniaq
    .turnin 11472 >>Gebt die Quest Der Weg zu seinem Herzen... ab
	.isQuestComplete 11472
]])
