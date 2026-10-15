if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 16-17 Páramos de Poniente SoD
#displayname 16-17 Páramos de Poniente
#next 17-22 Montañas Crestagrana SoD
#defaultfor !NightElf

step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r << Alliance
    >>Compra el |T133745:0|t|cRXP_LOOT_[Testamento del Exorcista]|r, úsalo para aprender |T135956:0|t[Exorcista] << Paladin
    .collect 226398,1 << Paladin
    .train 415076,1 << Paladin
step
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara Meideros|r
    .target Nara Meideros
    .accept 78195 >> Acepta la misión Secretos de Elune
step << Human Paladin
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin -2998 >> Entrega la misión Escrito sobre divinidad
    .accept 1641 >> Acepta la misión Escrito sobre divinidad
    .turnin 1641 >> Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acepta la misión Escrito sobre divinidad
    .turnin 1641 >> Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre divinidad|r] para iniciar la misión|r
    .accept 1642 >>Acepta la misión Escrito sobre divinidad
    .use 6775
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Entrega la misión Escrito sobre divinidad
    .accept 1643 >>Acepta la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Entrega la misión Escrito sobre divinidad
    .accept 1644 >> Acepta la misión Escrito sobre divinidad
    .turnin 1644 >> Entrega la misión Escrito sobre divinidad
    .accept 1780 >> Acepta la misión Escrito sobre divinidad
    .target Stephanie Turner
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
    >>Habla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
    .accept 1781 >>Acepta la misión Escrito sobre divinidad
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>Habla con |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Entrega la misión Escrito sobre divinidad
    .target Gazin Tenorm
    .accept 1786 >>Acepta la misión Escrito sobre divinidad
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara Meideros|r
    .target Nara Meideros
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)]
    .collect 16357,1
    .target Spackle Thornberry
    .train 20387,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1688 >> Entrega la misión Surena Caledon
    .accept 1689 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .cast 7728 >> |cRXP_WARN_Usa|r la |T133292:0|t[Gargantilla de sangrita] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Abisario invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entrega la misión El vínculo
step << Priest/Mage/Warlock
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    .vendor 1312 >>|cRXP_BUY_Cómprale una|r |T135468:0|t[Varita humeante] |cRXP_BUY_si puedes pagarlo (35 platas)|r
    >>|cRXP_BUY_Alternativamente, compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_de la Casa de Subastas si es más barato|r
    .collect 5208,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Asegúrate de entrenar|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_también, ya que lo necesitarás pronto para la misión de clase de pícaro|r
    .trainer >> Aprende tus hechizos de clase
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra en el cuartel general de IV:7. Sube las escaleras y dirígete hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior
    #season 2
    #completewith next
    .gossipoption 109045 >> Habla con |cRXP_FRIENDLY_Liv Bradford|r dentro de la Posada en el Parque
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Habla con |cRXP_ENEMY_Stuart|r, luego dale una paliza. Se desmayará al 0%
    .goto Stormwind City,21.213,62.781
    >>Si |cRXP_ENEMY_Stuart|r no está ahí, espera a que reaparezca
    .skipgossipid 109047
    .skipgossipid 109045
    .skipgossipid 109084
    --.train 425447,1
step << Warrior
    #season 2
    .goto Stormwind City,22.608,64.621
    .use 204716 >> Habla con |cRXP_FRIENDLY_Liv Bradford|r de nuevo después de derrotar a |cRXP_ENEMY_Stuart|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1
    .train 425447,1 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] |cRXP_WARN_para aprender|r |T236317:0|t[Asalto frenético]
    >>|cRXP_WARN_Nota: Esto puede ser bastante difícil en solitario dependiendo de tu nivel. Busca ayuda si la necesitas|r
    .skipgossip 203478,1
    .target Liv Bradford
    .mob Stuart
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lina Hornillos|r
    >>Compra un |T135612:0|t[Trabuco pesado grande] (7.4 DPS) o busca una mejora superior en la Casa de subastas
    .collect 3023,1
    .money <0.3771
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.3
step << !Human/!Mage
    #season 1 << Rogue
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Aprende el uso de Bastones << Priest/Warlock/Hunter
    .train 201 >>Aprende Espadas de 1 mano << Mage/Warlock
    .train 202 >>Aprende Espadas de 2 manos << Warrior/Paladin/Hunter
    --.train 5011 >>Train Crossbows << Hunter
    .target Woo Ping
step << Warrior/Paladin
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>Compra un |T135353:0|t[Espadón] (12.6 DPS) o busca una mejora superior en la Casa de subastas
    .target Marda Weller
    .collect 2024,1 --Collect Espadon (1)
    .money <0.6397
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    >>Contraveneno puede elaborarse con la profesión de primeros auxilios usando un |T134339:0|t[Glándula de veneno pequeña] << Rogue !Dwarf
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step << Mage
    #season 2
    .goto StormwindClassic,55.8,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keldric Señalo|r
    >>Revisa si tiene |T134830:0|t[|cRXP_LOOT_Pociones de sanación inferiores|r], cómpralas si están disponibles
    .collect 211779,3 >> Compra un par de |T135933:0|t[|cRXP_LOOT_Talismán de comprensión|r] a este vendedor
    .target Keldric Señalo
step << Human
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .turnin 6261 >> Entrega la misión Dungar Tragolargo
    .accept 6285 >> Acepta la misión Regresa junto a Lewis
    .target Dungar Longdrink
    .isQuestTurnedIn 6281
step << !Human/Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Redridge >> Vuela a Montañas Crestagrana << Warlock
    .target Thor
step << !Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
    .zoneskip Westfall
    .zoneskip Redridge Mountains
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step << !Human !Warlock
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .home >> Establece tu Piedra de hogar en Villadorada
    .target Innkeeper Farley
step << Mage
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << !Warlock
    .goto 1429/0,73.800,-9465.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .accept 109 >>Acepta la misión Habla con Gryan Mantorrecio
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>Usa el |cRXP_PICK_Símbolo de la vida|r sobre |cRXP_FRIENDLY_Henze Faulk|r
>>Habla con |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Entrega la misión Escrito sobre divinidad
.target Henze Faulk
    .accept 1787 >>Acepta la misión Escrito sobre divinidad
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>Mata |cRXP_ENEMY_Zahoríes bribones de Defias|r alrededor de la isla
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .accept 246 >> Acepta la misión Evaluar la amenaza
    .target Deputy Feldon
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step << !Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acepta la misión El precio de unas herraduras
step << Human/Dwarf Paladin
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
    .zoneskip Westfall
    .isQuestAvailable 153
step << !Human !Paladin !Warlock
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step << !Human !Paladin
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
step << !Human !Paladin
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y el |cRXP_FRIENDLY_Capitán Danuvin|r
    .goto Westfall,56.327,47.520
    .turnin -109 >> Entrega la misión Habla con Gryan Mantorrecio
    .accept 12 >> Acepta la misión La Milicia Popular
    .target Gryan Stoutmantle
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Entrega la misión Regresa junto a Lewis
    .isOnQuest 6285
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step << Rogue
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    .target Innkeeper Heather
    .home >> Establece tu Piedra de hogar en Páramos de Poniente
step
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos rojos de cuero|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75,0
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step << Mage
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>Mata |cRXP_ENEMY_Saqueadores Defias|r. Despójalos para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: RANGE CERNEIO]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step << Mage
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: RANGE CERNEIO]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Regeneración]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .accept 9 >> Acepta la misión Campos de la muerte
step
#loop
    .goto Westfall,37.4,50.6,0
    .goto Westfall,44.8,33.6,0
    .goto Westfall,54.0,32.0,0
    .goto Westfall,51.0,22.0,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76,60,0
    >>Mata |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener [|cRXP_LOOT_Frascos de aceite|], que necesitarás para una misión más adelante
    >>Puedes quedarte en la Finca de Saldean. Seguirán reapareciendo si todos están muertos
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5 -- Flask of Oil (5)
    .mob Harvest Watcher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Entrega la misión Campos de la muerte
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Entrega la misión Pañuelos rojos de cuero
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Entrega la misión La Milicia Popular
    .accept 65 >> Acepta la misión La hermandad de los Defias
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Thor

]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 17-22 Montañas Crestagrana SoD
#displayname 17-22 Montañas Crestagrana
#next RestedXP Alianza 20-30\22-24 Los Humedales SoD
#defaultfor !NightElf


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .target Marshal Marris
    .xp <18,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Acepta la misión Las herramientas perdidas
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acepta la misión El precio de unas herraduras
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .isOnQuest 119
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .accept 124 >> Acepta la misión El aullido de los gnolls
    .accept 122 >> Acepta la misión Escamas de barriga
    .isQuestTurnedIn 119

step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acepta la misión Mensajero a Ventormenta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Acepta la misión Pescado a la venta
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .accept 129 >> Acepta la misión Una comida gratis
step << !Rogue
    .goto Redridge Mountains,27.0,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Brianna|r
    .target Innkeeper Brianna
    .home >> Establece tu Piedra de hogar en Villa del Lago
    .isQuestAvailable 20
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r arriba
	.target Wiley the Black
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .isOnQuest 65
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Acepta la misión El collar de Hilary
step
#loop
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    >>|cRXP_WARN_Tiene múltiples ubicaciones de aparición en el Lago|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Entrega la misión Las herramientas perdidas
    .accept 89 >> Acepta la misión El puente sempiterno
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .target Marshal Marris
    .xp <18,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Entrega la misión El collar de Hilary
step
    #optional
	#completewith threat1
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
    .isOnQuest 122
step
    #optional
    #completewith threat1
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Entrega la misión Una comida gratis
    .accept 130 >> Acepta la misión Una visita al herborista
step
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Mata a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener sus |cRXP_LOOT_Carnes de araña crujiente|r
    .collect 1081,5,92,1
    .mob Tarantula
step
#loop
    .goto Redridge Mountains,29.49,82.80,0
    .goto Redridge Mountains,32.52,81.78,0
    .goto Redridge Mountains,43.18,72.22,0
    .goto Redridge Mountains,31.13,82.18,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18,45,0
	>>Mata a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Furtivos de Crestagrana|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
#label threat1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Entrega la misión Evaluar la amenaza
step
    #completewith db1
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .dungeon DM << !Human
step
    #optional
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
    .target General Marcus Jonathan
    .isQuestTurnedIn 118
    .dungeon DM << !Human
step
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>Habla con |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Entrega la misión Escrito sobre divinidad
.target Gazin Tenorm
    .accept 1788 >>Acepta la misión Escrito sobre divinidad
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>Habla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Entrega la misión Escrito sobre divinidad
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
    .dungeon DM
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lina Hornillos|r
    >>Compra un |T135612:0|t[BKP 2700 "Déspota"Acepta] (9.6 DPS) o busca una mejora superior en la Casa de subastas
    .collect 3024,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
    .dungeon DM << !Human
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .target Marda Weller
    >>|cRXP_WARN_Compra un|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .dungeon DM << !Human
step << Warrior/Paladin
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    >>|cRXP_WARN_Si estabas usando mazas hasta ahora puedes comprar una|r |T133044:0|t[Gran maza] |cRXP_WARN_para evitar problemas de habilidad de armas por ahora|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 922,1 --Heavy Spiked Mace (1)
    .collect 924,1 --Ironwood Maul (1)
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .dungeon DM << !Human
step << Warlock/Priest
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    .vendor 1312 >>|cRXP_BUY_Cómprale una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_si puedes pagarlo|r
    .collect 5210,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .dungeon DM << !Human
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
    .target General Marcus Jonathan
    .dungeon DM << !Human
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
    .dungeon DM << !Human
step << Human
    .dungeon !DM
    .cooldown item,6948,>120,1
    .hs >> Usa tu Piedra de hogar para ir a Villa del Lago
    .zoneskip Redridge Mountains
step << Human
#optional
.dungeon !DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .target Marshal Marris
    .xp <18,1
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .turnin 119 >> Entrega la misión Regresa junto a Verner
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .accept 124 >> Acepta la misión El aullido de los gnolls
    .accept 122 >> Acepta la misión Escamas de barriga
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Entrega la misión Mensajero a Ventormenta
step
    .goto Redridge Mountains,29.71,44.26
    .target Bailiff Conacher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Conacher|r
    .accept 91 >> Acepta la misión Ley de Solomon
step
    .goto Redridge Mountains,26.75,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHaz clic en el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 180 >> Acepta la misión Se busca: Teniente Fangore
step
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >> Entrega la misión Una visita al herborista
    .accept 131 >> Acepta la misión Un ramo de narcisos
    .accept 34 >> Acepta la misión Una visita poco grata
step
#optional
	#completewith BayingOfGnolls
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step << !Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Mata a los |cRXP_ENEMY_Toscos de Crestagrana|r y a los |cRXP_ENEMY_Místicos de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    #sticky
    #completewith next
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Mata |cRXP_ENEMY_Toscos de Crestagrana|r y |cRXP_ENEMY_Místicos de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r. |cRXP_WARN_Avanza en esta misión de camino al Molino de Alther. La completarás al regresar|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery (1)
step << Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Termina de matar a los |cRXP_ENEMY_Toscos de Crestagrana|r y a los |cRXP_ENEMY_Místicos de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Entrega la misión Un ramo de narcisos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Entrega la misión El aullido de los gnolls
    .accept 126 >> Acepta la misión El aullido de las colinas
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 89 >> Entrega la misión El puente sempiterno
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
step << Rogue
#label xp20
    >> Deberías ser nivel 20 aquí, si no lo eres, completa las misiones de múrlocs al este y mata criaturas hasta alcanzar el nivel 20
    .xp 20


----Start of Rogue Poison and Deadmines section----

step << Rogue
    .goto Redridge Mountains,30.6,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .zoneskip Westfall
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Ten cuidado con tu dinero a partir de ahora. Necesitarás 75 platas de sobra cuando llegues a Los Humedales para desbloquear una runa|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << !Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step << Rogue
#completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
    .zoneskip Westfall
step << Rogue
.dungeon !DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Viaja a Arroyo de la Luna
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a Las Minas de la Muerte
    >>|cRXP_WARN_¡Permanece junto a |cRXP_FRIENDLY_El Traidor de los Defias|r en todo momento! Prepárate para luchar contra |cRXP_ENEMY_Los Defias|r al llegar a Arroyo de la Luna|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
    .goto Westfall,56.67,47.35
    .target Scout Riell
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Viaja hasta el 2.º piso de la torre. Mientras estés en|r |T132320:0|t[Sigilo] |cRXP_WARN_y los |cRXP_ENEMY_Avizores de torre Defias|r no estén cerca de ti, Salta en la silla, luego en la lámpara, luego en el estante encima del punto de la ruta|r
    >>|cRXP_WARN_Manualmente desactiva el|r |T132320:0|t[Sigilo]|cRXP_WARN_, luego presiona tu tecla "Interactuar con el objetivo" para abrir el |cRXP_PICK_Cofre de Bosque del Ocaso|r. Despójalo para obtener el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_NOTA: Tu|r |T132320:0|t[Sigilo] |cRXP_WARN_dejará de funcionar temporalmente después de despojar el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_Prepárate para correr si no matas los |cRXP_ENEMY_Avizores de torre Defias|r en el 2.º piso. Lo más probable es que te generen amenaza permanente (aunque no te atacarán) cuando estés encima de la estantería, ya que es un punto de evasión|r
    >>|cRXP_WARN_Si tienes una|r |T135641:0|t[Daga] |cRXP_WARN_en tu inventario o equipada, puedes lanzar|r |T132282:0|t[Emboscada] |cRXP_WARN_en los |cRXP_ENEMY_Guardias de torre Defias|r y |cRXP_ENEMY_Avizores de torre Defias|r de dentro para matarlos instantáneamente. Prepárate para correr después de matar al primer |cRXP_ENEMY_Avizor de torre Defias|r y recuerda que puedes ser golpeado desde arriba. Esto es más lento, pero MUCHO más seguro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zángano Defias deforme|r y los |cRXP_ENEMY_Zánganos Defias|r pueden estar en la entrada de la torre si tienes que salir corriendo de ella|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .target Master Mathias Shaw
step << Rogue
#completewith next
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
    .zoneskip Westfall
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Ahora deberías buscar un grupo para Las Minas de la Muerte
    >>Grindea gnolls mientras armas un grupo para Las Minas de la Muerte
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Viaja a Las Minas de la Muerte
step
.dungeon DM
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    >>|cRXP_WARN_Puedes completar esta misión después de entrar en la Mazmorra|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
.dungeon DM
    #completewith DMend
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acepta la misión La carta sin enviar
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Viaja a Colina del Centinela
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .goto Westfall,56.33,47.52
    .turnin -214 >> Entrega la misión Pañuelos rojos de seda
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target Wilder Thistlenettle
    .dungeon DM
step
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    .dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Redridge Mountains


----End of Rogue Poison and Deadmines section----


step
    #optional
    #completewith orcs
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
    .subzoneskip 997--Render's Valley
step
#completewith next
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
    .goto Redridge Mountains,49.0,70.0
    >>Mata a los |cRXP_ENEMY_Rompeolas múrloc|r y a los |cRXP_ENEMY_Clamamareas menor múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Aletas|r y |cRXP_LOOT_Pez luna|r
	>>|cRXP_WARN_Ten en cuenta que esta zona tiene una reaparición hiperrápida (hyperspawn) , lo que significa que los |cRXP_ENEMY_Múrlocs|r reaparecen rápidamente|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step << Warlock
    #season 2
    #sticky
    #label Incinerate
    .goto Redridge Mountains,76.8,82.2
    .train 416015 >>Mata al |cRXP_ENEMY_Incinerador Gar'im|r |cRXP_WARN_(nivel 23 élite)|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r]
    .use 211477>>Esta runa puede ser un poco complicada, pero es muy factible; solo mantén a Gar'im bajo el efecto de Miedo, necesitarás esta runa para una misión más adelante
    .collect 211477,1
    .disablecheckbox
    .unitscan Incinerator Gar'im
step
    #loop
    >>Mata a los |cRXP_ENEMY_Brutos Roca Negra|r y a los |cRXP_ENEMY_Avanzados Roca Negras|r. Despójalos para obtener sus |cRXP_LOOT_Hachas|r
	>>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Avanzados Roca Negra|r lanzarán |T132149:0|t[Red] sobre ti|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #requires Incinerate<< Warlock
    .goto Redridge Mountains,61.37,77.10
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
step << Rogue
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .xp 22-18500 >> Mata enemigos hasta que te falten 18500xp para el nivel 22
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
step
    #softcore
    .deathskip >> Muere y resucita en el ángel de la resurrección. Acepta la dolencia de resurrección, no lucharás contra ninguna criatura durante un tiempo
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
    .itemcount 3014,10 --Battleworn Axe (10)
    .xp <21.25
step
    #loop
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83,0
    .goto Redridge Mountains,32.25,70.20,0
    .goto Redridge Mountains,31.02,72.14,0
    .collect 2296,5,92,1
    .mob Great Goretusk
step << Rogue
    .xp 22-18500 >> Mata enemigos hasta que te falten 18500xp para el nivel 22
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Entrega la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
    .turnin 150 >> Entrega la misión Cazadores furtivos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >> Entrega la misión Escamas de barriga
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Entrega la misión La amenaza de los Roca Negra
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
	.target Ariena Stormfeather
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
step << !Mage/Paladin/Warlock
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la Ciudad de Ventormenta
    .target Innkeeper Allison
step << Mage
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
    .target +Larimaine Purdue
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jennea|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
	.target Jennea Cannon
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Asegúrate de tener 75 platas restantes después de aprender habilidades. Lo necesitarás para desbloquear una runa pronto. Solo compra hechizos esenciales si es necesario|r
    .train 1856 >> |cRXP_WARN_Asegúrate de aprender |T132331:0|t[Esfumarse].|r |cRXP_WARN_Lo necesitarás para desbloquear una runa pronto|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .trainer >> Aprende tus hechizos de clase
    .target High Priestess Laurena
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
step << Warlock
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor 6382 >> |cRXP_BUY_Compra un|r |T133738:0|t[Grimorio Tormento (Rango 2)]
    .collect 16346,1
    .disablecheckbox
    .target Jubahl Corpseseeker
    .train 427733,1 --skips if you have a felguard
step << Mage
    .goto Ironforge,25.50,7.04
    >>Habla con |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Viaja hasta el punto de "skip". Ve pegado al lado izquierdo de la montaña durante el trayecto
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Come hasta llenar la salud tras cada caída si no te sientes seguro|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_HAZ CLIC AQUÍ para ver la referencia (se recomienda ENCARECIDAMENTE hacerlo)|r
    .goto Dun Morogh,60.65,11.38,20 >>Desciende cuidadosamente por la ladera de la montaña
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Ten cuidado con |cRXP_ENEMY_Barrosín|r (raro) antes de que bajes hacia la costa (si ha aparecido)|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Asaltantes Branquiazul|r al oeste cuando llegues al mar|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_HAZ CLIC AQUÍ para ver la referencia (se recomienda ENCARECIDAMENTE hacerlo)|r
    .goto Wetlands,12.69,60.97,15 >> Viaja al Puerto de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
]])
