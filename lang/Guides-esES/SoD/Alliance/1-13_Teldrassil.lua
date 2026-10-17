if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 1-7 Cañada Umbría SoD
#displayname 1-7 Cañada Umbría
#version 1
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 7-13 Cañada Umbría SoD
step << !NightElf
    #sticky
    #completewith next
    +Has seleccionado una guía diseñada para Elfos de la Noche. Deberías elegir la misma zona de inicio en la que comienzas
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .accept 456 >> Acepta la misión El equilibrio de la naturaleza
step << Druid/Warrior/Rogue/Hunter/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] |cRXP_BUY_y compra la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] al vendedor|r << Priest
    >>|cRXP_BUY_Vende tus|r |T133975:0|t[Manzanas] |cRXP_BUY_y compra las siguientes runas:|r << Druid
    >>|cRXP_BUY_Vende una de tus |T133972:0|t|cRXP_LOOT_[Cecinas duras]|r y compra la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] << Warrior
    >>|cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] y |T132540:0|t[Botas] |cRXP_WARN_(no se puede grabar en ellas)|r |cRXP_BUY_y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r] |cRXP_BUY_y|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] << Rogue
    >>|cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] y |T132540:0|t[Botas] |cRXP_WARN_(no se puede grabar en ellas)|r |cRXP_BUY_y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Matar|r] |cRXP_BUY_y|r |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Corazón del león|r] al vendedor|r << Hunter
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 208772,1 << Rogue --Rune of Saber Slash
    >>Conseguirás el resto de tus runas muy pronto
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Hunter/Druid/Priest
    .equip 18 >> Equipa el |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r], puedes usarlo después de 30 segundos para aprender |T237472:0|t[Furia de Tempestira] << Druid
    .train 402852 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] para aprender |T237570:0|t[Homúnculos] << Priest
    .train 400105 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r] para entrenar |T132323:0|t[Golpesombra] << Rogue
    .train 424984 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] para aprender |T132375:0|t[Sablazo] << Rogue
    .train 403470 >> Usa la |T134419:0|t[Runa de Ataque de la victoria|cRXP_FRIENDLY_] para aprender |T132342:0|t[Ataque de la victoria]|r, la grabarás pronto` << Warrior
    .train 410111 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Matar|r] << Hunter
    .train 409580 >> Usa el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Corazón del león|r] para aprender |T132185:0|t[Corazón del león] << Hunter
    .train 424718 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de las Estrellas|r] para aprender |T135730:0|t[Oleada de estrellas] << Druid
    .train 416044 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del sol|r] para aprender |T236216:0|t[Fuego solar] << Druid
    .train 439770 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Estrella fugaz|r] para aprender |T236168:0|t[Lluvia de estrellas] << Druid
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .engrave 7 >> Graba |T237570:0|t[Homúnculos] en tus pantalones << Priest
    .engrave 7 >> Graba |T236174:0|t[Disparo mortal] en tus pantalones << Hunter
    .engrave 7 >> Graba |T135730:0|t[Oleada de estrellas] en tus pantalones << Druid
step << Hunter
    #optional
    #sticky
    .aura 409583 >> Recuerda activar tu |T132185:0|t[Corazón del león]
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >> Usa el |T134903:0|t[|cRXP_FRIENDLY_Ídolo Lunar|r] del panel de tu personaje para aprender |T237472:0|t[Furia de Tempestira]
    .engrave 5 >> Graba tu pecho con |T237472:0|t[Furia de Tempestira]
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    >>Despoja a los enemigos que mates, asegúrate de tener basura para vender por valor de al menos 10 de cobre, lo necesitarás para aprender |T132333:0|t[Grito de batalla]<< Warrior
    .xp 2 >> Mata enemigos hasta subir al nivel 2
step << !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r y |cRXP_FRIENDLY_Melithar Corzocelada|r
    #label GoodProtector
    .accept 4495 >> Acepta la misión Un buen amigo
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Acepta la misión La protectora de los bosques
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melithar Corzocelada|r
    #label GoodProtector
    .accept 458 >> Acepta la misión La protectora de los bosques
	.goto Teldrassil,59.924,42.474
    .target Melithar Staghelm
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Keina
step << Rogue
    .goto Teldrassil,59.63,38.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frahun Sombrusurro|r
    .accept 77573 >> Acepta la misión Trabajo en tejados
    .turnin 77573 >> Entrega la misión Trabajo en tejados
    .target Frahun Shadewhisper
step << Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
    .accept 77575 >> Acepta la misión Entre las redes de las sombras
    .turnin 77575 >> Entrega la misión Entre las redes de las sombras
    .trainer >> Aprende |T132333:0|t[Grito de batalla]
    .target Alyissia
step << Warrior/Rogue
    .equip 10 >> Equipa los |T132938:0|t[Guantes de anillas deslustradas] << Warrior
    .engrave 10 >> Graba |T132342:0|t[Ataque de la victoria] en tus guantes << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Equipa los |T132952:0|t[Guantes de cuero rajado] << Rogue
    .engrave 10 >> Graba |T132375:0|t[Sablazo] en tus guantes << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,60.8,42.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .accept 4495 >> Acepta la misión Un buen amigo
    .target Dirania Silvershine
step
    >>|cRXP_WARN_Asegúrate de equipar todas las piezas de equipo que puedas si caen. Las necesitarás para grabar|r |T134419:0|t|[Runas] |cRXP_WARN_en ellas|r
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    >>Elige los |T132939:0|t[Guantes] como recompensa para grabar una runa en ellos << Druid/Hunter
    >>Toma los |T132611:0|t[Brazales] como recompensa para grabar una runa en ellos << Priest
    .turnin 456 >> Entrega la misión El equilibrio de la naturaleza
    .target Conservator Ilthalaine
    .accept 457 >> Acepta la misión El equilibrio de la naturaleza
step << Hunter/Rogue/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >> |cRXP_BUY_Vende la basura y compra todas las siguientes runas:|r << Hunter/Rogue/Priest
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    >>Conseguirás el resto de tus runas muy pronto
    .target Rune Broker
    .skipgossip
step << Hunter/Rogue/Priest
    .use 212552 << Priest --Psychosophic Epiphany
    .use 221481 << Priest --Nihilit Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 206168 << Hunter --Rune of the Chimera
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 227922 << Rogue --Rune of the Swashbuckler
    .train 431663 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] para aprender |T136181:0|t[Púa mental] << Priest
    .train 431705 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía nihilista|r] para aprender |T132886:0|t[Zona de vacío] << Priest
    .train 425216 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] para aprender |T237514:0|t[Plaga del Vacío] << Priest
    .train 402862 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] para aprender |T237545:0|t[Penitencia] << Priest
    .train 402849 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] para aprender |T136149:0|t[Palabra de las Sombras: muerte] << Priest
    .train 410121 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de la quimera|r] para aprender |T236176:0|t[Disparo de quimera] << Hunter
    .train 415423 >> Usa el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Aspecto de la víbora|r] para aprender |T132160:0|t[Aspecto de la víbora] << Hunter
    .train 410122 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo solitario|r] para aprender |T132266:0|t[Lobo solitario] << Hunter
    .train 416086 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Combate cuerpo a cuerpo|r] para aprender |T132394:0|t[Especialista cuerpo a cuerpo] << Hunter
    .train 440563 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para aprender |T132171:0|t[Doble tenebroso] << Hunter
    .train 400101 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Paso de las sombras|r] para aprender |T132303:0|t[Paso de las Sombras] << Rogue
    .train 432301 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Juego sucio|r] para aprender |T236285:0|t[Ventaja injusta] << Rogue
    .train 415922 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Espadachín|r] para aprender |T134538:0|t[Trabuco] << Rogue
step << Druid
    #sticky
    #optional
    >> |cRXP_WARN_Mantente atento a cualquier|r Capa |cRXP_WARN_que caiga|r|cRXP_WARN_. Equípala y graba|r |T236168:0|t[Lluvia de estrellas] |cRXP_WARN_en ella|r
    .engrave 15 >> Graba |T236168:0|t[Lluvia de estrellas] en tu |T133771:0|t[Capa]
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Mantente atento a cualquier|r Pechera/Cinturón/Capa|cRXP_WARN_que caiga|r|cRXP_WARN_. Equípalos y graba las runas respectivas|r
    .engrave 5 >> Graba la |T132266:0|t[Lobo solitario] en tu |T132724:0|t[Pechera]
    .engrave 6 >> Graba |T132394:0|t[Especialista cuerpo a cuerpo] en tu |T132513:0|t[Cinturón]
    .engrave 15 >> Graba |T132171:0|t[Doble tenebroso] en tu |T133771:0|t[Capa]
step << Rogue
    #sticky
    #optional
    >> |cRXP_WARN_Mantente atento a cualquier|r Cinturón/Capa/Brazalete |cRXP_WARN_que caiga|r|cRXP_WARN_. Equípalos y graba las runas respectivas|r
    .engrave 5 >> Graba |T236285:0|t[Ventaja injusta] en tus |T133830:0|t[Brazales]
    .engrave 6 >> Graba |T132303:0|t[Paso de las Sombras] en tu |T132513:0|t[Cinturón]
    .engrave 15 >> Graba |T134538:0|t[Trabuco] en tu |T133771:0|t[Capa]
step << Hunter/Druid
    #optional
    #sticky
    .equip 10 >> Equipa los |T132939:0|t[Guantes de entrenamiento en tiro con arco]
    .engrave 10 >> Graba |T236176:0|t[Disparo de quimera] en tus guantes << Hunter
    .engrave 10 >> Graba |T236216:0|t[Fuego solar] en tus guantes << Druid
    .use 5394
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,41.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janna Brillaluna|r escaleras arriba
    >>|cRXP_BUY_Vende la chatarra y compra el|r |T132495:0|t[Cinturón de paño fino] |cRXP_BUY_y los|r |T132543:0|t[Zapatos de paño fino]|cRXP_BUY_. Los necesitarás para grabar runas en ellos|r
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 --Thin Cloth Shoes (1)
    .target Janna Brightmoon
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r arriba
    .accept 77574 >> Acepta la misión Meditaciones sobre Elune
    .turnin 77574 >> Entrega la misión Meditaciones sobre Elune
    .target Shanda
step << Priest
    #optional
    #completewith next
    .equip 10 >> Equipa los |T132961:0|t[Guantes de paño andrajoso]
    .equip 6 >> Equipa el |T132495:0|t[Cinturón de paño fino]
    .equip 8 >> Equipa los |T132543:0|t[Zapatos de paño fino]
    .equip 9 >> Equipa los |T132611:0|t[Brazales de tallo]
    .engrave 10 >> Graba |T136149:0|t[Palabra de las Sombras: muerte] en tus guantes
    .engrave 6 >> Graba |T136181:0|t[Púa mental] en tus brazales
    .engrave 8 >> Graba |T237514:0|t[Plaga del Vacío] en tus pies
    .engrave 9 >> Graba |T132886:0|t[Zona de vacío] en tus brazaletes
    .use 711 --Tattered Cloth Gloves
    .use 3599 --Thin Cloth Belt
    .use 2117 --Thin Cloth Shoes
    .use 11187 --Stemleaf Bracers
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,40.8
    >>|cRXP_WARN_Salta abajo|r y habla con |Tinterface/worldmap/chatbubble_64grey.blp:20|t |cRXP_FRIENDLY_Dellylah|r
    .vendor >>|cRXP_BUY_Compra 10 de|r |T132794:0|t|cRXP_LOOT_Agua de manantial refrescante|r
    .target Dellylah
step
    #label balancetwocomplete
    .goto Teldrassil,59.8,34.1
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step
    #season 2
    .goto Teldrassil,59.8,34.1
    .xp 3-400 >> Mata enemigos hasta que te falten 400xp para el nivel 3 (500/900)
step
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457 >> Entrega la misión El equilibrio de la naturaleza
    .target Conservator Ilthalaine
	.accept 3116 >> Acepta la misión El Sigilo Simple << Warrior
	.accept 3117 >> Acepta la misión El Sigilo con Grabados << Hunter
    .accept 3119 >> Acepta la misión Sigilo Sacralizado << Priest
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3519 >> Entrega la misión Un Amigo en Apuros
    .target Dirania Silvershine
    .accept 3521 >> Acepta la misión Antídoto de Iverron
step << Hunter
    #season 2
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Asegúrate de tener 1 plata sobrante después de dejar al vendedor para poder pagar|r |T132204:0|t[|cRXP_FRIENDLY_Picadura de Serpiente|r]. |cRXP_WARN_No compres el arco si no vas a poder permitirte aprender la habilidad más tarde|r
	.vendor >> |cRXP_BUY_Compra un lote de|r |T132382:0|t[Flechas férreas]
    .vendor >> |cRXP_BUY_Compra un|r |T135499:0|t[Arco corvo de madera de cuerno]
    .target Keina
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << !Hunter !Druid !Priest
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Keina
 step << NightElf Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Entrega la misión El Sigilo Simple
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .target Alyissia
step << Druid/Priest
    #season 2
    #label DTrain4
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .accept 916 >> Acepta la misión Veneno de tejemadera
    .target Gilshalan Windwalker
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayanna Semprerguida|r
    .turnin 3117 >> Entrega la misión El Sigilo con Grabados
    .accept 77568 >> Acepta la misión La fuerza de un cazador
    .turnin 77568 >> Entrega la misión La fuerza de un cazador
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
step
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Mata a las |cRXP_ENEMY_Arañas Tejemadera|r. Despójalas para obtener su |cRXP_LOOT_Icor|r y sus |cRXP_LOOT_Glándulas venenosas|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Mata a los |cRXP_ENEMY_Grell|r y a los |cRXP_ENEMY_Grellín|r. Despójalos para obtener sus |cRXP_LOOT_Champiñones|r y |cRXP_LOOT_Musgovil|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
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
    .accept 3522 >> Acepta la misión Antídoto de Iverron
    .target Dirania Silvershine
    .xp >7,1
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3521 >> Entrega la misión El antídoto de Iverron
    .target Dirania Silvershine
    .xp <7,1
step << !Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
    .target Keina
step << Hunter
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
	.vendor >> |cRXP_BUY_Compra 3 o 4 montones de|r |T132382:0|t[Flechas férreas] << Hunter
    .vendor >> |cRXP_BUY_Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_Cómpralo si no lo tienes ya|r << Hunter
    .target Keina
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .turnin 916 >> Entrega la misión Veneno de tejemadera
    .target Gilshalan Windwalker
    .accept 917 >> Acepta la misión Huevo de Tejemadera
    .xp >7,1
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .turnin 916 >> Entrega la misión Veneno de tejemadera
    .target Gilshalan Windwalker
    .xp <7,1,ExitRune
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga Cardoleño]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
	.turnin 3120 >> Entrega la misión El sigilo verdeante
    .train 5177 >>Aprende |T136006:0|t[|cRXP_FRIENDLY_Cólera|r] rango 2
    .target Mardant Strongoak
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    >>CONSEJO: |cRXP_WARN_Toma los Pantalones como recompensa de él. Los usarás para grabar una runa más tarde|r << Priest sod
    .turnin 3522 >> Entrega la misión El antídoto de Iverron
    .isOnQuest 3522
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entra en la Gruta Narácnida
    .isOnQuest 917
step
    .goto Teldrassil,57.0,26.4
    >>Despoja un |cRXP_LOOT_Huevo de Tejemadera|r del suelo al fondo de la cueva
    .complete 917,1 --Collect Webwood Egg (x1)
    .isOnQuest 917
step
	#softcore
	#completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
    .isOnQuest 917
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    >>CONSEJO: |cRXP_WARN_Toma la Túnica como recompensa de esta misión y equípala. La usarás para grabar una runa más tarde|r << Hunter/Rogue
    .turnin 917 >> Entrega la misión Huevo de Tejemadera
    .target Gilshalan Windwalker
    .isQuestComplete 917
step
    #season 2
    #label ExitRune
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la basura y compra todas las |T134419:0|t|cRXP_WARN_[Runas]|r que necesites de él|r
    .target Rune Broker
    .skipgossip
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Acepta la misión Los caminos de Elune
    .turnin 3119 >> Entrega la misión Sigilo Sacralizado
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acepta la misión Paquete de Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 7-13 Cañada Umbría SoD
#displayname 7-13 Teldrassil
#version 1
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 13-20 Costa Oscura SoD


step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .accept 488 >> Acepta la misión Las apuestas de Zenn
step << Hunter
    #season 2
    #completewith FlankingStrike
    #sticky
    >>Mientras haces misiones mata |cRXP_ENEMY_Lechuzas estrígidas|r y |cRXP_ENEMY_Estridadores estrígidos|r. Despójalas para obtener |T134025:0|t|cRXP_LOOT_Carne de ave de Teldrassil|r
    .collect 208608,1 -- Teldrassil Bird Meat 1/1
    .train 425762,1 --Flanking Strike
step << Warrior
    #season 2
    #completewith zenn
    >>Mata |cRXP_ENEMY_Sables de la noche|r o |cRXP_ENEMY_Acechadores sable de la noche|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de tigre cortada|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r o |cRXP_ENEMY_Estridadores estrígidos|r. Despójalas para obtener su |cRXP_LOOT_Cabeza de búho cortada|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r o |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de araña cortada|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    #sticky
    #completewith zenn
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith SoDSpiderLegs
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
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
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    .vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que te queden 2 de plata o tengas 3 montones|r
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
step << Warrior
    #season 2
    .goto Teldrassil,54.8,66.0,25 >>Dirígete al punto marcado. Revisa si |cRXP_FRIENDLY_Espadachín deambulante|r está allí. Si lo encuentras, puedes desafiarlo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    >>|cRXP_WARN_Lo más probable es que no puedas pelear contra él en solitario a este nivel, omite este paso si no hay nadie a tu alrededor para ayudarte; puedes volver después de que obtengas tus habilidades Seccionar y Armas arrojadizas en el nivel 10 y comprueba si todavía está allí|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .train 1130 >> Aprende Marca del cazador
    .train 3044 >> Aprende Disparo Arcano
    .target Dazalar
    .xp >8,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .train 5116 >> Aprende Disparo de conmoción
    .target Dazalar
    .xp <8,1
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
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Selecciona como objetivo a la |cRXP_FRIENDLY_Centinela Shaya|r
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en la|r |cRXP_FRIENDLY_Centinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    >>|cRXP_WARN_No aceptes la misión de brotes|r << !sod/Warrior/Rogue
    .turnin 997 >> Entrega la misión Las tierras de Denalan
    .target Denalan
    .accept 918 >> Acepta la misión Semillas de Brezomadera
    .accept 919 >> Acepta la misión Brotes de Brezomadera << !sod/Warrior/Rogue
step << Rogue
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Druid
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener sus |cRXP_LOOT_Semillas|r
    >>Despoja los |cRXP_LOOT_Brotes de Brezomadera|r del suelo
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod --Collect Timberling Sprout (x12)
    .mob Timberling
step << Druid
    #season 2
    #completewith next
    .goto Teldrassil,52.831,78.731,100 >> Viaja a la rama del árbol gigante
    .train 416044,1
step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_En la rama masiva del árbol verás 3|r |cRXP_ENEMY_Piedras lunares|r
    >>|cRXP_WARN_Lanza|r |T136096:0|t[Fuego lunar] |cRXP_WARN_a las 3|r |cRXP_ENEMY_Piedras lunares|r |cRXP_WARN_en la rama, entonces despoja el cofre en la ubicación de la flecha que aparece después|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    #hardcore
    .train 416044 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del sol|r] |cRXP_WARN_para aprender|r |T236216:0|t[Fuego solar]
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .train 416044 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del sol|r] |cRXP_WARN_para aprender|r |T236216:0|t[Fuego solar]
    .deathskip >>Muere y resucita en Dolanaar
    .use 206989
    .itemcount 206989,1
    .train 416044,1
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
    .complete 919,1 << !sod/Warrior/Rogue --Collect Timberling Sprout (x12)
    .mob Timberling
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Entrega la misión Semillas de Brezomadera
    .target Denalan
    .accept 922 >> Acepta la misión Rellian Verdeguja
    .turnin 919 >> Entrega la misión Brotes de Brezomadera << !sod/Warrior/Rogue
step
    #season 2 << Hunter/Druid/Priest
    #season 1 << Warrior/Rogue
	.abandon 919 >> Abandona la misión Brotes de Brezomadera, no vale la pena hacerla
step << Warrior
    #season 2
    .goto Teldrassil,62.6,71.8,25 >>Dirígete al punto marcado. Revisa si |cRXP_FRIENDLY_Espadachín deambulante|r está allí. Si lo encuentras, puedes desafiarlo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    >>|cRXP_WARN_Lo más probable es que no puedas pelear contra él en solitario a este nivel, omite este paso si no hay nadie a tu alrededor para ayudarte; puedes volver después de que obtengas tus habilidades Seccionar y Armas arrojadizas en el nivel 10 y comprueba si todavía está allí|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
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
step << Warrior
    #season 2
    #completewith TeldrassilEnd
    #sticky
    >>Mata |cRXP_ENEMY_Sables de la noche|r o |cRXP_ENEMY_Acechadores sable de la noche|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de tigre cortada|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r o |cRXP_ENEMY_Estridadores estrígidos|r. Despójalas para obtener su |cRXP_LOOT_Cabeza de búho cortada|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r o |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de araña cortada|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>Guarda cualquier|cRXP_WARN_ |T132832:0|t[Huevo pequeño] |ry|cRXP_WARN_ |T134321:0|t[Pata de araña pequeña] |rpara subir|cRXP_WARN_ |T133971:0|t[Cocina] |cRXP_WARN_después|r
    >>Omitir este paso si tienes mala suerte con el botín y se te agotan los enemigos cercanos
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >> Entrega la misión Las apuestas de Zenn
    .isQuestComplete 488
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Mata enemigos hasta nivel 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Mata enemigos hasta nivel 7 +2350xp
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >> Acepta la misión ¡Búsqueda de redención!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
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
    #season 1 << Priest/Rogue
    #season 2 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 2438 >> Entrega la misión El atrapasueños esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >> Acepta la misión Ferocitas el Comesueños << !sod/Warrior
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_si puedes permitírtelo (2 platas 85 cobres), si no, omite este paso|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
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
    .target Zenn Foulhoof
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	#completewith jewel
    >>Despoja las |cRXP_LOOT_Bellotas viles|r del suelo
    >>|cRXP_WARN_Generalmente se encuentran junto a los troncos de árbol|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #completewith next
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	.goto Teldrassil,69.37,53.41
	>>Mata a |cRXP_ENEMY_Ferocitas el Comesueños|r. Despójalo para obtener el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r]
    .use 8049 >>|cRXP_WARN_Usa el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r] para despojar la|r |cRXP_LOOT_Joya de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brannol Lunáguila|r
    .vendor >> |cRXP_BUY_Vende y repara si es necesario|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
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
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .isOnQuest 489
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Intenta terminar la misión de las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Omite este paso si no hay arañas cerca de Zenn|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 0
    #sticky
	#completewith spiderLegs
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 2
    .abandon 489 >> Abandona la misión ¡Búsqueda de redención!. No merece la pena desviarse para entregarla más adelante
step << !sod/Priest/Rogue
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
step << Rogue
    #season 2
    #completewith MutiRune
    >>Mata |cRXP_ENEMY_Grell sañoso|r, a los |cRXP_ENEMY_Duendes granujas|r y a los |cRXP_ENEMY_Duendes sombrío|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Priest
    #season 2
    #completewith next
    >>Mata a los |cRXP_ENEMY_Grell sañosos|r, |cRXP_ENEMY_Duendes granujas|r y |cRXP_ENEMY_Duendes sombríos|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << !sod/Priest/Rogue
    .goto Teldrassil,51.2,50.6
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Priest
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Mata a los |cRXP_ENEMY_Grell sañosos|r, |cRXP_ENEMY_Duendes granujas|r y |cRXP_ENEMY_Duendes sombríos|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Debes tener 2 "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel (arrodillarse) en un área sagrada, como una poza de la luna, Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    .goto Teldrassil,51.2,50.6
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Rogue
    #season 2
    #label MutiRune
    .train 400094 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Mata |cRXP_ENEMY_Grell sañoso|r, a los |cRXP_ENEMY_Duendes granujas|r y a los |cRXP_ENEMY_Duendes sombrío|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << !sod/Priest/Rogue
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
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Aprende Cocina
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
    .target Zarrin
step << Warrior/Rogue
    #season 0
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Byancie
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Aprende Cocina
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
    >>|cRXP_WARN_Si ya eres de nivel 10 y aún no tienes las patas de araña, puedes saltarte esta misión. Aun así, aprende Cocina independientemente de ello|r
step << Rogue
    #season 2
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Byancie
step << !sod/Priest/Rogue
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 2438 >> Entrega la misión El atrapasueños esmeralda << sod Priest/sod Rogue
    .turnin 932 >> Entrega la misión Odio enraizado
    .turnin 2459 >> Entrega la misión Ferocitas el Comesueños << !sod
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 2459 >> Entrega la misión Ferocitas el Comesueños
    .accept 932 >> Acepta la misión Odio enraizado
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Si no estás ni cerca, haz la misión Lord Melenas|r
step << Druid
    #season 2
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
	.trainer >> Aprende tus hechizos de clase
    .accept 5925 >> Acepta la misión Escucha la llamada
    .target Kal
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
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .accept 487 >> Acepta la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Rogue
    #season 2
    #completewith runeOfPrecision
    #optional
    #label topleft
    >>Mata o |T133644:0|t[Roba] a los |cRXP_ENEMY_Fúrbolgs Tuercepinos|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Mata |cRXP_ENEMY_Emboscadores Tuercepinos|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Warrior
    #season 2
    .goto Teldrassil,46.6,53.0
    >>Mata |cRXP_ENEMY_Emboscadores Tuercepinos|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Priest
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Entra en el Túmulo de Ban'ethil. Esto puede ser difícil sin un grupo. También puedes hacerlo un poco después para obtener tu runa |T237514:0|t[Plaga del Vacío]
    .train 425216,1 << Priest
step << Priest
    #season 2
    .goto Teldrassil,44.401,60.655
    >>Abre el |cRXP_PICK_Alijo Tuercepinos|r. Despójalo para obtener |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un oscuro propósito|r]
    >>|cRXP_WARN_Nota: El |cRXP_PICK_Alijo Tuercepinos|r puede tener múltiples ubicaciones de aparición dentro del Túmulo de Ban'ethil|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como un pozo lunar, Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205940
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Abrecaminos Tuercepinos|r y |cRXP_ENEMY_Vengadores Tuercepinos|r. Despójalos para obtener una |T134241:0|t[|cRXP_LOOT_Llave de alijo tuercepinos]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    #label runeOfPrecision
    .goto Teldrassil,37.836,82.588
    >>Abre el |cRXP_PICK_Alijo tuercepinos|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Fúrbolgs Tuercepinos|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith next
    .deathskip >> Muere y resucita en el Ángel de la Resurrección en Darnassus
    .target Ángel de la Resurrección
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa 400|r |T132382:0|t[Flechas afiladas]
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,46.6,46.3
    >>|cRXP_WARN_Lanza|r |T132212:0|t[Marca del cazador] |cRXP_WARN_en el|r |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Cazador furtivo Malarraíz|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1 --Master Marksman
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
step << Rogue
	#xprate < 1.5
    #season 2
    #completewith xp10
    >>Mata o usa |T133644:0|t[Robar] en las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
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
    >>|cRXP_WARN_Una vez que llegues a este punto de ruptura de experiencia, omite la misión de arpías/escolta y ve directamente a Darnassus. Tendrás otra oportunidad para completar esas misiones más tarde|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
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
step << Rogue
	#xprate <1.5
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Mata o usa |T133644:0|t[Robar] en las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
	#xprate < 1.5
    #season 2
    .cast 418600 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
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
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r] |cRXP_WARN_para aprender|r |T132177:0|t[Maestro Tirador]
    .use 206155
    .train 410113,1
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
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viaja a Darnassus
step << Druid
    #optional
    #season 2
    .xp <10,1
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acepta la misión Nessa Cantosombrío
 step << Warrior
    #season 2
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .train 227 >>Aprende el uso de Bastones << Warrior
    .train 2567 >> Aprende el uso de Armas arrojadizas << Warrior
    .target Ilyenia Moonfire
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un "stack" de |r |T135425:0|t[Cuchillos arrojadizos cortantes]
    .collect 3107,200
    .target Ariyell Skyshadow
step << Warrior
    #season 2
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador de Darnassus|r
    >>Compra una |T134830:0|t[|cRXP_LOOT_Poción de sanación inferior|r]. Te ayudará a conseguir la runa de |T236317:0|t[Asalto frenético] de Dolanaar
    .collect 929,1 --Lesser Healing Potion (1)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 425412,1 --Skips if you already have Frenzied Assault
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Entrega la misión Elanaria
    .target Elanaria
    .accept 1683 >> Acepta la misión Vorlus Pezuñavil
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delwynna|r arriba
    >>|cRXP_WARN_Entrega las tres |cRXP_LOOT_Cabezas cortadas|r para recibir|r |T134455:0|t[|cRXP_FRIENDLY_Fragmentos de runa de cazador de monstruos|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Usa cualquiera de los |T134455:0|t[|cRXP_FRIENDLY_Fragmentos de runa de cazador de monstruos|r] para combinarlos en la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
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
    .turnin 5925 >>  Entrega la misión Escucha la llamada << sod
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
step << Warrior
    #season 2
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .vendor >> |cRXP_BUY_Vende y compra 5-10 |T133968:0|t[|cRXP_LOOT_Pan recién horneado|r] al tabernero
step << Warrior
    #season 2
    #sticky
    #completewith FrenziedAssault
    >>Entrega la misión de |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r si la ves mientras completas los otros pasos
    >>|cRXP_WARN_No te desvíes para buscarla todavía|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Warrior
	#season 2
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra una|r |T135145:0|t[Cachava], equipala.
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Warrior
    #season 2
    #completewith melenas
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
step << Warrior
    #season 2
    #label melenas
    .goto Teldrassil,51.2,50.6
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Warrior
	#season 2
    #softcore
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << Warrior
    #season 2
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Aprende Cocina
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
    >>|cRXP_WARN_Omite la misión si no tienes 7 patas de araña pequeñas. Aprende cocina de todas formas, la necesitarás después.|r
step << Warrior
    #season 2
    #label FrenziedAssault
    .goto Teldrassil,55.619,59.787
    >>Habla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r en Dolanaar
    >>Habla con |cRXP_ENEMY_Syllart|r arriba, luego dale una paliza. Se desmayará al 0%
    >>Si |cRXP_ENEMY_Syllart|r no está ahí, espera a que reaparezca
    >>Habla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r de nuevo después de derrotar a |cRXP_ENEMY_Syllart|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .train 425447 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] |cRXP_WARN_para aprender|r |T236317:0|t[Asalto frenético]
    >>|cRXP_WARN_Nota: Esto puede ser bastante difícil en solitario dependiendo de tu nivel. Busca ayuda si la necesitas|r
    >>|cRXP_WARN_Puedes derrotarlo en solitario "kiteando" con armas arrojadizas a distancia. Intenta ralentizarlo usando|r |T132316:0|t[Seccionar] |cRXP_WARN_luego corre y usa|r |r |T132324:0|t[Lanzar] |cRXP_WARN_a distancia.|r |cRXP_WARN_Usa una|r |T134830:0|t[Poción de sanación] |cRXP_WARN_y|r |T133685:0|t[Vendas] |cRXP_WARN_para curarte si es necesario|r
    --Might wanna add a guide video
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 932 >> Entrega la misión Odio enraizado
step << Warrior
    #season 2
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla la carretera al oeste de Dolanaar|r
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
    .target Laird
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
    #season 2
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBusca a |cRXP_FRIENDLY_Jaeana|r, ella patrulla alrededor del Bancal de los Mercaderes
    >>Compra un lote de|cRXP_BUY_ |T133972:0|t[Cecina dura] |ra esta vendedora|cRXP_BUY_.
    >>|cRXP_WARN_Necesitarás esto para alimentar a tu búho, solo comen carne y no hay vendedor de carne en Costa Oscura|r
    .collect 117,15
    .target Jaeana
step << !Warrior
    #season 2
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acepta la misión Nessa Cantosombrío
step << Hunter
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #sticky
    #label StrigidHunter
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Cazador estrígido|r para domesticarlo|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Ataca a enemigos con ella para aprender|r |T132140:0|t[Zarpa (Rango 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
	.unitscan Strigid Hunter
step << Hunter
    #sticky
    #requires StrigidHunter
    .engrave 5 >> Graba |T132270:0|t[Maestría de bestias] en tu |T132724:0|t[Pechera]
step
    #season 0 << Rogue/Druid
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Hunter
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Usa |T134025:0|t[Carne de ave de Teldrassil] cerca del cadáver para invocar a |cRXP_ENEMY_Mowgh|r
    >>Mata a |cRXP_ENEMY_Mowgh|r y despójalo para obtener |T134419:0|t|cRXP_LOOT_[Runa de Flanqueo]|r
    .collect 205979,1
    .train 425762,1 --Flanking Strike
    .use 208608
    .mob Mowgh
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r] |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
    .train 425762,1 --Flanking Strike
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 7 >> Abre tu panel de personaje y graba tus piernas con |T132175:0|t[Golpe lateral]
step
    #season 0 << Rogue/Druid
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mata a |cRXP_ENEMY_Lady Sathrah|r. Despójala para conseguir sus |cRXP_LOOT_Hileras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_puede aparecer en 3 ubicaciones diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .accept 937 >> Acepta la misión El claro encantado
step << Rogue
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mata a |cRXP_ENEMY_Lady Sathrah|r. Despójala para conseguir sus |cRXP_LOOT_Hileras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_puede aparecer en 3 ubicaciones diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Lanza|r |T133644:0|t[Robar] en |cRXP_ENEMY_Sethir el Ancestro|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_Sethir el Ancestro|r |cRXP_WARN_camina por la rama del árbol grande|r
    >>|cRXP_WARN_Evita luchar contra |cRXP_ENEMY_Sethir el Ancestro|r. Deja que pase de largo, luego entra en|r |T132320:0|t[Sigilo] |cRXP_WARN_y usa|r |T133644:0|t[Robar] |cRXP_WARN_cuando estés detrás de él|r
    .complete 2242,1
    .mob Sethir the Ancient
step << Rogue
    #season 2
    #sticky
    #completewith MistStart
    #label BottomRightMapPiece
    >>Mata o usa |T133644:0|t[Robar] en las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
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
step << Rogue
    #season 2
    #sticky
    #completewith next
    #requires BottomRightMapPiece
    .cast 418600 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    >>|cRXP_WARN_Omite esta misión si el PNJ no está allí|r
    .accept 938 >> Acepta la misión Niebla
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    >>Mata o usa |T133644:0|t[Robar] en las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 938 >> Entrega la misión Niebla
    .isOnQuest 938
step << !sod/Warrior/Rogue/Druid
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acepta la misión Teldrassil
step << Druid
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mata a |cRXP_ENEMY_Lady Sathrah|r. Despójala para conseguir sus |cRXP_LOOT_Hileras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_puede aparecer en 3 ubicaciones diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Druid
    #season 2
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Warrior
    #season 2
    .goto Teldrassil,39.8,37.4,25 >>Dirígete al punto marcado. Revisa si |cRXP_FRIENDLY_Espadachín deambulante|r está allí. Si lo encuentras, puedes desafiarlo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .unitscan Wandering Swordsman
    .train 412507,1
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
step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,25 >>Dirígete al punto marcado. Revisa si el |cRXP_FRIENDLY_Espadachín deambulante|r está allí si todavía no lo has encontrado. Si lo encuentras, puedes desafiarlo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Teldrassil,43.8,77.0,25 >>Dirígete al punto marcado. Revisa si el |cRXP_FRIENDLY_Espadachín deambulante|r está allí si todavía no lo has encontrado. Si lo encuentras, puedes desafiarlo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #softcore
    #completewith next
    #sesaon 2
    .goto Teldrassil,40.8,75.6
    .deathskip >>Muere y resucita en el cementerio de Darnassus
    >>|cRXP_WARN_Asegúrate de estar más cerca del cementerio de Darnassus que del de Dolanaar o podrías terminar en la dirección equivocada. Si no estás seguro, muere al este del punto marcado en tu mapa|r
    .target Ángel de la Resurrección
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
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delwynna|r arriba
    >>|cRXP_WARN_Entrega las tres |cRXP_LOOT_Cabezas cortadas|r para recibir|r |T134455:0|t[|cRXP_FRIENDLY_Fragmentos de runa de cazador de monstruos|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Usa cualquiera de los |T134455:0|t[|cRXP_FRIENDLY_Fragmentos de runa de cazador de monstruos|r] para combinarlos en la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Entrega la misión Domesticar la bestia
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
step << !Rogue
    #season 2
    #label darnSoD
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 923 >> Entrega la misión Tumores
step << Rogue
    #season 2
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2518 >> Entrega la misión Las lágrimas de la Luna
    .target Priestess A'moora
    .accept 2520 >> Acepta la misión El Sacrificio de Sathrah
step << Rogue
    #season 2
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Usa el|r |T135652:0|t[Sacrificio de Sathrah] |cRXP_WARN_en la fuente|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << Rogue
    #season 2
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2520 >> Entrega la misión El Sacrificio de Sathrah
step << Warrior/Rogue/Druid
    #season 2
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r
    .turnin 940 >> Entrega la misión Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Acepta la misión El Páramo de los Ancianos
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 923 >> Entrega la misión Tumores
step << Hunter
    .goto Darnassus,40.2,9.8
    .trainer >>Entrena tus hechizos de nivel 12 << sod
    >>|cRXP_WARN_Omite este paso y vuelve después de entregar Las lágrimas de la Luna si no tienes suficiente dinero o aún no eres nivel 12|r << sod
    .target Jocaste
step << Hunter
    .goto Darnassus,42.2,8.8
    .trainer >>Entrena los hechizos de tu mascota
    .target Silvaria
step << Rogue
    #season 2
    .goto Darnassus,38.6,15.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lelanai|r
    .vendor >> |cRXP_BUY_Vende la basura|r
    .target Lelanai
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Entrega la misión La llamada del destino
step << Rogue
    #season 2
    >>|cRXP_WARN_Asegúrate de que te queden al menos 29 de plata tras entrenar habilidades. Los necesitarás para comprar un arco|r
    .trainer >> Entrena tus hechizos de nivel 12
step << !sod/!Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2518 >> Entrega la misión Las lágrimas de la Luna
    .target Priestess A'moora
    .accept 2520 >> Acepta la misión El Sacrificio de Sathrah
step << !sod/!Rogue
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Usa el|r |T135652:0|t[Sacrificio de Sathrah] |cRXP_WARN_en la fuente|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << !sod/!Rogue
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2520 >> Entrega la misión El Sacrificio de Sathrah
step << Priest
    #season 2
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Alathea|r
    .turnin 5629 >> Entrega la misión La vuelta a casa
    .target Priestess Alathea
step << Priest
    #season 2
    .goto Darnassus,38.6,82.0
    .trainer >> Entrena tus hechizos de nivel 12
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
step << Hunter
    #season 2
    .goto Darnassus,64.2,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kieran|r. Está en el nivel superior de la cabaña
    >>|cRXP_BUY_Compra una|r |T135145:0|t[Cachava]
    >>|cRXP_WARN_Omite este paso si tienes un bastón diferente listo en tus bolsas|r
    .collect 2495,1
    .target Kieran
    .money <0.1539
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
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
step << Hunter/Sod Rogue
    #season 2
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
	.vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas]
    .vendor >>|cRXP_BUY_Compra un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_si tienes dinero de sobra|r << Hunter
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
step << Warrior
    #season 2
	.goto Darnassus,58.6,35.6
    .target Arias'ta Bladesinger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arias'ta Rugefilo|r
    .trainer >> Aprende tus hechizos de clase
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
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Teldrassil|r] |cRXP_WARN_dentro del tronco del árbol en la Aldea Rut'theran. Esto hará que un |cRXP_PICK_Tesoro enterrado|r aparezca|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>Abre el |cRXP_PICK_Tesoro enterrado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1
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
