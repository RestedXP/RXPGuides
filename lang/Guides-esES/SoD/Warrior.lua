if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ataque de la victoria - 1 (Bosque de Elwynn)
#title Ataque de la victoria

step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>Viaja hacia la |cRXP_PICK_Caja secreta kóbold|r dentro de la Mina del Eco
    .train 403470,1
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>Abre la |cRXP_PICK_Caja secreta kóbold|r del suelo. Despójala para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Ataque de la victoria]|r
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    .train 403470 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Ataque de la victoria]|r |cRXP_WARN_para aprender|r |T132342:0|t[Ataque de la victoria]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ataque de la victoria - 3 (Dun Morogh)
#title Ataque de la victoria

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r. Despójalas para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .collect 204806,1
    .mob Frostmane Troll Whelp
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ataque de la victoria - 3 (Cañada Umbría)
#title Ataque de la victoria

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>Mata |cRXP_ENEMY_Arañas Tejemadera|r. Despójalas para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Frenesí sangriento - 10 (Bosque de Elwynn)
#title Frenesí sangriento

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>Habla con un |cRXP_FRIENDLY_Espadachín ambulante|r en Bosque de Elwynn
    >>Derrota al |cRXP_ENEMY_Espadachín ambulante|r en un duelo
    >>Abre la |cRXP_PICK_Recompensa de espadachín|r que cae al suelo. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    >>|cRXP_WARN_Nota: El |cRXP_FRIENDLY_Espadachín deambulante|r puede aparecer en cualquier parte de Bosque de Elwynn|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r] |cRXP_WARN_para aprender|r |T136012:0|t[Frenesí sangriento]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Frenesí sangriento - 10 (Dun Morogh)
#title Frenesí sangriento

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>Habla con un |cRXP_FRIENDLY_Espadachín deambulante|r en Dun Morogh
    >>Derrota al |cRXP_ENEMY_Espadachín ambulante|r en un duelo
    >>Abre la |cRXP_PICK_Recompensa de espadachín|r que cae al suelo. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r] |cRXP_WARN_para aprender|r |T136012:0|t[Frenesí sangriento]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Frenesí sangriento - 10 (Teldrassil)
#title Frenesí sangriento

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>Habla con un |cRXP_FRIENDLY_Espadachín deambulante|r en Teldrassil
    >>Derrota al |cRXP_ENEMY_Espadachín ambulante|r en un duelo
    >>Abre la |cRXP_PICK_Recompensa de espadachín|r que cae al suelo. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    >>|cRXP_WARN_Nota: El |cRXP_FRIENDLY_Espadachín deambulante|r puede aparecer en cualquier lugar de Teldrassil|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r] |cRXP_WARN_para aprender|r |T136012:0|t[Frenesí sangriento]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rayo furioso - 6 (Bosque de Elwynn)
#title Rayo furioso

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Entra en la Mina Abisal
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Goldtooth
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r] |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rayo furioso - 9 (Dun Morogh)
#title Rayo furioso

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Mata a |cRXP_ENEMY_Fyodi|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r
    >>|cRXP_WARN_Aunque |cRXP_ENEMY_Fyodi|r aparece como un élite, sus valores de salud, daño y armadura son los de un enemigo estándar|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, infligiendo 35-80 de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    >>|cRXP_WARN_NOTA: La|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_también puede caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Sarnagarra|r, y|r |cRXP_ENEMY_Viejo Barbahielo|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r
    >>|cRXP_WARN_NOTA: La|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_también puede caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Sarnagarra|r, y|r |cRXP_ENEMY_Viejo Barbahielo|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Vagash
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Asalto frenético - 10 (Ventormenta)
#title Asalto frenético

step << Warrior
    #season 2
    .gossipoption 109045 >> Habla con |cRXP_FRIENDLY_Liv Bradford|r dentro de la Posada en el Parque
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Habla con |cRXP_ENEMY_Stuart|r, luego dale una paliza. Se desmayará al 0%
    .goto Stormwind City,21.213,62.781
    >>Si |cRXP_ENEMY_Stuart|r no está ahí, espera a que reaparezca
    .gossipoption 109044 >> Habla con |cRXP_FRIENDLY_Liv Bradford|r de nuevo después de derrotar a |cRXP_ENEMY_Stuart|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] |cRXP_WARN_para aprender|r |T236317:0|t[Asalto frenético]
    >>|cRXP_WARN_Nota: Esto puede ser bastante difícil en solitario dependiendo de tu nivel. Busca ayuda si la necesitas|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Asalto frenético - 10 (Forjaz)
#title Asalto frenético

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r en la Sala Militar
    >>Habla con |cRXP_ENEMY_Bruart|r junto a la puerta y luego dale una paliza. Se desmayará al 0%
    >>Si |cRXP_ENEMY_Bruart|r no está ahí, espera a que reaparezca
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r de nuevo después de derrotar a |cRXP_ENEMY_Bruart|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .train 425447,1 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] |cRXP_WARN_para aprender|r |T236317:0|t[Asalto frenético]
    >>|cRXP_WARN_Nota: Esto puede ser bastante difícil en solitario dependiendo de tu nivel. Busca ayuda si la necesitas|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Asalto frenético - 10 (Teldrassil)
#title Asalto frenético

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>Habla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r en Dolanaar
    >>Habla con |cRXP_ENEMY_Syllart|r arriba, luego dale una paliza. Se desmayará al 0%
    >>Si |cRXP_ENEMY_Syllart|r no está ahí, espera a que reaparezca
    >>Habla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r de nuevo después de derrotar a |cRXP_ENEMY_Syllart|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .train 425447,1 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] |cRXP_WARN_para aprender|r |T236317:0|t[Asalto frenético]
    >>|cRXP_WARN_Nota: Esto puede ser bastante difícil en solitario dependiendo de tu nivel. Busca ayuda si la necesitas|r
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Ira infinita - 20 (Páramos de Poniente)
#title Ira infinita

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener la |T132347:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r]
    >>|cRXP_ENEMY_Viejo Ojosombrío|r |cRXP_WARN_patrulla de arriba a abajo por la Playa Larga. Si no lo ves a lo largo de Playa Larga, espera a que aparezca en el campamento |cRXP_ENEMY_Múrloc|r más al sur|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Usa la|r |T132347:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Ira infinita]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ira infinita - 16 (Costa Oscura)
#title Ira infinita

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >> Entra en la cueva de los naga de Fonroca
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>Mata a |cRXP_ENEMY_Lady Sedorax|r. Despójala para obtener la |T132347:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_es un enemigo élite de nivel 18 que además tiene otros enemigos a su alrededor. Puedes optar en su lugar por conseguirla en Páramos de Poniente, lo cual es mucho más fácil|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Usa la|r |T132347:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Ira infinita]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Devastar - 8 (Bosque de Elwynn)
#title Devastar

step << Warrior
    #season 2
    >>Mata |cRXP_ENEMY_Mineros kóbold|r y |cRXP_ENEMY_Tuneladores kóbold|r. Despójalos para obtener sus|T134168:0|t[|cRXP_LOOT_Cabeza de kóbold cortada|r]
    >>Mata |cRXP_ENEMY_Múrlocs|r y |cRXP_ENEMY_Correcorrientes múrloc|r. Despójalos para obtener su |T134169:0|t[|cRXP_LOOT_Cabeza de múrloc cortada|r]
    >>Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener su |T134163:0|t[|cRXP_LOOT_Cabeza de gnoll cortada|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .mob Murloc
	.mob Murloc Streamrunner
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >> Viaja a Ventormenta
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Habla con |cRXP_FRIENDLY_Viktoria Arbolada|r para entregar tu |T134168:0|t[|cRXP_LOOT_Cabeza de kóbold cortada|r] y recibir el |T134455:0|t[Primer fragmento de runa de cazador de monstruos]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Habla con |cRXP_FRIENDLY_Viktoria Arbolada|r para entregar tu |T134169:0|t[|cRXP_LOOT_Cabeza de múrloc cortada|r] y recibir el |T134455:0|t[Segundo fragmento de runa de cazador de monstruos]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Habla con |cRXP_FRIENDLY_Viktoria Arbolada|r para entregar tu |T134163:0|t[|cRXP_LOOT_Cabeza de gnoll cortada|r] y recibir el |T134455:0|t[Tercer fragmento de runa de cazador de monstruos]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Usa cualquiera de los|r |T134455:0|t[Fragmentos de runa de cazador de monstruos] |cRXP_WARN_para crear la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Devastar - 6 (Teldrassil)
#title Devastar

step << Warrior
    #season 2
    >>Mata |cRXP_ENEMY_Sables de la noche|r o |cRXP_ENEMY_Acechadores sable de la noche|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de tigre cortada|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r o |cRXP_ENEMY_Estridadores estrígidos|r. Despójalas para obtener su |cRXP_LOOT_Cabeza de búho cortada|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r o |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de araña cortada|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >> Viaja a Darnassus
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delwynna|r arriba
    >>|cRXP_WARN_Después de entregar las tres |cRXP_LOOT_Cabezas cortadas|r recibirás la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Devastar - 6 (Dun Morogh)
#title Devastar

step << Warrior
    #season 2
    >>Mata |cRXP_ENEMY_Wendigos|r. Despójalos para obtener su |cRXP_LOOT_Pata de wendigo cortada|r
    >>Mata |cRXP_ENEMY_Trols Peloescarcha|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de trol cortada|r
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r. Despójalos para obtener su |cRXP_LOOT_Corazón de trogg prístino|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Young Wendigo
    .mob Wendigo
    .mob Frostmane Troll
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Junni Pasoacero|r
    >>|cRXP_WARN_Después de entregar los tres objetos, recibirás la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ataque de la victoria - 2 (Durotar)
#title Ataque de la victoria


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .accept 77588 >>Acepta la misión Una prueba de aptitud << Troll
    .accept 77582 >>Acepta la misión Una prueba de aptitud << Orc
    .target Frang
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Despoja el |cRXP_PICK_Alijo escondido|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    >>|cRXP_WARN_Rodea y pasa de largo a|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_, salta abajo para llegar al cofre|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 77588 >>Entrega la misión Una prueba de aptitud << Troll
    .turnin 77582 >>Entrega la misión Una prueba de aptitud << Orc
    .target Frang

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ataque de la victoria - 2 (Mulgore)
#title Ataque de la victoria


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .accept 77651 >>Acepta la misión Hacia las zarzas
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Despoja el |cRXP_PICK_Alijo de botín erizapúas|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .turnin 77651 >>Entrega la misión Hacia las zarzas
    .target Harutt Thunderhorn

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ataque de la victoria - 2 (Tirisfal)
#title Ataque de la victoria

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .accept 77668 >>Acepta la misión La runa perdida
    .target Dannal Stern
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Despoja el |cRXP_PICK_Alijo perdido|r dentro de la cueva para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Entrega la misión La runa perdida
    .target Dannal Stern

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rayo furioso - 2 (Durotar)
#title Rayo furioso

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Mata a |cRXP_ENEMY_Sarkoth|r. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Sarkoth
    .train 403476,1
step
    #season 2
    .train 403476 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rayo furioso - 10 (Tirisfal)
#title Rayo furioso


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    >>|cRXP_WARN_Este es un élite de nivel 7|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Asalto frenético - 10 (Orgrimmar)
#title Asalto frenético


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamja|r y |cRXP_FRIENDLY_Gru'ark|r
    +Mata a |cRXP_ENEMY_Gru'ark|r cuando se vuelva hostil
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamja|r
    >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Asalto frenético - 10 (Cima del Trueno)
#title Asalto frenético


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Netali|r y |cRXP_FRIENDLY_Mooart|r en el Alto de los Espíritus
    +Mata a |cRXP_FRIENDLY_Mooart|r cuando se vuelva hostil
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Netali|r
    >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Asalto frenético - 10 (Claros de Tirisfal)
#title Asalto frenético


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Habla con |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Corazón azul|r (abajo) dentro de la posada
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Mata a |cRXP_ENEMY_Corazón azul|r, luego habla con |cRXP_FRIENDLY_Penny|r arriba
    .gossipoption 110751 >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Devastar - 8 (Durotar)
#title Devastar


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>Mata |cRXP_ENEMY_Braceros Kolkar|r y |cRXP_ENEMY_Avanzadas Kolkar|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de centauro cortada|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>Mata |cRXP_ENEMY_Arpías Viento Seco|r. Despójalas para obtener una |cRXP_LOOT_Cabeza de arpía cortada|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Mata |cRXP_ENEMY_Jabaespínes Crines de Acero|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de jabaespín cortada|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vahi|r
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>Usa los |T134455:0|t[Fragmentos de runas] para crear |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Devastar - 8 (Mulgore)
#title Devastar


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Mata |cRXP_ENEMY_Gnolls Crines Pálidas|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de gnoll cortada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>Mata |cRXP_ENEMY_Ventobrujas Viento Furioso|r y |cRXP_ENEMY_Arpías Viento Furioso|r. Despójalas para obtener una |cRXP_LOOT_Cabeza de arpía cortada|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Mata |cRXP_ENEMY_Intrusos Erizapúas|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de jabaespín cortada|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vateya|r en el Poblado Pezuña de Sangre
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step
    #season 2
    .use 204688 >>Usa los |T134455:0|t[Fragmentos de runas] para crear |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Devastar - 8 (Claros de Tirisfal)
#title Devastar


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Mata |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de gnoll cortada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Mata |cRXP_ENEMY_Múrlocs|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de múrloc cortada|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorac|r en Entrañas
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>Usa los |T134455:0|t[Fragmentos de runas] para crear |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Frenesí sangriento - 8 (Durotar)
#title Frenesí sangriento


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>Busca y desafía a duelo al |cRXP_FRIENDLY_Espadachín deambulante|r. Despoja la |cRXP_PICK_Caja|r que deja caer para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    >>|cRXP_ENEMY_Patrulla por toda la zona y es difícil de encontrar. Los puntos marcados de la ruta te guía pasando por los lugares de aparición conocidos|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Frenesí sangriento - 8 (Mulgore)
#title Frenesí sangriento


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>Busca y desafía a duelo al |cRXP_FRIENDLY_Espadachín deambulante|r. Despoja la |cRXP_PICK_Caja|r que deja caer para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    >>|cRXP_ENEMY_Patrulla por toda la zona y es difícil de encontrar. Los puntos marcados de la ruta te guía pasando por los lugares de aparición conocidos|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Frenesí sangriento - 8 (Claros de Tirisfal)
#title Frenesí sangriento


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>Busca y desafía a duelo al |cRXP_FRIENDLY_Espadachín deambulante|r. Despoja la |cRXP_PICK_Caja|r que deja caer para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    >>|cRXP_ENEMY_Aparece justo al este de la Hacienda Balnir|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpe rápido - 12 (Loch Modan)
#title Golpe rápido

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Mata |cRXP_ENEMY_Troggs|r. Despójalos para obtener una |cRXP_LOOT_Geoda con forma de cráneo|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Mata a un |cRXP_ENEMY_Aplastacráneos Rompecantos|r
    >>|cRXP_WARN_Durante el combate te propinará un buen golpe que convertirá la |cRXP_LOOT_Geoda con forma de cráneo|r en una|r |T236489:0|t[|cRXP_LOOT_Geoda con forma de cráneo partida|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>|cRXP_WARN_Usa la|r |T236489:0|t[|cRXP_LOOT_Geoda con forma de cráneo partida|r] |cRXP_WARN_para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe rápido|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe rápido|r] |cRXP_WARN_para aprender|r |T132394:0|t[Golpe rápido]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ira infinita - 15 (Los Baldíos)
#title Ira infinita


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Haz clic en el |cRXP_PICK_Estandarte de guerra de la Horda|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Vuela a Trinquete
    .target Devrak
step
    #completewith next
    .subzone 385 >>Viaja al Fuerte del Norte
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>Haz clic en el |cRXP_PICK_Estandarte de guerra de la Alianza|r
    >>Mata al |cRXP_ENEMY_Teniente Petrocervecero|r cuando aparece. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Ira infinita]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ira infinita - 15 (Bosque de Argénteos)
#title Ira infinita


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_Se recomienda ir en grupo, ya que tienes que matar a un élite de nivel 17|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>Ataca a la |cRXP_ENEMY_Víctima enredada|r y mata al |cRXP_ENEMY_Aventurero perdido|r que aparece. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r]
    >>|cRXP_WARN_Tienes que matar rápidamente a la|r |cRXP_ENEMY_Víctima enredada|r |cRXP_WARN_ya que regenera vida cada pocos segundos|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Ira infinita]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpe rápido - 20 (Costa Oscura)
#title Golpe rápido

step << Warrior
    .goto 1439,44.081,20.739
    >>Despoja el |T135129:0|t[Arpón nudoso] que está en el ojo del esqueleto
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 425443,1
step << Warrior
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Usa el|r |T135129:0|t[Arpón nudoso] |cRXP_WARN_en |cRXP_ENEMY_Paxnozz|r para reducir su salud máxima a 743|r
    .train 425443,1
step << Warrior
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Mata |cRXP_ENEMY_Paxnozz|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Golpe rápido]|r
    >>|cRXP_WARN_Ten cuidado, es un élite de nivel 20|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .use 209047
    .train 425443,1
step << Warrior
    .train 425443 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe rápido|r] |cRXP_WARN_para aprender|r |T132394:0|t[Golpe rápido]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Oleada de sangre - 40 (Azeroth)
#title Oleada de sangre

step
    .train 416004,1
    #completewith SpiceBlend
    .zone Arathi Highlands >>Viaja a las Tierras Altas de Arathi
step
    #completewith IllegibleReciple
    +|cRXP_WARN_Quizás quieras buscar un grupo, ya que debes matar élites de nivel 37+ para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Oleada de sangre|r]
    .subzoneskip 324
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Alterac Mountains,39.0,54.6,0
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>Mata |cRXP_ENEMY_Ogros Puño de Roca|r dentro del Castillo de Stromgrade. Despójalos para obtener una |T237451:0|t[|cRXP_LOOT_Receta ilegible|r]
    >>|cRXP_WARN_Usa la|r |T237451:0|t[|cRXP_LOOT_Receta ilegible|r] |cRXP_WARN_para iniciar la misión|r
    >>|cRXP_WARN_Alternativamente, también puedes matar |cRXP_ENEMY_Ogros Aplastacresta|r en Montañas de Alterac|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>Acepta la misión Cualquiera puede cocinar
    .mob Boulderfist Shaman
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
    .mob Crushridge Mauler
    .mob Crushridge Mage
    .mob Crushridge Enforcer
    .mob Crushridge Warmonger
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >> Sube por la montaña para llegar hasta |cRXP_FRIENDLY_Skonk|r
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Entrega la misión Cualquiera puede cocinar
    .accept 79677 >>Acepta la misión Una compra veloz
    .target Skonk
step
    #completewith SpiceBlend
    .goto Arathi Highlands,30.74,66.94,60,0
    .goto Arathi Highlands,22.72,71.98,50,0
    .goto Arathi Highlands,21.50,75.91,40,0
    .goto Arathi Highlands,21.98,79.96,30 >> Viaja a la Cala de Faldir
step
    #label SpiceBlend
    .train 416004,1
    .goto Arathi Highlands,20.47,84.90,8,0
    .goto Arathi Highlands,21.379,83.919
    >>Abre la |cRXP_PICK_Barrica Sellada|r. Despójala para obtener la |cRXP_LOOT_Mezcla de especias de contrabandista|r
    >>|cRXP_WARN_Se encuentra en el fondo del barco hundido. Nada a través del gran agujero en la parte inferior para llegar hasta allí|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>Mata |cRXP_ENEMY_Grifos salvajes|r. Despójalos para obtener su |cRXP_LOOT_Anca híbrida|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros << Horde
    .mob Granistad << Horde
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Badlands >>Viaja a Tierras Inhóspitas
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >> Entra en la Fortaleza de Angor
step
    .train 416004,1
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,41.383,27.964
    >>Haz clic en el |cRXP_PICK_Barril de Forjatiniebla abierto|r. Despójalo para obtener el |cRXP_LOOT_Brebaje fresco|r
    >>|cRXP_WARN_Mantén la distancia máxima para evitar atraer la atención del|r |cRXP_ENEMY_Embajador Infernus|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>Viaja al Pantano de las Penas
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>Mata |cRXP_ENEMY_Tarántulas Golpemortal|r. Despójalas para obtener su |cRXP_LOOT_Toxina viscosa|r
    >>|cRXP_WARN_Se pueden encontrar en la zona sureste de Pantano de las Penas|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith GroceryRun
    .zone Arathi Highlands >>Viaja a las Tierras Altas de Arathi
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >> Sube por la montaña para llegar hasta |cRXP_FRIENDLY_Skonk|r
step
    #label GroceryRun
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skonk|r
    .turnin 79677 >>Entrega la misión Una compra veloz
    .accept 79678 >>Acepta la misión Prueba de sabores
    .timer 23,Prueba de sabores RP
    .target Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>Derrota a |cRXP_ENEMY_Skonk|r después de que termine de comer
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skonk|r
    .turnin 79678 >>Entrega la misión Prueba de sabores
    .target Skonk
step
    .train 416004 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Oleada de sangre|r] |cRXP_WARN_para aprender|r |T236306:0|t[Oleada de sangre]
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Ira concentrada - 35 (Tierras Altas de Arathi)
#title Ira concentrada

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_Considera buscar miembros adicionales para el grupo antes de intentar conseguir la|r |T134419:0|t[|cRXP_LOOT_Runa de Ira concentrada|r] |cRXP_WARN_ya que requiere matar a un élite de nivel 35 y a 2 enemigos al mismo tiempo|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >> Viaja a |cFFfa9602Tierras Altas de Arathi|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>Mata |cRXP_ENEMY_Trols Secacorteza|r. Despójalos para obtener el |T133057:0|t[|cRXP_LOOT_Mazo Secacorteza|r]
    >>|cRXP_WARN_También puedes comprar el|r |T133057:0|t[|cRXP_LOOT_Mazo Secacorteza|r] |cRXP_WARN_en la Casa de Subastas|r
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>Entra en la Cueva Secacorteza
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >> |cRXP_WARN_Usa el|r |T133057:0|t[|cRXP_LOOT_Mazo Secacorteza|r] |cRXP_WARN_en el |cRXP_PICK_Gong|r dentro de la cueva|r
    .use 216483 >>|cRXP_WARN_Esto hará aparecer a un |cRXP_ENEMY_Goliat Secacorteza|r (nivel 35 élite) así como a 2 enemigos adicionales|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>Mata al |cRXP_ENEMY_Goliat Secacorteza|r. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa de Ira concentrada|r]
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_LOOT_Runa de Ira concentrada|r] |cRXP_WARN_para aprender|r |T132345:0|t[Ira concentrada]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Intervenir - 24 (Las Mil Agujas)
#title Intervenir

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_Debes ser al menos nivel 24 antes de poder adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervención|r]
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Debes aprender|r |T132357:0|t[Azote de escudo] |cRXP_WARN_para adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervención|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_Debes aprender|r |T135358:0|t[Ejecutar] |cRXP_WARN_para adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervención|r]
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Debes aprender|r |T132357:0|t[Azote de escudo] |cRXP_WARN_para adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervención|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_Antes de dirigirte a Las Mil Agujas, asegúrate de tener lo siguiente (su fuerza no importa)|r
    +Un arma de una mano
    +Un escudo
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >> Viaja a la Excavación Oximelena en |cFFfa9602Las Mil Agujas|r
step
    #completewith next
    +|cRXP_WARN_Asegúrate de tener equipado tu arma de una mano y tu escudo|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Lanza|r |T135358:0|t[Ejecutar] |cRXP_WARN_en el |cRXP_ENEMY_Muñeco de combate|r, luego muévete hacia el siguiente|r |cRXP_ENEMY_Muñeco de combate|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_Lanza|r |T136080:0|t[Provocar] |cRXP_WARN_en el |cRXP_ENEMY_Muñeco de combate|r, luego muévete hacia el siguiente|r |cRXP_ENEMY_Muñeco de combate|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_Lanza|r |T132357:0|t[Azote de escudo] |cRXP_WARN_en el|r |cRXP_ENEMY_Muñeco de combate|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>Abre el cofre |cRXP_PICK_Recompensa del Guerrero|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervención|r]
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervención|r] |cRXP_WARN_para aprender|r |T132365:0|t[Intervenir]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Berrido de convocación - 40 (Tierras Inhóspitas)
#title Berrido de convocación

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>Viaja a Tierras Inhóspitas
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>Habla con un |cRXP_FRIENDLY_Espadachín deambulante|r en Tierras Inhóspitas
    >>Derrota al |cRXP_ENEMY_Espadachín ambulante|r en un duelo
    >>Abre la |cRXP_PICK_Recompensa de espadachín|r que deja caer al suelo. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del Comandante|r]
    >>|cRXP_WARN_Nota: El |cRXP_FRIENDLY_Espadachín deambulante|r puede aparecer en muchas ubicaciones a lo largo de Tierras Inhóspitas|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Comandante|r] |cRXP_WARN_para aprender|r |T132339:0|t[Berrido de convocación]
    .use 213110
]])


RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Desenfreno
#name Desenfreno - 43 (Feralas)


step
    #completewith next
    .zone Feralas >>Viaja a Feralas
step
    .goto Feralas,75,35.2,20 >>Dirígete hacia la cueva de la Avanzada Gordunni, al norte del Campamento Mojache
    .train 427081,1
step
    .goto Feralas,74.8,24.9
    >>Entra a la cueva, busca a Ohk'zi, un ogro élite de nivel 43. Mátalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del Desbocado|r]
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
    .train 427081,1
step
    .train 427081 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Desbocado|r] |cRXP_WARN_para aprender|r |T132352:0|t[Desenfreno]
    .use 220682

]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Equipo de demolición
#name Equipo de demolición - 40 (Tierras del Interior)

step
    #completewith next
    .zone The Hinterlands >>Viaja a Tierras del Interior
step
    #loop
    .goto The Hinterlands,23.6,57.4
    .goto The Hinterlands,36.6,66.2,0
    .goto The Hinterlands,31.6,59.8,0
    >>Mata a cualquiera de los |cRXP_ENEMY_Trols Secacorteza|r en la parte occidental del mapa hasta que despojes un |T133054:0|t|cRXP_LOOT_Martillo de geodas|r de ellos
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step
    .equip 16,220912 >>Equipa el |T133054:0|t|cRXP_LOOT_Martillo de geodas|r como tu arma principal. Continúa peleando contra enemigos hasta que el martillo se rompa y se convierta en un |T133054:0|t|cRXP_LOOT_Martillo de geodas roto|r
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step
    >>Haz clic derecho en el |T133054:0|t|cRXP_LOOT_Martillo de geodas roto|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Demolición|r]
    .collect 220913,1 --Rune of Demolition
    .train 427084,1
step
    .train 427084 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la Demolición|r] |cRXP_WARN_para aprender|r |T132364:0|t[Equipo de demolición]
    .use 220913
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#title Gusto por la sangre
#name Gusto por la sangre - 50 (La Garganta de Fuego)

step
    #completewith SlagPits
    .zone Searing Gorge >>Viaja a La Garganta de Fuego
step
    #sticky
    #completewith summonIodax
    >>|cRXP_WARN_Para completar esta misión tendrás que invocar y matar a un gólem élite de nivel 50 con alrededor de 12k de vida. Es posible hacerlo en solitario, aunque recomiendo buscar un grupo. Para invocar al gólem necesitas recolectar 4 piezas de Fosas de la Escoria en La Garganta de Fuego. Sin embargo, no necesitas recolectarlas si encuentras a alguien más que invoque al jefe por ti. En ese caso puedes pasar directamente al paso 13|r
    .collect 221258,1 --Right Foot of the Obliterator
    .collect 221256,1 --Right Arm of the Obliterator
    .collect 221259,1 --Left Foot of the Obliterator
    .collect 221257,1 --Left Arm of the Obliterator
step
    #label SlagPits
    .goto 1427/0,-1247.100,-6906.900,10 >>Entra a las Fosas de la Escoria a través de la cueva aquí
    .train 427076,1
step
    .goto 1427/0,-1257.200,-6764.300
    >>Sigue el camino curvo hacia adelante después de entrar en la cueva. El |cRXP_LOOT_Brazo derecho del Desintegrador|r está en el suelo junto a un montón de cajas y barriles
    .collect 221256,1 --Right Arm of the Obliterator 1/1
    .train 427076,1
step
    .goto 1427/0,-1161.500,-6756.500,10 >>Corre hacia la puerta y atraviésala
    .train 427076,1
step
    .goto 1427/0,-1303.200,-6461.500,15 >>Continúa por el camino hacia adelante. En la sala grande con un gólem masivo en el suelo, toma la rampa hacia el nivel superior de las Fosas
    .train 427076,1
step
    .goto 1427/0,-1301.900,-6584.700
    >>Despoja el |cRXP_LOOT_Pie derecho del Desintegrador|r tirado en el suelo
    .collect 221258,1 --Right Foot of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1387.200,-6722.700,10 >>Dirígete hacia el extremo sur del puente
    .train 427076,1
step
    .goto 1427/0,-1428.600,-6656.800
    >>Salta desde el puente hacia la cueva de los Incendosaurios. Despoja el |cRXP_LOOT_Brazo izquierdo del Desintegrador|r del suelo junto a la piscina de lava
    .collect 221257,1 --Left Arm of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1271.900,-6553.500
    >>Ve al fondo de la cueva de los Incendosaurios. Despoja el |cRXP_LOOT_Pie izquierdo del Desintegrador|r del suelo que está allí
    .collect 221259,1
    .train 427076,1
step
	#completewith next
	+Realiza un "Logout skip" saltando sobre la roca detrás del pie y desconectando
	.link https://youtu.be/oBnDG1AWcxU >> HAZ CLIC AQUÍ para ver una referencia
step
    #label summonIodax
    #optional
    #completewith next
    .goto 1427/0,-1791.400,-6774.900
    .cast 446363 >>Ve a la Cabeza del Desintegrador marcada en tu mapa. Usa las partes que recogiste para invocar a |cRXP_ENEMY_Iodax el Desintegrador|r, un gigante élite de nivel 50
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1791.400,-6774.900
    >>Mata a |cRXP_ENEMY_Iodax el Desintegrador|r y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de los Sanguinarios|r]
    .collect 221267,1 --Rune of the Bloodthirsty
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .train 427076 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de los Sanguinarios|r] |cRXP_WARN_para aprender|r |T236276:0|t[Gusto por la sangre]
    .use 221267
    .itemcount 221267,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#title Vigilancia
#name Vigilancia - 46 (Feralas)

step
    #completewith next
    .zone Feralas >>Viaja a Feralas
step
    .goto Feralas,77.6,62.0,30 >>Dirígete a Las Galerías Retorcidas, una colmena silítida en Feralas. |cRXP_WARN_Tendrás que matar a un enemigo élite de nivel 46 que inflige mucho daño. Busca un grupo si no eres nivel 50|r
    .train 427078,1
step
    .goto Feralas,77.6,62.0
    >>Busca al |cRXP_ENEMY_Tirano de la colmena|r, mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Velador|r]
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
    .train 427078,1
step
    .train 427078 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Velador|r] |cRXP_WARN_para aprender|r |T236318:0|t[Vigilancia]
    .use 221473
]])
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#title Actitud de gladiador
#name Actitud de gladiador - 45 (Tanaris y Azshara)

step
    #completewith theOldChamp
    +|cRXP_WARN_Para desbloquear la|r |T236541:0|t[Actitud de gladiador] |cRXP_WARN_necesitas haber derrotado a los dos Espadachín deambulantes que otorgan las runas de|r |T132334:0|t[Frenesí sangriento] y |T132339:0|t[Berrido de convocación] |cRXP_WARN_. Asegúrate de haberlo hecho antes de continuar. Usa sus respectivas guías de runas si no estás seguro de dónde encontrarlos|r
    +|cRXP_WARN_NO FORMES GRUPO con nadie mientras progresas en esta cadena de misiones. Se ha reportado que suele "bugear" la misión con frecuencia, haciendo que sea imposible completarla|r
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
step
    #label theOldChamp
    .goto Tanaris,51.6,27.6
    >>Habla con |cRXP_FRIENDLY_Fizbuz Mitrilo|r en Gadgetzan
    .accept 81682 >>Acepta la misión El viejo campeón
    .target Fizbuz Mithril
step
    #completewith next
    .zone Azshara >>Viaja a Azshara
step
    .goto Azshara,27,61,40 >>Busca un camino que sube por la montaña. Está marcado con estandartes de la Horda
    .train 416002,1
step
    .goto Azshara,25.4,66.2
    >>Habla con |cRXP_FRIENDLY_Kajind|r en la cima del camino de la montaña
    .turnin 81682 >>Entrega la misión El viejo campeón
    .accept 81697 >>Acepta la misión El draco azul
    .target Kajind
step
    .goto Azshara,39.4,72.4
    >>Busca a |cRXP_ENEMY_Ceruleos|r, un dragón azul de nivel 50. Patrulla por el lado norte del lago. Despójalo para obtener la |T251962:0|t|cRXP_LOOT_Hoja de Kajind|r
    .complete 81697,1 --Kajind's Blade
    .unitscan Ceruleos
step
    .goto Azshara,25.4,66.2
    >>Vuelve con |cRXP_FRIENDLY_Kajind|r
    .turnin 81697 >>Entrega la misión El draco azul
    .accept 81801 >>Acepta la misión Regreso a la arena
    .target Kajind
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
step
    .goto Tanaris,51.6,27.6
    >>Vuelve a Gadgetzan y habla con |cRXP_FRIENDLY_Fizbuz Mitrilo|r
    .turnin 81801 >>Entrega la misión Regreso a la arena
    .accept 81877 >>Acepta la misión Noche de peleas
    .target Fizbuz Mithril
step
    >>Derrota a |cRXP_ENEMY_Kajind|r en la Arena de Gadgetzan
    .complete 81877,1 --Arena Victory 1/1
    .unitscan Kajind
step
    .goto Tanaris,51.6,27.6
    >>Entrega la misión a |cRXP_FRIENDLY_Fizbuz Mitrilo|r
    .turnin 81877 >>Entrega la misión Noche de peleas
    .target Fizbuz Mithril
step
    .train 416002 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Gladiador|r] |cRXP_WARN_para aprender|r |T236541:0|t[Actitud de gladiador]
    .use 220164
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Carne fresca
#name Carne fresca - 55 (Las Estepas Ardientes)

step
    #completewith next
    .zone Burning Steppes >>Viaja a Las Estepas Ardientes
step
    .train 440492,1
    .goto Burning Steppes,40.4,33.6
    .aura 459616 >>|cRXP_WARN_Mata |cRXP_ENEMY_Orcos Roca Negra|r en el Bastión de Roca Negra hasta que recibas el "buff"|r |T132353:0|t[Ritmo de la guerra] |cRXP_WARN_|r
    .mob Blackrock Battlemaster
    .mob Blackrock Slayer
    .mob Blackrock Warlock
    .mob Blackrock Sorcerer
step
    .train 440492,1
    .goto Burning Steppes,39.549,27.828
    >>|cRXP_WARN_Dirígete al|r |cRXP_PICK_Altar de Reverencia|r
    >>|cRXP_WARN_Una vez allí, escribe "/salute" (saludo) en tu ventana de chat. Esto invocará a un|r |cRXP_ENEMY_Campeón venerado|r
    >>Mata al |cRXP_ENEMY_Campeón venerado|r, luego haz clic en el |cRXP_PICK_Altar de Reverencia|r
    .accept 84124 >> Acepta la misión Legado de valor
    .turnin 84124 >> Entrega la misión Legado de valor
    .mob Revered Champion
step
    .train 440492 >>|cRXP_WARN_Usa la|r |T133747:0|t[|cRXP_LOOT_Runa del Primer guerrero|r] |cRXP_WARN_para aprender|r |T237516:0|t[Carne fresca]
    .use 226680
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Muerte súbita
#name Muerte súbita - 57 (Silithus)

step
    #completewith next
    .zone Silithus >>Viaja a Silithus
step
    .train 440494,1
    #loop
    .goto Silithus,55.4,53.2,60,0
    .goto Silithus,47.0,53.6,60,0
    .goto Silithus,45.0,74.0,60,0
    .goto Silithus,44.2,83.4,60,0
    .goto Silithus,33.6,69.2,60,0
    .goto Silithus,41.0,65.2,60,0
    .goto Silithus,34.8,33.6,60,0
    .goto Silithus,31.0,17.2,60,0
    .gossip 228611,2 >>|cRXP_WARN_Busca al |cRXP_FRIENDLY_Espadachín deambulante|r por todo Silithus|r
    >>|cRXP_WARN_Habla con el |cRXP_FRIENDLY_Espadachín deambulante|r. Debes seleccionar la dificultad Media o Difícil para obtener la runa|r
    >>|cRXP_WARN_Serás teleportado instantáneamente a una pequeña plataforma y comenzará el encuentro contra|r |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Lanzará habilidades que se parecen a [Rajar]. Cuando veas esas animaciones, aléjate rápidamente de ellas|r
    >>|cRXP_WARN_Cuando lance [Pisotón atronador] DEBES moverte a uno de los pequeños bordes que sobresalen de la plataforma; de lo contrario, serás repelido|r
    >>|cRXP_WARN_También se recomienda llevar la runa de|r |T132342:0|t[Ataque de la victoria] |cRXP_WARN_ya que estarás matando esbirros durante todo el combate|r
    .unitscan Wandering Swordsman
step
    .train 440494,1
    >>|cRXP_WARN_Derrota a |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Lanzará habilidades que se parecen a [Rajar]. Cuando veas esas animaciones, aléjate rápidamente de ellas|r
    >>|cRXP_WARN_Cuando lance [Pisotón atronador] DEBES moverte a uno de los pequeños bordes que sobresalen de la plataforma; de lo contrario, serás repelido|r
    >>|cRXP_WARN_Una vez que lo hayas derrotado, acepta y entrega la misión|r
    .accept 84317 >> Acepta la misión Medianoche infinita
    .turnin 84317 >> Entrega la misión Medianoche infinita
    .mob Titanic Watcher
step
    .train 440494 >>|cRXP_WARN_Usa las|r |T133739:0|t[|cRXP_LOOT_Perspectivas de errante atemporal|r] |cRXP_WARN_para aprender|r |T132346:0|t[Muerte súbita]
    .use 226679
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Ola de choque
#name Ola de choque - 60 (Azeroth)

step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
step
    .train 440496,1
    .goto Tanaris,59.2,91.5
    >>|cRXP_WARN_Dirígete al sur de Tanaris por la costa|r
    >>Haz clic en el |cRXP_PICK_Mech semienterrado|r y en la |cRXP_PICK_Escotilla de acceso|r del suelo
    .accept 84135 >> Acepta la misión Robot de playa
    .turnin 84135 >> Entrega la misión Robot de playa
    .accept 84137 >> Acepta la misión Romance mecánico
step
    .train 440496,1
    #completewith next
    .cast 459613 >> |cRXP_WARN_Usa el|r |T134731:0|t[Acelerante de flotabilidad guiada] |cRXP_WARN_para aumentar tu velocidad de nado durante los próximos 4 min.|r
    .use 226856
step
    .train 440496,1
    >>|cRXP_WARN_NOTA: ¡NO HAY FLECHA PARA ESTE PASO!|r
    >>|cRXP_WARN_Ahora debes nadar hacia el sur a la isla remota y hablar con |cRXP_FRIENDLY_Sebastian Jurgens|r. Debes nadar a través de aguas que provocan fatiga para llegar hasta él. Dirígete hacia la plataforma petrolífera ubicada en la isla para encontrarlo|r
    .turnin 84137 >> Entrega la misión Romance mecánico
    .accept 84138 >> Acepta la misión Fríos favores
    .target Sebastian Jurgens
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Viaja a Cuna del Invierno
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Numi|r
    .turnin 84138 >> Entrega la misión Fríos favores
    .accept 84146 >> Acepta la misión Bolsa roja extraviada
    .target Numi
step
    #completewith next
    .zone Burning Steppes >> Viaja a Las Estepas Ardientes
step
    .train 440496,1
    .goto Burning Steppes,52.955,24.374
    >>Haz clic en la |cRXP_PICK_Bolsa roja|r del suelo
    .turnin 84146 >> Entrega la misión Bolsa roja extraviada
    .accept 84211 >> Acepta la misión Guarida de cazadores furtivos
    .target Red Bag
step
    .train 440496,1
    #loop
    .goto Burning Steppes,47.0,27.2,45,0
    .goto Burning Steppes,46.4,21.4,45,0
    .goto Burning Steppes,52.95,24.37,45,0
    >>Mata |cRXP_ENEMY_Truhanes Roca Negra|r y |cRXP_ENEMY_Contrabandistas de Sulfuron|r. Despójalos para obtener sus |cRXP_LOOT_Amopladores verticales exteriores compuestos|r y |cRXP_LOOT_Rendijas de níquel con inserciones latonadas|r
    .complete 84211,1
    .complete 84211,2
    .mob Blackrock Bootlegger
    .mob Sulfuron Smuggler
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Viaja a Cuna del Invierno
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Numi|r
    .turnin 84211 >> Entrega la misión Guarida de cazadores furtivos
    .accept 84212 >> Acepta la misión ¡Es MI libro!
    .target Numi
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
step
    .train 440496,1
    >>|cRXP_WARN_Regresa de nuevo con |cRXP_FRIENDLY_Sebastian Jurgens|r a la isla remota del sur|r
    .turnin 84212 >> Entrega la misión ¡Es MI libro!
    .accept 84213 >> Acepta la misión Que no falle la falla...
    .target Sebastian Jurgens
step
    .train 440496,1
    .zone Westfall >> |cRXP_WARN_Sigue a |cRXP_FRIENDLY_Sebastian Jurgens|r hasta el teletransportador. Te teletransportará a Páramos de Poniente|r << Alliance
    .zone Tirisfal Glades >> |cRXP_WARN_Sigue a |cRXP_FRIENDLY_Sebastian Jurgens|r hasta el teletransportador. Te teletransportará a Claros de Tirisfal|r << Horde
    .target Sebastian Jurgens
step
    .train 440496,1
    >>|cRXP_WARN_¡BUSCA UN GRUPO QUE TE AYUDE CON ESTO! ¡DEBES TENER AL MENOS UN TANQUE Y UN SANADOR QUE TE AYUDEN!|r
    >>Habla con |cRXP_FRIENDLY_Sebastian Jurgens|r para invocar al |cRXP_ENEMY_Gólem de la cosecha V000-A|r
    >>Mata al |cRXP_ENEMY_Gólem de la cosecha V000-A|r
    .complete 84213,1
    .mob Harvest Golem V000-A
step
    .train 440496,1
    >>Haz clic en el |cRXP_PICK_Brazo mecánico|r del suelo
    .turnin 84213 >> Entrega la misión Que no falle la falla...
step
    .train 440496 >>|cRXP_WARN_Usa la|r |T133738:0|t[|cRXP_LOOT_Premonición y Visión de combate|r] |cRXP_WARN_para aprender|r |T236312:0|t[Ola de choque]
    .use 226678
]])
