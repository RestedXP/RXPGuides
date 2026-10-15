if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Cañada Umbría
#displayname 1-7 Cañada Umbría << sod
#version 1
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Has seleccionado una guía diseñada para Elfos de la Noche. Deberías elegir la misma zona de inicio en la que comienzas
step
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .accept 456 >> Acepta la misión El equilibrio de la naturaleza
step << !Druid
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << !Druid
    >>Despoja a los enemigos que mates, asegúrate de tener basura para vender por valor de al menos 10 de cobre, lo necesitarás para aprender |T132333:0|t[Grito de batalla]<< Warrior
    .xp 2 >> Mata enemigos hasta subir al nivel 2
step << Druid
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto 1438/1,669.500,10387.300
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Druid
    #completewith next
    +|cRXP_WARN_Asegúrate de tener al menos 96 de cobre en basura para vender|r, puedes contar tu bastón que se vende por 9 cobres
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r y |cRXP_FRIENDLY_Melithar Corzocelada|r
    #label GoodProtector
    .accept 4495 >> Acepta la misión Un buen amigo
    .target +Dirania Silvershine
    .goto 1438/1,713.81,10407.20
    .accept 458 >> Acepta la misión La protectora de los bosques
	.goto 1438/1,763.45,10389.79
    .target +Melithar Staghelm
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step << !Druid
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
    .trainer >> Aprende |T132333:0|t[Grito de batalla]
step << Hunter/Warrior
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >> Mata enemigos hasta que te falten 610xp para el nivel 4 (790/1400)
step << Hunter/Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << Hunter/Warrior
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << Hunter/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
    .accept 97977 >>Acepta la misión Llamada de la naturaleza
step << Druid
	.goto 1438/1,820.68,10487.33--c:Teldrassil,58.8,39.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khardan|r
    >>¡|cRXP_WARN_Vende todos tus objetos y tu bastón|r! Compra un |T135139:0|t[|cRXP_LOOT_Bastón corto|r] a este vendedor
	.collect 2132 --Short Staff (1)
	.use 2132 >> equipa el Bastón corto
	.target Khardan Proudblade
step << !Priest !Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
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
step << !Hunter !Druid !Warrior
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes Cardo|r de camino a Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter !Druid !Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << !Hunter !Druid !Warrior
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << !Hunter !Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    --@TODO add herbalism note for druid for earthroot
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
    .accept 97977 >>Acepta la misión Llamada de la naturaleza
step << Priest/Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 456 >> Entrega la misión El equilibrio de la naturaleza
    .target Conservator Ilthalaine
	.accept 3119 >> Acepta la misión Sigilo Sacralizado << Priest
step << Druid
    #completewith next
    +|cRXP_WARN_Lanza|r |T136006:0|t[|cRXP_LOOT_Cólera|r] |cRXP_WARN_hasta quedarte sin maná, luego cambia a|r |T135158:0|t[|cRXP_LOOT_Ataques cuerpo a cuerpo|r] |cRXP_WARN_hasta recuperar todo tu maná y repite|r
step << Druid
    .goto 1438/1,964.300,10272.800,10,0
    .goto 1438/1,1030.200,10339.800
    >>Mata |cRXP_ENEMY_Grell|r y |cRXP_ENEMY_Grellín|r. Despójalos para obtener |cRXP_LOOT_Musgovil|r
    >>Despoja |T134460:0|t[|cRXP_LOOT_Tótems de Tuercepinos|r] en los campamentos de Grells
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes Cardo|r de camino a Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Druid
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << Druid
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << Druid
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    >>CONSEJO: |cRXP_WARN_Elige los pantalones como recompensa y quédatelos. Los usarás para grabarles una runa más adelante|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459,1 >> Entrega la misión La protectora de los bosques
    .turnin 97977 >>Entrega la misión Llamada de la naturaleza
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3519 >> Entrega la misión Un Amigo en Apuros
    .target Dirania Silvershine
    .accept 3521 >> Acepta la misión Antídoto de Iverron
step << Warrior
    .xp 4-40
step << Hunter/Druid/Warrior
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Asegúrate de que tengas 1 plata sobrante después de salir del vendedor para poder permitirte|r |T132204:0|t[|cRXP_FRIENDLY_Picadura de serpiente|r] << Hunter
	.vendor >> |cRXP_BUY_Compra 2 montones de|r |T132382:0|t[Flechas férreas] << Hunter
    .vendor >> |cRXP_BUY_Vende tu basura|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Entrega la misión El Sigilo Simple
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra hasta 25|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step
    #optional
    .xp 3
step
    .goto 1438/1,871.24,10417.65
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .accept 916 >> Acepta la misión Veneno de tejemadera
step << Hunter/Druid
    .xp 4-40
step << Druid
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Sube al Árbol Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
	.turnin 3120 >> Entrega la misión El sigilo verdeante
	.train 8921 >>Aprende |T136096:0|t[Fuego lunar]
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayanna Semprerguida|r
    .turnin 3117 >> Entrega la misión El Sigilo con Grabados
    .train 1978 >>Aprende Picadura de Serpiente
    .target Ayanna Everstride
step << Druid
    #completewith IchorVenomSac
    +Deja de lanzar |T136006:0|t[Cólera|cRXP_WARN_] |cRXP_LOOT_por completo!|r Usa solo |T135158:0|t[|rAtaques cuerpo a cuerpo|cRXP_LOOT_] y |T136096:0|t[|rFuego lunar|cRXP_LOOT_] |ra partir de ahora!
    >>Intenta usar solo Fuego lunar inmediatamente después de atacar |cRXP_WARN_¡para no reiniciar tu ataque cuerpo a cuerpo!|r
step
    .goto 1438/1,863.96,10534.840,10,0
    .goto 1438/1,873.64,10566.40,10,0
    .goto 1438/1,850.72,10595.920,10,0
    .goto 1438/1,820.17,10547.39,10,0
    .goto 1438/1,863.96,10534.840
    >>Despoja los |cRXP_LOOT_Lirios alunados|r del suelo
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>Mata a las |cRXP_ENEMY_Arañas Tejemadera|r. Despójalas para obtener su |cRXP_LOOT_Icor|r y sus |cRXP_LOOT_Glándulas venenosas|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Jabalíes Cardo|r del camino hacia los Grells
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Druid
    .goto 1438/1,1014.17,10348.18
    >>Mata a los |cRXP_ENEMY_Grell|r y a los |cRXP_ENEMY_Grellín|r. Despójalos para obtener sus |cRXP_LOOT_Champiñones|r y |cRXP_LOOT_Musgovil|r
    >>Despoja |T134460:0|t[|cRXP_PICK_Tótems de Tuercepinos|r] en los campamentos de Grells
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    .goto 1438/1,1014.17,10348.18
    >>Mata |cRXP_ENEMY_Grell|r y |cRXP_ENEMY_Grellín|r. Despójalos para obtener |cRXP_LOOT_Champiñones|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    >>CONSEJO: |cRXP_WARN_Elige los pantalones como recompensa y quédatelos. Los usarás para grabarles una runa más adelante|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Entrega la misión La protectora de los bosques
    .turnin 97977 >>Entrega la misión Llamada de la naturaleza
step
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes Cardo|r de camino a Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3521 >> Entrega la misión El antídoto de Iverron
    .target Dirania Silvershine
    .accept 3522 >> Acepta la misión Antídoto de Iverron
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra hasta 25|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step << !Priest
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
	.vendor >> |cRXP_BUY_Compra 3 o 4 montones de|r |T132382:0|t[Flechas férreas] << Hunter
    .target Keina
step
    .goto 1438/1,871.24,10417.65
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
step
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes Cardo|r de camino a Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,1034.89,10711.58
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    >>CONSEJO: |cRXP_WARN_Toma los Pantalones como recompensa de él. Los usarás para grabar una runa más tarde|r << Priest sod
    .turnin 3522 >> Entrega la misión El antídoto de Iverron
step
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >> Entra en la Gruta Narácnida
step
    .goto 1438/1,912.33,10935.30
    >>Mata a |cRXP_ENEMY_Githyiss la Vil|r y despójala para obtener su |T134298:0|t[|cRXP_LOOT_Colmillo|r]
    >>Despoja un |cRXP_LOOT_Huevo de Tejemadera|r del suelo al fondo de la cueva
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile
step
	#softcore
	#completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << skip --logout skip
	#hardcore
	#completewith next
	+Haz un Logout Skip en el saliente detrás de los huevos. Mueve a tu personaje hasta que parezca que flota, luego desconecta y vuelve a entrar.
	>>Si caes, simplemente sal de la cueva para entregar la misión
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> HAZ CLIC AQUÍ para ver la referencia
step
	.goto 1438/1,871.24,10417.65
    >>Usa el |T134298:0|t[|cRXP_LOOT_Colmillo de Githyiss|r] para aceptar la misión
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .accept 97236 >> Acepta la misión Colmillo de Githyiss
    .turnin 97236 >> Entrega la misión Colmillo de Githyiss
    .turnin 917 >> Entrega la misión Huevo de Tejemadera
    .target Gilshalan Windwalker
    .accept 920 >> Acepta la misión Las invocaciones de Tenaron
    .use 277190
step
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 920 >> Entrega la misión Las invocaciones de Tenaron
    .target Tenaron Stormgrip
    .accept 921 >> Acepta la misión La corona de la Tierra
step
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >> |cRXP_WARN_Usa la|r |T134776:0|t[Ampolla de cristal] |cRXP_WARN_en la Poza de la Luna|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter/Druid/Warrior/Priest
    .goto 1438/1,769.77,10673.98
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << Hunter/Druid
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457,2 >> Entrega la misión El equilibrio de la naturaleza
step
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 921 >> Entrega la misión La corona de la Tierra
    .target Tenaron Stormgrip
    .accept 928 >> Acepta la misión La corona de la Tierra
step
    .goto 1438/1,805.500,10491.800
    >>Haz clic en el [|cRXP_PICK_Libro|r] a la izquierda de |cRXP_FRIENDLY_Tenaron|r
    .accept 96630 >>Acepta la misión El aventurero
step << Priest
    #completewith next
    .goto 1438/1,787.28,10438.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janna Brillaluna|r escaleras arriba
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Janna Brightmoon
step << Priest
	.goto 1438/1,801.64,10458.75
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r escaleras arriba
	.turnin 3119 >> Entrega la misión Sigilo Sacralizado
    .accept 97979 >> Acepta la misión Los regalos de la diosa
    .accept 5622 >> Acepta la misión Los caminos de Elune
	.trainer >> Aprende tus hechizos de clase
step << Priest
    >>Lanza |T132089:0|t[|cRXP_LOOT_Fusión de las sombras|r] y |T136057:0|t[|cRXP_LOOT_Luz de Elune|r]
    .complete 97979,1
    .complete 97979,2
step << Priest
    .goto 1438/1,800.500,10454.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda::3595|r
    .target Shanda::3595
    .turnin 97979 >>Entrega la misión Los regalos de la diosa
step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457,2 >> Entrega la misión El equilibrio de la naturaleza
    .isQuestComplete 457
step
    .goto 1438/1,700.57,10214.33
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acepta la misión Paquete de Dolanaar
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Costa Oscura

step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .accept 488 >> Acepta la misión Las apuestas de Zenn
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
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyreena Hoja Umbría|r
    .turnin 96630 >> Entrega la misión El aventurero
    .accept 96606 >> Acepta la misión Bendita naturaleza
    .target Lyreena Duskblade
step
    .goto 1438/1,882.300,9909.101
    >>Usa el "emote" |cRXP_WARN_/sit (sentarse)|r junto a la hoguera y |cRXP_WARN_quédate quieto durante 1 minuto|r para completar el objetivo
    .complete 96606,2 --Gain the Boosted Rest buff
step
    .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyreena Hoja Umbría|r
    .turnin 96606 >> Entrega la misión Bendita naturaleza
    .accept 96634 >> Acepta la misión Campamento básico: Cocina
    .target Lyreena Duskblade
step
    #label DenlansEarth
    .goto 1438/1,959.18,9872.38
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    >>|cRXP_WARN_Asegúrate de tener 1 espacio libre en la bolsa antes de aceptar esta misión|r
    .accept 997 >> Acepta la misión Las tierras de Denalan
step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .accept 475 >> Acepta la misión Una brisa problemática
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .turnin 5622 >> Entrega la misión Los caminos de Elune
    .target Laurna Morninglight
    .accept 5621 >> Acepta la misión Prendas de la luna
	.trainer >> Aprende tus hechizos de clase
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .accept 87288 >> Acepta la misión Pelambres de sable suave
    .vendor >> |cRXP_BUY_Compra y equipa una|r |T135641:0|t[Daga arrojadiza equilibrada]
    .target Aldia
step << !Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .accept 87288 >> Acepta la misión Pelambres de sable suave
    .target Aldia
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .accept 932 >> Acepta la misión Odio enraizado
    .accept 2438 >> Acepta la misión El atrapasueños esmeralda
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno]
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    .vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Kyra Cantoestelar::2081|r
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>Acepta la misión La corredora perdida
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava] |cRXP_BUY_si puedes permitírtelo (4 platas 79 cobres), si no, omite este paso|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    .turnin 2159,2 >> Entrega la misión Paquete de Dolanaar << Hunter
    .turnin 2159 >> Entrega la misión Paquete de Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Compra 10 |T132815:0|t|cRXP_LOOT_Leche fría como el hielo|r o cuanto puedas permitirte << Priest
    .home >> Establece tu Piedra de hogar en Dolanaar
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Aprende Disparo Arcano << era
    .train 5116 >> Aprende Disparo de conmoción << sod
    .target Dazalar
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
    >>Omite aprender |T136006:0|t[|cRXP_LOOT_Cólera|r] si no puedes permitírtelo. Prioriza |T136104:0|t[|cRXP_LOOT_Espinas|r]
	.trainer >> Aprende tus hechizos de clase
    .target Kal
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 928 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 929 >> Acepta la misión La corona de la Tierra
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Aprende Cocina
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 96634 >> Entrega la misión Campamento básico: Cocina
    .target Zarrin
    .money <0.0094
step
    .goto 1438/1,902.15,9754.27--c:Teldrassil,57.2,61.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyoma|r
    +Cómprale 5 |T134059:0|t[Especias suaves] , usa |T133971:0|t[|cRXP_FRIENDLY_Cocina|r] para cocinar |T132834:0|t[|cRXP_LOOT_Huevos a las finas hierbas|r] hasta que se te acaben los |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith DenlanStart
    +Come los |T132834:0|t[|cRXP_LOOT_Huevos a las finas hierbas|r] durante 10 segundos para recibir una |cRXP_WARN_mejora del 5% de experiencia por matar monstruos durante 15 minutos|r.
    >>|cRXP_WARN_Recuerdo reaplicar esta beneficio (buff) de comida cuando se acabe|r
    .itemcount 6888,1
step
    #sticky
    #completewith DenlanStart
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
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
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto 1438/1,900.01,9675.85
    >>Selecciona como objetivo a la |cRXP_FRIENDLY_Centinela Shaya|r
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en la|r |cRXP_FRIENDLY_Centinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Entrega la misión Las tierras de Denalan
    .target Denalan
    .accept 918 >> Acepta la misión Semillas de Brezomadera
    .accept 919 >> Acepta la misión Brotes de Brezomadera
step
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener sus |cRXP_LOOT_Semillas|r
    >>Despoja los |cRXP_LOOT_Brotes de Brezomadera|r del suelo << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Entrega la misión Semillas de Brezomadera
    .target Denalan
    .accept 922 >> Acepta la misión Rellian Verdeguja
    .turnin 919 >> Entrega la misión Brotes de Brezomadera
step
    #sticky
    #completewith Starbreeze
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
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
    .goto 1438/1,351.23,9806.54,120 >> Viaja a la Aldea Brisaestelar
step
    .goto 1438/1,351.23,9806.54
    >>Abre el |cRXP_PICK_Vestidor de Tallonkai|r. Despójalo para obtener el |cRXP_LOOT_Atrapasueños esmeralda|r
    >>|cRXP_WARN_Intenta terminar de|r despojar las |cRXP_LOOT_Plumas de lechuza|r en las lechuzas junto a los fúrlbogs
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .disablecheckbox
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gaerolas Talvethren|r escaleras arriba
    .turnin 475 >> Entrega la misión Una brisa problemática
    .target Gaerolas Talvethren
    .accept 476 >> Acepta la misión Corrupción en Tuercepinos
step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>|cRXP_WARN_Usa la|r |T134721:0|t[Ampolla de jade] |cRXP_WARN_en la Poza de la Luna de la Aldea Brisaestelar|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith GnarlpineCorruption
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Mata a los |cRXP_ENEMY_Nightsabers|r. Despójalos para obtener |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pieles|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Guarda cualquier|r |T132832:0|t[Huevo pequeño] |cRXP_WARN_y|r |T134321:0|t[Pata de araña pequeña] |cRXP_WARN_para subir|r |T133971:0|t[Cocina] |cRXP_WARN_después|r
    >>==========================================
    >>|cRXP_WARN_¡Omite este paso si no hay enemigos cercanos para completar el objetivo!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >> Entrega la misión Las apuestas de Zenn
    .isQuestComplete 488
step
    #completewith GnarlpineCorruption
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >> Acepta la misión ¡Búsqueda de redención!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #label SeekRedemption
step
    #label GnarlpineCorruption
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .turnin 476 >> Entrega la misión Corrupción en Tuercepinos
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .turnin 5621 >> Entrega la misión Prendas de la luna
	.trainer >> Aprende tus hechizos de clase
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .turnin 87288 >> Entrega la misión Pelambres de sable suave
    .target Aldia
    .isQuestComplete 87288
step
    .goto 1438/1,984.94,9898.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 2438 >> Entrega la misión El atrapasueños esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >> Acepta la misión Ferocitas el Comesueños
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_si puedes permitírtelo (2 platas 85 cobres), si no, omite este paso|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
	.vendor >>|cRXP_BUY_Compra hasta 800|r |T132382:0|t[Flechas férreas]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Aprende tus hechizos de clase
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
    .xp <8,1
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 933 >> Acepta la misión La corona de la Tierra
    .xp <8,1
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
	.trainer >> Aprende tus hechizos de clase
    .target Kal
    .xp <8,1
step << Druid
    #completewith next
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step << Druid
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Viaja a Roca Mácula
step << Druid
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #completewith jewel
    +Come los |T132834:0|t[|cRXP_LOOT_Huevos a las finas hierbas|r] durante 10 segundos para recibir una |cRXP_WARN_mejora del 5% de experiencia por matar monstruos durante 15 minutos|r.
    >>|cRXP_WARN_Recuerdo reaplicar esta beneficio (buff) de comida cuando se acabe|r
    .itemcount 6888,1
step
    #sticky
    #completewith jewel
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r y |cRXP_LOOT_Patas|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob +Webwood Lurker
    .isOnQuest 488
step
    #completewith jewel
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isNotOnQuest 488
step
    #sticky
	#completewith jewel
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .isNotOnQuest 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Junto a un árbol pequeño
    .goto 1438/1,822.200,9948.500,6 >>En la colina pequeña
    .goto 1438/1,809.800,9926.400,6 >>Junto al árbol enorme
    >>Despoja las 3 |cRXP_LOOT_Bellotas viles|r de las ubicaciones marcadas en tu mapa.
    >>|cRXP_WARN_Omite este paso si alguna de ellas no está allí y no puedes completar el objetivo|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
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
	.goto 1438/1,282.49,10018.65
	>>Mata a |cRXP_ENEMY_Ferocitas el Comesueños|r. Despójale el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r]. |cRXP_WARN_Ten cuidado ya que puede usar|r |T132152:0|t[Vapulear] |cRXP_WARN_golpeándote hasta tres veces a la vez|r
    .use 8049 >>|cRXP_WARN_Usa el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r] para despojar la|r |cRXP_LOOT_Joya de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto 1438/1,332.90,10064.46,30,0
    .goto 1438/1,282.49,10018.65
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #softcore
    .goto 1438/1,953.07,9788.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brannol Lunáguila|r
    .vendor >> |cRXP_BUY_Vende y repara si es necesario|r
    .target Brannol Eaglemoon
step
    #completewith spiderLegs
    >>Mata a los |cRXP_ENEMY_Nightsabers|r. Despójalos para obtener |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pieles|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .accept 933 >> Acepta la misión La corona de la Tierra
step
    #sticky
    #completewith spiderLegs
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
    .isOnQuest 488
step
    #sticky
	#completewith spiderLegs
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1655.21,9555.06,50 >> Viaja a los Estanques de Arlithrien
step
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>|cRXP_WARN_Usa la|r |T134765:0|t[Ampolla de turmalina] |cRXP_WARN_en la Poza de la Luna de los Estanques de Arlithrien|r
	.complete 933,1
step
    .goto 1438/1,1539.12,9437.98,40,0
    .goto 1438/1,1529.44,9325.64
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1645.02,9245.89,50 >> Viaja al suroeste de Teldrassil
step
    #label spiderLegs
	.goto 1438/1,1645.02,9245.89
	>>Haz clic en la |cRXP_PICK_Planta con extraños frutos|r
	.accept 930 >> Acepta la misión El fruto resplandeciente
step
    #hardcore
    #completewith next
    .goto 1438/1,956.02,9736.83,90 >> Viaja a Dolanaar
step
    #softcore
	#completewith next
    .goto 1438/1,1599.71,9509.25
    .deathskip >> Muere y resucita en el cementerio de Dolanaar
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 933 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 7383 >> Acepta la misión La corona de la Tierra
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
    >>|cRXP_WARN_Omite este paso si ya aprendiste hechizos de nivel 8|r
	.trainer >> Aprende tus hechizos de clase
    .target Kal
    .xp <8,1
step
    #label SpiderLegsEnd
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Aprende Cocina
    .turnin 96634 >> Entrega la misión Campamento básico: Cocina
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
    .target Zarrin
step
    .goto 1438/1,902.1500,9754.2750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyoma|r
    +Cómprale 5 |T134059:0|t[Especias suaves] , usa |T133971:0|t[|cRXP_FRIENDLY_Cocina|r] para cocinar |T132834:0|t[|cRXP_LOOT_Huevos a las finas hierbas|r] hasta que se te acaben los |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith Melenas
    +Come los |T132834:0|t[|cRXP_LOOT_Huevos a las finas hierbas|r] durante 10 segundos para recibir una |cRXP_WARN_mejora del 5% de experiencia por matar monstruos durante 15 minutos|r.
    >>|cRXP_WARN_Recuerdo reaplicar esta beneficio (buff) de comida cuando se acabe|r
    .itemcount 6888,1
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    >>|cRXP_WARN_Omite este paso si ya aprendiste hechizos de nivel 8|r
	.trainer >> Aprende tus hechizos de clase
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    >>|cRXP_WARN_Omite este paso si ya aprendiste hechizos de nivel 8|r
	.trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
    >>|cRXP_WARN_Omite este paso si ya aprendiste hechizos de nivel 8|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
    .xp <8,1
step
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Guarda cualquier|r |T132832:0|t[Huevo pequeño] |cRXP_WARN_y|r |T134321:0|t[Pata de araña pequeña] |cRXP_WARN_para subir|r |T133971:0|t[Cocina] |cRXP_WARN_después|r
    >>====================================================================================
    >>|cRXP_WARN_¡Omite este paso si no hay enemigos cercanos para completar el objetivo!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber <<Druid
    .disablecheckbox << !Druid --Druids need the extra xp to get to 10 before going to Darn
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >> Entrega la misión Las apuestas de Zenn
    .isQuestComplete 488
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >> Acepta la misión ¡Búsqueda de redención!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Byancie
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    >>|cRXP_WARN_Omitir|r este paso si ya entrenaste hechizos de nivel 8
	.trainer >> Aprende tus hechizos de clase
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Nightsabers|r. Despójales de sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelts|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Viaja a Roca Mácula
step
    #optional
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>¡Puedes usar las |T134296:0|t[|cRXP_FRIENDLY_Severed Vudú Claws|r] en él para reducir severamente su daño!
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,1
step
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,<1
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Junto a un árbol pequeño
    .goto 1438/1,822.200,9948.500,6 >>En la colina pequeña
    .goto 1438/1,809.800,9926.400,6 >>Junto al árbol enorme
    >>Despoja las 3 |cRXP_LOOT_Bellotas viles|r de las ubicaciones marcadas en tu mapa.
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .itemcount 3418,3
    .isOnQuest 489
step << Priest/Druid
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .turnin 87288 >> Entrega la misión Pelambres de sable suave
    .target Aldia
    .isQuestComplete 87288
step << Priest/Druid
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 932 >> Entrega la misión Odio enraizado
    .turnin 2459 >> Entrega la misión Ferocitas el Comesueños
step
    #optional
    #completewith Ambushers
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .accept 487 >> Acepta la misión El camino a Darnassus
    .target Moon Priestess Amara
step
    #label Ambushers
    .goto 1438/1,1441.87,10032.56
    >>Mata |cRXP_ENEMY_Emboscadores Tuercepinos|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid/Priest
    .goto 1438/1,1172.01,9917.17
    >>Busca a la Sacerdotisa Lunar Amara, ella patrulla el camino al oeste de Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
step
    #completewith next
    .goto 1438/1,1863.46,10665.16,50 >> Viaja al Claro del Oráculo
step
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sentinel Eralya Sombra de Hoja::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99046 >>Entrega la misión La corredora perdida
    .accept 99047 >>Acepta la misión Aún con vida
step
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .accept 937 >> Acepta la misión El claro encantado
step
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>|cRXP_WARN_Usa la|r |T134798:0|t[Ampolla de amatista] |cRXP_WARN_en la poza de la Luna del Claro del Oráculo |r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)

--with the new quests, druids can go straight to 10, a 5 minute save later down the road
--@TODO add mist here
step << Druid/Priest
    #completewith next
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    >>|cRXP_ENEMY_Matriarcas Sangrepluma|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hace mucho daño. Intenta derrotarlas rápidamente|r
    >>|cRXP_WARN_Evita luchar contra ellos tanto como puedas|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    .accept 938 >> Acepta la misión Niebla
    .target Mist
step << Druid/Priest
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Ten en cuenta que esta es una misión cronometrada, debes entregarla en 10 minutos al aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
step
    #completewith xp10 <<!Druid !Priest
	#label harpies
    .goto 1438/1,2102.82,10819.27,0,0
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    >>|cRXP_ENEMY_Matriarcas Sangrepluma|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hace mucho daño. Intenta derrotarlas rápidamente|r
    >>|cRXP_WARN_Evita|r pelear con ellos lo máximo posible
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .accept 98392 >> Acepta la misión Oscuridad in the Glade
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>Mata a |cRXP_ENEMY_Hatescreech|r. Despójala de su |T133288:0|t[|cRXP_LOOT_Amulet|r]
    .complete 98392,1
    .mob Hatescreech
step << Druid/Priest
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>Mata a |cRXP_ENEMY_Windmistress Gaedress|r. Despójala de su |T133333:0|t[|cRXP_LOOT_Amulet|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step << Druid/Priest
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Mata a |cRXP_ENEMY_Witchmother Arysa|r. Despójala de su |T133324:0|t[|cRXP_LOOT_Amulet|r]
    >>|cRXP_ENEMY_Witchmother Arysa|r y |cRXP_ENEMY_Bloodfeather Matriarchs|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hacen mucho daño. Intenta reventarlos rápido|r
    >>|cRXP_WARN_Evita|r pelear con las Matriarchs lo máximo posible
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,2052.36,10854.19
    >>Haz clic en la |cRXP_PICK_Planta con extrañas hojas|r
    .accept 931 >> Acepta la misión Fronda fulgurante
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 98392 >> Entrega la misión Oscuridad in the Glade
    .accept 98398 >> Acepta la misión La oráculo Árbol
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,1932.400,10673.500
    >>Ve a |cRXP_FRIENDLY_Oracle Árbol Corteza|r
    .turnin 98398 >> Entrega la misión Árbol del oráculo
    .accept 940 >> Acepta la misión Teldrassil
step << Druid/Priest
    #label xp10
    .xp 10-900 >> Mata enemigos hasta que te falten 900 xp para el nivel 10 (5600/6500)
step << Hunter
    #completewith xp10
    #label mist1
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    .accept 938 >> Acepta la misión Niebla
    .target Mist
step << Hunter
    #sticky
    #label xp10
    .xp 9+800 >> Farmea hasta los 800 xp en el nivel 9
    >>|cRXP_WARN_Una vez que llegues a este punto de ruptura de experiencia, omite la misión de harpías/escolta y ve directamente a Darnassus. Tendrás otra oportunidad para completar esas misiones más tarde|r
step << Hunter
    #completewith xp10
    #requires mist1
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Ten en cuenta que esta es una misión cronometrada, debes entregarla en 10 minutos al aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
step << Hunter
    #completewith xp10
	#requires harpies
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .target Sentinel Arynia Cloudsbreak
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
    .goto 1457/1,2070.42,9979.310,100 >> Viaja a Darnassus
step << Hunter
    #requires xp10
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    .vendor >>|cRXP_BUY_Vende la basura|r
    .target Ariyell Skyshadow
step << Hunter
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossipid 96881
    .train 227 >>Aprende el uso de Bastones
    >>Si tienes un Bastón en tus bolsas, equipalo
    .target Ilyenia Moonfire
step << Priest
    #ah
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_WARN_Omite este paso si prefieres comprar la|r |T135139:0|t[|cRXP_FRIENDLY_Varita mágica inferior|r] |cRXP_WARN_en la Casa de subastas|r
    >>Comprueba si tiene a la venta la |T132867:0|t[|cRXP_FRIENDLY_Esencia mágica inferior|r] . Si la tiene, cómprala. La necesitarás para fabricar una |T135139:0|t[|cRXP_LOOT_Varita|r]
    .collect 10938,1 --Lesser Magic Essence
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
    .target Vaean
step << Priest
    #ssf
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vaean|r
    >>Comprueba si tiene a la venta una |T132867:0|t[|cRXP_FRIENDLY_Esencia mágica inferior|r] . Si la tiene, cómprala. La necesitarás para fabricar una |T135139:0|t[|cRXP_LOOT_Varita|r]
    .collect 10938,1 --Lesser Magic Essence
    .target Vaean
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << Priest
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lalina Luna de Verano|r
    .train 7411 >>Aprende |T136244:0|t[|cRXP_LOOT_Encantamiento|r]. Lo necesitarás para fabricar una |T135139:0|t[|cRXP_LOOT_Varita|r]
    .target Lalina Summermoon
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_BUY_Compra|r los siguientes materiales a él:
    .collect 6217,1 --Copper Rod (1)
    .collect 247786,9 --Mote of Magic (9)
    .collect 4470,9 --Simple Wood (9)
    .target Vaean
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Usa |T136244:0|t[|cRXP_LOOT_Encantamiento|r] en tu |cRXP_WARN_pestaña de profesión|r para crear una |T135225:0|t[|cRXP_LOOT_Vara rúnica de cobre|r]
    .collect 6218,1 --Runed Copper Rod
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    +Usa |T136244:0|t[|cRXP_LOOT_Encantamiento|r] en tu |cRXP_WARN_pestaña de profesión|r para fabricar |T135645:0|t[|cRXP_LOOT_Novice's Practicar Varitas|r] |cRXP_WARN_hasta que alcances 10 en encantamiento|r
    .skill enchanting,10,1
step << Priest
    #optional
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lalina Luna de Verano|r
    .train 14293 >>Aprende |T135139:0|t[|cRXP_FRIENDLY_Varita mágica inferior|r] de ella
    .target Lalina Summermoon
    .skill enchanting,<10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Usa |T136244:0|t[|cRXP_LOOT_Encantamiento|r] en tu |cRXP_WARN_pestaña de profesión|r para fabricar una |T135139:0|t[|cRXP_FRIENDLY_Varita mágica inferior|r]
    .collect 11287,1 --Lesser Magic Wand
    .skill enchanting,<10,1
step << Priest
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135139:0|t[|cRXP_FRIENDLY_Varita mágica inferior|r]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12
step << Priest
    #ah
    #optional
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador de Darnassus|r
    >>|T134711:0|t[Aceite de zahorí menor] |cRXP_WARN_y|r |T133906:0|t[Sabiola ahumada] |cRXP_WARN_proporcionarán un alto aumento de daño en niveles iniciales|r
    >>|cRXP_WARN_También busca mejoras de DPS altas|r |T132317:0|t[Varita] |cRXP_WARN_que puedas usar ahora/pronto|r
    *|cRXP_WARN_Omite|r este paso si no deseas comprar nada
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << !Rogue
    #requires xp10
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 922 >> Entrega la misión Rellian Verdeguja
    .target Rellian Greenspyre
    .accept 923 >> Acepta la misión Tumores
step << Druid NightElf/Priest NightElf
    #optional
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r
    .turnin 940 >> Entrega la misión Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Acepta la misión El Páramo de los Ancianos
    .xp 10,1
step << Druid NightElf
    .goto 1457/1,2572.300,10185.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denatharion::4218|r
    .target Denatharion::4218
    .accept 5923 >>Acepta la misión Escucha la llamada
    .isNotOnQuest 5925
step << Druid NightElf
    .isOnQuest 5923
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .turnin 5923 >> Entrega la misión Escucha la llamada
    .accept 5921 >> Acepta la misión Claro de la Luna
	.trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .isOnQuest 5925
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .turnin 5925 >> Entrega la misión Escucha la llamada
    .accept 5921 >> Acepta la misión Claro de la Luna
	.trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .accept 5921 >> Acepta la misión Claro de la Luna
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Dalia Filosol|r
    .accept 98067 >>Acepta la misión Ojos de los centinelas
    .target Sentinel Dalia Sunblade
step << !Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r arriba
    .accept 2518 >> Acepta la misión Las lágrimas de la Luna
step << Priest
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Alathea|r arriba
    .accept 5627 >>Acepta la misión Estrellas de Elune
    .turnin 5627 >>Entrega la misión Estrellas de Elune
    .target Priestess Alathea
step << Druid NightElf
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    >>|cRXP_WARN_Estará en tu libro de hechizos|r
	.zoneskip Moonglade
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5921 >> Entrega la misión Claro de la Luna
    .target Dendrite Starblaze
    .accept 5929 >> Acepta la misión Espíritu del gran oso
step << Druid NightElf
    .goto 1450/1,-2422.77,8079.37,15,0
    .goto 1450/1,-2285.42,8069.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del gran oso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid NightElf
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    >>|cRXP_WARN_Esto te hará regresar más rápido|r
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5929 >> Entrega la misión Espíritu del gran oso
    .target Dendrite Starblaze
    .accept 5931 >> Acepta la misión El regreso a Darnassus
step
    #requires xp10 << Rogue
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .subzoneskip 186
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99047 >>Entrega la misión Aún con vida
    .accept 99050 >>Acepta la misión El Gran Árbol otorga << !Druid
step << !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narret Sombrarboleda|r
    .goto 1438/1,1000.400,9891.900
    >>|cRXP_BUY_Compra un|r |T134864:0|t[Vial vacío] |cRXP_BUY_a este vendedor|r
    .collect 3371,1 --Empty Vial
    .target Narret Shadowgrove
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 932 >> Entrega la misión Odio enraizado
    .turnin 2459 >> Entrega la misión Ferocitas el Comesueños
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .turnin 87288 >> Entrega la misión Pelambres de sable suave
    .target Aldia
    .isQuestComplete 87288
step
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r y |cRXP_LOOT_Pelambres|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Guarda cualquier|r |T132832:0|t[Huevo pequeño] |cRXP_WARN_y|r |T134321:0|t[Pata de araña pequeña] |cRXP_WARN_para subir|r |T133971:0|t[Cocina] |cRXP_WARN_después|r
    >>====================================================================================
    >>|cRXP_WARN_¡Omite este paso si no hay enemigos cercanos para completar el objetivo!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >> Entrega la misión Las apuestas de Zenn
    .isQuestComplete 488
step
    .abandon 488 >>Abandona la misión Las apuestas de Zenn
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >> Acepta la misión ¡Búsqueda de redención!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Junto a un árbol pequeño
    .goto 1438/1,822.200,9948.500,6 >>En la colina pequeña
    .goto 1438/1,809.800,9926.400,6 >>Junto al árbol enorme
    >>Despoja las 3 |cRXP_LOOT_Bellotas viles|r de las ubicaciones marcadas en tu mapa.
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .itemcount 3418,3
    .isOnQuest 489
step << Hunter
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava] |cRXP_BUY_si puedes permitírtelo (5 platas 4 cobre), si no, omite este paso|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
	.vendor >> |cRXP_BUY_Compra 4 montones de|r |T132382:0|t[Flechas afiladas]|cRXP_BUY_. Equípalas en cuanto llegues al nivel 10|r
    .target Jeena Featherbow
step << Hunter/Warrior/Rogue
    .goto 1438/1,1172.01,9917.17
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
    .goto 1438/1,928.83,9812.34
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
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Rondador Tejemadera|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6101 >> Acepta la misión Domesticar la bestia
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 7383 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 935 >> Acepta la misión La corona de la Tierra
step << !Druid
    #completewith DenalanEnd
    >>Mata a los |cRXP_ENEMY_Lasher Sproutlings|r que veas en el camino hacia Denalan. Despoja las |T237424:0|t[|cRXP_LOOT_Dewy Azotador Fronds|r]
    .complete 99050,1
    .mob Lasher Sproutling
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Entrega la misión Fronda fulgurante
    .turnin 930 >> Entrega la misión El fruto resplandeciente
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Entrega la misión El corazón musgoso
    .isOnQuest 927
step
	.goto 1438/1,719.87,9503.48
	>>Haz clic en la |cRXP_LOOT_Maceta de Denalan|r
	.turnin 941 >> Entrega la misión Plantar el corazón
	.isQuestTurnedIn 927
step
    .goto 1438/1,719.400,9503.900
    >>Espera a que |cRXP_FRIENDLY_Denalan|r complete el "roleplay". Mata a los |cRXP_ENEMY_Bogono|r para obtener |T134187:0|t[|cRXP_LOOT_Raíces de ciénaga|r] y recoge la |cRXP_PICK_Fronda crecida|r
    >>¡Las |T134184:0|t[Frondas crecidas] |cRXP_WARN_que obtienes como recompensa son un objeto de curación instantánea que no comparte tiempo de reutilización con las pociones de vida!|r
    .accept 2399 >>Acepta la misión Flora en brote
    .turnin 2399 >>Entrega la misión Flora en brote
step
    #label DenalanEnd
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador sable de la noche|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Termina de matar a los |cRXP_ENEMY_Retoños de azotador|r. Despoja las |T237424:0|t[|cRXP_LOOT_Fronda de azotador húmedo|r]
    .complete 99050,1
    .isOnQuest 6101 << Hunter --Hunter only finishes here if already on the cat quest
    .mob Lasher Sproutling
step
    #label L10
    .xp 10-850 << !Hunter !Druid
    .xp 10 << Hunter
    .itemcount 280087,<6
step
#optional
    #label L10
    .xp 10-1475 << !Hunter
    .xp 10-625 << Hunter
    .isQuestComplete 87288
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
    .xp >10,1
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Entrega la misión El Gran Árbol otorga
    .accept 99073 >>Acepta la misión Aliviar el sufrimiento
    .xp >10,1
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .turnin 87288 >> Entrega la misión Pelambres de sable suave
    .target Aldia
    .isQuestComplete 87288
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
    .accept 1684 >> Acepta la misión Elanaria
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .train 5171 >> Aprende |T132306:0|t[Hacer picadillo]
    .train 921 >> Aprende |T133644:0|t[Robar] también, que se necesita para tu misión de Pícaro de nivel 10
    .target Jannok Breezesong
step << Hunter
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acepta la misión Domesticar la bestia
	.trainer >> Aprende tus hechizos de clase
step << Hunter
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Rondador Tejemadera|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6101 >> Acepta la misión Domesticar la bestia
step << Hunter
    #completewith next
    >>Mata a todos los |cRXP_ENEMY_Retoños de azotador|r que veas de camino al felino. Despójalos para obtener |T237424:0|t[|cRXP_LOOT_Frondas de azotador húmedo|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador sable de la noche|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Termina de matar a los |cRXP_ENEMY_Lasher Sproutlings|r. Despoja las |T237424:0|t[|cRXP_LOOT_Dewy Azotador Fronds|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6102 >> Acepta la misión Domesticar la bestia
step << Hunter
    .goto 1438/1,520.28,9567.62
    .use 15923 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Estridador estrígido|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6103 >> Acepta la misión Domesticar la bestia
step << Warrior
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .accept 1684 >> Acepta la misión Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto 1438/1,943.85,9790.28
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .accept 2241 >> Acepta la misión Cuando cae la manzana
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
	.trainer >> Aprende tus hechizos de clase
    .target Laurna Morninglight
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto 1438/1,947.57,9812.38
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra una|r |T135145:0|t[Cachava]
    >>|cRXP_WARN_Lo equiparás más tarde. Omite este paso si encuentras un bastón diferente|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Entrega la misión El Gran Árbol otorga
    .accept 99073 >>Acepta la misión Aliviar el sufrimiento
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step
    #optional
    .abandon 87288 >> Abandona Pelambres de sable suave, no vas a volver a Dolanaar
step << Rogue
    #softcore
    #completewith next
    .goto 1438/1,1574.25,9978.26
    .deathskip >>Una vez que pases la zona fúrbolg, muere a propósito y resucita en el cementerio de Darnassus
    .target Ángel de la Resurrección
step << Rogue
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Viaja a Darnassus
step << Rogue
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 922 >> Entrega la misión Rellian Verdeguja
    .target Rellian Greenspyre
    .accept 923 >> Acepta la misión Tumores
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Entrega la misión Cuando cae la manzana
    .target Syurna
    .accept 2242 >> Acepta la misión La llamada del destino
step << Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Dalia Filosol|r
    .accept 98067 >>Acepta la misión Ojos de los centinelas
    .target Sentinel Dalia Sunblade
step << Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .accept 2518 >> Acepta la misión Las lágrimas de la Luna
step << Rogue
    .goto 1457/1,2009.100,9986.601
    >>Ve a las Puertas de Darnassus y usa el |T133298:0|t[|cRXP_LOOT_Colgante lunar|r]
    .complete 98067,4
    .use 279378
step << Hunter
    #sticky
	.goto 1438/1,1716.82,10324.42,0
	.goto 1438/1,1564.07,10480.54,0
	.goto 1438/1,1492.78,10765.61,0
	.goto 1438/1,1900.12,10853.85,0
    >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Cazador estrígido|r para domesticarlo|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Ataca a enemigos con ella para aprender|r |T132140:0|t[Zarpa (Rango 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
	.unitscan Strigid Hunter
step
    .goto 1438/1,1691.36,10412.66
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto 1438/1,1828.600,10964.800
    >>Mata a la |cRXP_ENEMY_Lady Sathrah|r. Despójala para obtener sus |cRXP_LOOT_Hileras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_puede aparecer en 3 ubicaciones diferentes, verifica tu mapa para ver una ruta recomendada|r
    >>|cRXP_WARN_Dirígete al norte por el río y verifica el punto de aparición más al este primero. Ve haciendo la misión de los|r |T134339:0|t[Tumores] |cRXP_WARN_mientras avanzas|r
    >>|cRXP_WARN_Si no está al este del río, completa la misión|r |T134339:0|t[Tumores] |cRXP_WARN_antes de dirigirte al oeste|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto 1438/1,1864.47,10667.19
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .accept 937 >> Acepta la misión El claro encantado
step << Rogue
    .goto 1438/1,1879.75,10976.02
    >>|cRXP_WARN_Lanza|r |T133644:0|t[Robar] en |cRXP_ENEMY_Sethir el Ancestro|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_Sethir el Ancestro|r |cRXP_WARN_camina por la rama del árbol grande|r
    >>|cRXP_WARN_Evita luchar contra |cRXP_ENEMY_Sethir el Ancestro|r. Deja que pase de largo, luego entra en|r |T132320:0|t[Sigilo] |cRXP_WARN_y usa|r |T133644:0|t[Robar] |cRXP_WARN_cuando estés detrás de él|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto 1438/1,2102.82,10819.27,0,0
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
    .goto 1438/1,2208.67,10758.15
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    >>|cRXP_WARN_Omite esta misión si el PNJ no está allí|r
    .accept 938 >> Acepta la misión Niebla
step
    .goto 1438/1,1864.47,10663.80
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Ten en cuenta que esta es una misión cronometrada, debes entregarla en 10 minutos al aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .accept 98392 >> Acepta la misión Oscuridad in the Glade
    .target Sentinel Arynia Cloudsbreak
step
    .isOnQuest 99073
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sentinel Eralya Sombra de Hoja::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99073 >>Entrega la misión Easing Sufrimiento
step
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>Mata a |cRXP_ENEMY_Hatescreech|r. Despójala de su |T133288:0|t[|cRXP_LOOT_Amulet|r]
    .complete 98392,1
    .mob Hatescreech
step
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>Mata a |cRXP_ENEMY_Windmistress Gaedress|r. Despójala de su |T133333:0|t[|cRXP_LOOT_Amulet|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Mata a |cRXP_ENEMY_Witchmother Arysa|r. Despójala de su |T133324:0|t[|cRXP_LOOT_Amulet|r]
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 98392 >> Entrega la misión Oscuridad in the Glade
    .accept 98398 >> Acepta la misión La oráculo Árbol
    .target Sentinel Arynia Cloudsbreak
step
    .goto 1438/1,1932.400,10673.500
    >>Ve a |cRXP_FRIENDLY_Oracle Árbol Corteza|r
    .turnin 98398 >> Entrega la misión La oráculo Árbol
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
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Viaja a Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Viaja a Darnassus
step << !Warrior
    --@TODO add note that u need to wait for the other player owl to despawn
    .goto 1457/1,2009.100,9986.601
    >>Ve a las Puertas de Darnassus y usa el |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r]
    .complete 98067,4
    .use 279378
step << !Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acepta la misión Nessa Cantosombrío
step
    #softcore
    #label darn
    #optional
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Viaja a Darnassus
step
	.abandon 927 >> Abandona la misión El corazón musgoso. Nunca tendrás la oportunidad de entregarla
step << Warrior
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Entrega la misión Elanaria
    .target Elanaria
    .accept 1683 >> Acepta la misión Vorlus Pezuñavil
step << Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acepta la misión Nessa Cantosombrío
step << Warrior
    .goto 1457/1,2009.100,9986.601
    >>Ve a las Puertas de Darnassus y usa el |T133298:0|t[|cRXP_LOOT_Colgante lunar|r]
    .complete 98067,4
    .use 279378
step << Warrior
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >> Viaja hacia |cRXP_ENEMY_Vorlus Pezuñavil|r
step << Warrior
    .goto 1438/1,1411.32,9669.43
    >>Mata a |cRXP_ENEMY_Vorlus Pezuñavil|r. Despójalo para obtener su |cRXP_LOOT_Cuerno|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto 1438/1,1594.62,9988.44
    .deathskip >>Muere a propósito después de que pases la zona fúrbolg y resucita en Darnassus
step << Warrior
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Viaja a Darnassus
step << Warrior
    .goto 1457/1,2331.89,9994.09
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Entrega la misión Vorlus Pezuñavil
--	.accept 1686 >> Accept The Shade of Elura
step
    .goto 1457/1,2240.100,10121.000
    >>Ve a la Posada de Darnassus y usa el |T133298:0|t[|cRXP_LOOT_Colgante lunar|r]
    .complete 98067,3
    .use 279378
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .turnin 5931 >> Entrega la misión El regreso a Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acepta la misión Cuerpo y corazón
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r
    .turnin 940 >> Entrega la misión Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Acepta la misión El Páramo de los Ancianos
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r
    .target Arch Druid Fandral Staghelm
    .turnin 935 >> Entrega la misión La corona de la Tierra
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Entrega la misión Domesticar la bestia
step << Hunter
    >>|cRXP_WARN_Subepor la rampa a la derecha de|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silvaria|r
    .goto 1457/1,2491.75,10176.21
    .trainer >>Entrena los hechizos de tu mascota
    .target Silvaria
step
    .goto 1457/1,2579.300,10129.000
    >>Ve a la entrada del Fuerte Cenarion y usa el |T133298:0|t[|cRXP_LOOT_Colgante lunar|r]
    .complete 98067,1
    .use 279378
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Entrega la misión La llamada del destino
step
    .goto 1457/1,2534.25,10085.60
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 923 >> Entrega la misión Tumores
step
    .goto 1457/1,2499.900,9932.601
    >>Ve al banco de Darnassus y usa el |T133298:0|t[|cRXP_LOOT_Colgante lunar|r]
    .complete 98067,2
    .use 279378
step
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Dalia Filosol|r
    .turnin 98067 >>Entrega la misión Ojos de los centinelas
    .target Sentinel Dalia Sunblade
step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2518 >> Entrega la misión Las lágrimas de la Luna
    .target Priestess A'moora
    .accept 2520 >> Acepta la misión El Sacrificio de Sathrah
step
    .goto 1457/1,2518.20,9632.80
	.use 8155 >>|cRXP_WARN_Usa el|r |T135652:0|t[Sacrificio de Sathrah] |cRXP_WARN_en la fuente|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2520 >> Entrega la misión El Sacrificio de Sathrah
-- step << Druid
-- #ssf
--     #season 0
--     .goto 1457/1,2430.89,9758.21
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
--     .train 2366 >> Train |T136065:0|t[Herbalism]
--     >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
--     .target Firodren Mooncaller
step
    #ah
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador de Darnassus|r
    >>Compra los siguientes objetos para entregar misiones al instante más adelante en Costa Oscura:
    -- >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133972:0|t[Carne de zancudo]
    >>|T134711:0|t[Aceite de zahorí menor] << Priest/Druid
    >>|T133906:0|t[Sabiola ahumada] << Priest/Druid
    >>|T134711:0|t[Aceite de zahorí menor] |cRXP_WARN_y|r |T133906:0|t[Sabiola ahumada] |cRXP_WARN_proporcionarán un alto aumento de daño en niveles iniciales|r << Priest/Druid
    >>|cRXP_WARN_También busca mejoras de DPS altas|r |T132317:0|t[Varita] |cRXP_WARN_que puedas usar ahora/pronto|r << Priest
    *|cRXP_WARN_Omite|r este paso si no deseas comprar nada
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    -- .collect 2449,5,6123,1 << Druid
    .collect 20744,1 << Priest/Druid -- Minor Wizard Oil (1)
    .collect 21072,20 << Priest/Druid -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto 1457/1,2258.91,9793.71
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBusca a |cRXP_FRIENDLY_Jaeana|r, ella patrulla alrededor del Bancal de los Mercaderes
    >>Compra un lote de|cRXP_BUY_ |T133972:0|t[Cecina dura] |ra esta vendedora|cRXP_BUY_.
    >>|cRXP_WARN_Necesitarás esto para alimentar a tu búho, solo comen carne y no hay vendedor de carne en Costa Oscura|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossipid 96881
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
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1457/1,2316.49,9924.41
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
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135147:0|t[Bastón nudoso]|cRXP_BUY_. Equipalo al nivel 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135154:0|t[Bastón de intendente]|cRXP_BUY_. Equipalo al nivel 11|r << era
    >>|cRXP_BUY_Compra y equipa un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_si no puedes permitirte un|r |T135147:0|t[Bastón nudoso] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto 1457/1,2316.49,9924.41
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
    .goto 1457/1,2275.00,9775.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r en el segundo piso
    >>|cRXP_BUY_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6344 >> Entrega la misión Nessa Cantosombrío
    .target Nessa Shadowsong
    .accept 6341 >> Acepta la misión Las presas de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Entrega la misión Las presas de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acepta la misión Vuelo a Auberdine
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
]])
