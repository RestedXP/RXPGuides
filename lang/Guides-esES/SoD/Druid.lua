if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Furia de Tempestira - 4 (Cañada Umbría)
#title Furia de Tempestira

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
    .accept 77571 >> Acepta la misión Reliquias de los kaldorei
    .trainer >> Aprende tus hechizos de clase. Asegúrate de aprender |T136096:0|t[Fuego lunar]
    .target Mardant Strongoak
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>Mata |cRXP_ENEMY_Grell|r y |cRXP_ENEMY_Grellín|r. Despójalos para obtener el |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r]
    .collect 208414,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Equipa el|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Mata a un enemigo 6 veces mientras esté bajo el efecto de|r |T136096:0|t[Fuego lunar] |cRXP_WARN_para obtener acumulaciones de|r |T237556:0|t[Inspiración]
    >>|cRXP_WARN_Una vez que tengas el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_tras 6 muertes, usa de nuevo el|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r] |cRXP_WARN_que acabas de equipar|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
    .turnin 77571 >> Entrega la misión Reliquias de los kaldorei
    .target Mardant Strongoak
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Semilla viviente - 10 (Teldrassil)
#title Semilla viviente

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52
    >>Despoja las |T133941:0|t|cRXP_LOOT_Flores del claro|r del suelo
    >>|cRXP_WARN_Se encuentran por todo Teldrassil|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_Usa las|r |T133941:0|t|cRXP_LOOT_Flores del claro|r |cRXP_WARN_para combinarlas en una|r |T132767:0|t[Corona del prado]
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >> Viaja a la Aldea Brisaestelar
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_Usa la|r |T132767:0|t[Corona del prado] |cRXP_WARN_en la |cRXP_ENEMY_Efigie de madera|r. Esto hará aparecer a un|r |cRXP_ENEMY_Espíritu de la naturaleza desatado|r
    >>|cRXP_WARN_Es posible que necesites esperar unos minutos para que reaparezca|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>Mata al |cRXP_ENEMY_Espíritu de la naturaleza desatado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Potencial natural|r]
    >>|cRXP_WARN_Este es un élite de nivel 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Potencial natural|r] |cRXP_WARN_para aprender|r |T136152:0|t[Semilla viviente]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Flor de vida - 8 (Teldrassil)
#title Flor de vida

step << Druid
    #sticky
    +|cRXP_WARN_¡Necesitas ayuda para conseguir esta runa! No se puede hacer en solitario, ¡ya que otra persona debe colaborar haciendo clic en un ritual de invocación que requiere a un segundo jugador!|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Restos de un aventurero|r
    >>|cRXP_WARN_Esto iniciará el ritual de invocación, el cual otro jugador también debe hacer clic|r
    >>Despoja los |cRXP_FRIENDLY_Restos de un aventurero|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r] |cRXP_WARN_para aprender|r |T134206:0|t[Flor de vida]
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rugido salvaje - 20 (Costa Oscura)
#title Rugido salvaje

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Nota: Debes ser nivel 20 para equipar el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r] |cRXP_WARN_que es necesario para aprender|r |T236167:0|t[Rugido salvaje]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r. Despójala para obtener el |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Cachorros cardo|r que pueden aturdirte durante 2 segundos|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equipa el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Aplica daño de sangrado 20 veces con|r |T132152:0|t[Destripar] |cRXP_WARN_o|r |T132122:0|t[Arañazo] |cRXP_WARN_a humanoides, luego usa el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r] |cRXP_WARN_de nuevo para aprender|r |T236167:0|t[Rugido salvaje]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rugido salvaje - 20 (Páramos de Poniente)
#title Rugido salvaje

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Nota: Debes ser nivel 20 para equipar el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r] |cRXP_WARN_que es necesario para aprender|r |T236167:0|t[Rugido salvaje]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r, |cRXP_ENEMY_Exploradores Zarparrío|r y |cRXP_ENEMY_Bastardos Zarparrío|r. Despójalos para obtener el |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equipa el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Aplica daño de sangrado 20 veces con|r |T132152:0|t[Destripar] |cRXP_WARN_o|r |T132122:0|t[Arañazo] |cRXP_WARN_a humanoides, luego usa el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r] |cRXP_WARN_de nuevo para aprender|r |T236167:0|t[Rugido salvaje]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Fuego solar - 6 (Teldrassil)
#title Fuego solar

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
    .train 416044 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del sol|r] |cRXP_WARN_para aprender|r |T236216:0|t[Fuego solar]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Lacerar - 10 (Loch Modan)
#title Lacerar

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khara Aguahonda|r dentro del edificio
    >>|cRXP_BUY_Compra una|r |T237270:0|t[Carnada de atún blanco arco iris]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >> |cRXP_WARN_Usa la|r |T237270:0|t[Carnada de atún blanco arco iris] |cRXP_WARN_en un |cRXP_ENEMY_Joven trillanodonte|r para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para aprender|r |T132131:0|t[Lacerar]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Furia de Tempestira - 4 (Mulgore)
#title Furia de Tempestira


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Acepta la misión Reliquias de los tauren
    .trainer >> Aprende tus hechizos de clase. Asegúrate de aprender |T136096:0|t[Fuego lunar]
    .target Gart Mistrunner
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Despoja el |cRXP_PICK_Alijo de botín erizapúas|r para obtener el |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Equipa el|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Mata a un enemigo 6 veces mientras esté bajo el efecto de|r |T136096:0|t[Fuego lunar] |cRXP_WARN_para obtener acumulaciones de|r |T237556:0|t[Inspiración]
    >>|cRXP_WARN_Una vez que tengas el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_tras 6 muertes, usa de nuevo el|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo lunar|r] |cRXP_WARN_que acabas de equipar|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .turnin 77648 >>Entrega la misión Reliquias de los tauren
    .target Gart Mistrunner

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Destrozar - 10 (Mulgore)
#title Destrozar


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>Mata |cRXP_ENEMY_Merodeadores de las estepas|r y |cRXP_ENEMY_Lobos alfa de pradera|r. Despójalos para obtener un |T134903:0|t[|cRXP_FRIENDLY_Ídolo de cólera osuna|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Equipa el|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de cólera osuna|r]
    .use 206954
    .train 410025,1
step
    #completewith next
    +|cRXP_WARN_Mantén 50+ de ira durante al menos 60 segundos para poder aprender|r |T132135:0|t[Destrozar]
step
    #season 2
    .train 410025 >> |cRXP_WARN_Usa el|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de cólera osuna|r] |cRXP_WARN_para aprender|r |T132135:0|t[Destrozar]
    .use 206954
    .itemcount 206954,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Fuego solar - 5 (Mulgore)
#title Fuego solar


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>Lanza |T136096:0|t[Fuego lunar] a las tres |cRXP_ENEMY_Piedras lunares|r. Un cofre aparecerá entre las piedras
    >>Abre el |cRXP_PICK_Cofre lunar|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del sol|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del sol|r] |cRXP_WARN_para aprender|r |T236216:0|t[Fuego solar]
    .use 206989
    .itemcount 206989,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Flor de vida - 10 (Mulgore)
#title Flor de vida

    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de aventurero|r fuera de la Mina de Ventura y Cía.
    >>|cRXP_WARN_Otro jugador necesita hacer clic en el portal. Despoja al|r |cRXP_FRIENDLY_Espíritu de aventurero|r |cRXP_WARN_después para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r] |cRXP_WARN_para aprender|r |T134206:0|t[Flor de vida]
    .use 206970
    .itemcount 206970,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Semilla viviente - 8 (Mulgore)
#title Semilla viviente

    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>Despoja las |T133941:0|t|cRXP_LOOT_Flores de la pradera|r del suelo
    >>|cRXP_WARN_Se encuentran por todo Mulgore|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_Usa las|r |T133941:0|t|cRXP_LOOT_Flores de la pradera|r |cRXP_WARN_para combinarlas en una|r |T132767:0|t[Corona de la pradera]
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_Usa la|r |T132767:0|t[Corona del prado] |cRXP_WARN_en la |cRXP_ENEMY_Efigie de madera|r. Esto hará aparecer a un|r |cRXP_ENEMY_Espíritu de la naturaleza desatado|r
    >>|cRXP_WARN_Puede que necesites esperar unos minutos para que reaparezca|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>Mata al |cRXP_ENEMY_Espíritu de la naturaleza desatado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Potencial natural|r]
    >>|cRXP_WARN_Este es un élite de nivel 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Potencial natural|r] |cRXP_WARN_para aprender|r |T136152:0|t[Semilla viviente]
    .use 206963
    .itemcount 206963,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Lacerar - 15 (Los Baldíos)
#title Lacerar

    --Rune of Lacerate

step
    #season 2
    #completewith next
    .subzone 386 >>Viaja a las Charcas del Olvido
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>Despoja el |cRXP_PICK_Nido de quijaforte abandonado|r del suelo para obtener el |T294479:0|t[|cRXP_LOOT_Huevo de quijaforte abandonado|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>Viaja al Oasis Aguaverde
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>Abre el |cRXP_PICK_Nido de quijafortes vacío|r del suelo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para aprender|r |T132131:0|t[Lacerar]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rugido salvaje - 15 (Los Baldíos)
#title Rugido salvaje

    --Rune of Savage Roar

step
    #season 2
    #sticky
    +|cRXP_WARN_Nota: Debes ser nivel 20 para equipar el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r] |cRXP_WARN_que es necesario para aprender|r |T236167:0|t[Rugido salvaje]
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>Mata |cRXP_ENEMY_Retadores Kolkar|r y |cRXP_ENEMY_Agitadoras Kolkar|r. Despójalos para obtener una |T134237:0|t[|cRXP_LOOT_Llave del botín de Kolkar|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>Abre un cofre de |cRXP_PICK_Botín de Kolkar|r para obtener |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equipa el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_Aplica daño de sangrado 20 veces con|r |T132152:0|t[Destripar] |cRXP_WARN_o|r |T132122:0|t[Arañazo] |cRXP_WARN_a humanoides, luego usa el|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r] |cRXP_WARN_de nuevo para aprender|r |T236167:0|t[Rugido salvaje]
    .use 208689
    .itemcount 208689,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Rabia - 28 (Las Mil Agujas)
#title Rabia

step
    #optional
    +|cRXP_WARN_Debes ser al menos de nivel 28 para aprender|r |T236149:0|t[Rabia]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >> |cRXP_WARN_Debes tener|r |T132117:0|t[Rugido desafiante] |cRXP_WARN_aprendido para adquirir la runa de|r |T236149:0|t[Rabia] |cRXP_WARN_|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>Viaja a Las Mil Agujas
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >> |cRXP_WARN_Colócate junto a la estatua de la |cRXP_PICK_Efigie bestial|r para recibir el "buff" de|r |T134912:0|t[Efigie bestial] |cRXP_WARN_|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >> |cRXP_WARN_Adopta la|r |T132276:0|t[Forma de oso] |cRXP_WARN_y lanza|r |T132117:0|t[Rugido desafiante] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(nivel 28 élite)|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>Mata a |cRXP_ENEMY_Zai'enki|r. Despójala para obtener el |T134912:0|t[|cRXP_FRIENDLY_Ídolo del molesto|r]
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >> Equipa el |T134912:0|t[|cRXP_FRIENDLY_Ídolo del molesto|r]
    .use 213594
step
    #title Obtén 5x |T237556:0|t[Proceso de inspiración]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >> |cRXP_WARN_Lanza|r |T132117:0|t[Rugido desafiante] |cRXP_WARN_para provocar a 2 enemigos al menos y mata a uno de ellos mientras tengan el perjuicio de|r |T132117:0|t[Rugido desafiante] |cRXP_WARN_. Esto te dará una acumulación del "buff"|r |T237556:0|t[Proceso de inspiración] |cRXP_WARN_. Repite esto 5 veces hasta conseguir el "buff"|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    *|cRXP_WARN_Se recomienda que luches contra un enemigo y dejarlo a punto de morir, luego atrae a un 2º enemigo y lanza|r |T132117:0|t[Rugido desafiante]|cRXP_WARN_, entonces mata al enemigo con poca vida. Perderás todas las acumulaciones de|r |T237556:0|t[Proceso de inspiración] |cRXP_WARN_si mueres|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >> |cRXP_WARN_Usa el|r |T134912:0|t[|cRXP_FRIENDLY_Ídolo del molesto|r] |cRXP_WARN_para aprender|r |T236149:0|t[Rabia]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Estado onírico - 33 (Desolace)
#title Estado onírico

step
    #completewith next
    .train 410060,1
    .zone Desolace >>Viaja a Desolace
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>Mata a los |cRXP_ENEMY_Kolkar|r y despójalos para obtener |T134187:0|t[Vaina de semilla desecada]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>Nada en el agua y espera a que la vaina se convierta en un |T134208:0|t[Bulbo de herbasátiro]
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>Haz clic en la |cRXP_PICK_Marga arenosa|r para plantar la semilla y aprender |T136090:0|t[Estado onírico]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Nutrir - 35 (Azeroth)
#title Nutrir

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>Viaja a Marjal Revolcafango
step
    .train 410059,1
    >>Mata al |cRXP_ENEMY_Anciano putrefacto|r. Despójalo para obtener la |T134217:0|t[Semilla podrida]. |cRXP_WARN_Haz clic en ella en tus bolsas|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >> Acepta la misión El anciano perdido
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Usa |T135758:0|t[Teletransporte Claro de la Luna]
step
    #completewith next
    +|cRXP_WARN_Tienes que seguir estrictamente cada una de las próximas instrucciones. Morir, cambiar de fase, ser invocado, usar teletransporte u recibir el "buff" "Objetivo sin honor" pueden hacerte fallar la misión (pierdes el "buff"), así que no uses ninguna Ruta de Vuelo hacia territorios en disputa.|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orokai|r
    *|cRXP_WARN_Aceptar la siguiente misión iniciará un temporizador de 1 hora. Asegúrate de que puedes comprometerte la hora completa.|r
    .turnin 79348 >>Entrega la misión El anciano perdido
    .accept 79377 >>Acepta la misión Los retoños perdidos
    .timer 3600,Duración del Agua
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sindrayl|r
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>Vuela a Auberdine
    .target Sindrayl
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Toma el barco hacia el Puerto de Menethil. |cRXP_WARN_DESCONÉCTATE DESPUÉS DE QUE EL BARCO COMIENCE A MOVERSE. ESPERA 40 SEGUNDOS Y VUELVE A CONECTARTE|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>Viaja a Tierras Altas de Arathi. |cRXP_WARN_NO USES EL MAESTRO DE VUELO|r
step << Alliance
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>Viaja a Montañas de Alterac. |cRXP_WARN_NO USES EL MAESTRO DE VUELO|r
step << Alliance
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>Sigue el camino hacia Tierras de la Peste del Oeste
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bibilfaz Plumasilba|r
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>Vuela a Ventormenta
    .target Bibilfaz Featherwhistle
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>Viaja al Paso de la Muerte
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>Sigue el camino hacia Pantano de las Penas
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>Sigue el camino hacia Vega de Tuercespina
step << Alliance
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bunthen Ventollano|r
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>Vuela a Cima del Trueno
    .target Bunthen Plainswind
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>Vuela a Trinquete
    .target Tal
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >> Toma el barco hacia Bahía del Botín. |cRXP_WARN_DESCONÉCTATE DESPUÉS DE QUE EL BARCO COMIENCE A MOVERSE. ESPERA 40 SEGUNDOS Y VUELVE A CONECTARTE|r
step << Horde
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>Ve hacia el norte a través de Bosque del Ocaso y el Paso de la Muerte hacia Pantano de las Penas. |cRXP_WARN_Evita Villa Oscura|r
step << Horde
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Breyk|r
    .fly Undercity >>Vuela a Entrañas
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_Abandona Entrañas, ve a Bosque de Argénteos y nada a través del lago hacia Montañas de Alterac|r
step << Horde
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>Corre a Tierras Altas de Arathi.
step << Horde
    .train 410059,1
    >>Usa el |T132852:0|t[Agua de Elune'ara] en el |cRXP_FRIENDLY_Retoño anciano|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Usa |T135758:0|t[Teletransporte Claro de la Luna]
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orokai|r
    .turnin 79377 >>Entrega la misión Los retoños perdidos
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Revitalización|r] para aprender |T236162:0|t[Nutrir]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#name Floración - 45 (Azeroth)

step
    #optional
    .train 431468,1
    .train 2728 >> |cRXP_WARN_Debes tener|r |T135952:0|t[Eliminar maldición] |cRXP_WARN_aprendido para poder obtener la runa de|r |T134222:0|t[Floración] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 8946 >> |cRXP_WARN_Debes tener|r |T136067:0|t[Curar envenenamiento] |cRXP_WARN_aprendido para poder obtener la runa de|r |T134222:0|t[Floración] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 16914 >> |cRXP_WARN_Debes tener|r |T136018:0|t[Huracán] |cRXP_WARN_aprendido para poder obtener la runa de|r |T134222:0|t[Floración] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 740 >> |cRXP_WARN_Debes tener|r |T136107:0|t[Tranquilidad] |cRXP_WARN_aprendido para poder obtener la runa de|r |T134222:0|t[Floración] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 768 >> |cRXP_WARN_Debes tener|r |T132115:0|t[Forma felina] |cRXP_WARN_aprendido para poder obtener la runa de|r |T134222:0|t[Floración] |cRXP_WARN_|r
step
    #completewith next
    .zone Feralas >>Viaja a Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_dentro de la torre|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>Acepta la misión La sabiduría de los guardianes
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>Haz clic en el |cRXP_PICK_Santuario del celador|r para obtener el "buff"|T132145:0|t[Deber del celador]
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>Sigue los siguientes pasos para obtener el "buff"|T236157:0|t[Marca del celador]
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>Ataca a un |cRXP_ENEMY_Brujo Gordunni|r. |cRXP_WARN_Espera a que te lancen|r |T136121:0|t[Encoger] |cRXP_WARN_.|r
    .cast 2728 >>|cRXP_WARN_Usa|r |T135952:0|t[Eliminar maldición] |cRXP_WARN_para eliminar el efecto perjudicial de|r |T136121:0|t[Encoger] |cRXP_WARN_|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>Ataca a una |cRXP_ENEMY_Avispa Zukk'ash|r. |cRXP_WARN_Espera a que te lancen|r |T136016:0|t[Veneno] |cRXP_WARN_.|r
    .cast 526 >>|cRXP_WARN_Usa|r |T135952:0|t[Curar envenenamiento] |cRXP_WARN_para eliminar el efecto perjudicial de|r |T136016:0|t[Veneno] |cRXP_WARN_|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_Haz clic en/Corre hacia el|r |cRXP_PICK_Santuario del celador|r |cRXP_WARN_para invocar al |cRXP_ENEMY_Avatar de antárbol|r|r
    >>Mata al |cRXP_ENEMY_Avatar de antárbol|r.
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>Viaja a Azshara (Teletransporte a Claro de la Luna -> Ruta de vuelo a Azshara)
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>Haz clic en el |cRXP_PICK_Santuario de la bestia|r
    *|cRXP_WARN_Omite este paso manualmente si no se completa|r
step
    .train 431468,1
    >>Mata a un |cRXP_ENEMY_Hijo de Apa'ro|r |cRXP_WARN_con habilidades cuerpo a cuerpo (pásate a Forma felina o de oso)|r. Despójalo para obtener el |T134338:0|t[|cRXP_LOOT_Corazón de venado sagrado|r]
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_Usa el|r |T134338:0|t[|cRXP_LOOT_Corazón de venado sagrado|r] |cRXP_WARN_junto al|r |cRXP_PICK_Santuario de la bestia|r |cRXP_WARN_para invocar al|r |cRXP_ENEMY_Avatar de hipogrifo|r
    .train 431468,1
step
    .train 431468,1
    >>Mata al |cRXP_ENEMY_Avatar de hipogrifo|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>Viaja a Tierras del Interior
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>Haz clic en el |cRXP_PICK_Santuario de la luna|r en la cima de la colina
    *|cRXP_WARN_Omite este paso manualmente si no se completa|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_Usa|r |T136107:0|t[Tranquilidad]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_Usa|r |T136018:0|t[Huracán]
step
    .train 431468,1
    >>Mata al |cRXP_WARN_Avatar de lechúcico lunar|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>Viaja a Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_dentro de la torre|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>Entrega la misión Sabiduría de los guardianes
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Floración|r] para aprender |T134222:0|t[Floración]

]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Frenzied Regeneration
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Vientos huracanados - 40 (Feralas)

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>Viaja a Feralas
step
    #label NamidaGrimtotem
    .train 431451,1
    >>Mata a |cRXP_ENEMY_Namida Tótem Siniestro|r. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Tormenta de viento|r]
    .goto Feralas,66.8,38.6
    .collect 220754,1
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la Tormenta de viento|r] |cRXP_WARN_para aprender|r |T236154:0|t[Vientos huracanados]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#name Fuegos de Elune - 45 (Azshara)

step
    #completewith next
    .zone Azshara >>Viaja a Azshara
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>Haz clic en el |cRXP_PICK_Morral de viajero|r para despojar el |T236229:0|t[|cRXP_LOOT_Botiquín de campo|r] y el |T133741:0|t[|cRXP_LOOT_Registro de Keldara|r]
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>Recoge 3 |T134218:0|t[|cRXP_PICK_Muestras de herbasátiro|r]
    .collect 221019,3
step
    >>|cRXP_WARN_Usa el|r |T236229:0|t[|cRXP_LOOT_Botiquín de campo|r] |cRXP_WARN_para combinar las muestras en la|r |T236868:0|t[Tintura de herbasátiro]
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>Busca a un |cRXP_ENEMY_Hipogrifo Tronatesta|r con el perjuicio de |T136134:0|t[Corrupción de sátiro]
    *|cRXP_WARN_Si tiene el perjuicio entonces emite una nube de veneno verde|r.
    .cast 2637 >>Usa |T136090:0|t[Hibernar] en el |cRXP_ENEMY_Hipogrifo Tronatesta|r
    .mob Thunderhead Hippogryph
step
    .train 416051,1
    >>|cRXP_WARN_Usa la|r |T236868:0|t[Tintura de herbasátiro] |cRXP_WARN_en el |cRXP_ENEMY_Hipogrifo Tronatesta|r para eliminar el perjuicio de|r |T136134:0|t[Corrupción de sátiro] |cRXP_WARN_|r y conseguir la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Diosa lunar|r]
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hippogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la Tormenta de viento|r] |cRXP_WARN_para aprender|r |T236154:0|t[Vientos huracanados]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Piel de corteza mejorada - 44 (Tanaris)

step
    #optional
    .train 431449,1
    .train 22812 >> |cRXP_WARN_Debes tener|r |T136097:0|t[Piel de corteza] |cRXP_WARN_aprendido para obtener la runa de|r |T136097:0|t[Piel de corteza mejorada] |cRXP_WARN_|r
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>Mata a |cRXP_ENEMY_Colector de rocío Cardizal|r y |cRXP_ENEMY_Enraizador Cardizal|r. Despójalos para obtener el |T136061:0|t[|cRXP_LOOT_Ídolo del arrastrapiés colérico|r]
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
step
    .equip 18,220915 >>|cRXP_WARN_Equipa el|r |T136061:0|t[|cRXP_FRIENDLY_Ídolo del arrastrapiés colérico|r]
    .train 431449,1
step
    .aura 408828 >>Mata a |cRXP_WARN_cinco enemigos con un hechizo de Naturaleza (p. ej. Cólera) mientras estés bajo el efecto de |T136097:0|t[Piel de corteza].|r
    *|cRXP_WARN_Usa |T136097:0|t[Piel de corteza] cuando el enemigo tenga poca vida y remátalo con Cólera u otro hechizo de Naturaleza|r
    .train 431449,1
step
    .itemcount 221020,1
    .use 221020
    .train 431449 >> |cRXP_WARN_Usa el|r |T136061:0|t[|cRXP_FRIENDLY_Ídolo del arrastrapiés colérico|r] |cRXP_WARN_para aprender|r |T136097:0|t[Piel de corteza mejorada]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Flagelo mejorado - 50 (Cráter de Un'Goro)
#title Flagelo mejorado

step
    #completewith next
    .train 439765,1
    .zone Un'Goro Crater >>Viaja a Cráter de Un'Goro
step
    .train 439765,1
    .goto Un'Goro Crater,68.0,51.4
    >>Mata |cRXP_ENEMY_Ravasaurios|r, |cRXP_ENEMY_Cazadores ravasaurios|r y |cRXP_ENEMY_Ravasaurios Pellejo Venenoso|r. Despójalos para obtener el |T134912:0|t[|cRXP_FRIENDLY_Ídolo de la cazadora|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .train 439765,1
    .equip 18,227444 >> Equipa el |T134912:0|t[|cRXP_FRIENDLY_Ídolo de la Cazadora|r]
    .use 227444
step
    .goto Un'Goro Crater,68.0,51.4
    #title Obtén 5x |T237556:0|t[Proceso de inspiración]
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >> |cRXP_WARN_Ataca a los |cRXP_ENEMY_Ravasaurios|r hasta que estén con más o menos 5-10% de vida y asegúrate de que tengas 5 puntos de combo en ellos|r
    >>|cRXP_WARN_Una vez que estén al 5-10% de vida, lanza|r |T136090:0|t[Hibernar] |cRXP_WARN_luego cambia a|r |T132115:0|t[Forma felina] |cRXP_WARN_y lanza|r |T132127:0|t[Mordedura feroz] |cRXP_WARN_para matarlos y obtener una acumulación de|r |T237556:0|t[Proceso de inspiración]
    >>|cRXP_WARN_Repite este proceso 5 veces|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .itemcount 227444,1
    .use 227444
    .train 439765 >> |cRXP_WARN_Usa el|r |T134912:0|t[|cRXP_FRIENDLY_Ídolo de la cazadora|r] |cRXP_WARN_para aprender|r |T134296:0|t[Flagelo mejorado]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Árbol de la vida - 50 (Frondavil)
#title Árbol de la vida

step
    #completewith next
    .train 439767,1
    .zone Felwood >>Viaja a Frondavil
step
    .train 439767,1
    #loop
    .goto Felwood,42,15,70,0
    .goto Felwood,42,19,70,0
    .goto Felwood,42,15,0
    .goto Felwood,42,19,0
    >>|cRXP_WARN_Habla con un|r Fuego fatuo vengativo|cRXP_FRIENDLY_ en el norte de Frondavil, luego síguelo a través del Corredor Fuego de Jade y mata a cualquier|r |cRXP_WARN_Sátiro|cRXP_ENEMY_ |rque se cruce en su camino|r
    >>|cRXP_WARN_El|cRXP_FRIENDLY_ Fuego fatuo vengativo|r tiene múltiples puntos de aparición. Si ves a otro Druida ya con el|cRXP_FRIENDLY_ Fuego fatuo vengativo|r , puedes ayudarlos y seguir recibiendo el crédito|r
    >>Una vez completado, el |cRXP_FRIENDLY_Fuego fatuo vengativo|r soltará el |cRXP_PICK_Don del fuego fatuo|r en el suelo. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del Árbol del Mundo|r]
    .collect 227746,1
    .unitscan Vengeful Wisp
step
    .itemcount 227746,1
    .use 227746
    .train 439767 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Árbol del Mundo|r] |cRXP_WARN_para aprender|r |T132145:0|t[Árbol de la vida]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Lluvia de estrellas - 60 (Cuna del Invierno)
#title Lluvia de estrellas

step
    #completewith next
    .train 439770,1
    .zone Winterspring >>Viaja a Cuna del Invierno
    >>|cRXP_WARN_Ten en cuenta que para esta runa debes matar a un Élite de nivel 58. Considera invitar a amigos para que te ayuden|r
step
    .train 439770,1
    #loop
    .goto Winterspring,64.8,19.4,50,0
    .goto Winterspring,63.8,16.4
    >>Mata a |cRXP_ENEMY_Arcterris|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Estrella fugaz|r]
    >>|cRXP_WARN_Nota: |cRXP_ENEMY_Arcterris|r es un Élite de nivel 58. Considera invitar a amigos para que te ayuden|r
    .collect 227749,1
    .mob Arcterris
step
    .itemcount 227749,1
    .use 227749
    .train 439770 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la Estrella fugaz|r] |cRXP_WARN_para aprender|r |T236168:0|t[Lluvia de estrellas]
]])
