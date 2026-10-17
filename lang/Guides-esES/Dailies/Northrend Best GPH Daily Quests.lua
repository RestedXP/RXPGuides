if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#wotlk
#cata
#group RestedXP Misiones diarias de Rasganorte
#name Mejor ruta de misiones diarias de oro por hora

--20 daily quests total
--5(rep depending) quests from Hodir (didnt include dragon flying one. its terrible) may not be 5 quests for everyone. should be at least 3 though
--6 from icecrown. quests from Ebon Blade
--9 from icecrown. quests from gunship/surroundings
--all of these quests require pre quests to be completed/unlocked. each section has checks to see if they have completed pre quests or not. if they havnt they're told to do pre quest guide
--gives the player still room to do daily heroic+normal as well as jc/cooking/fishing daily quests


--5 Quest section for The Sons of Hodir Daily Quests. Didn't include slaying dragon quest because its really bad/slow

step
	+Para desbloquear las misiones diarias de los Hijos de Hodir, primero debes completar su cadena de misiones en Las Cumbres Tormentosas. Usa la guía Los Hijos de Hodir: Desbloquear misiones diarias para desbloquear las misiones diarias
	.isQuestAvailable 13047
step
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir, la Madra de los huargos de escarcha y Arngrim el Insaciable
    .daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acepta la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acepta la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
	.daily 13046 >> Acepta la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir y la Madra de los huargos de escarcha
    .daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Acepta la misión Una limpieza viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Acepta la misión Cazador de espías
	.goto TheStormPeaks,63.49,59.73
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
	.goto TheStormPeaks,64.24,59.23
	.turnin 13046 >> Entrega la misión Alimentar a Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Regresa a Dun Niffelem
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir y la Madre del cubil huargo de escarcha
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
	>>Habla con el Yunque de Fjorn, el Cuerno de Hodir, el Yelmo de Hodir y la Madra de los huargos de escarcha
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entrega la misión Llamado de Hodir
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
step << Mage
	#completewith next
	.zone Dalaran >> Teletranspórtate a Dalaran
	>>Vuela a Corona de Hielo
step << !Mage
	#completewith next
    .hs >>Usa tu Hoguera para ir a Dalaran si tu Hoguera está establecida allí o en algún lugar cerca de Corona de Hielo.
	>>Vuela a Corona de Hielo

--9 Quest section from Icecrown Gunship and close surroundings section. 6 Quests from the gunship, other 3 from on the ground/in Ymirheim

step << Alliance
	+Para desbloquear todas las misiones diarias del bombardero de la Corona de Hielo, primero debes completar la cadena de misiones previas. Usa la guía Desbloquear misiones diarias del bombardero de la Corona de Hielo para desbloquear todas las misiones diarias.
	.isQuestAvailable 13314,13342,13321,13318
--	13314  Get the Message
-- 	13342  Not a Bug
--	13321  Retest Now
--	13318  Drag and Drop

step << Horde
	+Para desbloquear todas las misiones diarias del bombardero de la Corona de Hielo, primero debes completar la cadena de misiones previas. Usa la guía Misiones previas del bombardero de la Corona de Hielo para desbloquear todas las misiones diarias.
	.isQuestAvailable 13313,13356,13352,13358
--	13313  Blinding the Eyes in the Sky
--	13356  Retest Now
--	13352  Drag and Drop
--	13358  Not a Bug

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>En Corona de Hielo, vuela a la cañonera de la Alianza, El Rompecielos.
	>>Habla con Capitán caballero Drosche, Absalan el Piadoso, Gran capitán Justin Bartlett, Ingeniero jefe Aprietatuercas y Thassarian
	>>Están ubicados respectivamente en la parte trasera izquierda de la nave, en la cubierta superior, en la bodega central principal y abajo, en la cubierta inferior.
    .daily 13336 >>Acepta la misión Sangre de los elegidos
    .daily 13300 >>Acepta la misión Esclavos de la saronita
    .daily 13322 >>Acepta la misión Volver a probar
    .daily 13323 >>Acepta la misión Arrastrar y soltar
	.daily 13344 >>Acepta la misión Espía como puedas
    .daily 13333 >>Acepta la misión A la captura de más informes
step << Horde
	.goto IcecrownGlacier,67.00,38,0
	>>En Corona de Hielo, vuela a la cañonera de la Horda, El Martillo de Orgrim.
	>>Habla con Belisario Davos Rioht, Hermano Keltan, Atracador del cielo Korm Marcanegra, Ingeniero jefe Garrabronce y Koltira Tejemuerte
	>>Están ubicados respectivamente en la bodega frontal principal, patrullando la cubierta superior y abajo, en la cubierta inferior.
    .daily 13330 >>Acepta la misión Sangre de los elegidos
    .daily 13302 >>Acepta la misión Esclavos de la saronita
    .daily 13357 >>Acepta la misión Volver a probar
    .daily 13353 >>Acepta la misión Arrastrar y soltar
	.daily 13365 >>Acepta la misión Espía como puedas
    .daily 13331 >>Acepta la misión Mantener a la Alianza en la oscuridad
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Vuela hacia Comandante de tierra Koup (en el suelo, no en la nave)
    .daily 13309 >>Acepta la misión Asalto por aire
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Haz clic derecho en la torreta en la parte superior de la Máquina voladora para empezar la misión
	.isOnQuest 13309
step << Alliance
	>>Dispara a todos los arpones que veas para desactivarlos mientras vuelas por la zona. Los Infiltrados caerán mientras haces esto.
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Sal de la Máquina voladora. Recibirás un paracaídas. Regresa con Koup.
    .turnin 13309 >>Entrega la misión Asalto por aire
	.isQuestComplete 13309
step << Horde
	>>Vuela hacia Comandante de tierra Xutjja (en el suelo, no en la nave)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Acepta la misión Asalto por aire
step << Horde
	#completewith next
	.vehicle >>Haz clic derecho en la torreta en la parte superior de la Máquina voladora para empezar la misión
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Dispara a todos los arpones que veas para desactivarlos mientras vuelas por la zona. Los Infiltrados caerán mientras haces esto.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Sal de la Máquina voladora. Recibirás un paracaídas. Regresa con Xutjja.
    .turnin 13310 >>Entrega la misión Asalto por aire
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Habla con el Líder de escuadrón. Puede que no esté aquí si alguien más empezó la misión; tiene un tiempo de reaparición de aproximadamente 6 minutos y reaparece unos 10 metros a la derecha de Koup. Puedes omitir esto si no quieres esperar o volver a revisar después.
    .daily 13284 >>Acepta la misión Asalto por tierra
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escolta a las tropas. Deja que algunas de ellas absorban el daño de los monstruos si es necesario
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Entra en la Mina de Saronita. Habla con los esclavos para rescatarlos (a veces pueden atacarte).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,57.01,62.53
	>>NOTA: Esta misión te marcará para JcJ. Sin embargo, es MUY fácil.
    .daily 13280 >>Acepta la misión Rey de la montaña
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Haz clic derecho en el robot parecido a un gnomo
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Usa repetidamente «Salto a chorro» (3) para escalar rápidamente el acantilado (no tiene tiempo de recarga). Una vez que llegues a la cima de la montaña, usa «Plantar confalón de batalla de la Alianza» (1) para plantar el estandarte. Luego, sal del vehículo
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
    .turnin 13280 >>Entrega la misión Rey de la montaña
	.isQuestComplete 13280
step << Alliance
	>>Vuelve con Comandante de tierra Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Entrega la misión Asalto por tierra
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Habla con el Líder de escuadrón. Puede que no esté aquí si alguien más empezó la misión y tiene un tiempo de reaparición de aproximadamente 6 minutos. Puedes omitir esto si no quieres esperar o volver a revisar después.
    .daily 13301 >>Acepta la misión Asalto por tierra
step << Horde
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Escolta a las tropas. Deja que algunas de ellas absorban el daño de los monstruos si es necesario
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Entra en la Mina de Saronita. Habla con los esclavos para rescatarlos (a veces pueden atacarte).
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>NOTA: Esta misión te marca para JcJ. Sin embargo, es MUY fácil.
    .daily 13283 >>Acepta la misión Rey de la montaña
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Haz clic derecho en el robot parecido a un gnomo
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Usa repetidamente «Salto a chorro» (3) para escalar rápidamente el acantilado (no tiene tiempo de recarga). Una vez que llegues a la cima de la montaña, usa «Plantar confalón de batalla de la Horda» (1) para plantar el estandarte. Luego, sal del vehículo
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
    .turnin 13283 >>Entrega la misión Rey de la montaña
	.isQuestComplete 13283
step << Horde
	>>Vuelve con Comandante de tierra Xutjja
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>Entrega la misión Asalto por tierra
	.isQuestComplete 13301
step
	>>Ve a la plataforma y mata a los Bitter Initiates en la zona. Despoja los para obtener su Orbe de ilusión
	.use 44246 >>Usa el Orbe de ilusión en los Subyugadores oscuros en la zona cuando no estés en combate.
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Usa la Pistola de dardos de tu inventario en los Exploradores del Martillo de Orgrim (puedes usarla mientras estés en tu montura voladora). Despoja sus cadáveres para obtener los Informes
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Usa el SGM-3 de tu inventario en los Skybreaker Recon Fighters en el aire
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>Usa el Tónico de culto diluido de tu inventario para obtener el beneficio de «Discernimiento oscuro». Esto te permite despojar las Esencias contaminadas de todos los humanoides que mates en la zona
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >> Haz clic derecho en las Esencias contaminadas de tu inventario para convertirlas en una Masa retorcida. Lanza la Masa retorcida en un caldero
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Mata a 5 Esbirros esclavizados (caminantes del vacío). Usa la Vara de succión en sus cadáveres para obtener su Materia oscura
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>Haz clic en la Piedra invocadora
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Regresa al Rompecielos. Habla con Capitán Drosche, Absalán el Piadoso, Gran capitán Justin Bartlett, Ingeniero jefe Aprietatuercas y Thassarian
    .turnin -13336 >>Entrega la misión Sangre de los elegidos
    .turnin -13300 >>Entrega la misión Esclavos de la saronita
    .turnin -13322 >>Entrega la misión Volver a probar
    .turnin -13323 >>Entrega la misión Arrastrar y soltar
	.turnin -13344 >>Entrega la misión No es un error
    .turnin -13333 >>Entrega la misión Capturar más despachos
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Regresa al Martillo de Orgrim. Habla con Belisario Davos Rioht, Hermano Keltan, Atracador del cielo Korm Marcanegra, Ingeniero jefe Garrabronce y Koltira Tejemuerte
    .turnin -13330 >>Entrega la misión Sangre de los elegidos
    .turnin -13302 >>Entrega la misión Esclavos de la saronita
    .turnin -13357 >>Entrega la misión Volver a probar
    .turnin -13353 >>Entrega la misión Arrastrar y soltar
	.turnin -13365 >>Entrega la misión No es un error
    .turnin -13331 >>Entrega la misión Mantener a la Alianza a ciegas

--6 Quest section from Knights of the Ebon Blade. 3 come from The Shadow Vault, other 3 from Death's Rise

step
	+Para desbloquear las misiones diarias de Caballeros de la Espada de Ébano, primero debes completar su cadena de misiones en Corona de Hielo. Usa la guía Ebon Blade Desbloquear Daily Quests para desbloquear las misiones diarias.
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>Desde La Cámara de las Sombras, acepta las 3 misiones diarias.
    >>Habla con Plateado.
	.daily 12995 >>Acepta la misión Dejar nuestra huella
	.goto Icecrown,42.84,24.92
	>>Habla con El Saltador. Camina alrededor de la tienda.
	.daily 13069 >>Acepta la misión Dispárales
	.goto IcecrownGlacier,43.5,25.0
	>>Habla con Vil, es una abominación que patrulla el camino entre la entrada y el edificio principal.
    .daily 13071 >>Acepta la misión ¡A Vil gustar fuego!
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Mata a los Vrykul en la zona. Usa el Estandarte de la Espada de Ébano que está en tus bolsas sobre sus cadáveres.
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>Mientras estés dentro del Arpón, usa "Arpón de fuego rápido" (3) repetidamente para derribar a los Dragons.
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >> Haz clic derecho en Protodraco Njorndar para montarlo.
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Usa "Ráfaga de velocidad" (1) cada vez que esté disponible para moverte más rápido. Usa "Ametrallar edificio de Jotunheim" (3) para incendiar los edificios.
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Regresa a La Cámara de las Sombras. Habla con Plateado, El Saltador y Vil.
	.turnin 12995 >>Entrega la misión Dejar nuestra huella
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Entrega la misión Disparar'Em Up.
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Entrega la misión ¡A Vil gustar fuego!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>Desde Death's Levantar, acepta las 3 misiones diarias.
	>>Habla con Setaal.
	.daily 12813 >>Acepta la misión ¡De sus cadáveres se alzan!
	.goto Icecrown,19.67,48.39
	>>Habla con Aurochs. Patrulla alrededor del fuego del medio.
    .daily 12838 >>Acepta la misión Acumular inteligencia
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Habla con Uzo.
    .daily 12815 >>Acepta la misión Espacio aéreo protegido
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Mata a los Grifo Riders en la zona. Derríbalos con habilidades a distancia o junta a varios en el aire y luego baja volando para matarlos.
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Mata a los mobs de Agresión en la zona. Usa la Tintura de Ensalmador Oscuro que está en tus bolsas sobre sus cadáveres.
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Mata a los mobs de Agresión y luego despójalos para obtener sus llaves. Úsalas para abrir cofres por todo Agresión Harbor y conseguir los Documents.
	>>|cff00ecffNOTA: Abre solo los cofres que brillan para los Documents. Los cofres que no brillan NO contienen Documents.|r
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Mata a los mobs de Agresión en la zona. Usa la Tintura de Ensalmador Oscuro que está en tus bolsas sobre sus cadáveres.
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Regresa a Death's Levantar. Habla con Uzo, Setaal y Aurochs.
    .turnin 12815 >>Entrega la misión Espacio aéreo protegido.
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Entrega la misión ¡De sus cadáveres se alzan!.
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Entrega la misión Acumular inteligencia
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
]])
