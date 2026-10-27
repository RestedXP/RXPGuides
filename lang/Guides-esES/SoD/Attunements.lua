if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Requisitos de Acceso (Attunements)
#name Requisitos de acceso a Criptas de Karazhan (Karazhan Crypts Attunement)

step
    #completewith next
    .subzone 2268 >> Viaja a la |cRXP_LOOT_Capilla de la Esperanza de la Luz|r en |cRXP_PICK_Tierras de la Peste del Este|r
step
    .goto Eastern Plaguelands,81.3,58.75
    >>Haz clic en el tablón tituladol |cRXP_FRIENDLY_Se buscan aventureros veteranos|r a la derecha de la entrada de la Capilla
    .accept 86964 >> Acepta la misión ¡Por el oro y la gloria!
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Viaja al |cRXP_PICK_Paso de la Muerte|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,47.36,75.60,100 >> Viaja al sur hacia |cRXP_LOOT_Karazhan|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,39,74
    >>Busca un cadáver de una |cRXP_FRIENDLY_Aventurera fallecida|r
    .turnin 86964 >> Entrega la misión ¡Por el oro y la gloria!
    .accept 86965 >> Acepta la misión Sombras fuera de lo común
    .target Deceased Adventurer
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Viaja al norte hacia el campamento del agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente de Dalaran|r
    .turnin 86965 >> Entrega la misión Sombras fuera de lo común
    .accept 86966 >> Acepta la misión En busca de supervivientes
step
    .goto Deadwind Pass,59.2,73.4,30 >> Viaja al sur a la entrada de la cueva de los ogros
    .isOnQuest 86966
step
    .goto Deadwind Pass,65.0,78.0
    >>Entra en la cueva, busca al |cRXP_FRIENDLY_Aventurero herido|r, está encerrado en una jaula
    .turnin 86966 >> Entrega la misión En busca de supervivientes
    .accept 86967 >> Acepta la misión Al rescate
    .target Injured Adventurer
step
    .goto Deadwind Pass,65.0,78.0
    >>Mata a cualquiera de los |cRXP_ENEMY_Ogros|r y despójalos hasta que encuentres una |cRXP_LOOT_"Llave" de jaula de Paso de la Muerte|r. Úsala en la jaula para completar la misión
    >>|cRXP_WARN_Si alguien más completa este objetivo mientras estés cerca, también recibirás crédito aunque no estés en su grupo|r
    .complete 86967,1
    .collect 235785,1 --Deadwind Cage "Key"
    .disablecheckbox
    .mob Deadwind Warlock
    .mob Deadwind Mauler
    .mob Deadwind Ogre Mage
    .mob Deadwind Brute
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Regresa al norte al campamento del agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 86967 >> Entrega la misión Al rescate
    .accept 86968 >> Acepta la misión ¿Te da miedo la oscuridad?
    .target Harrison Jones
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente de Dalaran|r
    .turnin 86968 >> Entrega la misión ¿Te da miedo la oscuridad?
    .accept 86969 >> Acepta la misión La hipótesis
    .target Agent Keanna
step
    #optional
    #completewith Hypothesis
    #label Wetlands
    .zone Wetlands >> Viaja a |cRXP_PICK_Los Humedales|r para buscar la |T132839:0|t[Llama de la vida]
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires Wetlands
    #label GrimBatol
    .goto 1437/0,-3451.700,-3450.800,40 >> Dirígete al inicio del camino a |cRXP_LOOT_Grim Batol|r
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires GrimBatol
    .goto Wetlands,52.55,41.62,0
    .goto Wetlands,88.07,60.72,0
    .goto Wetlands,85.72,69.33,0
    .goto Wetlands,87.04,51.45
    >>Mata a cualquiera de los |cRXP_ENEMY_Dragonantes|r de la zona hasta que despojes la |T132839:0|t[|cRXP_LOOT_Llama de la vida|r]
    .collect 235789,1 --Flame of Life
    .mob Red Scalebane
    .mob Scalebane Lieutenant
    .mob Wyrmkin Firebrand
    .mob Red Dragonspawn
    .mob Scalebane Royal Guard
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label EnterDungeon
    .subzoneskip 2557 --Dire Maul
    .subzoneskip 15475 --Demon Fall Canyon
    .goto Kalimdor,42.98,67.51,0 --Dire Maul Entrance
    .goto Ashenvale,84.5,75.0,0 --Demon Fall Canyon Entrance
    +Busca un grupo para |cRXP_LOOT_La Masacre Oeste|r o |cRXP_LOOT_Barranco del Demonio|r y entra en la mazmorra
    >>|cRXP_WARN_Ten en cuenta que necesitas haber completado los requisitos de acceso (Attunement) para entrar en Barranco del Demonio.|r Puedes encontrar una guía para ello en la sección Guías de Contenido de Nivel Máximo > Requisitos de Acceso (Attunements)
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Mata a |cRXP_ENEMY_Tendris Alabeo|r el primer jefe de la instancia. Despójalo para obtener la |T135139:0|t[Rama de maderaférrea]
    .complete 86969,2
    .subzoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Mata a |cRXP_ENEMY_Sombraíz|r el primer jefe de la instancia. Despójalo para obtener la |T135139:0|t[Rama de maderaférrea]
    .complete 86969,2
    .subzoneskip 15475,1 --Only shows in Demon Fall Canyon
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label Winterspring
    .zone Winterspring >> Viaja a |cRXP_PICK_Cuna del Invierno|r para buscar al |T136116:0|t[Fuego fatuo entusiasta]
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Winterspring
    #label Darkwhisper
    .goto Winterspring,60.39,73.95,50 >> Viaja a la |cRXP_LOOT_Garganta Negro Rumor|r
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Darkwhisper
    .goto Winterspring,59.78,75.92,20,0
    .goto Winterspring,60.18,78.08,20,0
    .goto Winterspring,60.74,79.11,20,0
    .goto Winterspring,61.16,80.19,20,0
    .goto Winterspring,61.21,82.13,20,0
    .goto Winterspring,59.09,83.57,20,0
    .goto Winterspring,58.93,85.67,20,0
    .goto Winterspring,56.06,84.80,20,0
    .goto Winterspring,55.13,84.21,20,0
    .goto Winterspring,53.88,84.77,20,0
    .goto Winterspring,53.08,86.33,20,0
    .goto Winterspring,52.68,88.38,20,0
    .goto Winterspring,52.2,90.4
    .target Enthusiastic Wisp
    >>Viaja al sur y busca al |cRXP_FRIENDLY_Fuego fatuo entusiasta|r. Interactúa con él para recogerlo
    >>|cRXP_WARN_Evita luchar contra los demonios élites de la zona. Puedes simplemente pasar de ellos|r
    .complete 86969,3 --Enthusiastic Wisp
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #label Hypothesis
    >>Consigue la |T132839:0|t[Llama de la vida]. Se obtiene del |cRXP_ENEMY_Dragonante Élite|r cercano a |cRXP_LOOT_Grim Batol|r en |cRXP_PICK_Los Humedales|r
    >>Consigue la |T135139:0|t[Rama de maderaférrea]. Se obtiene de |cRXP_ENEMY_Sombraíz|r en el |cRXP_LOOT_Barranco del Demonio|r|cRXP_WARN_(mazmorra)|r o de |cRXP_ENEMY_Tendris Alabeo|r en |cRXP_LOOT_La Masacre Oeste|r|cRXP_WARN_(mazmorra)|r
    >>Consigue el |T136116:0|t[Fuego fatuo entusiasta]. Es un |cRXP_FRIENDLY_PNJ amistoso|r interactuable en la |cRXP_LOOT_Garganta Negro Rumor|r en |cRXP_PICK_Cuna del Invierno|r
    >>|cRXP_WARN_Estos objetos se pueden conseguir en cualquier orden|r
    .complete 86969,1 --Flame of Life
    .complete 86969,2 --Ancient Ironwood Branch
    .complete 86969,3 --Enthusiastic Wisp
    .mob Grimroot
    .mob Tendris Warpwood
    .isOnQuest 86969
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Regresa a el |cRXP_PICK_Paso de la Muerte|r
    .isQuestComplete 86969
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Viaja al campamento del Agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente de Dalaran|r
    .turnin 86969 >> Entrega la misión La hipótesis
    .accept 86970 >> Acepta la misión La prueba de nuestra hipótesis
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,42.20,77.41,20,0
    .goto Deadwind Pass,39.98,75.36,20,0
    .goto Deadwind Pass,39.93,74.24
    >>Viaja a la Parcela de Morgan ubicada al oeste de Karazhan. |cRXP_WARN_Entra en el enorme orbe de sombras que hay allí|r
    >>Usa tu |T135432:0|t[|cRXP_FRIENDLY_Marca de fuego encantada|r] una vez dentro y espera a que termine el RP
    .complete 86970,1
    .use 235790 --Enchanted Firebrand
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,55.40,78.75,20,0
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Regresa al norte al campamento del agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente de Dalaran|r
    .turnin 86970 >> Entrega la misión La prueba de nuestra hipótesis
    .target Agent Keanna
step
    >>|cRXP_WARN_¡Enhorabuena, has terminado las misiones para desbloquear las Criptas de Karazhan!|r
    >>Puedes |Tinterface/worldmap/chatbubble_64grey.blp:20|thablar con |cRXP_FRIENDLY_Harrison Jones|r para aceptar su misión, que se puede completar dentro de la instancia
    .accept 86971 >> Acepta la misión ¡Vive los bibelots de Karazhan!
    .target Harrison Jones
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Requisitos de Acceso (Attunements)
#name Introducción al Enclave Escarlata

step
   #completewith next
   .subzone 2268 >> Viaja a la |cRXP_LOOT_Capilla de la Esperanza de la Luz|r en |cRXP_PICK_Tierras de la Peste del Este|r
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Leonid Barthalomew el Venerado|r dentro de la capilla
   .accept 87459 >> Acepta la misión Actividades Escarlata
   .target Leonid Barthalomew the Revered
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jessica Cuevas|r
    .home >> Si quieres, |cRXP_WARN_puedes establecer tu piedra de hogar aquí|r. Esto te ayudará a regresar desde Claros de Tirisfal más rápido
    .target Jessica Chambers
step << Alliance
    .goto Eastern Plaguelands,81.64,59.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khaelyn Alacerada|r fuera
    .fly Chillwind >> Vuela a Tierras de la Peste del Oeste
    .target Khaelyn Steelwing
    .isOnQuest 87459
step << Horde
    .goto Eastern Plaguelands,80.23,57.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Georgia|r fuera
    .target Georgia
    .fly Undercity >> Vuela a Entrañas
    .isOnQuest 87459
step << Horde
    .goto Tirisfal Glades,61.85,66.59,60 >> Sal de Entrañas
    .isOnQuest 87459
step << Alliance
   #completewith next
   .goto Tirisfal Glades,84.85,70.57
   .zone Tirisfal Glades >> Viaja a Claros de Tirisfal
   .isOnQuest 87459
step
   .goto Tirisfal Glades,81.76,58.06
   >>Dirígete al norte hacia el campamento escarlata << Alliance
   >>Dirígete al este hacia el campamento escarlata << Horde
   >>Haz clic en la |cRXP_PICK_Cadena con bola de preso|r fuera de la pequeña tienda. Hará aparecer una |cRXP_WARN_Infiltrada Escarlata|r |cRXP_ENEMY_élite|r que te atacará
   >>Mátalo y |cRXP_LOOT_despójalo|r para obtener las |T133471:0|t[Órdenes de la comandante]
   .complete 87459,1 --Orders from the Commander
   .mob Scarlet Infiltrator
   .isOnQuest 87459
step
   #completewith next
   .subzone 2268 >> Regresa a la |cRXP_LOOT_Capilla de la Esperanza de la Luz|r en |cRXP_PICK_Tierras de la Peste del Este|r
   .isOnQuest 87459
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Leonid Barthalomew el Venerado|r dentro de la capilla
    .turnin 87459 >> Entrega la misión Actividades Escarlata
    .accept 87493 >> Acepta la misión Disturbios en la Mano de Tyr
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Viaja al sur hacia el campamento base Escarlata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87493 >> Entrega la misión Disturbios en la Mano de Tyr
    .accept 87497 >> Acepta la misión El cisma
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Comandante Beatrix|r y completa su diálogo
    .complete 87497,1
    .skipgossip
    .target Commander Beatrix
step
   .goto Eastern Plaguelands,81.73,57.84
   >>Regresa a la Capilla de la Esperanza de la Luz
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Leonid Barthalomew el Venerado|r dentro
    .turnin 87497 >> Entrega la misión El cisma
    .accept 87498 >> Acepta la misión La Reclamación Escarlata
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Regresa al campamento base Escarlata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87498 >> Entrega la misión La Reclamación Escarlata
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Inquisidor Escarlata Caldoran|r
    .accept 87502 >> Acepta la misión Reunir información
    .target Scarlet Inquisitor Caldoran
step
    .goto Eastern Plaguelands,68.18,82.43
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Inquisidora Jociphine|r |cRXP_WARN_para recibir un disfraz escarlata temporal|r
    .aura 1231929 --Scarlet Illusion
    .skipgossip
    .target Inquisitor Jociphine
step
    >>Entra en Mano de Tyr y viaja a la Catedral en el centro
    .goto Eastern Plaguelands,85.27,83.98
    .complete 87502,1 --Scout the Cathedral in Tyr's Hand: 1/1
step
    .goto Eastern Plaguelands,89.76,81.41,30 >>Toma el camino izquierdo que conduce a Nuevo Avalon
step
    >>Dirígete hacia la fortaleza en Nuevo Avalon
    >>|cRXP_WARN_Ten cuidado con los|r|cRXP_ENEMY_Cánidos Escarlata|r |cRXP_WARN_¡Te verán a través de tu disfraz!|r
    >>Puedes usar |T132328:0|t[Rastrear bestias] para ayudarte a seguir la posición de los cánidos << Hunter
    .goto Eastern Plaguelands,96.66,83.06
    .complete 87502,3 --Scout the Keep in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Dirígete hacia la Torre del Mago
    >>|cRXP_WARN_Ten cuidado con los|r|cRXP_ENEMY_Cánidos Escarlata|r |cRXP_WARN_¡Te verán a través de tu disfraz!|r
    >>Puedes usar |T132328:0|t[Rastrear bestias] para ayudarte a seguir la posición de los cánidos << Hunter
    .goto Eastern Plaguelands,98.14,87.88
    .complete 87502,2 --Scout the Mage Tower in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Regresa al campamento base Escarlata
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Inquisidor Escarlata Caldoran|r
    .turnin 87502 >> Entrega la misión Reunir información
    .accept 87506 >> Acepta la misión Debilitar las Defensas
    .target Scarlet Inquisitor Caldoran
    .unitscan Sarlet Bloodhound
step
    #optional
    #completewith next
    >>|cRXP_WARN_Ahora puedes desbloquear el Disfraz Escarlata permanente recopilando 4 piezas del conjunto del Ejército Escarlata y luego usando la proporcionada|r |T134503:0|t[|cFF0070FFInsignia Escarlata|r]
    >>Deberías poder encontrarlas en la casa de subastas. No es obligatorio, pero facilitará mucho el cruzar Nuevo Avalon en el futuro
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Inquisidora Jociphine|r
    .accept 90510 >> Acepta la misión Nuevo Avalon
    .use 237020 --Scarlet Insignia
step
    >>Entra en Mano de Tyr y busca a los |cRXP_ENEMY_Comandantes de asedio Escarlata|r
    >>|cRXP_WARN_Se pueden encontrar más comúnmente cerca de las armas de asedio o sobre las murallas|r
    .complete 87506,1 --Scarlet Siege Commander (3)
    .target Scarlet Siege Commander
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Regresa al campamento base Escarlata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87506 >> Entrega la misión Debilitar las defensas
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Emisaria Argenta|r
    .accept 87508 >> Acepta la misión Informar a lord Neófitus
step
    >>Regresa a la Capilla de la Esperanza de la Luz
    .goto Eastern Plaguelands,81.74,57.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r dentro
    .turnin 87508 >> Entrega la misión Informar a lord Neófitus
    .accept 87509 >> Acepta la misión La cólera del alba
    .target Lord Maxwell Tyrosus
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Regresa al campamento base Escarlata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Comandante Beatrix|r
    .skipgossip
    .complete 87509,1 --Report back to Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87509 >> Entrega la misión La cólera del alba
    .accept 87516 >> Acepta la misión Golpe de decapitación
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.36,87.58
    >>Esta misión requiere que mates a |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_, el primer jefe de la nueva banda Enclave Escarlata|r
    >>¡Busca un grupo de banda y buena caza!
    .complete 87516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r dentro de la prisión a la que te trasladan después de derrotar a Balnazzar en la banda
    .turnin 87516 >> Entrega la misión Golpe de decapitación
    .target Lord Maxwell Tyrosus
step
    +|cRXP_WARN_¡Enhorabuena, has completado la cadena de misiones introductoria del Enclave Escarlata!|r
]])
