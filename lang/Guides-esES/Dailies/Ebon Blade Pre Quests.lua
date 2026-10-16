if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Ebon Blade Desbloquear misiones diarias

step
    +Has completado la cadena de Pre Misión de Caballeros de la Espada de Ébano. Usa la guía Ebon Blade Daily Quests Route para completar las misiones diarias.
	.isQuestTurnedIn 12814

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Vuela a El Rompecielos, el gran barco de la Alianza que está volando muy alto en el aire
	>>Habla con Thassarian en la esquina trasera izquierda del barco
    .accept 12887 >>Acepta la misión Pura diversión
step << Horde
	.goto Icecrown,62.58,45.04
	>>Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire
	>>Habla con Koltira Tejemuerte en la habitación delantera del barco
    .accept 12892 >>Acepta la misión Pura diversión
step
    .goto IcecrownGlacier,44.5,21.6
	.use 41265 >> Vuela a la cima de la torre. Usa el Láser de dolor de ojos en tus bolsas sobre Ocular hasta que muera
    .complete 12887,1 << Alliance --The Ocular has been destroyed (1)
    .complete 12892,1 << Horde --The Ocular has been destroyed (1)
step
    .goto IcecrownGlacier,44.1,24.7
	>>Vuela hasta Barón Plateado en el suelo. Habla con él
    .turnin 12887 >>Entrega la misión Pura diversión << Alliance
    .turnin 12892 >>Entrega la misión Pura diversión << Horde
    .accept 12891 >>Acepta la misión Tengo una idea, pero primero…
step
	>>Mata a los Geists y despójalos para obtener su Cuerda, mata a los Abominations y despójalos para obtener su Anzuelo, mata a los Cultists y despójalos para obtener su Rod, y mata a los mobs No-muerto y despójalos para obtener su Esencia
    .complete 12891,1 --Cultist Rod (1)
    .goto IcecrownGlacier,43.8,24.2,40,0
    .goto IcecrownGlacier,43.6,25.1,40,0
    .goto IcecrownGlacier,43.7,25.4,40,0
    .goto IcecrownGlacier,42.5,25.1,40,0
    .goto IcecrownGlacier,42.3,26.1
    .complete 12891,3 --Geist Rope (1)
    .goto IcecrownGlacier,43.4,25.6,40,0
    .goto IcecrownGlacier,43.3,26.6,40,0
    .goto IcecrownGlacier,42.5,26.4,40,0
    .goto IcecrownGlacier,42.9,24.5
    .complete 12891,2 --Abomination Hook (1)
    .goto IcecrownGlacier,43.3,24.1,40,0
    .goto IcecrownGlacier,43.5,26.2,40,0
    .goto IcecrownGlacier,42.5,28.1,40,0
    .goto IcecrownGlacier,42.7,25.7
   .complete 12891,4 --Scourge Essence (5)
    .goto IcecrownGlacier,43.6,24.1,40,0
    .goto IcecrownGlacier,42.6,27.2,40,0
    .goto IcecrownGlacier,42.3,26.1
step
    .goto IcecrownGlacier,44.2,24.6
	>>Regresa con Plateado
    .turnin 12891 >>Entrega la misión Tengo una idea, pero primero…
    .accept 12893 >>Acepta la misión Libera tu mente
step
    .goto IcecrownGlacier,44.4,27.0
	.use 41366 >> Mata a Vil. Usa la Vara soberana en su cadáver
    .complete 12893,1 --Vile turned (1)
step
    .goto IcecrownGlacier,41.8,24.5
	.use 41366 >> Mata a Lady Bosqueténebro. Usa la Vara soberana en su cadáver
    .complete 12893,2 --Lady Nightswood turned (1)
step
    .goto IcecrownGlacier,43.0,23.5,70,0
    .goto IcecrownGlacier,44.8,24.3,70,0
    .goto IcecrownGlacier,46.2,21.9,70,0
    .goto IcecrownGlacier,45.7,19.7,70,0
    .goto IcecrownGlacier,43.7,19.0,70,0
    .goto IcecrownGlacier,42.6,21.1
	.use 41366 >> Mata a El Saltador. Usa la Vara soberana en su cadáver. Se pasea por FUERA del edificio principal, en el piso superior.
    .complete 12893,3 --The Leaper turned (1)
	.unitscan The Leaper
step
	#label Freemind
    .goto IcecrownGlacier,44.2,24.7
	>>Regresa con Plateado
    .turnin 12893 >>Entrega la misión Libera tu mente
    .accept 12896 >>Acepta la misión Si no puede ser transformado << Alliance
    .accept 12897 >>Acepta la misión Si no puede ser transformado << Horde
step
    .goto IcecrownGlacier,44.7,19.8
	>> Ve al edificio y haz clic en el Expositor de armas del Gran general. Ten cuidado, porque esto invoca a un élite. Mata a Gran general Aterraluz
    .complete 12896,1 << Alliance --General Lightsbane (1)
    .complete 12897,1 << Horde --General Lightsbane (1)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Vuela de regreso a El Rompecielos. Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 12896 >>Regresa para entregar la misión Si no puede ser transformado
    .accept 12898 >>Acepta la misión La Cámara de las Sombras
step << Horde
	>>Vuela de regreso a El Martillo de Orgrim. Habla con Koltira Tejemuerte en la habitación delantera del barco
    .turnin 12897 >>Entrega la misión Si no puede ser transformado
    .accept 12899 >>Acepta la misión La Cámara de las Sombras
step
    .goto IcecrownGlacier,42.8,24.9
	>>Regresa con Barón Plateado
	.turnin 12898 >>Entrega la misión La Cámara de las Sombras << Alliance
    .turnin 12899 >>Entrega la misión La Cámara de las Sombras << Horde
    .accept 12938 >>Acepta la misión El Duque
step
	#completewith next
    .goto IcecrownGlacier,43.7,24.4
    .fp The Shadow Vault >> Aprende la ruta de vuelo hacia La Cámara de las Sombras
step
    .goto IcecrownGlacier,44.7,20.3
	>>Entra al edificio. Habla con Lankral
    .turnin 12938 >>Entrega la misión El Duque
    .accept 12939 >>Acepta la misión Desafío de honor
step
    .goto Icecrown,43.60,25.13
	>>Habla con El Saltador, se pasea alrededor de la tienda
    .accept 12955 >>Acepta la misión Eliminar a la competencia
step
    .goto IcecrownGlacier,37.5,24.7,0,0
	#sticky
	#label mjordincombat
	.use 41372 >> Usa la Bandera de desafío en el Combatiente Mjordin desde lejos. Puedes desafiar a varios Combatants a la vez siempre que te mantengas fuera de combate (pero solo 1 mob por cada dúo de 2)
    .complete 12939,1 --Mjordin Combatants challenged and defeated (6)
step
	>>Vuela a Salvaje Ledge
	>>Habla con Tinky, Sigrid, Onu'zun y Efrem en Salvaje Ledge. Derrótalos
    .complete 12955,4 --Tinky Wickwhistle defeated (1)
    .goto IcecrownGlacier,36.1,23.6
    .complete 12955,1 --Sigrid Iceborn defeated (1)
    .goto IcecrownGlacier,37.1,22.4
    .complete 12955,3 --Onu'zun defeated (1)
    .goto IcecrownGlacier,37.9,22.9
    .complete 12955,2 --Efrem the Faithful defeated (1)
    .goto IcecrownGlacier,37.9,25.1
	.skipgossip
step
    .goto IcecrownGlacier,43.5,25.0
	>>Regresa con El Saltador
    .turnin 12955 >>Entrega la misión Eliminar a la competencia
step
    .goto IcecrownGlacier,44.7,20.3
	>>Entra al edificio. Habla con Lankral
    .turnin 12939 >>Entrega la misión Desafío de honor
    .accept 12943 >>Acepta la misión Decreto de La Cámara de las Sombras
step
	#completewith next
    .goto IcecrownGlacier,39.01,23.99,25 >> El camino hacia Ufrang's Hall empieza aquí
step
    .goto IcecrownGlacier,41.0,23.9
	>> Regresa al Saliente Salvaje y luego entra en la Sala de Ufrang. Habla con Vaelen, que está encadenado adentro.
    .accept 12949 >>Acepta la misión Consigue la llave
step
    .goto IcecrownGlacier,40.3,23.9
	.use 41776 >> Usa el Decreto de la Cámara de las Sombras de tu inventario frente al Thane. Mátalo.
    .complete 12943,1 --Thane Ufrang the Mighty (1)
step
    .goto IcecrownGlacier,37.7,23.9,70,0
    .goto IcecrownGlacier,36.7,23.7
	>>Regresa al Saliente Salvaje. Mata al instructor Hroegar, que está patrullando alrededor. Despójalo para conseguir su llave.
    .complete 12949,1 --Key to Vaelen's Chains (1)
	.unitscan Instructor Hroegar
step
    .goto IcecrownGlacier,41.0,23.9
	>>Regresa dentro de la Sala de Ufrang. Regresa con Vaelen.
    .turnin 12949 >>Entrega la misión Consigue la llave
    .accept 12951 >>Acepta la misión Que el Barón lo sepa
step
    .goto IcecrownGlacier,39.01,23.99,25,0
    .goto IcecrownGlacier,42.9,24.9
	>>Sal de la Sala. Regresa con el Barón de Plata.
    .turnin 12951 >>Entrega la misión Que el Barón lo sepa
    .daily 12995 >>Acepta la misión Dejar nuestra huella
    .accept 13085 >>Acepta la misión Vaelen ha vuelto
step
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
	>>Habla con Vil que está patrullando a lo largo del camino principal
    .accept 12992 >>Acepta la misión ¡Aplastar a los vrykuls!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Entra en el edificio. Habla con Vaelen adentro a la izquierda.
    .turnin 13085 >>Entrega la misión Vaelen ha vuelto
    .accept 12982 >>Acepta la misión Prisioneros de la Espada de Ébano
step
    .goto IcecrownGlacier,44.7,20.4
	>>Habla con Lankral
    .turnin 12943 >>Entrega la misión Decreto de La Cámara de las Sombras
    .accept 13084 >>Acepta la misión Saqueando Jotunheim
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Mata a los Vrykul en la zona y despoja a los Vrykul para obtener sus llaves de jaulas. Usa el Estandarte de la Espada de Ébano en tu inventario en sus cadáveres. Haz clic en cualquier llave saqueada en las jaulas encontradas en Jotunheim.
	>>Quema los Estandartes encontrados en todo Jotunheim
	.collect 42422,8,12982,1,-1 --Jotunheim Cage Key (8)
    .complete 12982,1 --Ebon Blade Prisoners set free (8)
    .complete -12995,1 --Ebon Blade Banner planted near Vrykul corpse (0/15)
    .complete 12992,1 --Jotunheim Vrykul slain (0/15)
    .complete 13084,1 --Vrykul banners burned (10)
step
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
	>>Regresa a La Cámara de las Sombras. Habla con Vil que está patrullando a lo largo del camino principal.
    .turnin 12992 >>Entrega la misión ¡Aplastar a los vrykuls!
    .daily 13071 >>Acepta la misión ¡A Vil gustar fuego!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Entra en el edificio. Habla con Vaelen adentro a la izquierda.
    .turnin 12982 >>Entrega la misión Prisioneros de la Espada de Ébano
step
    .goto IcecrownGlacier,44.7,20.4
	>>Habla con Lankral
    .turnin 13084 >>Entrega la misión Saqueando Jotunheim
step
    .goto IcecrownGlacier,42.9,24.9
    >>Regresa a Plateado
	.turnin 12995 >>Entrega la misión Dejar nuestra huella.
	.isQuestComplete 12995
step
    .goto IcecrownGlacier,42.9,24.9
	>>Habla con Plateado.
    .accept 12806 >>Acepta la misión ¡A Ascenso a toda prisa!
step
    .goto IcecrownGlacier,43.5,25.0
	>>Habla con El Saltador que camina alrededor de la tienda
    .daily 13069 >>Acepta la misión Dispárales
step
    .goto IcecrownGlacier,27.9,33.2
	>> Entra en uno de los Arpones de Fuego rápido de Jotunheim ubicados centralmente.
	>> Mientras estés dentro del Arpón, usa "Arpón de fuego rápido" (3) repetidamente para derribar a los Dragons.
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
    .goto IcecrownGlacier,19.5,48.1
	>>Desmonta del draco, luego ve al Ascenso de la Muerte. Es una pequeña plataforma ubicada a mitad de camino entre el nivel del mar y la cima de la montaña. Habla con Arete.
    .turnin 12806 >>Entrega la misión ¡Al Ascenso a toda prisa!
    .accept 12807 >>Acepta la misión La historia hasta ahora…
step
    .goto IcecrownGlacier,19.5,48.1
	>>Habla con Lord comandante Arete de nuevo
    .complete 12807,1 --Lord-Commander Arete's tale listened to. (1)
    .turnin 12807 >>Entrega la misión La historia hasta ahora…
    .accept 12810 >>Acepta la misión Sangre en el agua
	.skipgossip
step
	#sticky
	#label DeathRise
    .goto IcecrownGlacier,19.3,47.8
    .fp Death's Rise >> Aprende la ruta de vuelo hacia el Ascenso de la Muerte.
step
	>>Habla con Setaal.
    .daily 12813 >>Acepta la misión ¡De sus cadáveres se alzan!
    .goto Icecrown,19.67,48.39
	>>Habla con Aurochs. Patrulla alrededor del fuego del medio.
    .daily 12838 >>Acepta la misión Acumular inteligencia
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Opcional. Puedes omitir o completar estas 2 misiones diarias.
step
	#requires DeathRise
    #sticky
	#label transformedcorpse
    .goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Mata a los mobs de Agresión en la zona. Usa la Tintura de Ensalmador Oscuro que está en tus bolsas sobre sus cadáveres.
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires DeathRise
	>>Mata a los mobs de Agresión y luego despójalos para obtener sus llaves. Úsalas para abrir cofres por todo Agresión Harbor y conseguir los Documents.
	>>Los cofres no tienen una tasa de caída del 100% para los Documentos.
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
	#requires transformedcorpse
	.use 40551 >> Ve hacia el mar aproximadamente 30-90 yardas de la costa y mata a Fauce voraz. Usa la Vejiga de sangre en tu inventario sobre sus cadáveres.
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5,90,0
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5
    .complete 12810,1 --Blood collected from Ravenous Jaws (10)
step
	>>Regresa al Ascenso de la Muerte. Habla con Arete.
    .turnin 12810 >>Entrega la misión Sangre en el agua
    .accept 12814 >>Acepta la misión Necesitarás un grifo
    .goto IcecrownGlacier,19.6,48.1
step
	>>Habla con Aurochs. Patrulla alrededor del fuego del medio.
    .turnin -12838 >>Entrega la misión Acumular inteligencia.
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Habla con Setaal.
    .turnin -12813 >>Entrega la misión ¡De sus cadáveres se alzan!.
    .goto IcecrownGlacier,19.7,48.4
step
    .goto IcecrownGlacier,10.4,44.1
	>> Mata a los Jinetes de grifo del Embate en la zona. Despójalos de sus Riendas de grifo de acometida.
	.collect 40970,1,12814,1 --Onslaught Grpyhon Reins (1)
step
    .goto IcecrownGlacier,19.6,47.8
	>>Regresa al Ascenso de la Muerte en tu montura Normal. Cuando llegues al dador de misiones, usa las Riendas de grifo y usa "Entregar grifo" (1) para entregarlo.
    .complete 12814,1 --Onslaught Gryphon delivered to Uzo Deathcaller (1)
	.use 40970
step
    .goto Icecrown,19.64,47.80
	>>Habla con Uzo Clamamuerte
    .turnin 12814 >>Entrega la misión Necesitarás un grifo
    .daily 12815 >>Acepta la misión Espacio aéreo protegido
step
    .goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>> Mata a los Jinetes de grifo en la zona. Dispárales con habilidades a distancia o agrupa a varios de ellos en el aire y luego vuela hacia abajo y mátalos. Si agrupas a muchos, no dejes que te golpeen por la espalda o serás desmontado.
    .complete 12815,1 --Onslaught Gryphon Rider (10)
step
	.goto Icecrown,19.64,47.80
	>>Regresa al Ascenso de la Muerte. Habla con Uzo.
    .turnin 12815 >>Entrega la misión Espacio aéreo protegido.
step
    >>Regresa a La Cámara de las Sombras. Habla con El Saltador y Vil
    .turnin -13069 >>Gira en Dispárales
	.goto IcecrownGlacier,43.5,25.0
    .turnin -13071 >>Entrega la misión ¡A Vil gustar fuego!.
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
step
    +Completaste la cadena Caballeros de la Espada de Ébano Pre Misión. Por favor usa la guía Ebon Blade Daily Quests Route para completar las misiones diarias. Nota: algunas pueden no estar disponibles hoy porque ya fueron completadas anteriormente
	.isQuestTurnedIn 12814
]])
