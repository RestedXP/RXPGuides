if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Desbloquea las misiones diarias de Los Hijos de Hodir

step
    +Has completado la cadena de misiones previa de Los Hijos de Hodir. Usa la guía The Sons of Hodir Daily Quests Route para completar las misiones diarias
	.isQuestTurnedIn 13047
step
	.goto TheStormPeaks,41.15,86.14
	>>Vuela a K3
    >>Entra en la posada. Habla con Gretchen
    .accept 12843 >>Acepta la misión ¡Se llevaron a nuestros hombres!
step
    .goto TheStormPeaks,40.1,73.8,70,0
    .goto TheStormPeaks,40.3,69.8,70,0
    .goto TheStormPeaks,42.2,71.0,70,0
    .goto TheStormPeaks,41.6,73.7,60,0
    .goto TheStormPeaks,40.7,72.7
	>>Vuela a Poblado Sifreldar
	>>Mata a los Sifreldar para obtener llaves de hierro frío. Usa las llaves en las jaulas del prisionero goblin de la zona
    .collect 40641,5,12843,1,-1
    .complete 12843,1 --Goblin Prisoner freed (5)
step
    .goto TheStormPeaks,41.15,86.14
	>>Regresa a K3. Habla con Gretchen dentro de la posada
    .turnin 12843 >>Entrega la misión ¡Se llevaron a nuestros hombres!
    .accept 12846 >>Acepta la misión Ningún goblin se queda atrás
step << !Human
	#completewith tribute
	>>Despoja a los enemigos por todas Las Cumbres Tormentosas hasta obtener Reliquias de Ulduar. Como alternativa, puedes comprarlas en la Casa de Subastas
    .collect 42780,10 --Relic of Ulduar (10)
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step
    .goto TheStormPeaks,42.1,69.5,60,0
    .goto TheStormPeaks,42.80,68.90
	>>Entra en la Mina Forlorn. Habla con Lok'lira
    .turnin 12846 >>Entrega la misión Ningún goblin se queda atrás
    .accept 12841 >>Acepta la misión El trato de la vieja bruja
step
    .goto TheStormPeaks,44.3,67.1,30,0
    .goto TheStormPeaks,44.1,70.2,30,0
    .goto TheStormPeaks,45.1,71.0
	>>Mata a Sobrestante Syra dentro de la Mina Forlorn. Despójala para obtener Runas de Yrkvinn
    .complete 12841,1 --Runes of the Yrkvinn (1)
	.unitscan Overseer Syra
step
    .goto TheStormPeaks,42.80,68.90
	>>Regresa con Lok'lira
    .turnin 12841 >>Entrega la misión El trato de la vieja bruja
    .accept 12905 >>Acepta la misión Mildred la Cruel
step
    .goto TheStormPeaks,44.39,68.93
	>>Sube las escaleras. Habla con Mildred
    .turnin 12905 >>Entrega la misión Mildred la Cruel
    .accept 12906 >>Acepta la misión Disciplina
step
    .goto TheStormPeaks,44.8,67.2,40,0
    .goto TheStormPeaks,44.6,70.6,40,0
    .goto TheStormPeaks,44.1,69.9,40,0
    .goto TheStormPeaks,44.8,71.3,40,0
    .goto TheStormPeaks,44.3,66.8,40,0
    .goto TheStormPeaks,43.0,68.0,40,0
    .goto TheStormPeaks,43.4,70.5
	.use 42837 >> Usa la Vara disciplinante que está en tus bolsas sobre un Vrykul exhausto en los túneles de la mina
    .complete 12906,1 --Exhausted Vrykul Disciplined (6)
step
    .goto TheStormPeaks,44.39,68.93
	>>Habla con Mildred
    .turnin 12906 >>Entrega la misión Disciplina
    .accept 12907 >>Acepta la misión Castigos ejemplares
step
    .goto TheStormPeaks,45.40,69.10
	>>Mata a Garhal justo al este de Mildred en la cueva
    .complete 12907,1 --Garhal (1)
step
    .goto TheStormPeaks,44.39,68.93
	>>Habla con Mildred
    .turnin 12907 >>Entrega la misión Castigos ejemplares
    .accept 12908 >>Acepta la misión Un prisionero concreto
step
    .goto TheStormPeaks,42.80,68.90
	>>Habla con Lok'lira
    .turnin 12908 >>Entrega la misión Un prisionero concreto
    .accept 12921 >>Acepta la misión Un cambio de escenario
step
    .goto TheStormPeaks,41.8,69.6,30,0
    .goto TheStormPeaks,47.47,69.09
	>>Sal de la Mina Forlorn. Vuela a Poblado Brunnhildar
    .turnin 12921 >>Entrega la misión Un cambio de escenario
    .accept 12969 >>Acepta la misión ¿Es ese tu goblin?
step
    .goto TheStormPeaks,48.25,69.77
	>>Habla con Agnetta. Mátala para liberar a Zeev
    .complete 12969,1 --Agnetta Tyrsdottar (1)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Habla con Lok'lira
    .turnin 12969 >>Entrega la misión ¿Es ese tu goblin?
    .accept 12970 >>Acepta la misión El Encuentro Hyldnir
	>>Habla con Lok'lira la Vieja Bruja sobre su propuesta
    .complete 12970,1 --Listen to Lok'lira's proposal (1)
	.skipgossip 29975,1
    .turnin 12970 >>Entrega la misión El Encuentro Hyldnir
    .accept 12971 >>Acepta la misión Enfrentarse a todos los retos
step
    .goto TheStormPeaks,50.5,68.1,30,0
    .goto TheStormPeaks,51.5,66.2
	>>Habla con los Desafiadores victoriosos de la zona para atacarlos. Mátalos
    .complete 12971,1 --Victorious Challenger (6)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Habla con Lok'lira
    .turnin 12971 >>Entrega la misión Enfrentarse a todos los retos
    .accept 12972 >>Acepta la misión Necesitarás un oso
step
    .goto TheStormPeaks,53.14,65.72
	>>Habla con Brijana
    .turnin 12972 >>Entrega la misión Necesitarás un oso
    .accept 12851 >>Acepta la misión Una osa poderosa
step
   	#completewith next
    .goto The Storm Peaks,53.12,65.61
	.vehicle >>Monta a Colmillo de Hielo justo al lado de Brijana
step
    .goto TheStormPeaks,53.1,65.6,0
    .goto TheStormPeaks,57.4,63.0
	>>Usa Flecha llameante (1) para quemar a los Huargos de escarcha y a los Gigantes de escarcha. NO uses Ráfaga de velocidad (2), solo enfócate en golpear todos los objetivos
    .complete 12851,1 --Frostworgs Burned (7)
    .complete 12851,2 --Frost Giants Burned (15)
step
    .goto TheStormPeaks,53.14,65.72
	>>Usa Ráfaga de velocidad (2) para regresar a Brijana más rápido. Habla con ella
    .turnin 12851 >>Entrega la misión A lomos de la osa
    .accept 12856 >>Acepta la misión Corazón helado
step
    #completewith next
    .goto TheStormPeaks,63.20,62.88
	.vehicle >>Vuela a Dun Niffelem. Monta un Protodraco cautivo, están encadenados a los grandes picos de hielo alrededor de los muros exteriores de Dun Niffelem
step
    .waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
    .goto The Storm Peaks,66.75,60.63
	>>Usa la primera habilidad de tu dragón en uno de los Prisioneros de Brunnhildar congelados en el Bloque de hielo cuando estés cerca de ellos.
    >> Regresa a Brunnhildar cuando tengas 3 prisioneros en tu Protodraco. Haz esto 3 veces
    .complete 12856,1 --Rescued Brunnhildar Prisoners (9)
    .complete 12856,2 --Freed Proto-Drakes (3)
step
    .goto TheStormPeaks,53.14,65.72
	>>Habla con Brijana
    .turnin 12856 >>Entrega la misión Corazón helado
    .accept 13063 >>Acepta la misión Demostrar el valor
step
    .goto TheStormPeaks,49.75,71.81
	>>Regresa a Brunnhildar. Habla con Astrid
    .turnin 13063 >>Entrega la misión Demostrar el valor
    .accept 12900 >>Acepta la misión Hacer un arnés
step
    .goto TheStormPeaks,48.3,74.7,70,0
    .goto TheStormPeaks,48.3,77.1,70,0
    .goto TheStormPeaks,44.8,74.1
	>>Mata a los Yetis melena de hielo. Despójalos para obtener sus pieles
    .complete 12900,1 --Icemane Yeti Hide (3)
step
    .goto TheStormPeaks,49.75,71.81
	>>Habla con Astrid
    .turnin 12900 >>Entrega la misión Hacer un arnés
    .accept 12983 >>Acepta la misión La última de su raza
    .accept 12989 >>Acepta la misión La oscuridad reptadora
step
    #completewith next
    .goto TheStormPeaks,55.8,63.9,30 >>Entra en la Caverna Hibernal
step
    .goto TheStormPeaks,54.8,60.4
	>>Mata al Jormungar en la cueva
 	>>NO montes al oso herido en el medio de la cueva todavía
    .complete 12989,1 --Ravenous Jormungar (8)
step
	#completewith next
    .goto TheStormPeaks,54.79,60.37
	.vehicle >>Haz clic derecho en la Matriarca de las garras de hielo para montarla fuera de la Caverna Hibernal
step
    .goto TheStormPeaks,49.82,71.12
	>>Monta al Oso de regreso a Brunnhildar. Esto toma 1m 8s, así que puedes tomarte un descanso durante este tiempo
    .complete 12983,1 --Icemaw Matriarch Rescued (1)
step
    .goto TheStormPeaks,49.75,71.81
	>>Habla con Astrid
    .turnin 12983 >>Entrega la misión La última de su raza
    .accept 12996 >>Acepta la misión El calentamiento
    .turnin 12989 >>Entrega la misión La oscuridad reptadora
step
	#completewith next
    .goto TheStormPeaks,50.79,67.68
	.vehicle >> Vuela a Kirgaraak. Usa las Riendas de matriarca oso de guerra en tus bolsas para montarlo
	.use 42481
step
    .goto TheStormPeaks,50.79,67.68
	.use 42481 >>Mata a Kirgaraak. Usa Magullar (1) para causar daño. Usa Machaque (2) seguido de Cargar (3) para causar daño adicional
    .complete 12996,1 --Kirgaraak Defeated (1)
step
	.goto TheStormPeaks,49.75,71.81
	>>Desmóntate del Oso. Habla con Astrid
    .turnin 12996 >>Entrega la misión El calentamiento
    .accept 12997 >>Acepta la misión Al foso
step
	#completewith next
    .goto TheStormPeaks,49.24,68.46
	.vehicle >> Vuela al Foso de los Colmillos. Usa las Riendas de matriarca oso de guerra en tus bolsas para montarlo
	.use 42499
step
    .goto TheStormPeaks,49.24,68.46
	.use 42499 >>Mata a los osos de guerra en el foso. Usa Magullar (1) para causar daño. Usa Machaque (2) seguido de Cargar (3) para causar daño adicional.
    .complete 12997,1 --Hyldsmeet Warbear (6)
step
    .goto TheStormPeaks,49.75,71.81
	>>Desmóntate del Oso. Habla con Astrid
    .turnin 12997 >>Entrega la misión Al foso
    .accept 13061 >>Acepta la misión Prepárate para la gloria
step
    .goto TheStormPeaks,47.47,69.09
	>>Habla con Lok'lira
    .turnin 13061 >>Entrega la misión Prepárate para la gloria
    .accept 13062 >>Acepta la misión El regalo de despedida de Lok'lira
step
    .goto TheStormPeaks,50.88,65.58
	>>Habla con Gretta
    .turnin 13062 >>Entrega la misión El regalo de despedida de Lok'lira
    .accept 12886 >>Acepta la misión El Drakkensryd
step
    .goto TheStormPeaks,35.4,57.8
	.use 41058 >>Vuela en el dragón al Templo de las Tormentas (esto toma 1m 10s, así que puedes tomarte un descanso durante este tiempo). Usa el Arpón Hyldnir en tus bolsas para saltar a los dragones que tengan Jinete de dracos. Mátalos
    .complete 12886,1 --Hyldsmeet Drakerider Defeated (10)
step
    .goto TheStormPeaks,33.42,57.95
	>>Usa el Arpón Hyldnir en un Adorno de columna (esferas más pequeñas) en las columnas del Templo de las Tormentas para saltar sobre él
	>>Habla con Thorim
    .turnin 12886 >>Entrega la misión El Drakkensryd
    .accept 13064 >>Acepta la misión Rivalidad fraternal
	>>Habla con Thorim
    .complete 13064,1 --Thorim's History Heard (1)
	.skipgossip 29445,1
    .turnin 13064 >>Entrega la misión Rivalidad fraternal
    .accept 12915 >>Acepta la misión Enmiendas
	.use 41058
step
	#completewith Giants
	#label Slag
    .goto TheStormPeaks,71.8,61.1,0
	>>Mata a los Gigantes de Hierro Tronaforjados. Despoja a los Gigantes de Hierro Tronaforjados para obtener Metal cubierto de escoria. Inicia la misión
	.collect 41556,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Acepta la misión El fuego del refinador
step
	#completewith next
	#requires Slag
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Mata a todos los Vengativos Hirvientes que veas. Despoja a los Vengativos Hirvientes para obtener Chispas
    .complete 12922,1 --Furious Spark (10)
step
	#label Giants
    .goto TheStormPeaks,75.0,63.6,70,0
    .goto TheStormPeaks,71.8,61.1
	>>Despoja las Rocas de Granito encontradas en el suelo en el Lago de Campo de Escarcha y Fjorns Yunque (solo puedes llevar uno a la vez)
	.use 41505 >> Usa el Amuleto de tierra de Thorim en tus bolsas cuando tienes una Roca en los Gigantes de Hierro Tronaforjados para ayudarte a matarlos
	.collect 41506,1,12915,1,-1
    .complete 12915,2 --Stormforged Iron Giants (5)
step
    .goto TheStormPeaks,71.8,61.1
	>>Mata a los Gigantes de Hierro Tronaforjados. Despoja a los Gigantes de Hierro Tronaforjados para obtener Metal cubierto de escoria. Inicia la misión
	.collect 41505,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Acepta la misión El fuego del refinador
step
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Mata a los Vengativos Hirvientes. Despoja a los Vengativos Hirvientes para obtener Chispas
    .complete 12922,1 --Furious Spark (10)
step
	#completewith end
	#label FjornAnvil
    .goto TheStormPeaks,77.17,62.84
	>>Haz clic en el Yunque de Fjorn
    .turnin 12922 >>Entrega la misión El fuego del refinador
    .accept 12956 >>Acepta la misión Una chispa de esperanza
step
    .goto TheStormPeaks,77.34,62.87
	>>Despoja las Rocas de Granito encontradas en el suelo en el Lago de Campo de Escarcha y Fjorns Yunque (solo puedes llevar uno a la vez)
	.use 41505 >> Usa el Amuleto de tierra de Thorim en tus bolsas cuando tienes una Roca en Fjorn para ayudarte a matarlo
    .complete 12915,1 --Fjorn (1)
step
	#label Thorim1
    .goto TheStormPeaks,33.4,57.9
	>>Vuela a Thorim
    .turnin 12915 >>Entrega la misión Enmiendas
    .turnin 12956 >>Entrega la misión Una chispa de esperanza
    .accept 12924 >>Acepta la misión Forjando una Alianza
step
	.goto TheStormPeaks,65.45,60.16
	>>Habla con Rey Jokkum
    .accept 12966 >>Acepta la misión No tiene pérdida
step
	.goto TheStormPeaks,75.37,63.57
	>>Habla con Njormeld
    .turnin 12966 >>Entrega la misión No tiene pérdida
    .accept 12967 >>Acepta la misión Luchar contra los elementales
step
    #completewith next
    .goto TheStormPeaks,75.71,63.91
    .vehicle >>Haz clic derecho en Snorri para montarlo :3
step
    .goto TheStormPeaks,77.2,62.7
	>>Usa "Recoger nieve" (1) para recoger nieve de los Ventisqueros cercanos. Usa "Lanzar bola de nieve" (2) con los Vengativos Hirvientes para matarlos.
    .complete 12967,1 --Seething Revenants (10)
step
    .goto TheStormPeaks,75.37,63.57
	>>Habla con Njormeld
    .turnin 12967 >>Entrega la misión Luchar contra los elementales
    .complete 12924,1 --Fjorn's Anvil Brought to Dun Niffelem (1)
step << Human
	>>Regresa a Dun Niffelem. Habla con Njormeld y el Yunque
    .turnin 12924 >>Entrega la misión Forjando una Alianza
    .accept 13009 >>Acepta la misión Un nuevo comienzo
    .accept 12985 >>Acepta la misión Forjar una cabeza
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Regresa a Dun Niffelem. Habla con Njormeld y el Yunque
    .turnin 12924 >>Entrega la misión Forjando una Alianza
    .accept 13009 >>Acepta la misión Un nuevo comienzo
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Acepta la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << Human
    .goto TheStormPeaks,65.45,60.16
	>>Habla con Rey Jokkum
    .accept 13011 >>Acepta la misión La última cena de Jorcuttar
    .accept 12975 >>Acepta la misión En memoria
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Habla con Rey Jokkum
    .accept 12975 >>Acepta la misión En memoria
step << Human
	#completewith HornF
	>>Busca objetos de Virutas de Siemprescarcha en el área. Si ves uno, despójalo e inicia la misión
	.accept 13420 >> Acepta la misión Siemprescarcha
step << Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Mata a los Espectros Quebradizos. Despójalos para obtener esencias de hielo
	.use 42424 >> Usa el Pico con punta de diamante con los Gigantes de Hierro Muertos. A veces pueden aparecer mobs que tienes que matar, luego despójales de los Ojos Tronaforjados
	.collect 42246,6 --Essence of Ice (6)
	.complete 12985,1 --Stormforged Eye (8)
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Mata a los Espectros Quebradizos. Despójalos para obtener esencias de hielo
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Usa las esencias de hielo junto a los restos humeantes alrededor del Yunque de Fjorn. Despoja los restos de hierro congelado
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isQuestAvailable 13047
step
	#label HornF
    .goto TheStormPeaks,71.7,47.6
	>>Despoja las pequeñas piedras planas en el suelo del área
    .complete 12975,1 --Horn Fragment (8)
step << Human
	>>Regresa a Dun Niffelem. Habla con Calder, Rey Jokkum, Njormeld, el Yunque de Fjorn, y el Cuerno de Hodir
	.turnin 13420 >> Entrega la misión Siemprescarcha
    .goto TheStormPeaks,67.11,60.97
    .turnin 12975 >>Entrega la misión En memoria
    .accept 12976 >>Acepta la misión Un monumento a los caídos
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Entrega la misión Un monumento a los caídos
    .turnin 12985 >>Entrega la misión Forjar una cabeza
    .accept 12987 >>Acepta la misión La presentación del yelmo de Hodir
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
	.isQuestAvailable 13047
step << Human
	>>Regresa a Dun Niffelem. Habla con el Rey Jokkum, Njormeld y el Yunque de Fjorn
    .turnin 12975 >>Entrega la misión En memoria
    .accept 12976 >>Acepta la misión Un monumento a los caídos
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Entrega la misión Un monumento a los caídos
    .turnin 12985 >>Entrega la misión Forjar una cabeza
    .accept 12987 >>Acepta la misión La presentación del yelmo de Hodir
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Regresa a Dun Niffelem. Habla con el Rey Jokkum, el Yunque de Fjorn y Njormeld
    .turnin 12975 >>Entrega la misión En memoria
    .accept 12976 >>Acepta la misión Un monumento a los caídos
    .goto TheStormPeaks,65.45,60.16
    .turnin 12981 >>Entrega la misión Caliente y frío
    .goto TheStormPeaks,63.13,62.94
    .turnin 12976 >>Entrega la misión Un monumento a los caídos
    .goto TheStormPeaks,63.20,63.27
 step << !Human
	#label tribute
	.goto TheStormPeaks,66.16,61.44
    >>Es posible que necesites entregar una sola vez Reliquias de Ulduar para conseguir Amistoso con Los Hijos de Hodir. Omite esto si ya eres Amistoso
    >>Se pueden encontrar Reliquias de Ulduar matando a las criaturas de Las Cumbres Tormentosas o comprándolas en la Casa de Subastas
	>>Habla con Lillehoff
    .collect 42780,10 --Relic of Ulduar (10)
	.turnin 13559 >>Entrega la misión El tributo de Hodir
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step << !Human
    >>Habla con Njormeld
    .accept 12985 >>Acepta la misión Forjar una cabeza
    .goto TheStormPeaks,63.20,63.27
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	.use 42424 >> Usa el Pico con punta de diamante en los Gigantes de Hierro Muertos. A veces pueden aparecer enemigos que necesitas matar, luego despójalos de sus Ojos Tormentoforjados
	.complete 12985,1 --Stormforged Eye (8)
step << !Human
	>>Regresa a Dun Niffelem. Habla con Njormeld y el Cuerno de Hodir
    .turnin 12985 >>Entrega la misión Forjar una cabeza
    .accept 12987 >>Acepta la misión La presentación del yelmo de Hodir
    .goto TheStormPeaks,63.20,63.27
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,64.24,59.23
	.use 42442 >> Vuela hacia la pica de hielo brillante en Dun Niffelem. Usa las Tablillas de la proclama de tu inventario cuando estés en tu montura voladora
    .complete 12987,1 --Hodir's Helm Mounted (1)
step
    .goto TheStormPeaks,63.20,63.27
	>>Habla con Njormeld
    .turnin 12987 >>Entrega la misión Montar el yelmo de Hodir
step
    .goto TheStormPeaks,64.22,59.39
	>>Habla con el Casco que acabas de colocar
    .daily 13006 >>Acepta la misión Una limpieza viscosa
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Habla con el Rey Jokkum
    .accept 13011 >>Acepta la misión La última cena de Jorcuttar
step
	#completewith Jorcuttar
    .goto TheStormPeaks,54.4,63.2,0
	>>Mata a los aceites viscosos en la Hibernal Cavern. Despójalos para obtener su aceite
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,55.8,63.9,30,0
    .goto TheStormPeaks,54.7,60.6
	.use 42732 >> Entra en la Caverna Hibernar y pégate a la pared del lado derecho. Usa la Navaja de siemprescarcha en los Osos Faucehielo Muertos hasta que obtengas un Costillar de oso Faucehielo
	.collect 42733,1 --Icemaw Bear Flank (1)
	.isQuestAvailable 13047
step
	#label Jorcuttar
    .goto TheStormPeaks,54.8,60.8
	.use 42733 >>Sigue abrazando el lado derecho de la caverna hasta que llegues a la sala principal. Usa el Costillar de oso Faucehielo en el medio del lago helado lleno de púas - Mata a Jormuttar
    .complete 13011,1 --Jorcuttar (1)
step
    .goto TheStormPeaks,54.4,63.2
	>>Mata a los aceites viscosos en la Hibernal Cavern. Despójalos para obtener su aceite
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Vuela hacia Thorim en la cima del Templo de las Tormentas. Habla con él
    .turnin 13009 >>Entrega la misión Un nuevo comienzo
    .accept 13050 >>Acepta la misión Veranus
step
    .goto TheStormPeaks,45.4,66.9,40,0
    .goto TheStormPeaks,43.7,67.5
	>>Despoja los Huevos en los nidos en la cima de la montaña
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto TheStormPeaks,33.42,57.95
	>>Vuela hacia Thorim en la cima del Templo de las Tormentas. Habla con él
    .turnin 13050 >>Entrega la misión Veranus
    .accept 13051 >>Acepta la misión Violación territorial
step
    .goto TheStormPeaks,38.73,65.54
	.cast 56788 >> Usa los Huevos de protodraco robados de tu inventario en el nido de la Madre de linaje para atraer a Veranus
	.timer 42,Veranus RP (CONTINÚA HACIENDO MISIONES)
	.use 42797
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Vuela hacia Thorim en la cima del Templo de las Tormentas. Habla con él. Espera a que termine el RP de la misión anterior. Tarda aproximadamente 1 minuto
    .turnin 13051 >>Entrega la misión Violación territorial
    .accept 13010 >>Acepta la misión Krolmir, el Martillo de las Tormentas
step
	#completewith DunNif2
    .goto TheStormPeaks,29.5,74.3
	>>Vuela a Dun Niffelem
	.isQuestAvailable 13047
step
	>>Habla con el Cuerno de Hodir
    .daily 12977 >>Acepta la misión Llamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
	#label DunNif2
	>>Habla con Hodir's Casco y Rey Jokkum en Dun Niffelem
    .turnin 13006 >>Entrega la misión Una limpieza viscosa
    .goto TheStormPeaks,64.22,59.39
    .turnin 13011 >>Entrega la misión Jormuttar está taaan gorda...
	.vehicle >> Habla con Rey Jokkum. Monta en él a Thunderfall
	.timer 118,Krolmir, el Martillo de las Tormentas RP
	.skipgossip
	.isQuestAvailable 13047
step
	#completewith TerraceM
	>>Busca los objetos Fragmentos de Siemprescarcha en el área. Si ves uno, despójalo e inicia la misión
	.accept 13420 >> Acepta la misión Siemprescarcha
	.isQuestAvailable 13047
step
	#completewith ThorimRP
    .goto TheStormPeaks,70.7,47.3,0
    .goto TheStormPeaks,70.1,52.5,0
    .goto TheStormPeaks,72.7,52.1,0
    .goto TheStormPeaks,74.7,48.3,0
	.use 42164 >> Mata a los antepasados de Niffelem y a los nacidos de la escarcha inquietos en la zona. Usa el cuerno de Hodir en tus bolsas sobre sus cadáveres para liberarlos
	>>Puedes hacer esto mientras ocurre el evento RP
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,71.37,48.78
	>>Espera a que termine el RP
    .complete 13010,1 --Krolmir's Fate Discovered (1)
	.isQuestAvailable 13047
step
	#label ThorimRP
    .goto TheStormPeaks,71.37,48.78
	>>Habla con Thorim antes de que desaparezca
    .turnin 13010 >>Entrega la misión Krolmir, el Martillo de las Tormentas
    .accept 13057 >>Acepta la misión El Bancal de los Creadores
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,70.7,47.3,60,0
    .goto TheStormPeaks,70.1,52.5,60,0
    .goto TheStormPeaks,72.7,52.1,60,0
    .goto TheStormPeaks,74.7,48.3
	.use 42164 >> Mata a los antepasados de Niffelem y a los nacidos de la escarcha inquietos en la zona. Usa el cuerno de Hodir en tus bolsas sobre sus cadáveres para liberarlos
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
	#label TerraceM
    .goto TheStormPeaks,56.26,51.36
	>>Habla con Thorim en El Bancal de los Creadores
    .turnin 13057 >>Entrega la misión El Bancal de los Creadores
    .accept 13005 >>Acepta la misión El juramento terráneo
    .accept 13035 >>Acepta la misión Los lacayos de Loken
	.isQuestAvailable 13047
step
	#completewith Duronn
    .goto TheStormPeaks,52.0,50.4,0
	.use 42840 >> Usa el Cuerno de las Cumbres que tienes en las bolsas para ayudarte a matar a los Enanos de hierro y Centinelas de hierro de camino a los mobs con nombre
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,48.72,45.65
	.use 42840 >> Usa el Cuerno de Las Cumbres que está en tus bolsas para invocar un pequeño ejército. Úsalo para matar a Halefnir
    .complete 13035,2 --Halefnir the Windborn (1)
step
	#label Duronn
    .goto TheStormPeaks,44.94,38.03
	.use 42840 >> Usa el Cuerno de Las Cumbres que está en tus bolsas para invocar un pequeño ejército. Úsalo para matar a Duronn
    .complete 13035,3 --Duronn the Runewrought (1)
step
	#completewith next
    .goto TheStormPeaks,57.7,44.5,50,0
    .goto TheStormPeaks,57.7,44.5,0
	.use 42840 >> Usa el Cuerno de las Cumbres para ayudarte a matar a los Centinelas de hierro fuera de la cueva de Eisenfaust
    .complete 13005,1 --Iron Sentinel (7)
step
    .goto TheStormPeaks,56.9,44.1,30,0
    .goto TheStormPeaks,55.30,43.32
	>>Entra a la Sala del Modelador al pie de la montaña, en el lado este
	.use 42840 >> Usa el Cuerno de Las Cumbres para invocar un pequeño ejército. Úsalo para matar a Eisenfaust
    .complete 13035,1 --Eisenfaust (1)
step
    .goto TheStormPeaks,58.48,45.21
	.use 42840 >> Usa el Cuerno de las Cumbres que tienes en las bolsas para ayudarte a matar a los Enanos de hierro y Centinelas de hierro en la zona
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
step
    .goto TheStormPeaks,56.26,51.36
	>>Habla con Thorim en El Bancal de los Creadores
    .turnin 13005 >>Entrega la misión El juramento terráneo
    .turnin 13035 >>Entrega la misión Los lacayos de Loken
    .accept 13047 >>Acepta la misión La venganza
step
    #completewith next
	.goto TheStormPeaks,44.49,28.19
	>>Vuela a las afueras de Ulduar
    .fp Ulduar >> Aprende la ruta de vuelo hacia Ulduar
    .skill riding,<300,1
step
    .goto TheStormPeaks,35.93,31.52
	>>Vuela hacia Thorim afuera de Ulduar. Habla con él y espera a que termine el evento de RP
    .complete 13047,1 --Witness the Reckoning (1)
	.skipgossip
	.timer 91,RP de La venganza
step
	#completewith end
    .goto TheStormPeaks,44.49,28.19
	>>Vuela a las afueras de Ulduar
    .fp Ulduar >> Aprende la ruta de vuelo hacia Ulduar
	.fly Dun Niffelem >> Vuela a Dun Niffelem. Esto toma 1m 44s, así que puedes tomar un descanso durante este tiempo
    .skill riding,300,1
step
	#completewith next
    .goto TheStormPeaks,36.2,49.3,200 >> Vuela a Dun Niffelem en tu montura voladora
    .skill riding,<300,1
step
	>>Regresa a Dun Niffelem. Habla con Jokkum, Calder y el Cuerno de Hodir
    .turnin 13047 >>Entrega la misión La venganza
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
	.turnin 13420 >> Entrega la misión Siemprescarcha
    .goto TheStormPeaks,67.11,60.97
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
step
	#label end
	>>Regresa a Dun Niffelem. Habla con Jokkum y el Cuerno de Hodir
    .turnin 13047 >>Entrega la misión La venganza
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
    .turnin 12977 >>Entrega la misión La llamada de Hodir
    .goto TheStormPeaks,64.17,65.01
step -- checking that player has honored with hodir to get this quest. will only be humans and any other that turned in rep items
	>>Habla con Tradicionalista Randvir en Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.accept 13001 >>Acepta la misión La forja de la lanza de Hodir
	.reputation 1119,honored,<0,1
step
	>>Mata a los Mamuts estoicos. Despójalos para obtener sus pieles
	.goto TheStormPeaks,58.68,60.94,60,0
	>>Despoja fragmentos de escarcha eterna en la Caverna Hibernacional
	.complete 13001,2 --Stoic Mammoth Hide (3)
	.complete 13001,1 --Everfrost Shard (3)
	.goto TheStormPeaks,55.84,63.94,50,0
   	.goto TheStormPeaks,54.72,60.82
	.isOnQuest 13001
step
	>>Habla con Tradicionalista Randvir en Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.turnin 13001 >>Entrega la misión Alzar la lanza de Hodir
	.isQuestComplete 13001
step
    +Has completado la cadena de misiones previa de The Sons of Hodir. Usa la guía The Sons of Hodir Daily Quests Route para completar las misiones diarias. Ten en cuenta que es posible que algunas no estén disponibles hoy porque ya las completaste antes
	.isQuestTurnedIn 13047
]])
