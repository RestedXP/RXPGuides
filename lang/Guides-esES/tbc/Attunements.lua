if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Requisitos de Acceso (Attunements)
#name 1. Karazhan
#guideKind attunement
#title Karazhan

step
    #optional
    +|cRXP_WARN_Debes ser al menos nivel 68 para comenzar la cadena de misiones para poder acceder a Karazhan|r
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >> Viaja al Paso de la Muerte en los Reinos del Este
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >> Viaja a Karazhan
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Alturus|r
    .accept 9824 >> Acepta la misión Alteraciones arcanas
    .accept 9825 >> Acepta la misión Actividad incansable
    .target Archmage Alturus
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >> Baja las escaleras al Sótano del Maestro
step
    #optional
    #completewith Reading2
    >>Mata a los |cRXP_ENEMY_Fantasmas|rque rodean Karazhan. Despójalos para obtener sus |cRXP_LOOT_Esencias fantasmales|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >> |cRXP_WARN_Usa el|r |T134075:0|t[Cristal de visión violeta] |cRXP_WARN_mientras estés de pie en el|r |cRXP_PICK_Estanque Subterráneo|r
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >> |cRXP_WARN_Regresa por el camino por el que viniste para salir del Sótano del Maestro. Pronto entrarás a otra entrada al Sótano del Maestro de nuevo|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >> Baja por el otro tramo de escaleras hacia el Sótano del Maestro
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >> |cRXP_WARN_Usa el|r |T134075:0|t[Cristal de visión violeta] |cRXP_WARN_junto al|r |cRXP_PICK_Pozo Subterráneo|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>Mata a los |cRXP_ENEMY_Fantasmas|rque rodean Karazhan. Despójalos para obtener sus |cRXP_LOOT_Esencias fantasmales|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Alturus|r
    .turnin 9824 >> Entrega la misión Alteraciones arcanas
    .turnin 9825 >> Entrega la misión Actividad incansable
    .accept 9826 >> Acepta la misión Contacto de Dalaran
    .target Archmage Alturus
step
    #completewith next
    .zone Alterac Mountains >> Viaja a Montañas de Alterac
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Cedric|r
    .turnin 9826 >> Entrega la misión Contacto de Dalaran
    .accept 9829 >> Acepta la misión Khadgar
    .target Archmage Cedric
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khadgar|r
    .turnin 9829 >> Entrega la misión Khadgar
    .accept 9831 >> Acepta la misión La entrada a Karazhan
    .target Khadgar
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >> |cRXP_WARN_Busca un grupo para la mazmorra Laberinto de las Sombras en Bosque de Terokkar. Una vez que hayas encontrado un grupo, entra en Laberinto de las Sombras|r
step
    .isOnQuest 9831
    >>|cRXP_WARN_Después de que mates a |cRXP_ENEMY_Murmullo|r, abre el |cRXP_PICK_Contenedor Arcano|r en el suelo para hacer que aparezca el|r |cRXP_ENEMY_Guardián del primer trozo|r
    >>Mata al |cRXP_ENEMY_Guardián del primer trozo|r. Despójalo para obtener el |cRXP_LOOT_Primer trozo de la llave|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob First Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khadgar|r
    .turnin 9831 >> Entrega la misión La entrada a Karazhan
    .accept 9832 >> Acepta la misión El segundo y tercer trozo
    .target Khadgar
step << !Druid
    #completewith next
    +|cRXP_WARN_NOTA: Para llegar a Arcatraz, debes haber comprado la habilidad de montura voladora, así como una montura voladora en Valle Sombraluna|r
    .skill riding,225,1
    .goto Shadowmoon Valley,37.6,56.0,0 << Alliance
    .goto Shadowmoon Valley,29.2,29.4,0 << Horde
    .target Brunn Flamebeard << Alliance
    .target Ilsa Blusterbrew << Alliance
    .target Dama Wildmane << Horde
    .target Olrokk << Horde
step
    >>Ahora debes hacer La Cámara de Vapor y El Arcatraz. No importa cuál hagas primero
    >>Una vez dentro de cualquier mazmorra, abre el |cRXP_PICK_Contenedor Arcano|r para invocar al |cRXP_ENEMY_Guardián del trozo|r
    >>Mata al |cRXP_ENEMY_Guardián del trozo|r. Despójalos para obtener el |cRXP_LOOT_Segundo trozo de la llave|r y el |cRXP_LOOT_Tercer trozo de la llave|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob Second Fragment Guardian
    .mob Third Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khadgar|r
    .turnin 9832 >> Entrega la misión El segundo y tercer fragmento
    .accept 9836 >> Acepta la misión El toque del maestro
    .target Khadgar
step
    #optional
    .isQuestAvailable 10284
    +|cRXP_WARN_Ahora debes completar La Ciénaga Negra, sin embargo, para entrar en ella, debes completar la misión Huida de Durnholde completando la mazmorra Antiguas Laderas de Trabalomas en Cavernas del Tiempo|r
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >> |cRXP_WARN_Busca un grupo para la mazmorra La Ciénaga Negra. Una vez que hayas encontrado un grupo, entra en La Ciénaga Negra|r
step
    >>Completa La Ciénaga Negra
    >>|cRXP_WARN_Asegúrate de estar junto a |cRXP_FRIENDLY_Medivh|r una vez que hayas matado a|r |cRXP_ENEMY_Aeonus|r
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Medivh|r
    .turnin 9836 >> Entrega la misión El toque del maestro
    .accept 9837 >> Acepta la misión Regresa junto a Khadgar
    .target Medivh
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khadgar|r
    .turnin 9837 >> Entrega la misión Regresa junto a Khadgar
    .accept 9838 >> Acepta la misión El Ojo Violeta
    .target Khadgar
step
    .isQuestTurnedIn 9837
    +|cRXP_WARN_¡Enhorabuena! Ya cumples los requisitos para acceder a Karazhan|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Requisitos de Acceso (Attunements)
#name 2. Caverna Santuario Serpiente
#guideKind attunement
#title Serpentshrine Cavern

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >> |cRXP_WARN_Busca un grupo para la mazmorra heroica: Recinto de los Esclavos en Marisma de Zangar. Una vez que encuentres un grupo, entra en Recinto de los Esclavos|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skar'this el Herético|r
    .accept 10901 >> Acepta la misión La cayada de Kar'desh
    .target Skar'this the Heretic
step
    >>|cRXP_WARN_Encuentra un grupo de banda para Gruul el Asesino de Dragones y Karazhan|r
    >>Mata a |cRXP_ENEMY_Gruul|r. Despójalo para obtener el |cRXP_LOOT_Sello Terráneo|r
    >>Mata a |cRXP_ENEMY_Nocturno|r. Despójalo para obtener el |cRXP_LOOT_Sello llameante|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Regresa con |cRXP_FRIENDLY_Skar'this el Herético|r que se encuentra en el interior de Recinto de los Esclavos Heroico|r
    .turnin 10901 >> Entrega la misión La cayada de Kar'desh
    .target Skar'this the Heretic
step
    .isQuestTurnedIn 10901
    +|cRXP_WARN_¡Enhorabuena! Ya cumples los requisitos para acceder a la Caverna Santuario Serpiente|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Requisitos de Acceso (Attunements)
#name 3. El Castillo de la Tempestad
#guideKind attunement
#title El Castillo de la Tempestad

step
    #completewith next
    .zone Shadowmoon Valley >> Viaja al Valle Sombraluna
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Sophurus|r
    .accept 10680 >> Acepta la misión La Mano de Gul'dan
	.target Earthmender Sophurus
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Pezuña de Astilla|r
    .accept 10681 >> Acepta la misión La Mano de Gul'dan
	.target Earthmender Splinthoof
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Torlok|r
    .turnin 10680 >> Entrega la misión La Mano de Gul'dan << Alliance
    .turnin 10681 >> Entrega la misión La Mano de Gul'dan << Horde
    .accept 10458 >> Acepta la misión Espíritus de fuego y tierra iracundos
	.target Earthmender Torlok
step
    .use 30094 >>|cRXP_WARN_Usa el|r |T135462:0|t[Tótem de espíritus] |cRXP_WARN_y mata|r |cRXP_ENEMY_Espíritus de fuego iracundos|r y |cRXP_ENEMY_Espíritus de tierra iracundos|r
    >>|cRXP_WARN_Asegúrate de matarlos mientras estén al lado del|r |T135462:0|t[Tótem de espíritus]
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob +Enraged Earth Spirit
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob +Enraged Fire Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Torlok|r
    .turnin 10458 >> Entrega la misión Espíritus de fuego y tierra iracundos
    .accept 10480 >> Acepta la misión Espíritus de agua iracundos
	.target Earthmender Torlok
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>|cRXP_WARN_Usa el|r |T135462:0|t[Tótem de espíritus] |cRXP_WARN_y mata|r |cRXP_ENEMY_Espíritus de agua iracundo|r
    >>|cRXP_WARN_Asegúrate de matarlos mientras estén al lado del|r |T135462:0|t[Tótem de espíritus]
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob Enraged Water Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Torlok|r
    .turnin 10480 >> Entrega la misión Espíritus de agua iracundos
    .accept 10481 >> Acepta la misión Espíritus de aire iracundos
	.target Earthmender Torlok
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>|cRXP_WARN_Usa el|r |T135462:0|t[Tótem de espíritus] |cRXP_WARN_y mata|r |cRXP_ENEMY_Espíritus de aire iracundos|r
    >>|cRXP_WARN_Asegúrate de matarlos mientras estén al lado del|r |T135462:0|t[Tótem de espíritus]
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob Enraged Air Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Torlok|r
    .turnin 10481 >> Entrega la misión Espíritus de aire iracundos
    .accept 10513 >> Acepta la misión Oronok Corazón Roto
	.target Earthmender Torlok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oronok Corazón Roto|r
    .turnin 10513 >> Entrega la misión Oronok Corazón Roto
    .accept 10514 >> Acepta la misión Yo era muchas cosas...
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>|cRXP_WARN_Ponte encima de las plantas pequeñas del suelo y usa el|r |T132161:0|t[Silbato de jabalíes de Oronok] |cRXP_WARN_para que un Jabalí vil domesticado cercano desentierre los|r |cRXP_LOOT_Tubérculos de Sombraluna|r
    >>|cRXP_WARN_Es muy importante que NO mates a ningún Jabalí vil domesticado|r
    >>Despoja los |cRXP_LOOT_Tubérculos de Sombraluna|r que aparecen en el suelo después
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oronok Corazón Roto|r
    .turnin 10514 >> Entrega la misión Yo era muchas cosas...
    .accept 10515 >> Acepta la misión Una lección aprendida
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>Haz clic en los |cRXP_ENEMY_Huevos de despellejador voraz|r del suelo para destruirlos
    >>|cRXP_WARN_Ten cuidado con el élite|r |cRXP_ENEMY_Matriarca de despellejador voraz|r |cRXP_WARN_que patrulla el área|r
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oronok Corazón Roto|r
    .turnin 10515 >> Entrega la misión Una lección aprendida
    .accept 10519 >> Acepta la misión La Clave de Condenación: historia y verdad
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oronok Corazón Roto|r
    .turnin 10519 >> Entrega la misión La Clave de Condenación: historia y verdad
    .accept 10521 >> Acepta la misión Grom'tor, hijo de Oronok
    .accept 10527 >> Acepta la misión Ar'tor, hijo de Oronok
    .accept 10546 >> Acepta la misión Borak, hijo de Oronok
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grom'tor, hijo de Oronok|r
    .turnin 10521 >> Entrega la misión Grom'tor, hijo de Oronok
    .accept 10522 >> Acepta la misión La Clave de Condenación: La carga de Grom'tor
	.target Grom'tor, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>Mata a los |cRXP_ENEMY_Nagas Cicatriz Espiral|r. Despójalos para obtener sus |cRXP_LOOT_Llaves de cofre de Cicatriz Espiral|r
    >>Abre los |cRXP_PICK_Cofres de Cicatriz Espiral|r hasta que despojes el |cRXP_LOOT_Primer trozo de la Clave de Condenación|r
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob Coilskar Defender
	.mob Coilskar Muckwatcher
	.mob Coilskar Myrmidon
	.mob Coilskar Siren
	.mob Coilskar Sorceress
	.mob Coilskar Waterkeeper
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grom'tor, hijo de Oronok|r
    .turnin 10522 >> Entrega la misión La Clave de Condenación: La carga de Grom'tor
    .accept 10523 >> Acepta la misión La Clave de Condenación - Primer trozo recuperado
	.target Grom'tor, Son of Oronok
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ar'tor, Hijo de Oronok|r
    .turnin 10527 >> Entrega la misión Ar'tor, hijo de Oronok
    .accept 10528 >> Acepta la misión Cárceles de cristal demoníacas
	.target Ar'tor, Son of Oronok
step
    .goto Shadowmoon Valley,28.005,47.568
    >>Mata a la |cRXP_ENEMY_Maestra del dolor Gabrissa|r. Despójala para obtener la |cRXP_LOOT_Llave cristalina|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob Painmistress Gabrissa
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ar'tor, Hijo de Oronok|r
    .turnin 10528 >> Entrega la misión Cárceles de cristal demoníacas
	.target Ar'tor, Son of Oronok
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de Ar'tor|r
    .accept 10537 >> Acepta la misión Lohn'goron, arco del corazón roto
	.target Spirit of Ar'tor
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>Mata a los |cRXP_ENEMY_Illidari|r. Despójalos para obtener |cRXP_LOOT_Lohn'goron, arco del corazón roto|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob Illidari Dreadbringer
	.mob Illidari Painlasher
	.mob Illidari Shadowstalker
	.mob Illidari Shocktrooper
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de Ar'tor|r
    .turnin 10537 >> Entrega la misión Lohn'goron, arco del corazón roto
    .accept 10540 >> Acepta la misión La Clave de Condenación. La carga de Ar'tor
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_Dirígete al sureste mientras el |cRXP_FRIENDLY_Espíritu de Ar'tor|r te sigue, camina por esta zona hasta que invoque a|r |cRXP_ENEMY_Veneratus el Múltiple|r
    >>Mata a |cRXP_ENEMY_Veneratus el Múltiple|r. Despójalo para obtener el |cRXP_LOOT_Segundo trozo de la Clave de Condenación|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob Veneratus the Many
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de Ar'tor|r
    .turnin 10540 >> Entrega la misión La Clave de Condenación. La carga de Ar'tor
    .accept 10541 >> Acepta la misión La Clave de Condenación. Segundo trozo recuperado
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borak, hijo de Oronok|r
    .turnin 10546 >> Entrega la misión Borak, hijo de Oronok
    .accept 10547 >> Acepta la misión Sobre cabezacardos y huevos...
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>Despoja los |cRXP_PICK_Huevos de arakkoa podridos|r del suelo
    >>|cRXP_WARN_Ten cuidado porque te pueden hacer daño al despojar|r
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tobias el Comeporquería|r
    .turnin 10547 >> Entrega la misión sobre cabezacardos y huevos...
    .accept 10550 >> Acepta la misión El fardo de cardos de sangre
	.target Tobias the Filth Gorger
step
    #completewith next
    .zone Shadowmoon Valley >> Regresa al Valle Sombraluna
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borak, hijo de Oronok|r
    .turnin 10550 >> Entrega la misión El fardo de cardos de sangre
    .accept 10570 >> Acepta la misión Perder la cabeza... por unos cardos
	.target Borak, Son of Oronok
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>|cRXP_WARN_Usa el|r |T133651:0|t[Fardo de cardos de sangre] |cRXP_WARN_al final del puente|r
    .timer 78,Perder la cabeza... por unos cardos RP
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>Mata al |cRXP_ENEMY_Enviado Icarius|r cuando sea atacable. Despójalo para obtener la |cRXP_LOOT_Misiva de Tempestira|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob Envoy Icarius
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borak, hijo de Oronok|r
    .turnin 10570 >> Entrega la misión Perder la cabeza... por unos cardos
    .accept 10576 >> Acepta la misión Revuelo en Sombraluna
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>Mata |cRXP_ENEMY_Eclipsianos|r. Despójalos para obtener su |cRXP_LOOT_Armadura|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob Eclipsion Archmage
	.mob Eclipsion Blood Knight
	.mob Eclipsion Bloodwarder
	.mob Eclipsion Centurion
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borak, hijo de Oronok|r
    .turnin 10576 >> Entrega la misión Revuelo en Sombraluna
    .accept 10577 >> Acepta la misión Lo que Illidan quiere, lo consigue...
	.target Borak, Son of Oronok
step
    #completewith next
    .cast 37096 >>|cRXP_WARN_Usa el|r |T133564:0|t[Disfraz de elfo de sangre]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>Habla con el |cRXP_FRIENDLY_Gran Comandante Ruusk|r
    >>|cRXP_WARN_Asegúrate de llevar puesto el|r |T133564:0|t[Disfraz de elfo de sangre] |cRXP_WARN_activo|r
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target Grand Commander Ruusk
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borak, hijo de Oronok|r
    .turnin 10577 >> Entrega la misión Lo que Illidan quiere, lo consigue...
    .accept 10578 >> Acepta la misión La Clave de Condenación: La carga de Borak
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>Mata a |cRXP_ENEMY_Ruul el Ensombrecedor|r. Despójalo para obtener el |cRXP_LOOT_Tercer trozo de la Clave de Condenación|r
    >>|cRXP_ENEMY_Ruul el Ensombrecedor|r |cRXP_WARN_golpea muy fuerte. Se recomienda que completes esto con un grupo completo que incluya tanque y sanador|r
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borak, hijo de Oronok|r
    .turnin 10578 >> Entrega la misión La Clave de Condenación: La carga de Borak
    .accept 10579 >> Acepta la misión La Clave de Condenación: Tercer trozo recuperado
	.target Borak, Son of Oronok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oronok Corazón Roto|r
    .turnin 10523 >> Entrega la misión La Clave de Condenación - Primer trozo recuperado
    .turnin 10541 >> Entrega la misión La Clave de Condenación. Segundo trozo recuperado
    .turnin 10579 >> Entrega la misión La Clave de Condenación: Tercer trozo recuperado
    .accept 10588 >> Acepta la misión La Clave de Condenación
	.target Oronok Torn-heart
step
    #completewith next
    .cast 37236 >>|cRXP_WARN_Canaliza|r |T134423:0|t[La Clave de Condenación] |cRXP_WARN_durante 20 segundos para invocar a|r |cRXP_ENEMY_Cyrukh el señor del Fuego|r
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>Mata a |cRXP_ENEMY_Cyrukh el señor del Fuego|r
    >>|cRXP_ENEMY_Cyrukh el señor del Fuego|r |cRXP_WARN_tiene 369k de salud. Se recomienda que completes esto con un grupo completo que incluya tanque y sanador. Los PNJs también te ayudarán|r
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob Cyrukh the Firelord
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensalmador de la tierra Torlok|r
    .turnin 10588 >> Entrega la misión La Clave de Condenación
	.target Earthmender Torlok
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khadgar|r
    .accept 10883 >> Acepta la misión La llave de la tempestad
    .target Khadgar
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_A'dal|r
    .turnin 10883 >> Entrega la misión La llave de la tempestad
    .accept 10884 >> Acepta la misión Prueba de los naaru: piedad
    .accept 10885 >> Acepta la misión Prueba de los naaru: fuerza
    .accept 10886 >> Acepta la misión Prueba de los naaru: tenacidad
    .target A'dal
step
    >>|cRXP_WARN_Ahora tienes las 3 misiones de Prueba de los naaru. Todas estas misiones requieren completarse mientras haces las mazmorras en dificultad HEROICA|r
    >>|cRXP_WARN_Las mazmorras que debes completar son: Salas Arrasadas, Cámara de Vapor, Arcatraz y el Laberinto de las Sombras|r
    >>Completa Salas Arrasadas en menos de 55 minutos después de matar al |cRXP_ENEMY_Brujo supremo Malbisal|r. Debes matar al |cRXP_ENEMY_Verdugo Mano Destrozada|r al final de la mazmorra dentro del límite de tiempo. Despójalo para obtener el |cRXP_LOOT_Hacha del verdugo sin usar|r
    >>Mata al |cRXP_ENEMY_Señor de la guerra Kalithresh|r en La Cámara de Vapor. Despójalo para obtener el |cRXP_LOOT_Tridente de Kalithresh|r
    >>Mata a |cRXP_ENEMY_Murmullo|r en el Laberinto de las Sombras. Despójalo para obtener |cRXP_LOOT_Esencia de Murmullo|r
    >>Completa El Arcatraz. Asegúrate de que |cRXP_FRIENDLY_Molino Tormenta de maná|r siga vivo tras derrotar al jefe final, |cRXP_ENEMY_Presagista Cieloriss|r
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_A'dal|r
    .turnin 10884 >> Entrega la misión Prueba de los naaru: piedad
    .turnin 10885 >> Entrega la misión Prueba de los naaru: fuerza
    .turnin 10886 >> Entrega la misión Prueba de los naaru: tenacidad
    .accept 10888 >> Acepta la misión Prueba de los naaru: Magtheridon
    .target A'dal
step
    >>Mata a |cRXP_ENEMY_Magtheridon|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_A'dal|r
    .turnin 10888 >> Entrega la misión Prueba de los naaru: Magtheridon
    .target A'dal
step
    .isQuestTurnedIn 10888
    +|cRXP_WARN_¡Enhorabuena! Has desbloqueado el acceso a El Ojo: El Castillo de la Tempestad|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Requisitos de Acceso (Attunements)
#name 4. Monte Hyjal
#guideKind attunement
#title Monte Hyjal

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Viaja a las Cavernas del Tiempo
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrulla un poco por la zona|r
    .accept 10445 >> Acepta la misión Los viales de la eternidad
    .target Soridormi
step
    >>Mata a |cRXP_ENEMY_Lady Vashj|r. Despójala para obtener |cRXP_LOOT_Restos del vial de Vashj|r
    >>Mata a |cRXP_ENEMY_Kael'thas Caminante del Sol|r. Despójalo para obtener |cRXP_LOOT_Restos del vial de Kael|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Regresa a las Cavernas del Tiempo
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrulla un poco por la zona|r
    .turnin 10445 >> Entrega la misión Los viales de la eternidad
    .target Soridormi
step
    .isQuestTurnedIn 10445
    +|cRXP_WARN_¡Enhorabuena! Ya cumples los requisitos para acceder a Monte Hyjal|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Requisitos de Acceso (Attunements)
#name 5. Templo Oscuro
#guideKind attunement
#title Templo Oscuro

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Viaja al Valle Sombraluna
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .accept 10568 >> Acepta la misión Las tablillas de Baa'ri
	.target Anchorite Ceyla
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Viaja al Valle Sombraluna
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arcanista Thelis|r
    .accept 10683 >> Acepta la misión Las tablillas de Baa'ri
    .target Arcanist Thelis
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>Despoja los |cRXP_PICK_Trozos de tablilla Baa'ri|r del suelo
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>Despoja los |cRXP_PICK_Trozos de tablilla Baa'ri|r del suelo
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .turnin 10568 >> Entrega la misión Las tablillas de Baa'ri
    .accept 10571 >> Acepta la misión Oronu el Anciano
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arcanista Thelis|r
    .turnin 10683 >> Entrega la misión Las tablillas de Baa'ri
    .accept 10684 >> Acepta la misión Oronu el Anciano
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>Mata a |cRXP_ENEMY_Oronu|r en el balcón
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>Mata a |cRXP_ENEMY_Oronu|r en el balcón
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .turnin 10571 >> Entrega la misión Oronu el Anciano
    .accept 10574 >> Acepta la misión Los corruptores Lengua de Ceniza
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arcanista Thelis|r
    .turnin 10684 >> Entrega la misión Oronu el Anciano
    .accept 10685 >> Acepta la misión Los corruptores Lengua de Ceniza
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>Destruye los tótems que protegen a |cRXP_ENEMY_Lakaan|r. Mátalo y despójalo para obtener su |cRXP_LOOT_Trozo de medallón|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>Destruye los tótems que protegen a Uylaru. Mata a |cRXP_ENEMY_Uylaru|r y despoja el |cRXP_LOOT_Trozo de medallón|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>Destruye los tótems que protegen a Eykenen. Mata a |cRXP_ENEMY_Eykenen|r y despoja su |cRXP_LOOT_Trozo de medallón|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>Destruye los tótems que protegen a |cRXP_ENEMY_Haalum|r. Mátalo y despójalo para obtener el |cRXP_LOOT_Trozo de medallón Haalum|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>Destruye los tótems que protegen a |cRXP_ENEMY_Haalum|r. Mátalo y despójalo para obtener el |cRXP_LOOT_Trozo de medallón Haalum|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>Destruye los tótems que protegen a Eykenen. Mata a |cRXP_ENEMY_Eykenen|r y despoja su |cRXP_LOOT_Trozo de medallón|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>Destruye los tótems que protegen a Uylaru. Mata a |cRXP_ENEMY_Uylaru|r y despoja el |cRXP_LOOT_Trozo de medallón|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>Destruye los tótems que protegen a |cRXP_ENEMY_Lakaan|r. Mátalo y despójalo para obtener su |cRXP_LOOT_Trozo de medallón|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .turnin 10574 >> Entrega la misión Los Corruptores Lengua de Ceniza
    .accept 10575 >> Acepta la misión La Jaula de la Guardiana
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arcanista Thelis|r
    .turnin 10685 >> Entrega la misión Los Corruptores Lengua de Ceniza
    .accept 10686 >> Acepta la misión La Jaula de la Guardiana
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sanoru|r
    .turnin 10575 >> Entrega la misión La Jaula de la Guardiana
    .accept 10622 >> Acepta la misión Prueba de lealtad
	.target Sanoru
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sanoru|r
    .turnin 10686 >> Entrega la misión La Jaula de la Guardiana
    .accept 10622 >> Acepta la misión Prueba de lealtad
	.target Sanoru
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>Mata a |cRXP_ENEMY_Zandras|r
    >>|cRXP_ENEMY_Zandras|r |cRXP_WARN_patrulla por la azotea de arriba|r
    .complete 10622,1 --Kill Zandras (x1)
	.mob Zandras
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >> Entrega la misión Prueba de lealtad
    .accept 10628 >> Acepta la misión Akama
	.target Sanoru
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akama|r
    >>|cRXP_FRIENDLY_Akama|r |cRXP_WARN_está más adentro de Jaula de la Guardiana|r
    .turnin 10628 >> Entrega la misión Akama
    .accept 10705 >> Acepta la misión El vidente Udalo
	.target Akama
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >> |cRXP_WARN_Encuentra un grupo para El Arcatraz. Debes hablar con |cRXP_FRIENDLY_Udalo|r dentro de la mazmorra|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Udalo|r
    .turnin 10705 >> Entrega la misión El vidente Udalo
    .accept 10706 >> Acepta la misión Un misterioso portento
	.target Udalo
step
    #completewith next
    .zone Shadowmoon Valley >> Regresa al Valle Sombraluna
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >> Entrega la misión Un misterioso portento
    .accept 10707 >> Acepta la misión El bancal de Ata'mal
	.target Akama
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Mata a los tres |cRXP_ENEMY_Ladrones de almas Sombraluna|r para que el |cRXP_ENEMY_Señor de las Sombras Aullamorte|r aterrice en el suelo|r
    >>Mata al |cRXP_ENEMY_Señor de las Sombras Aullamorte|r. Despójalo para obtener el |cRXP_LOOT_Corazón de furia|r
    >>|cRXP_WARN_Se recomienda que completes esto con un grupo completo que incluya un tanque y un sanador|r
    .complete 10707,1 -- Heart of Fury (1)
    .mob Shadowlord Deathwail
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >> Entrega la misión El bancal de Ata'mal
    .accept 11052 >> Acepta la misión La promesa de Akama
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_A'dal|r
    .turnin 11052 >> Entrega la misión La promesa de Akama
	.target A'dal
step
    #completewith next
    .subzone 3607 >> |cRXP_WARN_Entra en la banda Caverna Santuario Serpiente. Debes derrotar al jefe |cRXP_ENEMY_Señor de las profundidades Karathress|r, luego habla con el |cRXP_FRIENDLY_Vidente Olum|r que se encuentra detrás de él|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vidente Olum|r
    .accept 10944 >> Acepta la misión El secreto en peligro
step
    #completewith next
    .zone Shadowmoon Valley >> Regresa al Valle Sombraluna
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >> Entrega la misión El secreto en peligro
    .accept 10946 >> Acepta la misión Artimaña de los Lengua de ceniza
	.target Akama
step
    .use 31946 >>Mata a |cRXP_ENEMY_A'lar|r en El Castillo de la Tempestad mientras llevas la |T133132:0|t[Capucha de Lengua de ceniza]
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >> Regresa al Valle Sombraluna
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akama|r
    .turnin 10946 >> Entrega la misión Artimaña de los Lengua de ceniza
    .accept 10947 >> Acepta la misión Un artefacto del pasado
	.target Akama
step
    >>Mata a |cRXP_ENEMY_Ira Fríoinvierno|r en Monte Hyjal. Despójalo para obtener la |cRXP_LOOT_Filacteria de fase temporal|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >> Regresa al Valle Sombraluna
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akama|r
    .turnin 10947 >> Entrega la misión Un artefacto del pasado
    .accept 10948 >> Acepta la misión El alma rehén
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Viaja a Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_A'dal|r
    .turnin 10948 >> Entrega la misión El alma rehén
    .accept 10949 >> Acepta la misión La entrada a El Templo Oscuro
	.target A'dal
step
    #completewith next
    .zone Shadowmoon Valley >> Regresa al Valle Sombraluna
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xi'ri|r
    >>|cRXP_WARN_Si estás en un grupo, asegúrate de que los otros miembros del grupo hayan entregado la misión antes de aceptar la siguiente. La aceptación automática ha sido desactivada para este paso|r
    .turnin 10949 >> Entrega la misión La entrada a El Templo Oscuro
    .accept 10985,1 >> Acepta la misión Una distracción para Akama
    .target Xi'ri
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Habla con |cRXP_FRIENDLY_Xi'ri|r para comenzar el "Roleplay". Puede ser que necesites esperar junto a él durante 1-2 minutos a que aparezca |cRXP_FRIENDLY_Akama|r. Una vez que |cRXP_FRIENDLY_Akama|r haya llegado, síguelo y continúa el "Roleplay"|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target Xi'ri
    .target Akama
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10985 >> Entrega la misión Una distracción para Akama
    .accept 10958 >> Acepta la misión Búsqueda de los Lengua de ceniza
    .target Xi'ri
step
    .isQuestTurnedIn 10985
    +|cRXP_WARN_¡Enhorabuena! Ya cumples los requisitos para acceder a El Templo Oscuro|r
]])
