if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Ruta de misiones diarias de Ebon Blade

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
    .turnin 13069 >>Entrega la misión Dispárales
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
	>>Los cofres no tienen un 100% de probabilidad de botín para los documents.
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
    .turnin 12815 >>Entrega la misión Espacio aéreo protegido
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Entrega la misión ¡De sus cadáveres se alzan!.
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Entrega la misión Acumular inteligencia
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
step
	+Ya completaste todas las misiones diarias de Caballeros de la Espada de Ébano por hoy :) Recuerda que puedes usar su Tabardo mientras haces calabozos de WotLK para obtener reputación extra.
]])
