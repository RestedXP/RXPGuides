if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 1-6 Cañada Umbría
#displayname 1-7 Cañada Umbría << sod
#version 1
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Has seleccionado una guía diseñada para Elfos de la Noche. Deberías elegir la misma zona de inicio en la que comienzas
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .accept 456 >> Acepta la misión El equilibrio de la naturaleza
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    >>Despoja a los enemigos que mates, asegúrate de tener basura para vender por valor de al menos 10 de cobre, lo necesitarás para aprender |T132333:0|t[Grito de batalla]<< Warrior
    .xp 2 >> Mata enemigos hasta subir al nivel 2
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r y |cRXP_FRIENDLY_Melithar Corzocelada|r
    #label GoodProtector
    .accept 4495 >> Acepta la misión Un buen amigo
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Acepta la misión La protectora de los bosques
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 456,1 >> Entrega la misión El equilibrio de la naturaleza << Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Acepta la misión El equilibrio de la naturaleza
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.8,34.1
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Hunter
    #season 0,1
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Mata enemigos hasta que te falten 610xp para el nivel 4 (790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << Hunter
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457 >> Entrega la misión El equilibrio de la naturaleza
    .target Conservator Ilthalaine
	.accept 3117 >> Acepta la misión El Sigilo con Grabados
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 456,1 >> Entrega la misión El equilibrio de la naturaleza << Hunter
    .turnin 456 >> Entrega la misión El equilibrio de la naturaleza << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Acepta la misión El equilibrio de la naturaleza
	.accept 3116 >> Acepta la misión El Sigilo Simple << Warrior
	.accept 3117 >> Acepta la misión El Sigilo con Grabados << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Acepta la misión Sigilo Sacralizado << Priest
	.accept 3120 >> Acepta la misión El Sigilo Verdeante << Druid
step << Warrior
    #season 0
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Keina
step << Warrior
    #season 0
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Entrega la misión El Sigilo Simple
    .trainer >> Aprende tus hechizos de clase
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,59.8,34.1
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << !Hunter
    #season 0
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << !Hunter
    #season 0 << Druid/Warrior
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457 >> Entrega la misión El equilibrio de la naturaleza
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3519 >> Entrega la misión Un Amigo en Apuros
    .target Dirania Silvershine
    .accept 3521 >> Acepta la misión Antídoto de Iverron
step << Hunter
    #season 0
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Asegúrate de que tengas 1 plata sobrante después de salir del vendedor para poder permitirte|r |T132204:0|t[|cRXP_FRIENDLY_Picadura de serpiente|r]
	.vendor >> |cRXP_BUY_Compra 2 montones de|r |T132382:0|t[Flechas férreas]
    .target Keina
step << Druid
    #season 0,1
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 20|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .accept 916 >> Acepta la misión Veneno de tejemadera
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayanna Semprerguida|r
    .turnin 3117 >> Entrega la misión El Sigilo con Grabados
    .train 1978 >>Aprende Picadura de Serpiente
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Despoja los |cRXP_LOOT_Lirios alunados|r del suelo
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step << Hunter
#optional
#season 2
#completewith next
    >>Mata a las |cRXP_ENEMY_Arañas Tejemadera|r. Despójalas para obtener su |cRXP_LOOT_Icor|r y sus |cRXP_LOOT_Glándulas venenosas|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Mata a las |cRXP_ENEMY_Arañas Tejemadera|r. Despójalas para obtener su |cRXP_LOOT_Icor|r y sus |cRXP_LOOT_Glándulas venenosas|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << skip --logout skip Warrior
	#hardcore
	#completewith next
    #season 2
	+Haz un Logout Skip en el saliente detrás de los huevos. Mueve a tu personaje hasta que parezca que flota, luego desconecta y vuelve a entrar.
	>>Si caes, simplemente sal de la cueva para entregar la misión
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> HAZ CLIC AQUÍ para ver la referencia
step << skip --logout skip Hunter
	#hardcore
    #season 2
	#completewith next
	+Haz un Logout Skip en el saliente detrás de los huevos. Mueve a tu personaje hasta que parezca que flota, luego desconecta y vuelve a entrar.
	>>Si caes, simplemente sal de la cueva para entregar la misión
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> HAZ CLIC AQUÍ para ver la referencia
step
    .goto Teldrassil,55.0,43.7
    >>Mata a los |cRXP_ENEMY_Grell|r y a los |cRXP_ENEMY_Grellín|r. Despójalos para obtener sus |cRXP_LOOT_Champiñones|r y |cRXP_LOOT_Musgovil|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    >>CONSEJO: |cRXP_WARN_Toma la Túnica como recompensa de esta misión y equípala. La usarás para grabar una runa más tarde|r << sod Hunter/sod Rogue/sod Druid/sod Warrior
    >>CONSEJO: |cRXP_WARN_Escoge la túnica como recompensa de esta misión y equipátela. La usarás más adelante para grabar una runa|r << sod Priest
    .turnin 917 >> Entrega la misión Huevo de Tejemadera
    .target Gilshalan Windwalker
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    >>CONSEJO: |cRXP_WARN_Elige los pantalones como recompensa y quédatelos. Los usarás para grabarles una runa más adelante|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Entrega la misión La protectora de los bosques
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3521 >> Entrega la misión El antídoto de Iverron
    .target Dirania Silvershine
    .accept 3522 >> Acepta la misión Antídoto de Iverron
step << !Priest !Warrior
    #season 0 << Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
	.vendor >> |cRXP_BUY_Compra 3 o 4 montones de|r |T132382:0|t[Flechas férreas] << Hunter
    .target Keina
step << Warrior
    #season 0
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Aprende tus hechizos de clase
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janna Brillaluna|r escaleras arriba
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r escaleras arriba
	.turnin 3119 >> Entrega la misión Sigilo Sacralizado << !sod
    .turnin 77574 >> Entrega la misión Meditaciones sobre Elune << sod
	.trainer >> Aprende tus hechizos de clase
step
    #season 0 << Warrior
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .turnin 916 >> Entrega la misión Veneno de tejemadera
    .target Gilshalan Windwalker
    .accept 917 >> Acepta la misión Huevo de Tejemadera
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga Cardoleño]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 0,1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Sube al Árbol Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
	.turnin 3120 >> Entrega la misión El sigilo verdeante
	.train 8921 >>Aprende |T136096:0|t[Fuego lunar]
step
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    >>CONSEJO: |cRXP_WARN_Toma los Pantalones como recompensa de él. Los usarás para grabar una runa más tarde|r << Priest sod
    .turnin 3522 >> Entrega la misión El antídoto de Iverron
step
    #season 0 << Warrior
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entra en la Gruta Narácnida
step
    .goto Teldrassil,57.0,26.4
    #season 0 << Warrior
    >>Despoja un |cRXP_LOOT_Huevo de Tejemadera|r del suelo al fondo de la cueva
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << skip --logout skip
	#hardcore
	#completewith next
    #season 0 << Warrior
	+Haz un Logout Skip en el saliente detrás de los huevos. Mueve a tu personaje hasta que parezca que flota, luego desconecta y vuelve a entrar.
	>>Si caes, simplemente sal de la cueva para entregar la misión
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> HAZ CLIC AQUÍ para ver la referencia
step
#xprate <1.99
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .turnin 917 >> Entrega la misión Huevo de Tejemadera
    .target Gilshalan Windwalker
    .accept 920 >> Acepta la misión Las invocaciones de Tenaron
step
#xprate <1.99
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 920 >> Entrega la misión Las invocaciones de Tenaron
    .target Tenaron Stormgrip
    .accept 921 >> Acepta la misión La corona de la Tierra
step
#xprate <1.99
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> |cRXP_WARN_Usa la|r |T134776:0|t[Ampolla de cristal] |cRXP_WARN_en la Poza de la Luna|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.8,34.1
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << Hunter
#xprate <1.99
    #requires vial1
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457,2 >> Entrega la misión El equilibrio de la naturaleza
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Acepta la misión Los caminos de Elune
step
#xprate <1.99
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 921 >> Entrega la misión La corona de la Tierra
    .target Tenaron Stormgrip
    .accept 928 >> Acepta la misión La corona de la Tierra
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acepta la misión Paquete de Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Costa Oscura

step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .accept 488 >> Acepta la misión Las apuestas de Zenn
step
    #label HCHunterStart --hidden step for #include
step
    #sticky
    #completewith DenlansEarth
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlansEarth
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    >>|cRXP_WARN_Asegúrate de tener 1 espacio libre en la bolsa antes de aceptar esta misión|r
    .accept 997 >> Acepta la misión Las tierras de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .accept 475 >> Acepta la misión Una brisa problemática
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .turnin 5622 >> Entrega la misión Los caminos de Elune
    .target Laurna Morninglight
    .accept 5621 >> Acepta la misión Prendas de la luna
	.trainer >> Aprende tus hechizos de clase
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .vendor >> |cRXP_BUY_Compra y equipa un|r |T135426:0|t[Cuchillo arrojadizo pequeño]
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .accept 932 >> Acepta la misión Odio enraizado
    .accept 2438 >> Acepta la misión El atrapasueños esmeralda
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .accept 2438 >> Acepta la misión El atrapasueños esmeralda
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno]
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    .vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo (5 platas 36 cobres), si no, omite este paso|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete] |cRXP_BUY_si puedes permitírtelo (4 platas 1 cobre), si no, omite este paso|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava] |cRXP_BUY_si puedes permitírtelo (5 platas 4 cobre), si no, omite este paso|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    .turnin 2159,2 >> Entrega la misión Paquete de Dolanaar << Hunter
    .turnin 2159 >> Entrega la misión Paquete de Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Compra 10 |T132815:0|t|cRXP_LOOT_Leche fría como el hielo|r o cuanto puedas permitirte << Priest
    .home >> Establece tu Piedra de hogar en Dolanaar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Aprende Disparo Arcano << era
    .train 5116 >> Aprende Disparo de conmoción << sod
    .target Dazalar
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
	.trainer >> Aprende tus hechizos de clase
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 928 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 929 >> Acepta la misión La corona de la Tierra
step
    #sticky
    #completewith DenlanStart
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlanStart
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malorne Filohoja|r
    >>|T136065:0|t[Herboristería] |cRXP_WARN_es necesario para recolectar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    >>|cRXP_WARN_Si prefieres comprar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_de la Casa de Subastas después, omite este paso|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malorne Filohoja|r
    >>|T136065:0|t[Herboristería] |cRXP_WARN_es necesario para recolectar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Selecciona como objetivo a la |cRXP_FRIENDLY_Centinela Shaya|r
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en la|r |cRXP_FRIENDLY_Centinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Entrega la misión Las tierras de Denalan
    .target Denalan
    .accept 918 >> Acepta la misión Semillas de Brezomadera
    .accept 919 >> Acepta la misión Brotes de Brezomadera
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener sus |cRXP_LOOT_Semillas|r
    >>Despoja los |cRXP_LOOT_Brotes de Brezomadera|r del suelo << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Entrega la misión Semillas de Brezomadera
    .target Denalan
    .accept 922 >> Acepta la misión Rellian Verdeguja
    .turnin 919 >> Entrega la misión Brotes de Brezomadera
step
    #sticky
    #completewith Starbreeze
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Viaja a la Aldea Brisaestelar
step
    .goto Teldrassil,68.02,59.66
    >>Abre el |cRXP_PICK_Vestidor de Tallonkai|r. Despójalo para obtener el |cRXP_LOOT_Atrapasueños esmeralda|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gaerolas Talvethren|r escaleras arriba
    .turnin 475 >> Entrega la misión Una brisa problemática
    .target Gaerolas Talvethren
    .accept 476 >> Acepta la misión Corrupción en Tuercepinos
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Usa la|r |T134721:0|t[Ampolla de jade] |cRXP_WARN_en la Poza de la Luna de la Aldea Brisaestelar|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith SeekRedemption
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Guarda cualquier|r |T132832:0|t[Huevo pequeño] |cRXP_WARN_y|r |T134321:0|t[Pata de araña pequeña] |cRXP_WARN_para subir|r |T133971:0|t[Cocina] |cRXP_WARN_después|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >> Entrega la misión Las apuestas de Zenn
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Mata enemigos hasta nivel 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Mata enemigos hasta nivel 7 +2350xp
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >> Acepta la misión ¡Búsqueda de redención!
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .turnin 476 >> Entrega la misión Corrupción en Tuercepinos
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .turnin 5621 >> Entrega la misión Prendas de la luna
	.trainer >> Aprende tus hechizos de clase
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 2438 >> Entrega la misión El atrapasueños esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >> Acepta la misión Ferocitas el Comesueños
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_si puedes permitírtelo (2 platas 85 cobres), si no, omite este paso|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
	.vendor >>|cRXP_BUY_Compra hasta 800|r |T132382:0|t[Flechas férreas]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    #season 0
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Aprende tus hechizos de clase
    .target Dazalar
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo (5 platas 36 cobres), si no, omite este paso|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete] |cRXP_BUY_si puedes permitírtelo (4 platas 1 cobre), si no, omite este paso|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava] |cRXP_BUY_si puedes permitírtelo (5 platas 4 cobre), si no, omite este paso|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 933 >> Acepta la misión La corona de la Tierra
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
	.trainer >> Aprende tus hechizos de clase
    .target Kal
step
    #sticky
	#completewith jewel
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Junto a un árbol pequeño
    .goto 1438/1,822.200,9948.500,6 >>En la colina pequeña
    .goto 1438/1,809.800,9926.400,6 >>Junto al árbol enorme
    >>Despoja las 3 |cRXP_LOOT_Bellotas viles|r de las ubicaciones marcadas en tu mapa.
    >>|cRXP_WARN_Omite este paso si alguna de ellas no está allí y no puedes completar el objetivo|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>Despoja las |cRXP_LOOT_Bellotas viles|r del suelo
    >>|cRXP_WARN_Generalmente se encuentran junto a los troncos de árbol|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Mata a |cRXP_ENEMY_Ferocitas el Comesueños|r. Despójale el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r]. |cRXP_WARN_Ten cuidado ya que puede usar|r |T132152:0|t[Vapulear] |cRXP_WARN_golpeándote hasta tres veces a la vez|r
    .use 8049 >>|cRXP_WARN_Usa el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r] para despojar la|r |cRXP_LOOT_Joya de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
    .isQuestTurnedIn 489
step
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brannol Lunáguila|r
    .vendor >> |cRXP_BUY_Vende y repara si es necesario|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Despoja las |cRXP_LOOT_Bellotas viles|r del suelo
    >>|cRXP_WARN_Generalmente se encuentran junto a los troncos de árbol|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .isOnQuest 489
step
    #sticky
	#completewith next
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
step
    .goto Teldrassil,51.2,50.6
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .accept 933 >> Acepta la misión La corona de la Tierra
step
    #sticky
	#completewith spiderLegs
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Viaja al suroeste de Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Haz clic en la |cRXP_PICK_Planta con extraños frutos|r
	.accept 930 >> Acepta la misión El fruto resplandeciente
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Viaja a los Estanques de Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Usa la|r |T134765:0|t[Ampolla de turmalina] |cRXP_WARN_en la Poza de la Luna de los Estanques de Arlithrien|r
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Viaja a Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >> Muere y reaparece en el cementerio de Dolanaar, asegúrate de morir al este de la poza de la luna, de lo contrario podrías terminar en Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 933 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 7383 >> Acepta la misión La corona de la Tierra
step
	#xprate <1.5
    #label SpiderLegsEnd
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Aprende Cocina
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
    .target Zarrin
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Byancie
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 932 >> Entrega la misión Odio enraizado
    .turnin 2459 >> Entrega la misión Ferocitas el Comesueños
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Si no estás ni cerca, haz la misión Lord Melenas|r
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
	.trainer >> Aprende tus hechizos de clase
    .accept 5629 >>Acepta la misión La vuelta a casa << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .train 5171 >> Aprende |T132306:0|t[Hacer picadillo] << !sod
    .train 921 >> Aprende |T133644:0|t[Robar] también, que se necesita para tu misión de Pícaro de nivel 10
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acepta la misión Domesticar la bestia
	.trainer >> Aprende tus hechizos de clase
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Rondador Tejemadera|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6101 >> Acepta la misión Domesticar la bestia
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador sable de la noche|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6102 >> Acepta la misión Domesticar la bestia
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Estridador estrígido|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6103 >> Acepta la misión Domesticar la bestia
    .train 1130 >> |cRXP_WARN_Asegúrate de haber aprendido Marca del cazador. La necesitarás para obtener una runa pronto|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 1684 >> Acepta la misión Elanaria
    .accept 487 >> Acepta la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .accept 2241 >> Acepta la misión Cuando cae la manzana
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .accept 487 >> Acepta la misión El camino a Darnassus
    .target Moon Priestess Amara
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Mata |cRXP_ENEMY_Emboscadores Tuercepinos|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Viaja al Claro del Oráculo
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .accept 937 >> Acepta la misión El claro encantado
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Usa la|r |T134798:0|t[Ampolla de amatista] |cRXP_WARN_en la poza de la Luna del Claro del Oráculo |r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    >>|cRXP_ENEMY_Matriarcas Sangrepluma|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hace mucho daño. Intenta derrotarlas rápidamente|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Haz clic en la |cRXP_PICK_Planta con extrañas hojas|r
    .accept 931 >> Acepta la misión Fronda fulgurante
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    .accept 938 >> Acepta la misión Niebla
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >> Grindea hasta que te falten 2670 xp para el nivel 10 (3830/6500)
    >>|cRXP_WARN_Una vez que llegues a este punto de ruptura de experiencia, omite la misión de harpías/escolta y ve directamente a Darnassus. Tendrás otra oportunidad para completar esas misiones más tarde|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Ten en cuenta que esta es una misión cronometrada, debes entregarla en 10 minutos al aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acepta la misión Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    .accept 938 >> Acepta la misión Niebla
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Ten en cuenta que Niebla es una misión cronometrada, debes entregarla en 10 minutos al aceptarla|r
    .turnin 937 >> Entrega la misión El claro encantado
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acepta la misión Teldrassil
    .turnin 938 >> Entrega la misión Niebla
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Termina de recolectar 7 Patas de arañas pequeñas
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>Si aún estás atrasado en experiencia, haz la misión de las arpías al norte
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >> Muere y resucita en el Ángel de la Resurrección en Darnassus
    >>|cRXP_WARN_Asegúrate de estar más cerca del cementerio de Darnassus que del de Dolanaar o podrías acabar en la dirección equivocada. Corre hasta salir del todo de la guarida y luego muere si no estás seguro|r << sod Priest
    >>|cRXP_WARN_Asegúrate de estar más cerca del cementerio de Darnassus que del de Dolanaar opodrías acabar en la dirección equivocada. Corre al lado oeste del río si no estás seguro|r << sod Hunter/sod Warrior/sod Druid
    .target Ángel de la Resurrección
step << !Rogue
    #hardcore
	#xprate < 1.5
    #completewith next
    >>Mata |cRXP_ENEMY_Arpías Sangrepluma|r en el camino a Darnassus. Despójalas para obtener sus |cRXP_LOOT_Cinturones|r. |cRXP_WARN_No tienes que completar este objetivo ahora|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viaja a Darnassus
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Entrega la misión Elanaria
    .target Elanaria
    .accept 1683 >> Acepta la misión Vorlus Pezuñavil
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Saelienne|r
    .home >> Establece tu Piedra de hogar en Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Compra más|r |T132815:0|t|cRXP_LOOT_Leche fría como el hielo|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 922 >> Entrega la misión Rellian Verdeguja
    .target Rellian Greenspyre
    .accept 923 >> Acepta la misión Tumores
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r en la cima del Árbol
    .turnin 940 >> Entrega la misión Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .turnin -5923 >> Entrega la misión Escucha la llamada
    .accept 5921 >> Acepta la misión Claro de la Luna
	.trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Entrega la misión Domesticar la bestia
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .accept 2518 >> Acepta la misión Las lágrimas de la Luna
step << Druid
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    >>|cRXP_WARN_Estará en tu libro de hechizos|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5921 >> Entrega la misión Claro de la Luna
    .target Dendrite Starblaze
    .accept 5929 >> Acepta la misión Espíritu del gran oso
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del gran oso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    >>|cRXP_WARN_Esto te hará regresar más rápido|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5929 >> Entrega la misión Espíritu del gran oso
    .target Dendrite Starblaze
    .accept 5931 >> Acepta la misión El regreso a Darnassus
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
	.vendor >> |cRXP_BUY_Compra 4 montones de|r |T132382:0|t[Flechas afiladas]|cRXP_BUY_. Equípalas en cuanto llegues al nivel 10|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Aprende Cocina
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Busca a la Sacerdotisa Lunar Amara, ella patrulla el camino al oeste de Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acepta la misión Domesticar la bestia
	.train 13165 >> Aprende tus hechizos de nivel 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Rondador Tejemadera|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6101 >> Acepta la misión Domesticar la bestia
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 7383 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 935 >> Acepta la misión La corona de la Tierra
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Entrega la misión Fronda fulgurante
    .turnin 930 >> Entrega la misión El fruto resplandeciente
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Entrega la misión El corazón musgoso
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Haz clic en la |cRXP_LOOT_Maceta de Denalan|r
	.turnin 941 >> Entrega la misión Plantar el corazón
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador sable de la noche|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
	.trainer >> Aprende tus hechizos de clase
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .train 5171 >> Aprende |T132306:0|t[Hacer picadillo]
    .train 921 >> Aprende |T133644:0|t[Robar] también, que se necesita para tu misión de Pícaro de nivel 10
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acepta la misión Domesticar la bestia
	.trainer >> Aprende tus hechizos de clase
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Rondador Tejemadera|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6101 >> Acepta la misión Domesticar la bestia
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador sable de la noche|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6102 >> Acepta la misión Domesticar la bestia
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Estridador estrígido|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6103 >> Acepta la misión Domesticar la bestia
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .accept 1684 >> Acepta la misión Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .accept 2241 >> Acepta la misión Cuando cae la manzana
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra una|r |T135145:0|t[Cachava]
    >>|cRXP_WARN_Lo equiparás más tarde. Omite este paso si encuentras un bastón diferente|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Una vez que pases la zona fúrbolg, muere a propósito y resucita en el cementerio de Darnassus
    .target Ángel de la Resurrección
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viaja a Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 922 >> Entrega la misión Rellian Verdeguja
    .target Rellian Greenspyre
    .accept 923 >> Acepta la misión Tumores
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r en la cima del Árbol
    .turnin -935 >> Entrega la misión La corona de la Tierra
    .turnin -940 >> Entrega la misión Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Acepta la misión El Páramo de los Ancianos
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Entrega la misión Cuando cae la manzana
    .target Syurna
    .accept 2242 >> Acepta la misión La llamada del destino
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .accept 2518 >> Acepta la misión Las lágrimas de la Luna
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Viaja hacia |cRXP_ENEMY_Vorlus Pezuñavil|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Mata a |cRXP_ENEMY_Vorlus Pezuñavil|r. Despójalo para obtener su |cRXP_LOOT_Cuerno|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Cazador estrígido|r para domesticarlo|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Ataca a enemigos con ella para aprender|r |T132140:0|t[Zarpa (Rango 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
	.unitscan Strigid Hunter
step
    #sticky
    #completewith Spinnerets
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>Mata a la |cRXP_ENEMY_Lady Sathrah|r. Despójala para obtener sus |cRXP_LOOT_Hileras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_puede aparecer en 3 ubicaciones diferentes, verifica tu mapa para ver una ruta recomendada|r
    >>|cRXP_WARN_Dirígete al norte por el río y verifica el punto de aparición más al este primero. Ve haciendo la misión de los|r |T134339:0|t[Tumores] |cRXP_WARN_mientras avanzas|r
    >>|cRXP_WARN_Si no está al este del río, completa la misión|r |T134339:0|t[Tumores] |cRXP_WARN_antes de dirigirte al oeste|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto Teldrassil,41.7,41.8
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .accept 937 >> Acepta la misión El claro encantado
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Lanza|r |T133644:0|t[Robar] en |cRXP_ENEMY_Sethir el Ancestro|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_Sethir el Ancestro|r |cRXP_WARN_camina por la rama del árbol grande|r
    >>|cRXP_WARN_Evita luchar contra |cRXP_ENEMY_Sethir el Ancestro|r. Deja que pase de largo, luego entra en|r |T132320:0|t[Sigilo] |cRXP_WARN_y usa|r |T133644:0|t[Robar] |cRXP_WARN_cuando estés detrás de él|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    >>|cRXP_ENEMY_Matriarcas Sangrepluma|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hace mucho daño. Intenta derrotarlas rápidamente|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    >>|cRXP_WARN_Omite esta misión si el PNJ no está allí|r
    .accept 938 >> Acepta la misión Niebla
step
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Ten en cuenta que esta es una misión cronometrada, debes entregarla en 10 minutos al aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acepta la misión Teldrassil
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Muere y resucita en el cementerio de Darnassus
    >>|cRXP_WARN_Asegúrate de estar en el lado oeste del río o podrías terminar yendo por el camino equivocado|r << sod
    .target Ángel de la Resurrección
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Viaja a Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Viaja a Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acepta la misión Nessa Cantosombrío
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Viaja a Darnassus
step
	.abandon 927 >> Abandona la misión El corazón musgoso. Nunca tendrás la oportunidad de entregarla
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Entrega la misión Elanaria
    .target Elanaria
    .accept 1683 >> Acepta la misión Vorlus Pezuñavil
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Viaja hacia |cRXP_ENEMY_Vorlus Pezuñavil|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Mata a |cRXP_ENEMY_Vorlus Pezuñavil|r. Despójalo para obtener su |cRXP_LOOT_Cuerno|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Muere a propósito después de que pases la zona fúrbolg y resucita en Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viaja a Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Entrega la misión Vorlus Pezuñavil
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .turnin 5931 >> Entrega la misión El regreso a Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acepta la misión Cuerpo y corazón
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r
    .turnin -935 >> Entrega la misión La corona de la Tierra
    .turnin -940 >> Entrega la misión Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Acepta la misión El Páramo de los Ancianos
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Entrega la misión Domesticar la bestia
step << Hunter
    >>|cRXP_WARN_Subepor la rampa a la derecha de|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Entrena los hechizos de tu mascota
    .target Silvaria
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 923 >> Entrega la misión Tumores
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Entrega la misión La llamada del destino
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2518 >> Entrega la misión Las lágrimas de la Luna
    .target Priestess A'moora
    .accept 2520 >> Acepta la misión El Sacrificio de Sathrah
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Usa el|r |T135652:0|t[Sacrificio de Sathrah] |cRXP_WARN_en la fuente|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2520 >> Entrega la misión El Sacrificio de Sathrah
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firodren Llamaluna|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    >>|T136065:0|t[Herboristería] |cRXP_WARN_es necesario para recolectar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador de Darnassus|r
    >>Compra los siguientes objetos para entregar misiones al instante más adelante en Costa Oscura:
    >>|T134187:0|t[Raíz de tierra] << Druid era
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133972:0|t[Carne de zancudo]
    *Omite este paso si deseas no comprar nada
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBusca a |cRXP_FRIENDLY_Jaeana|r, ella patrulla alrededor del Bancal de los Mercaderes
    >>Compra un lote de|cRXP_BUY_ |T133972:0|t[Cecina dura] |ra esta vendedora|cRXP_BUY_.
    >>|cRXP_WARN_Necesitarás esto para alimentar a tu búho, solo comen carne y no hay vendedor de carne en Costa Oscura|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .train 227 >>Aprende el uso de Bastones << Hunter/Warrior/Priest
    .train 265 >>Aprende el uso de Arcos << Sod Rogue
    >>Si tienes un Bastón en tus bolsas, equipalo << Hunter
    >>Si tienes un Arco en tus bolsas, equípatelo << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
	.vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135147:0|t[Bastón nudoso]|cRXP_BUY_. Equipalo al nivel 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135154:0|t[Bastón de intendente]|cRXP_BUY_. Equipalo al nivel 11|r << era
    >>|cRXP_BUY_Compra y equipa un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_si no puedes permitirte un|r |T135147:0|t[Bastón nudoso] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
	>>|cRXP_BUY_Compra y equipa un|r |T135346:0|t[Alfanje] |cRXP_BUY_si no puedes permitirte un|r |T135154:0|t[Bastón de intendente]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r en el segundo piso
    >>|cRXP_BUY_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6344 >> Entrega la misión Nessa Cantosombrío
    .target Nessa Shadowsong
    .accept 6341 >> Acepta la misión Las presas de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Entrega la misión Las presas de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acepta la misión Vuelo a Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
]])
