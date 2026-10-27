if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Requisitos de Acceso (Attunements)
#name Requisitos de acceso a Onyxia (A) (Onyxia Attunement)


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_Viaja a|r |cFFfa9602Las Estepas Ardientes|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helendis Rivacuerno|r
    .accept 4182 >> Acepta la misión La amenaza de los dragonantes
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Mata |cRXP_ENEMY_Estirpes negras|r, |cRXP_ENEMY_Dragauros negros|r, |cRXP_ENEMY_Vermintes negros|r y a un |cRXP_ENEMY_Draco negro|r
    >>Los |cRXP_ENEMY_Dragauros negros|r|cRXP_WARN_,|r |cRXP_ENEMY_Vermintes negros|r |cRXP_WARN_y|r |cRXP_ENEMY_Dracos negros|r |cRXP_WARN_son élites. Forma un grupo si es necesario|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Drake
    .complete 4182,3 -- Black Drake slain
    .mob +Black Wyrmkin
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helendis Rivacuerno|r
    .turnin 4182 >> Entrega la misión La amenaza de los dragonantes
    .accept 4183 >> Acepta la misión Los verdaderos maestros
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helendis Rivacuerno|r
    .accept 4183 >> Acepta la misión Los verdaderos maestros
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borgus Brazorrecio|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 4183 >> Entrega la misión Los verdaderos maestros
    .accept 4184 >> Acepta la misión Los verdaderos maestros
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Bolvar Fordragón|r
    .turnin 4184 >> Entrega la misión Los verdaderos maestros
    .accept 4185 >> Acepta la misión Los verdaderos maestros
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Bolvar Fordragón|r
    .turnin 4185 >> Entrega la misión Los verdaderos maestros
    .accept 4186 >> Acepta la misión Los verdaderos maestros
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge>> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 4186 >> Entrega la misión Los verdaderos maestros
    .accept 4223 >> Acepta la misión Los verdaderos maestros
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Burning Steppes >> Vuela a Las Estepas Ardientes
    .target Ariena Stormfeather
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Maxwell|r
    .turnin 4223 >> Entrega la misión Los verdaderos maestros
    .accept 4224 >> Acepta la misión Los verdaderos maestros
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >> Viaja al Peñasco Llamarada
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John Andrajoso|r
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Maxwell|r
    .turnin 4224 >> Entrega la misión Los verdaderos maestros
    .accept 4241 >> Acepta la misión El mariscal Windsor
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entra en Profundidades de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Windsor|r
    >>|cRXP_WARN_Si tu grupo no tiene un Pícaro, puede que necesites matar a la|r |cRXP_ENEMY_Alta interrogadora Gerstahn|r |cRXP_WARN_para obtener la|r |cRXP_LOOT_Llave de celda de prisión|r |cRXP_WARN_para abrir las puertas|r
    .turnin 4241 >> Entrega la misión El mariscal Windsor
    .accept 4242 >> Acepta la misión Esperanza perdida
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>Viaja a la Vigilia de Morgan en |cFFfa9602Las Estepas Ardientes|r
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Maxwell|r
    >>|cRXP_WARN_La cadena de misiones se detendrá aquí hasta que encuentres|r |T134331:0|t[Una nota arrugada] |cRXP_WARN_en Profundidades de Roca Negra|r
    .turnin 4242 >> Entrega la misión Esperanza perdida
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>Entra en Profundidades de Roca Negra
step
    .isQuestTurnedIn 4242
    >>Mata |cRXP_ENEMY_Enanos|r en Profundidades de Roca Negra. Despójalos para obtener |T134331:0|t[Una nota arrugada]
    .use 11446 >> |cRXP_WARN_Usa|r |T134331:0|t[Una nota arrugada] |cRXP_WARN_para comenzar la misión|r
    >>|cRXP_WARN_Es importante que hagas esto antes de matar a los jefes |cRXP_ENEMY_General Forjainquina|r y al|r |cRXP_ENEMY_Señor Gólem Argelmach|r
    >>|cRXP_WARN_Si aún no lo has encontrado a estas alturas, limpia la zona del Bloque de Detención hasta que caiga|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >> Acepta la misión Una nota arrugada
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Windsor|r
    .turnin 4264 >> Entrega la misión Una nota arrugada
    .accept 4282 >> Acepta la misión Una brizna de esperanza
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Windsor|r
    .accept 4282 >> Acepta la misión Una brizna de esperanza
step
    .isOnQuest 4282
    >>Mata al |cRXP_ENEMY_General Forjainquina|r y al |cRXP_ENEMY_Señor Gólem Argelmach|r. Despoja a ambos para obtener la |cRXP_LOOT_Información perdida del mariscal Windsor|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Windsor|r
    >>|cRXP_WARN_¡ASEGÚRATE DE QUE TODOS LOS MIEMBROS DEL GRUPO TENGAN LA AUTO-ACEPTACIÓN DESACTIVADA PARA ESTE PASO! RestedXP TIENE LA AUTO-ACEPTACIÓN DESACTIVADA PARA ESTE PASO|r
    >>|cRXP_WARN_Aceptar esta misión iniciará la escolta La fuga de la prisión. Asegúrate de haber despejado toda la zona del Bloque de Detención para que sea más fácil escoltar al|r |cRXP_FRIENDLY_Mariscal Windsor|r
    .turnin 4282 >> Entrega la misión Una brizna de esperanza
    .accept 4322,1 >> Acepta la misión La fuga de la prisión
step
    .isOnQuest 4322
    >>Escolta al |cRXP_FRIENDLY_Mariscal Windsor|r a través de Profundidades de Roca Negra
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>Viaja a la Vigilia de Morgan en |cFFfa9602Las Estepas Ardientes|r
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Maxwell|r
    .turnin 4322 >> Entrega la misión La fuga de la prisión
    .accept 6402 >> Acepta la misión Tienes una cita en Ventormenta
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Maxwell|r
    .accept 6402 >> Acepta la misión Tienes una cita en Ventormenta
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Rowe|r y |cRXP_FRIENDLY_Reginald Windsor|r
    >>El |cRXP_FRIENDLY_Escudero Rowe|r solicitará la llegada de |cRXP_FRIENDLY_Reginald Windsor|r después de que hables con él en las Puertas de Ventormenta
    >>|cRXP_WARN_SI ESTÁS EN UN GRUPO, ASEGÚRATE DE QUE NADIE AUTO-ACEPTA La gran farsa. LA AUTO-ACEPTACIÓN HA SIDO DESACTIVADA PARA ESTE PASO|r
    .turnin 6402 >> Entrega la misión Tienes una cita en Ventormenta
    .accept 6403,1 >> Acepta la misión La gran farsa
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>Escolta a |cRXP_FRIENDLY_Reginald Windsor|r hasta el Castillo de Ventormenta
    >>No ayudes a |cRXP_FRIENDLY_Reginald Windsor|r en combate mientras estés dentro del Castillo. Si lo haces hay muchas posibilidades de que mueras. Quédate atrás en la ubicación de la flecha y deja que el evento termine por sí solo. Tardará unos minutos
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Bolvar Fordragón|r
    .turnin 6403 >> Entrega la misión La gran farsa
    .accept 6501 >> Acepta la misión El Ojo del Dragón
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Bolvar Fordragón|r
    .accept 6501 >> Acepta la misión El Ojo del Dragón
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .zone Winterspring >>Viaja a |cFFfa9602Cuna del Invierno|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Usa el atajo por la montaña para llegar a |cRXP_FRIENDLY_Haleh|r
    >>La ubicación inicial está marcada en tu mapa. Sigue la flecha de navegación con cuidado
    >>|cRXP_WARN_Si tienes|r |T134863:0|t[Elixires de Tragonublo]|cRXP_WARN_, puedes usarlos para obtener|r |T135992:0|t[Caída lenta] |cRXP_WARN_para que el salto sea más fácil|r << !Priest !Mage
    >>|cRXP_WARN_Si tienes|r |T134863:0|t[Elixires de Tragonublo] |cRXP_WARN_o|r |T132917:0|t[Plumas ligeras]|cRXP_WARN_, puedes usarlos para obtener|r |T135992:0|t[Caída lenta] |cRXP_WARN_para que el salto sea más fácil|r << Mage
    >>|cRXP_WARN_Si tienes|r |T134863:0|t[Elixires de Tragonublo] |cRXP_WARN_o|r |T132917:0|t[Plumas ligeras]|cRXP_WARN_, puedes usarlos para obtener|r |T135992:0|t[Caída lenta] |cRXP_WARN_o|r |T135928:0|t[Levitar] |cRXP_WARN_para que el salto sea más fácil|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haleh|r
    .turnin 6501 >>Entrega la misión El Ojo del Dragón
    .accept 6502 >>Acepta la misión Amuleto Pirodraco
    .target Haleh
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    .isQuestTurnedIn 6403
    >>Mata al |cRXP_ENEMY_General Drakkisath|r. Despójalo para obtener |cRXP_LOOT_Sangre de dragón Negro Campeón|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>Viaja a |cFFfa9602Cuna del Invierno|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Usa el atajo por la montaña para llegar a |cRXP_FRIENDLY_Haleh|r
    >>La ubicación inicial está marcada en tu mapa. Sigue la flecha de navegación con cuidado
    >>|cRXP_WARN_Si tienes|r |T134863:0|t[Elixires de Tragonublo]|cRXP_WARN_, puedes usarlos para obtener|r |T135992:0|t[Caída lenta] |cRXP_WARN_para que el salto sea más fácil|r << !Priest !Mage
    >>|cRXP_WARN_Si tienes|r |T134863:0|t[Elixires de Tragonublo] |cRXP_WARN_o|r |T132917:0|t[Plumas ligeras]|cRXP_WARN_, puedes usarlos para obtener|r |T135992:0|t[Caída lenta] |cRXP_WARN_para que el salto sea más fácil|r << Mage
    >>|cRXP_WARN_Si tienes|r |T134863:0|t[Elixires de Tragonublo] |cRXP_WARN_o|r |T132917:0|t[Plumas ligeras]|cRXP_WARN_, puedes usarlos para obtener|r |T135992:0|t[Caída lenta] |cRXP_WARN_o|r |T135928:0|t[Levitar] |cRXP_WARN_para que el salto sea más fácil|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
step
    #softcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Cuidado con el círculo azul frente a |cRXP_FRIENDLY_Haleh|r. Si lo pisas, te teletransportará al interior de la cueva|r
    .turnin 6502 >>Entrega la misión Amuleto Pirodraco
    .target Haleh
step
    #hardcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_¡Ten cuidado! ¡NO pises el círculo azul frente a |cRXP_FRIENDLY_Haleh|r! Esto te teletransportará a la cueva con un dragón élite y podrías MORIR|r
    .turnin 6502 >>Entrega la misión Amuleto Pirodraco
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Requisitos de Acceso (Attunements)
#name Requisitos de acceso a Onyxia (H) (Onyxia Attunement)

step
    #completewith next
    .subzone 340 >>Viaja a Kargath en |cFFfa9602Tierras Inhóspitas|r
step
    .goto Badlands,5.81,47.52
	>>Habla con el |cRXP_FRIENDLY_Señor de la guerra Dientegore|r para recibir la |T133473:0|t[|cRXP_LOOT_Orden del señor de la guerra Dientegore|r]. Úsala para aceptar la misión
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>Acepta la misión La orden del Señor de la Guerra
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Esta es una mazmorra de 5-10 jugadores|r
step
    #sticky
    #label ImportantDocuments
    >>Despoja los |cRXP_LOOT_Importantes documentos de Roca Negra|r
    >>Esto tiene 4 posibles puntos de aparición diferentes en la mazmorra:
    >>|cRXP_WARN_A los pies de|r |cRXP_ENEMY_Señor supremo Vermiothalak|r
    >>|cRXP_WARN_En una esquina vacía junto a|r |cRXP_ENEMY_Maestro de guerra Voone|r
    >>|cRXP_WARN_Cerca del|r |cRXP_ENEMY_Alto señor Omokk|r
    >>|cRXP_WARN_Junto a la Pila de Tributo de |cRXP_ENEMY_Urok Aullasino|r|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>Mata al |cRXP_ENEMY_Alto señor Omokk|r, al |cRXP_ENEMY_Maestro de guerra Voone|r y al |cRXP_ENEMY_Señor supremo Vermiothalak|r
    .complete 4903,2 --Highlord Omokk 1/1
    .mob +Highlord Omokk
    .complete 4903,3 --War Master Voone 1/1
    .mob +War Master Voone
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob +Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>Viaja a Kargath en |cFFfa9602Tierras Inhóspitas|r
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Señor de la guerra Dientegore|r
    .turnin 4903 >>Entrega la misión La orden del Señor de la Guerra
    .accept 4941 >>Acepta la misión La sabiduría de Eitrigg
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,34.27,39.35,10,0
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eitrigg|r y completa el diálogo, luego habla con |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Entrega la misión La sabiduría de Eitrigg
    .accept 4974 >>Acepta la misión ¡Por la Horda!
    .target Eitrigg
    .target Thrall
    .skipgossip
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .subzone 1583,2 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    >>Mata a |cRXP_ENEMY_Rend Puño Negro|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 4974 >>Entrega la misión ¡Por la Horda!
    .accept 6566 >>Acepta la misión Lo que trae el viento
    .target Thrall
step
    .goto Orgrimmar,31.74,37.82
    >>Escucha el relato de |cRXP_FRIENDLY_Thrall|r
    .complete 6566,1 --Thrall's Tale
    .target Thrall
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 6566 >>Entrega la misión Lo que trae el viento
    .accept 6567 >>Acepta la misión El Campeón de la Horda
    .target Thrall
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .fly Sun Rock Retreat >> Vuela al Refugio Roca del Sol
    .target Doras
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrulla de norte a sur por |cFFfa9602Desolace|r. Su ruta de patrulla está marcada en el mapa. Sigue la flecha de navegación para asegurarte de cubrir toda su ruta|r
    >>|cRXP_WARN_Desaparece una vez que llega a Los Dos Colosos en |cFFfa9602Feralas|r. Tras 5 minutos, reaparece en |cFFfa9602la frontera de Sierra Espolón/Desolace|r
    .turnin 6567 >>Entrega la misión El Campeón de la Horda
    .accept 6568 >>Acepta la misión El testimonio de Rexxar
    .unitscan Rexxar
step
    #completewith next
    .zone Western Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Oeste|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myranda la Fada|r
    .turnin 6568 >>Entrega la misión El testimonio de Rexxar
    .accept 6569 >>Acepta la misión Ilusiones oculares
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    >>Mata a cualquier tipo de |cRXP_ENEMY_Dragonante|r. Despójalos para obtener los |cRXP_LOOT_Ojos de dragauro negros|r
    >>|cRXP_WARN_Solo los |cRXP_ENEMY_Dragonantes|r en Cumbre de Roca Negra Superior pueden soltar los |cRXP_LOOT_Ojos|r
    .complete 6569,1 --Black Dragonspawn Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Oeste|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myranda la Fada|r
    .turnin 6569 >>Entrega la misión Ilusiones oculares
    .accept 6570 >>Acepta la misión Brasaliza
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
step
    #completewith Emberstrife1
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entra en el Cubil de Brasaliza
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_¡Ten cuidado! Asegúrate de usar el|r |T133608:0|t[Amuleto de Subversión Dracónica] |cRXP_WARN_ANTES de aproximarte a |cRXP_ENEMY_Brasaliza|r o podría MATARTE|r
    .use 16787
step
    #label Emberstrife1
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brasaliza|r
    .use 16787 >>|cRXP_WARN_Usa el|r |T133608:0|t[Amuleto de Subversión Dracónica] |cRXP_WARN_para disfrazarte|r
    .turnin 6570 >>Entrega la misión Brasaliza
    .accept 6582 >>Acepta la misión La prueba de los cráneos, Arúspice
    .accept 6583 >>Acepta la misión La prueba de los cráneos, Somnus
    .accept 6584 >>Acepta la misión La prueba de los cráneos, Chronalis
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>Mata a |cRXP_ENEMY_Arúspice|r en |cFFfa9602Cuna del Invierno|r
    >>Mata a |cRXP_ENEMY_Somnus|r en |cFFfa9602Pantano de las Penas|r
    >>Mata a |cRXP_ENEMY_Chronalis|r en |cFFfa9602Tanaris|r
    >>Despójalos para obtener sus |cRXP_LOOT_Cráneos|r
    >>|cRXP_WARN_Sus ubicaciones están marcadas en el mapa. Se recomienda hacer esto con al menos 5 jugadores|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>Viaja a |cFFfa9602Cuna del Invierno|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>Entra en la Cueva de Mazthoril
step
    .goto Winterspring,52.91,55.77
    >>Mata a |cRXP_ENEMY_Arúspice|r al fondo de la cueva. Despójalo para obtener su |cRXP_LOOT_Cráneo|r
    >>|cRXP_WARN_Ten cuidado con su habilidad|r |T135848:0|t[Aliento de Escarcha] |cRXP_WARN_(cono de daño de área frente a él)|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja a |cFFfa9602Pantano de las Penas|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>Mata a |cRXP_ENEMY_Somnus|r. Despójalo para obtener su |cRXP_LOOT_Cráneo|r
    >>|cRXP_WARN_Ten cuidado con su habilidad|r |T136007:0|t[Aliento de ácido corrosivo] |cRXP_WARN_(cono de daño de área frente a él)|r
    >>|cRXP_WARN_Patrulla haciendo un pequeño recorrido circular al sur/este del lago|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>Viaja a |cFFfa9602Tanaris|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>Viaja a las Cavernas del Tiempo
step
    .goto Tanaris,64.85,50.52
    >>Mata a |cRXP_ENEMY_Chronalis|r. Despójalo para obtener su |cRXP_LOOT_Cráneo|r
    >>|cRXP_WARN_Ten cuidado con su habilidad|r |T135831:0|t[Aliento de arena] |cRXP_WARN_(cono de daño de área frente a él)|r
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
step
    #requires SkullofDragons
    #completewith Emberstrife2
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entra en el Cubil de Brasaliza
step
    #requires SkullofDragons
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_¡Ten cuidado! Asegúrate de usar el|r |T133608:0|t[Amuleto de Subversión Dracónica] |cRXP_WARN_ANTES de aproximarte a |cRXP_ENEMY_Brasaliza|r o podría MATARTE|r
    .use 16787
step
    #label Emberstrife2
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brasaliza|r
    .use 16787 >>|cRXP_WARN_Usa el|r |T133608:0|t[Amuleto de Subversión Dracónica] |cRXP_WARN_para disfrazarte|r
    .turnin 6582 >>Entrega la misión La prueba de los cráneos, Arúspice
    .turnin 6583 >>Entrega la misión La prueba de los cráneos, Somnus
    .turnin 6584 >>Entrega la misión La prueba de los cráneos, Chronalis
    .accept 6585 >>Acepta la misión La prueba de los cráneos, Axtroz
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>Viaja a |cFFfa9602Los Humedales|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>Viaja a las Puertas Faucedraco
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>Mata a |cRXP_ENEMY_Axtroz|r. Despójalo para obtener su |cRXP_LOOT_Cráneo|r
    >>|cRXP_WARN_Ten cuidado con su habilidad|r |T135831:0|t[Aliento de llamas] |cRXP_WARN_(cono de daño de área frente a él)|r
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
step
    #completewith Emberstrife3
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entra en el Cubil de Brasaliza
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_¡Ten cuidado! Asegúrate de usar el|r |T133608:0|t[Amuleto de Subversión Dracónica] |cRXP_WARN_ANTES de aproximarte a |cRXP_ENEMY_Brasaliza|r o podría MATARTE|r
    .use 16787
step
    #label Emberstrife3
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brasaliza|r
    .use 16787 >>|cRXP_WARN_Usa el|r |T133608:0|t[Amuleto de Subversión Dracónica] |cRXP_WARN_para disfrazarte|r
    .turnin 6585 >>Entrega la misión La prueba de los cráneos, Axtroz
    .accept 6601 >>Acepta la misión El ascenso
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrulla de norte a sur por |cFFfa9602Desolace|r. Su ruta de patrulla está marcada en el mapa. Sigue la flecha de navegación para asegurarte de cubrir toda su ruta|r
    >>|cRXP_WARN_Desaparece una vez que llega a Los Dos Colosos en |cFFfa9602Feralas|r. Tras 5 minutos, reaparece en |cFFfa9602la frontera de Sierra Espolón/Desolace|r
    .turnin 6601 >>Entrega la misión El ascenso
    .accept 6602 >>Acepta la misión La sangre de dragón Negro Campeón
    .unitscan Rexxar
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    .isQuestTurnedIn 6601
    >>Mata al |cRXP_ENEMY_General Drakkisath|r. Despójalo para obtener |cRXP_LOOT_Sangre de dragón Negro Campeón|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
step
    .isQuestComplete 6602
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrulla de norte a sur por |cFFfa9602Desolace|r. Su ruta de patrulla está marcada en el mapa. Sigue la flecha de navegación para asegurarte de cubrir toda su ruta|r
    >>|cRXP_WARN_Desaparece una vez que llega a Los Dos Colosos en |cFFfa9602Feralas|r. Tras 5 minutos, reaparece en |cFFfa9602la frontera de Sierra Espolón/Desolace|r
    .turnin 6602 >>Entrega la misión La sangre de dragón Negro Campeón
    .unitscan Rexxar

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#subgroup Requisitos de Acceso (Attunements)
#group RestedXP Guías de Contenido de Nivel Máximo
#name Requisitos de acceso a Núcleo de Magma (Molten Core Attunement)

step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lothos Levantagrietas|r
    .accept 7848 >>Acepta la misión Armonización con el Núcleo
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entra en Profundidades de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    #softcore
    >>Gira a la derecha antes de entrar en El Lyceum y despoja el |cRXP_LOOT_Trozo del Núcleo|r del suelo que hay fuera del portal de la instancia |cFFfa9602Núcleo de Magma|r
    >>|cRXP_WARN_La forma más rápida de llegar aquí es usar el atajo nadando a través de la lava (Lava skip). Esto comienza desde la plataforma de|r |cRXP_ENEMY_Lord Incendius|r
    --.link >> |cRXP_WARN_Click here for video reference|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #hardcore
    >>Gira a la derecha antes de entrar en El Lyceum y despoja el |cRXP_LOOT_Trozo del Núcleo|r del suelo que hay fuera del portal de la instancia |cFFfa9602Núcleo de Magma|r
    .complete 7848,1 --Core Fragment 1/1
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lothos Levantagrietas|r
    .turnin 7848 >>Entrega la misión Armonización con el Núcleo
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Requisitos de Acceso (Attunements)
#name Requisitos de acceso a Guarida de Alanegra (Blackwing Lair Attunement)

step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #hardcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Mata al |cRXP_ENEMY_Intendente del Escudo del Estigma|r. Despójalo para obtener la |T133473:0|t[|cRXP_LOOT_Orden de Puño Negro|r]. Úsala para aceptar la misión
    >>|cRXP_WARN_Este es un élite fuerte de nivel 55. Haz esto con un grupo por seguridad|r
    >>|cRXP_WARN_Se encuentra en el pasillo a la derecha del portal de la instancia de Cumbre de Roca Negra|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Acepta la misión Orden de Puño Negro
    .unitscan Scarshield Quartermaster
step
    #softcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Mata al |cRXP_ENEMY_Intendente del Escudo del Estigma|r. Despójalo para obtener la |T133473:0|t[|cRXP_LOOT_Orden de Puño Negro|r]. Úsala para aceptar la misión
    >>|cRXP_WARN_Se encuentra en el pasillo a la derecha del portal de la instancia de Cumbre de Roca Negra|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Acepta la misión Orden de Puño Negro
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    >>Haz clic en la |cRXP_PICK_Enseña de Drakkisath|r en la sala final de Cumbre de Roca Negra Superior detrás del |cRXP_ENEMY_General Drakkisath|r
    .turnin 7761 >>Entrega la misión Orden de Puño Negro

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Llaves
#name Llave de Cumbre de Roca Negra Superior

step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    >>Mata a cualquier tipo de enemigo en Cumbre de Roca Negra hasta que despojes un |T135725:0|t[|cRXP_LOOT_Sello de ascensión sin adornar|r]
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Infiltrado del Escudo del Estigma|r
    >>|cRXP_WARN_Al entrar en Ciudad Hordemar al inicio de la mazmorra, estará situado en una plataforma a tu izquierda|r
    .accept 4742 >>Acepta la misión El sello de ascensión
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>Mata al |cRXP_ENEMY_Alto señor Omokk|r. Despójalo para obtener la |cRXP_LOOT_Gema de Cumbrerroca|r
    >>Mata al |cRXP_ENEMY_Maestro de guerra Voone|r. Despójalo para obtener la |cRXP_LOOT_Gema de Espina Ahumada|r
    >>Mata al |cRXP_ENEMY_Señor supremo Vermiothalak|r. Despójalo para obtener la |cRXP_LOOT_Gema de Hacha de Sangre|r
    >>|cRXP_WARN_Las|r |cRXP_LOOT_Gemas|r |cRXP_WARN_tienen ~30% de probabilidad de caída. Lo más probable es que tengas que hacer múltiples veces Cumbre de Roca Negra Inferior|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .target +Highlord Omokk
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .target +War Master Voone
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target +Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Infiltrado del Escudo del Estigma|r
    >>|cRXP_WARN_Al entrar en Ciudad Hordemar al inicio de la mazmorra, estará situado en una plataforma a tu izquierda|r
    .turnin 4742 >>Entrega la misión El sello de ascensión
    .accept 4743 >>Acepta la misión El sello de ascensión
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_Abre el|r |T132595:0|t[Obsequio de Vaelan] |cRXP_WARN_para despojar|r |T133276:0|t[|cRXP_LOOT_Sello de ascensión sin forjar|r] |cRXP_WARN_y|r |T134334:0|t[|cRXP_LOOT_Orbe de energía dracónica|r]
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
step
    #softcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entra en el Cubil de Brasaliza
    >>|cRXP_WARN_Necesitarás un grupo de al menos 3 jugadores para completar la siguiente sección|r
step
    #hardcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entra en el Cubil de Brasaliza
    >>|cRXP_WARN_¡Necesitarás un grupo de al menos 3 jugadores para completar esta siguiente sección, incluyendo un tanque y un sanador por seguridad!|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_Coloca el|r |T133276:0|t[|cRXP_LOOT_Sello de ascensión sin forjar|r] |cRXP_WARN_en el suelo antes de atacar a|r |cRXP_ENEMY_Brasaliza|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_Ataca a|r |cRXP_ENEMY_Brasaliza|r. |cRXP_WARN_Una vez que esté por debajo de 10% de salud, usa el|r |T134334:0|t[|cRXP_LOOT_Orbe de energía dracónica|r] |cRXP_WARN_para tomar control de|r |cRXP_ENEMY_Brasaliza|r
    >>|cRXP_WARN_Lanza|r |T135824:0|t[Llamas del Vuelo Negro] |cRXP_WARN_para forjar el|r |T133276:0|t[|cRXP_LOOT_Sello de ascensión sin forjar|r] |cRXP_WARN_que colocaste en el suelo|r
    >>Una vez completado, despoja el |cRXP_PICK_Sello de ascensión forjado|r del suelo
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Entra en Cumbre de Roca Negra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Infiltrado del Escudo del Estigma|r
    >>|cRXP_WARN_Al entrar en Ciudad Hordemar al inicio de la mazmorra, estará situado en una plataforma a tu izquierda|r
    .turnin 4743 >>Entrega la misión El sello de ascensión
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Llaves
#name Llave de Scholomance (A)

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Ve a la Casa de Subastas en cualquier ciudad principal y compra 2|r |T133221:0|t[Barras de torio]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >> Viaja a |cFFfa9602Forjaz|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mensajero Sentencia|r
    >>|cRXP_FRIENDLY_Mensajero Sentencia|r |cRXP_WARN_patrulla por todo Forjaz|r
    >>|cRXP_WARN_Esta misión también puede ser aceptada en la|r |cFFfa9602Ciudad de Ventormenta|r |cRXP_WARN_o|r |cFFfa9602Darnassus|r
    .acceptmultiple 5091,5090,5066 >> Acepta la misión Un llamamiento a las armas: las Tierras de la Peste
    .unitscan Courier Hammerfall --IF
    .unitscan Herald Moonstalker --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>Viaja al Campamento del Orvallo en |cFFfa9602Tierras de la Peste del Oeste|r
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .turnin 5066 >> Entrega la misión Un llamamiento a las armas: las Tierras de la Peste
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .turnin 5091 >> Entrega la misión Un llamamiento a las armas: las Tierras de la Peste
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .turnin 5090 >> Entrega la misión Un llamamiento a las armas: las Tierras de la Peste
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>Mata |cRXP_ENEMY_Despellejadores esqueléticos|r y |cRXP_ENEMY_Necrófagos esclavizantes|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .accept 5098 >> Acepta la misión Todas las atalayas
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .turnin 5098 >> Entrega la misión Todas las atalayas
    .accept 5533 >> Acepta la misión Scholomance
    .target Commander Ashlam Valorfist
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Destruye la |T135432:0|t[Antorcha de aviso]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    .turnin 5533 >>Entrega la misión Scholomance
    .accept 5537 >>Acepta la misión Trozos esqueléticos
    .target Alchemist Arbington
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Mata |cRXP_ENEMY_Verdugos esqueléticos|r y |cRXP_ENEMY_Acólitos esqueléticos|r. Despójalos para obtener sus |cRXP_LOOT_Trozos esqueléticos|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    .turnin 5537 >>Entrega la misión Trozos esqueléticos
    .accept 5538 >>Acepta la misión Molde rima con... ¿oro?
    .target Alchemist Arbington
step
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krinkle Buenacero|r
    >>|cRXP_WARN_Entregar esta misión requiere que pagues 15 de Oro|r
    .turnin 5538 >>Entrega la misión Molde rima con... ¿oro?
    .accept 5801 >>Acepta la misión La forja del Penacho en Llamas
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Si no las compraste antes, ve a la Casa de Subastas en cualquier ciudad principal y compra 2|r |T133221:0|t[Barras de torio]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bera Rocamartillo|r
    .fly Un'Goro >> Vuela a Cráter de Un'Goro
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Viaja a la cima de la montaña de la Cresta del Penacho en Llamas
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Usa el|r |T134457:0|t[Molde para llave esqueleto] |cRXP_WARN_en la piscina de lava para crear la|r |cRXP_LOOT_Llave esqueleto sin terminar|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>Viaja al Campamento del Orvallo en |cFFfa9602Tierras de la Peste del Oeste|r
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    .turnin 5801 >>Entrega la misión La forja del Penacho en Llamas
    .accept 5803 >>Acepta la misión El escarabeo de Araj
    .target Alchemist Arbington
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Viaja al centro de las Ruinas de Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte. Se recomienda matarlo en un grupo de al menos 3 jugadores|r
    .use 12650 >>|cRXP_WARN_Usa un|r |T134961:0|t[Atenuador armonizado] |cRXP_WARN_sobre él si tienes uno|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte. Se recomienda matarlo en un grupo de al menos 3 jugadores|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte y está rodeado de muchos esbirros; limpia la zona con cuidado. Se recomienda matarlo en un grupo de al menos 4 jugadores|r
    .use 12650 >>|cRXP_WARN_Usa un|r |T134961:0|t[Atenuador armonizado] |cRXP_WARN_sobre él si tienes uno|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte y está rodeado de muchos esbirros; limpia la zona con cuidado. Se recomienda matarlo en un grupo de al menos 4 jugadores|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    .turnin 5803 >>Entrega la misión El escarabeo de Araj
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    .turnin 5505 >>Entrega la misión La llave de Scholomance
    .target Alchemist Arbington

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Llaves
#name Llave de Scholomance (H)


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Ve a la Casa de Subastas en cualquier ciudad principal y compra 2|r |T133221:0|t[Barras de torio]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>Viaja a |cFFfa9602Entrañas|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Balthazad|r
    .acceptmultiple 5093,5094,5095 >>Acepta la misión Un llamamiento a las armas: las Tierras de la Peste
    >>|cRXP_WARN_Esta misión también se puede aceptar en|r |cFFfa9602Orgrimmar|r |cRXP_WARN_o|r |cFFfa9602Cima del Trueno|r
    .unitscan Warcaller Gorlach --ORG
    .unitscan Harbinger Balthazadd --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >> Viaja hacia El Baluarte en |cFFfa9602Claros de Tirisfal|r
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5093 >>Entrega la misión Un llamamiento a las armas: las Tierras de la Peste
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5094 >>Entrega la misión Un llamamiento a las armas: las Tierras de la Peste
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5095 >>Entrega la misión Un llamamiento a las armas: las Tierras de la Peste
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
    .isOnQuest 5095
step
	.goto Western Plaguelands,26.55,56.18
	>>Haz clic en la |cRXP_PICK_Caja de bombas incendiarias|r junto al fuego
	.collect 12814,1,5095,1 --Flame in a Bottle (1)
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Haz clic en la |cRXP_PICK_Tienda de mando|r, después usa tu |T132484:0|t[Estandarte de la Plaga]
	>>|cRXP_WARN_Estos enemigos son relativamente difíciles y pueden atraerse en cadena unos a otros, así que ten cuidado|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Entrega la misión Distracción Escarlata
    .accept 5098 >>Acepta la misión Todas las atalayas
	.target High Executor Derrington
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre. Puedes hacer esto sin atraer al |cRXP_ENEMY_Señor de la guerra esquelético|r Élite de dentro|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Entrega la misión Todas las atalayas
    .accept 838 >>Acepta la misión Scholomance
	.target High Executor Derrington
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Destruye la |T135432:0|t[Antorcha de aviso]
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Entrega la misión Scholomance
    .accept 964 >>Acepta la misión Trozos esqueléticos
	.target Apothecary Dithers
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Mata |cRXP_ENEMY_Verdugos esqueléticos|r y |cRXP_ENEMY_Acólitos esqueléticos|r. Despójalos para obtener sus |cRXP_LOOT_Trozos esqueléticos|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Entrega la misión Trozos esqueléticos
    .accept 5514 >>Acepta la misión Molde rima con... ¿oro?
	.target Apothecary Dithers
step
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krinkle Buenacero|r
    >>|cRXP_WARN_Entregar esta misión requiere que pagues 15 de Oro|r
    .turnin 5514 >>Entrega la misión Molde rima con... ¿oro?
    .accept 5802 >>Acepta la misión La forja del Penacho en Llamas
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Si no las compraste antes, ve a la Casa de Subastas en cualquier ciudad principal y compra 2|r |T133221:0|t[Barras de torio]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Silithus,48.69,36.67
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runk|r
    .fly Un'Goro >>Vuela a Cráter de Un'Goro
	.target Runk Windtamer
	.zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Viaja a la cima de la montaña de la Cresta del Penacho en Llamas
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Usa el|r |T134457:0|t[Molde para llave esqueleto] |cRXP_WARN_en la piscina de lava para crear la|r |cRXP_LOOT_Llave esqueleto sin terminar|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >> Viaja hacia el Baluarte en |cFFfa9602Claros de Tirisfal|r
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 5802 >>Entrega la misión La forja del Penacho en Llamas
    .accept 5804 >>Acepta la misión El escarabeo de Araj
	.target Apothecary Dithers
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Viaja al centro de las Ruinas de Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte. Se recomienda matarlo en un grupo de al menos 3 jugadores|r
    .use 12650 >>|cRXP_WARN_Usa un|r |T134961:0|t[Atenuador armonizado] |cRXP_WARN_sobre él si tienes uno|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte. Se recomienda matarlo en un grupo de al menos 3 jugadores|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte y está rodeado de muchos esbirros; limpia la zona con cuidado. Se recomienda matarlo en un grupo de al menos 4 jugadores|r
    .use 12650 >>|cRXP_WARN_Usa un|r |T134961:0|t[Atenuador armonizado] |cRXP_WARN_sobre él si tienes uno|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Mata a |cRXP_ENEMY_Araj el Invocador|r. Despoja la |cRXP_PICK_Filacteria de Araj|r del suelo para obtener |cRXP_LOOT_Escarabeo de Araj|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_es un élite fuerte y está rodeado de muchos esbirros; limpia la zona con cuidado. Se recomienda matarlo en un grupo de al menos 4 jugadores|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 5804 >>Entrega la misión El escarabeo de Araj
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 5511 >>Entrega la misión La llave de Scholomance
	.target Apothecary Dithers

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Llaves
#name Llave de Profundidades de Roca Negra


step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Franclorn Forjador|r
    >>|cRXP_WARN_Debes ser un|r |T132331:0|t[Fantasma] |cRXP_WARN_para poder hablar con|r |cRXP_FRIENDLY_Franclorn Forjador|r
    >>|cRXP_WARN_Muere a propósito en la lava en Montaña Roca Negra, idealmente cerca de la entrada de Núcleo de magma|r
    .accept 3801 >> Acepta la misión El legado de Hierro Negro
    .turnin 3801 >> Entrega la misión El legado de Hierro Negro
    .accept 3802 >> Acepta la misión El legado de Hierro Negro
    .target Franclorn Forgewright
step
    #hardcoreserver
    #completewith next
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_Haz clic en el|r |cRXP_PICK_Brasero|r |cRXP_WARN_para obtener el perjuicio|r |T136215:0|t[Visión de destello de brasas] |cRXP_WARN_|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Franclorn Forjador|r
    >>|cRXP_WARN_Debes tener el perjuicio|r |T136215:0|t[Visión de destello de brasas] |cRXP_WARN_para verlo|r
    .accept 3801 >> Acepta la misión El legado de Hierro Negro
    .turnin 3801 >> Entrega la misión El legado de Hierro Negro
    .accept 3802 >> Acepta la misión El legado de Hierro Negro
    .target Franclorn Forgewright
step
    #softcore
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Resucita en tu cadáver y entra en Profundidades de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    #hardcoreserver
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entra en Profundidades de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    >>Mata a |cRXP_ENEMY_Finoso Virunegro|r. Despójalo para obtener el |cRXP_LOOT_Ferrovil|r
    >>|cRXP_WARN_Patrulla por la cantera que hay fuera de la Cámara de Lord Incendius|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>Vuelve corriendo cerca de la ubicación por encima del Círculo de la Ley
    >>Haz clic en el |cRXP_PICK_Monumento a Franclorn Forjador|r
    .turnin 3802 >> Entrega la misión El legado de Hierro Negro
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Llaves
#name Llave de La Masacre

step
    #completewith next
    .zone Feralas >>Viaja a |cFFfa9602Feralas|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entra por la entrada este de La Masacre
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pusillín|r
    >>|cRXP_WARN_Este es un |cRXP_FRIENDLY_Diablillo|r verde que aparece al comienzo de la instancia. Huirá después de hablar con él. Tendrás que perseguirlo y hablar con él varias veces hasta que se vuelva hostil en la cámara de El Tramo Oculto|r
    .skipgossip
    .unitscan Pusillin
step
    >>Mata a |cRXP_ENEMY_Pusillín|r una vez que se vuelva hostil. Despójalo para obtener la |T134244:0|t[|cRXP_LOOT_Llave creciente|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guías de Contenido de Nivel Máximo
#name Requisitos de acceso a Naxxramas (Naxxramas Attunement)
#subgroup Requisitos de Acceso (Attunements)

step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>Cinco |T134135:0|t[|cRXP_FRIENDLY_Cristales Arcanos|r]
    >>Dos |T132880:0|t[|cRXP_PICK_Cristales nexo|r]
    >>Un |T134122:0|t[|cRXP_FRIENDLY_Orbe recto|r]
    >>|cRXP_WARN_Cómpralos en la casa de subastas si es posible|r
    >>Los necesitarás para entregar la misión que te desbloquea el acceso a Naxxramas. |cRXP_WARN_¡Alcanzar rangos de reputación más altos con El Alba Argenta hace que cueste menos materiales y oro!|r
    .collect 12363,5 --Arcane Crystal (x5)
    .collect 20725,2 --Nexus Crystal (x2)
    .collect 12811,1 --Righteous Orb (x1)
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>Dos |T134135:0|t[|cRXP_FRIENDLY_Cristales Arcanos|r]
    >>Un |T132880:0|t[|cRXP_PICK_Cristal nexo|r]
    >>|cRXP_WARN_Cómpralos en la casa de subastas si es posible|r
    >>Los necesitarás para entregar la misión que te desbloquea el acceso a Naxxramas. |cRXP_WARN_¡Alcanzar rangos de reputación más altos con El Alba Argenta hace que cueste menos materiales y oro!|r
    .collect 12363,2 --Arcane Crystal (x2)
    .collect 20725,1 --Nexus Crystal (x1)
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #completewith AttuneComplete
    .zone Eastern Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Este|r
step
    #optional
    .reputation 529,honored >>Consigue reputación honorable con El Alba Argenta
    >>|cRXP_WARN_"Grindea" |cRXP_ENEMY_No-muertos|r en Tierras de la Peste del Este/Oeste o haz mazmorras con tu|r |T133440:0|t[Comisión de El Alba Argenta] |cRXP_WARN_equipada para recolectar y entregar|r |T133447:0|t[Piedra de la Plaga]
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Archimaga Angela Dosantos|r
    >>|cRXP_WARN_Debes alcanzar la reputación de Honorable para aceptar esta misión|r
    >>|cRXP_WARN_También necesitarás pagar|r |cRXP_WARN_60 de oro|r |cRXP_WARN_para entregar la misión|r
    .accept 9121 >>Acepta la misión La ciudadela del terror: Naxxramas
    .turnin 9121 >>Entrega la misión La ciudadela del terror: Naxxramas
    .target Archmage Angela Dosantos
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Archimaga Angela Dosantos|r
    >>|cRXP_WARN_Debes alcanzar la reputación de Reverenciado para aceptar esta misión|r
    >>|cRXP_WARN_También necesitarás pagar|r |cRXP_WARN_30 de oro|r |cRXP_WARN_para entregar la misión|r
    .accept 9122 >>Acepta la misión La ciudadela del terror: Naxxramas
    .turnin 9122 >>Entrega la misión La ciudadela del terror: Naxxramas
    .target Archmage Angela Dosantos
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #label AttuneComplete
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Archimaga Angela Dosantos|r
    >>|cRXP_WARN_Debes alcanzar la reputación de Exaltado para aceptar esta misión|r
    .accept 9123 >>Acepta la misión La ciudadela del terror: Naxxramas
    .turnin 9123 >>Entrega la misión La ciudadela del terror: Naxxramas
    .target Archmage Angela Dosantos
    .reputation 529,exalted,<0,1 --Exalted AD
    .isQuestAvailable 9123 --The Dread Citadel - Naxxramas

]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guías de Contenido de Nivel Máximo
#name Requisitos de acceso a Barranco del Demonio (Demon Fall Canyon Attunement)
#subgroup Requisitos de Acceso (Attunements)
<<sod

step
    #completewith next
    .subzone 2479 >>Viaja al Santuario Esmeralda en |cFFfa9602Frondavil|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Emisaria Diente Oscuro|r
    .accept 84384 >> Acepta la misión Engaños demoníacos
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Viaja a |cFFfa9602Cuna del Invierno|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>Mata |cRXP_ENEMY_Lechubestias rabiosas|r. Despójalas para obtener sus |T237413:0|t[|cRXP_LOOT_Glándulas pineales de lechubestia|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>Viaja al Santuario Esmeralda en |cFFfa9602Frondavil|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Emisaria Diente Oscuro|r
    .turnin 84384 >> Entrega la misión Engaños demoníacos
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
