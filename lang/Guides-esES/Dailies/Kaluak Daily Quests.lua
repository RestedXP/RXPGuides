if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Misiones diarias de The Kalu'ak

step
	>>Viaja hasta el Puerto Moa'ki en Cementerio de Dragones. Habla con Mau'i
    .daily 11960 >>Acepta la misión Pensando en el futuro
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>Haz clic derecho en los pequeños Wolvar Pups ubicados cerca de las cabañas
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>Regresa a Moa'ki Harbor. Habla con Mau'i
    .turnin 11960 >>Entrega la misión Pensando en el futuro
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>Viaja a Kaskala en Tundra Boreal. Habla con Utaik
    .daily 11945 >>Acepta la misión Preparándose para lo peor
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>Despojar las canastas pequeñas por todo el pueblo
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>Regresa con Utaik
    .turnin 11945 >>Entrega la misión Preparándose para lo peor
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>Viaja a Kamagua en Fiordo Aquilonal. Habla con Anunia
    .daily 11472 >>Acepta la misión El camino a su corazón...
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>Usa Red de Anuniaq en tus bolsas sobre los cardúmenes de Peces de arrecife ricos en la zona para atrapar aproximadamente 7-8 Peces de arrecife ricos. Deberías tener esto en aproximadamente 2 lanzamientos de la red
	.use 34127 >>Lanza el Sabroso Reef fish al rango máximo contra un Macho dominante de arrecife; ahora irá hacia donde estés
	>>Guíalo hasta una Hembra de arrecife al otro lado de la costa
	>>Si te quedas sin peces, consigue 7-8 más e inténtalo de nuevo
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>Habla con Anuniaq
    .turnin 11472 >>Entrega la misión El camino a su corazón...
	.isQuestComplete 11472
]])
