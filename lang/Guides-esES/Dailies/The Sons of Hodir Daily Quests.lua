if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Ruta de misiones diarias de The Sons of Hodir

step
	+Para desbloquear las misiones diarias de los Hijos de Hodir, primero debes completar su cadena de misiones en Las Cumbres Tormentosas. Usa la guía Los Hijos de Hodir: Desbloquear misiones diarias para desbloquear las misiones diarias
	.isQuestAvailable 13047
step
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Madra de los huargos de escarcha, la Lanza de Hodir y Arngrim el Insaciable
    .daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acepta la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acepta la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Acepta la misión Cómo matar a tu dragón
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >> Acepta la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Madra de los huargos de escarcha y la Lanza de Hodir
    .daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acepta la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acepta la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Acepta la misión Cómo matar a tu dragón
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir y el Yelmo de Hodir
    .daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acepta la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Mata a los Espectros Quebradizos. Despójalos para obtener esencias de hielo
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Usa las esencias de hielo junto a los restos humeantes alrededor del Yunque de Fjorn. Despoja los restos de hierro congelado
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Mata a los antepasados de Niffelem y a los nacidos de la escarcha inquietos en la zona. Usa el cuerno de Hodir en tus bolsas sobre sus cadáveres para liberarlos
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Usa el Colmillo de huargo etéreo en tus bolsas sobre el cadáver del huargo caído. Sigue al huargo de escarcha etéreo hasta que localice a un infiltrado forjado por la tormenta y luego mátalo.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Usa el Diente de Arngrim en tus bolsas sobre un jormungar errante. Bájale la salud al 30% o menos, pero no lo mates
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Usa el Colmillo de huargo etéreo en tus bolsas sobre el cadáver del huargo caído. Sigue al huargo de escarcha etéreo hasta que localice a un infiltrado forjado por la tormenta y luego mátalo.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Mata a los aceites viscosos en la Hibernal Cavern. Despójalos para obtener su aceite
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >> Usa la Lanza de Hodir en tus bolsas para engancharte a un vermio salvaje. Asegúrate de tener toda la salud antes de hacer esto
	>>Usa Agarrarse (1) repetidamente para aumentar tu Agarre. Cuando el vermio te ataque, usa Esquivar garras (2). Usa Estocada de lanza (3) y Estocada de lanza vengativa (4) cada vez que estén disponibles
	>>Recuerda usar Coger (1) continuamente; de lo contrario, te caerás si solo spameas tus ataques con (3) y (4).
	>>Cuando el vermio salvaje esté por debajo del 30%, tu barra de ataque cambiará. Usa Abrir fauces (1) cinco veces y luego usa Golpe mortal (3). Si Golpe mortal falla, sigue usando Abrir fauces (1) hasta que Golpe mortal (3) vuelva a estar disponible
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Madra de los huargos de escarcha, la Lanza de Hodir y Arngrim el Insaciable
    .turnin 12981 >>Entrega la misión Polimorfismo térmico
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Entrega la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Entrega la misión Cómo matar a tu dragón
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Entrega la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Lanza de Hodir y Arngrim el Insaciable
    .turnin 12981 >>Entrega la misión Polimorfismo térmico
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Entrega la misión Cómo matar a tu dragón
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Entrega la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Madra de los huargos de escarcha y la Lanza de Hodir
    .turnin 12981 >>Entrega la misión Polimorfismo térmico
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza pegajosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Entrega la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Entrega la misión Cómo matar a tu dragón
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Madra de los huargos de escarcha y Arngrim el Insaciable
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Entrega la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Entrega la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir y Arngrim el Insaciable
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Entrega la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir y la Lanza de Hodir
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Entrega la misión Cómo matar a tu dragón
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir y la Madra de los huargos de escarcha
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Entrega la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir y el Yelmo de Hodir
    .turnin -12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Entrega la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
step
	+Has completado todas las misiones diarias de Los Hijos de Hodir para hoy :) Recuerda que puedes entregar Fichas de Siemprescarcha encontradas en el suelo en el área para obtener reputación adicional, así como entregas de Reliquia de Ulduar
]])
