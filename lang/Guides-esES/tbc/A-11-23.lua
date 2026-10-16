if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#xprate >1.49 << Human Warlock
#name 12-14 Costa Oscura
#displayname 10-14 Costa Oscura << Dwarf Hunter
#displayname 11-14 Costa Oscura << !Human !Mage
#displayname 12-14 Costa Oscura << Gnome Mage
#subgroup RestedXP Alianza 1-20
#defaultfor Human/NightElf/Dwarf/Gnome !Warlock
#next 14-20 Bloodmyst

step << !NightElf
    #optional
    .abandon 6392 >> Abandona la misión Regresa junto a Brock. No lo entregarás
step << !NightElf
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r en la planta baja del cuartel
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r << Hunter
    .vendor 1448 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
	.target Neal Allen
    .money <0.08 << !Hunter
    .zoneskip Darkshore
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r dentro
    .vendor 1453 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle para tomar el barco hacia Auberdine
    .zoneskip Darkshore
step << !NightElf
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compra hasta 20|r |T133918:0|t[Pargo de lodo boquilargo] |cRXP_WARN_a este vendedor|r
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Viaja escaleras arriba hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >> Acepta la misión Tierras apestadas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acepta la misión La extensión de la amenaza
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
    .xp <11,1
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>Mata a los |cRXP_ENEMY_Volantones zancudos del bosque|r y a los |cRXP_ENEMY_Zancudos del bosques|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado, los|r |cRXP_ENEMY_Volantones zancudos del bosque|r |T132307:0|t[Huyen] |cRXP_WARN_al <30% de salud|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    #optional
    #completewith DarkshoreEnd
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Envía tu mascota a atacar al |cRXP_ENEMY_Oso Cardo|r. Una vez que tu mascota sea aturdida por el |cRXP_ENEMY_Oso Cardo|r, abandona tu mascota y empieza a domesticarla|r
    .train 2981 >> |cRXP_WARN_Ataca a enemigos con ella para aprender|r |T132140:0|t[Zarpa (Rango 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .target Thistle Bear
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    >>|cRXP_WARN_Puede que necesites entrar al agua para encontrarlos|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Abre la |cRXP_PICK_Criatura marina varada|r. Despójala para obtener los |cRXP_LOOT_Huesos de criatura marina|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Usar|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Oso cardo rabioso|r. It can be used from any range as long as you have one targeted|r
    >>|cRXP_WARN_==NO USES EL OBJETO DE MISIÓN SI NO HAY OSO CERCA==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Corre hacia el borde del Campamento Fúrbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
#optional
    .xp 10+6760 >> Grind to 6760+/7600xp (NOT TRANSLATED IN :esMX YET)
step
    #label Auber1
    #completewith next
    .subzone 442 >> Viaja a Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
step
#optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
#optional
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Abre la |cRXP_PICK_Criatura marina varada|r. Despójala para obtener los |cRXP_LOOT_Huesos de criatura marina|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entrega la misión Varado
    .accept 4681 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >> Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439,32.432,43.744,15 >> Viaja al final del muelle, luego salta al agua
step
    .goto 1439,31.841,46.304
    >>Abre la |cRXP_PICK_Tortuga marina esquelética|r. Despójala para obtener los |cRXP_LOOT_Restos de tortuga marina|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step << !Dwarf/!Hunter
    .xp 12
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .accept 2138 >> Acepta la misión La limpieza de la infección
    .target Tharnariun Treetender
step
#xprate >1.49
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .target Terenthis
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target Terenthis
step
#xprate >1.49
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .accept 958 >> Acepta la misión Las herramientas de los Altonato
    .target Thundris Windweaver
step
#xprate >1.49
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .target Thundris Windweaver
step
    #optional
    #completewith HSAuber
    >>Mata a los |cRXP_ENEMY_Volantones zancudos del bosque|r y a los |cRXP_ENEMY_Zancudos del bosques|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado, los|r |cRXP_ENEMY_Volantones zancudos del bosque|r |T132307:0|t[Huyen] |cRXP_WARN_al <30% de salud|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_Entra en la Cueva Lechúcico lunar|r
    .cast 18974 >> |cRXP_WARN_Usa el|r |T132857:0|t[Polvo de luna Cenarion] |cRXP_WARN_en la |cRXP_PICK_Piedra de lechúcico lunar|r dentro de la cueva para invocar a|r |cRXP_ENEMY_Garraluna|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >> Mata a |cRXP_ENEMY_Garraluna|r. Habla con el |cRXP_FRIENDLY_Espíritu de Garraluna|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Mata a los |cRXP_ENEMY_Grells salvaje|r y a los |cRXP_ENEMY_Duendes vil|r. Despójalos para obtener sus |cRXP_LOOT_Pendientes grell|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Sátiros Deth'ryll|r por ahora|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_No tienen reapariciones dinámicas. Omite este paso si no encuentras ningún|r |cRXP_ENEMY_Sátiro Deth'ryll|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isOnQuest 956
step
#xprate >1.49
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
#xprate <1.5
    #optional
    .abandon 956 >> Abandona la misión Bashal'Aran
step << !Draenei
#xprate <1.5
    .goto 1439,53.4,28.8,0
    .goto 1439,54.8,22.8,0
    .goto 1439,44.6,24.8,0
    .goto 1439,49.8,32.8,0
    #completewith HSAuber
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    >>|cRXP_WARN_Si se te agotan los |cRXP_ENEMY_Rabiosos Osos del Cardo| para matar, salta este paso. Lo completarás más adelante|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .zoneskip Darkshore,1 << Druid
step << !Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Vuela a la Aldea Rut'theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    .isQuestComplete 6001
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 6001 >> Entrega la misión Cuerpo y corazón
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step
    #label HSAuber
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #completewith next
    .subzone 442 >> Regresa a Auberdine
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .vendor 6301 >>|cRXP_BUY_Cómprale|r |T134059:0|t[Especias suaves] |cRXP_BUY_hasta que tengas|r |T134059:0|t[Especias suaves] |cRXP_BUY_en cantidad igual o mayor que los|r |T132832:0|t[Huevos pequeños] |cRXP_BUY_que tienes actualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestAvailable 2178
step
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaja hacia la|cRXP_PICK_ Hoguera|r en el suelo|r
    +Empieza con |T133971:0|t[Cocina] |cRXP_WARN_elaborando|r |T132834:0|t[Huevo a las finas hierbas]|cRXP_WARN_. Haz esto hasta que tu|r |T133971:0|t[Cocina] |cRXP_WARN_haya alcanzado al menos el nivel 10|r
    >>|cRXP_WARN_Continúa subiendo el nivel de tu|r |T133971:0|t[Cocina] |cRXP_WARN_ hasta que se te acaben los|r |T132832:0|t[Huevos pequeños] << !sod
    >>|cRXP_WARN_Hay una misión en Bosque del Ocaso más adelante que requiere que tu|r |T133971:0|t[Cocina] |cRXP_WARN_sea de nivel 50 o superior. También puedes cocinar esto cuando subas al barco pronto|r << !sod
    .skill cooking,50,1
    .skill cooking,<1,1 -- shows if cooking is >1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .isQuestComplete 4762
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    #completewith FinalAuber
    >>Mata a los |cRXP_ENEMY_Volantones zancudos del bosque|r y a los |cRXP_ENEMY_Zancudos del bosques|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado, los|r |cRXP_ENEMY_Volantones zancudos del bosque|r |T132307:0|t[Huyen] |cRXP_WARN_al <30% de salud|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << !Dwarf/!Hunter
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can aggro together|r (NOT TRANSLATED IN :esMX YET)
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
step
#xprate <1.5
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    >>|cRXP_WARN_Ten en cuenta que ella tiene un tiempo de aparición de 7-8 minutos y 4 ubicaciones diferentes en Ameth'Aran|r
    >>|cRXP_WARN_Podrías querer agruparte con otros cercanos si no puedes encontrarla. Pide en el Hablar Gran general (/1) para agruparte con cualquier otra persona que también la esté buscando. Omite este paso si no puedes encontrarla|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .isOnQuest 963
step
#xprate <1.5
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Mata a los |cRXP_ENEMY_Altonatos malditos|r, a los |cRXP_ENEMY_Altonatos en pena|r y a los |cRXP_ENEMY_Altonatos gemebunda|r. Despójalos para obtener sus |cRXP_LOOT_Reliquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    .goto 1439,42.652,63.145
    >>Haz clic en la |cRXP_PICK_La caída de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    .goto 1439,42.373,61.815
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
#xprate <1.5
    .goto Darkshore,43.30,58.70
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
#xprate <1.5
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 953 >> Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    #sticky
    #label bears1A
    #loop
    .goto Darkshore,39.03,67.32,0
    .goto Darkshore,42.54,67.76,0
    .goto Darkshore,39.99,78.46,0
    .goto Darkshore,39.03,67.32,70,0
    .goto Darkshore,42.54,67.76,70,0
    .goto Darkshore,39.99,78.46,70,0
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r en el sur de Costa Oscura
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Instantáneo Cuerpo a cuerpo: Reduce toda la regeneración de salud en un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#xprate <1.5
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
step << Draenei
#xprate <1.5
    .goto 1439/1,579.500,5240.300
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4728 >>Acepta la misión Criatura marina varada
step
#xprate <1.5
    #requires bears1A
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
#xprate <1.5
    #completewith DarkshoreEnd
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 442 -- auberdine
    .subzoneskip 446 -- bashal'aran
step << !Draenei
#xprate <1.5
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .target Asterion
step
#xprate <1.5
    #label FinalAuber
    #completewith DarkshoreEnd
    .subzone 442 >> Viaja a Auberdine
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Entrega la misión La extensión de la amenaza
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 958 >> Entrega la misión Las herramientas de los Altonato
    .target Thundris Windweaver
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4813 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada

    --TODO: ADD ids for all the other turn ins (survival guide)
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4722
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    >>|cRXP_WARN_Es posible que necesites esperar a que termine su Roleplay si alguien más acaba de entregar la misión|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Nivel tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Azuremyst Isle|r
    .zone Azuremyst Isle >> Toma el barco hacia la Isla Bruma Azur
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Draenei
	#label DarkshoreEnd
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Toma el barco hacia la Isla Bruma Azur
step << Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .target Asterion
step << Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei
    .hs >> Viaja a Isla Bruma de Sangre
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name 14-20 Bloodmyst
#subgroup RestedXP Alianza 1-20
#defaultfor !Draenei
#next 20-21 Costa Oscura;21-23 Vallefresno << !Warlock
#next 20-23 Costa Oscura/Vallefresno << Warlock

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalannius|r
    .trainer >> Aprende tus hechizos de clase
    .target Shalannius
step
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Entra en El Exodar por la rampa trasera
step << Warrior/Paladin/Hunter/Rogue
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Sube por las rampas hacia |cRXP_FRIENDLY_Maestro Maestro Maestro Behomat|r en el piso superior << Warrior
    .goto The Exodar,50.50,81.28,20 >> Sube las rampas hacia |cRXP_FRIENDLY_Handiir|r en el piso superior << Paladin/Hunter/Rogue
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Behomat|r
    .trainer >> Aprende tus hechizos de clase
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Aprende Espadas de 2 manos << Paladin/Warrior
    .train 199 >> Aprende Mazas de 2 manos << Paladin/Warrior
    .train 198 >> Aprende Mazas de 1 mano << Rogue
    .train 201 >> Aprende Espadas de 1 mano << Rogue
    .train 5011 >> Aprende el uso de Ballestas << Hunter
    .target Handiir
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vord|r
	.trainer >> Aprende tus hechizos de clase
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ganaar|r
	.train 4188 >> Aprende |T136112:0|t[Gran aguante]
    .train 24549 >> Aprende |T136094:0|t[Armadura natural]
    .target Ganaar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Aprende tus hechizos de clase
    .target Sulaa
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izmir|r
    .trainer >> Aprende tus hechizos de clase
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edirah|r
    .trainer >> Aprende tus hechizos de clase
    .target Edirah
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Compra los siguientes artículos para entregas de misiones más rápidas en Isla Bruma de Sangre:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T134082:0|t[Fragmentos de cristal irradiado]
    .collect 23984,10
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .isQuestAvailable 9641
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Sal de El Exodar
    .zoneskip The Exodar,1
step << !Draenei
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >> Aprende la ruta de vuelo del Exodar
    .target Stephanos
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Viaja al norte de Isla Bruma de Sangre
    >>|cRXP_WARN_As you quest through Bloodmyst Isle, remember to keep 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you will need it for a class quest around level 24|r (NOT TRANSLATED IN :esMX YET) << Paladin !Draenei
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Acepta la misión La carrera de Kessel
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Viaja al norte a Avanzada de Sangre
    >>|cRXP_WARN_¡Sigue la flecha de cerca! ¡No cruces el puente o serás desmontado!|r
    >>|cRXP_WARN_No ataques a ningún monstruo ni lances hechizos o serás desmontado. También serás desmontado si eres aturdido desde atrás.|r
    >>|cRXP_WARN_Si eres desmontado, abandona la misión "La carrera de Kessel"|r
step
    #optional
    #completewith next
    .subzone 3584 >> Viaja a Avanzada de Sangre
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 9646 >> Acepta la misión SE BUSCA: Garraletal
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cuidador Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Establece tu Piedra de Hogar en Avanzada de Sangre
    .subzoneskip 3584,1
    .bindlocation 3584
step
    #optional
    #sticky
    .abandon 9663 >> Abandona la misión La carrera de Kessel
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .accept 9567 >> Acepta la misión Conoce a tu enemigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .accept 9580 >> Acepta la misión Las necesidades del oso
    .accept 9643 >> Acepta la misión Parras constrictoras
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Acepta la misión La colección de champiñones de Mac'Aree
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >> Acepta la misión Liga de Expedicionarios, ¿cosa de gnomos?
    .target Prospector Nachlan
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
	.turnin 9641 >> Entrega la misión Fragmentos de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
    .target Vindicator Boros
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Admetius|r
    .accept 9693 >> Acepta la misión ¿Qué es Argus para ti?
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .accept 9581 >> Acepta la misión Las lecciones de los cristales
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Entrega la misión ¿Qué es Argus para ti?
    .accept 9694 >> Acepta la misión Avanzada de Sangre
step << Dwarf Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mata a los |cRXP_ENEMY_Espías Sunhawk|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << Dwarf Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Entrega la misión Vigía de Sangre
    .accept 9779 >> Acepta la misión Interceptando el mensaje
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Acepta la misión Aquí te pillo, aquí te marco
step
	#completewith RuinousPolyspore
	>>Despoja un |cRXP_LOOT_Blood Champiñón|r en el suelo
    >>|cRXP_WARN_Están repartidos por toda Isla Bruma de Sangre|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Despoja un |cRXP_LOOT_Fel Cono Hongo|r en el suelo
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Mata a |cRXP_ENEMY_Tzerak|r. Despójalo para obtener |T134518:0|t[|cRXP_LOOT_Placa de la armadura de Tzerak|r]
    .use 23900 >> |cRXP_WARN_Usar|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acepta la misión Signs of the
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Haz clic en los |cRXP_PICK_Nazzivus Monument Glyphs|r en la pared del altar
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Mata a |cRXP_ENEMY_Tzerak|r. Despójalo para obtener |T134518:0|t[|cRXP_LOOT_Placa de la armadura de Tzerak|r]
    .use 23900 >> |cRXP_WARN_Usar|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_Si no lo ves patrullando por los campamentos, espera a que aparezca en el símbolo púrpura en el suelo al sur. Puede tardar 3-6 minutos en aparecer|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acepta la misión Signs of the
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Mata a los |cRXP_ENEMY_Nazzivus Satyrs|r y a los |cRXP_ENEMY_Nazzivus Felsworns|r
    >>|cRXP_WARN_Es posible que necesites matar a los |cRXP_ENEMY_Nazzivus Rogues|r si no ves los |cRXP_ENEMY_Satyrs|r o los |cRXP_ENEMY_Felsworns|r para que reaparezcan|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Despoja un |cRXP_LOOT_Fel Cono Hongo|r en el suelo
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Usa el|r |T135619:0|t[Marcador múrloc] |cRXP_WARN_en|r |cRXP_ENEMY_Blacksilt Exploradores|r
    >>|cRXP_WARN_NO mates a los|r |cRXP_ENEMY_Blacksilt Exploradores|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	>>Mata a |cRXP_ENEMY_Aleta Cruel|r. Despójalo para obtener |T133339:0|t[|cRXP_LOOT_Colgante de cristal rojo|r]
    .use 23870 >>|cRXP_WARN_Usa el|r |T133339:0|t[|cRXP_LOOT_Red Cristal Pendant|r] |cRXP_WARN_para comenzar la misión|r
    >>|cRXP_ENEMY_Aleta Cruel|r |cRXP_WARN_patrulla por la costa|r
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >> Acepta la misión El colgante de Aleta Cruel
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>|cRXP_WARN_Usa el|r |T135619:0|t[Marcador múrloc] |cRXP_WARN_en|r |cRXP_ENEMY_Blacksilt Exploradores|r
    >>|cRXP_WARN_NO mates a los|r |cRXP_ENEMY_Blacksilt Exploradores|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Usa el|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_en el|r |cRXP_PICK_Impact Site Cristal|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Mata al |cRXP_ENEMY_Asediador cuernohediondo|r. Despójalo para obtener el |cRXP_LOOT_Aquatic Stinkhorn|r
    >>|cRXP_WARN_También puedes despojar el |cRXP_LOOT_Aquatic Stinkhorn|r bajo el agua|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #completewith next
    .subzone 3584 >> Viaja a Avanzada de Sangre
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Entrega la misión El colgante de Aleta Cruel
    .turnin 9629 >> Entrega la misión Aquí te pillo, aquí te marco
    .accept 9574 >> Acepta la misión Víctimas de la corrupción
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Mata a los |cRXP_ENEMY_Corrupted Treants|r. Despójalos para su |cRXP_LOOT_Crystallized Corteza|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Entrega la misión Víctimas de la corrupción
    .accept 9578 >> Acepta la misión En busca de Galaen
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .turnin 9594 >> Entrega la misión Signos de la Legión
    .turnin 9567 >> Entrega la misión Conoce a tu enemigo
    .accept 9569 >> Acepta la misión Contener la amenaza
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .turnin 9567 >> Entrega la misión Conoce a tu enemigo
    .accept 9569 >> Acepta la misión Contener la amenaza
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
	.turnin 9641 >> Entrega la misión Fragmentos de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132775:0|t[Cristal de Perspicacia] |cRXP_WARN_objeto consumible (Aumenta Intelecto en 5. Dura 30 minutos.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132786:0|t[Cristal de Ferocidad] |cRXP_WARN_objeto consumible (Aumenta poder de ataque en 10. Dura 30 minutos.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9581 >> Entrega la misión Las lecciones de los cristales
    .accept 9620 >> Acepta la misión El equipo de investigación desaparecido
    .target Harbinger Mikolaas
step << !Dwarf/!Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mata a los |cRXP_ENEMY_Espías Sunhawk|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << !Dwarf/!Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Entrega la misión Vigía de Sangre
    .accept 9779 >> Acepta la misión Interceptando el mensaje
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mata a los |cRXP_ENEMY_Sunhawk Spies|r. Despoja la |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    #completewith next
    .subzone 3591 >> Viaja a las Ruinas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el muerto |cRXP_FRIENDLY_Cartógrafo draenei|r
    .turnin 9620 >> Entrega la misión El equipo de investigación desaparecido
    .accept 9628 >> Acepta la misión Recuperar los datos
    .target Draenei Cartographer
step
	#completewith next
	>>Despoja una |cRXP_LOOT_Ruinous Polyspore|r en el suelo
    >>|cRXP_WARN_Parece un pequeño hongo azul encontrado alrededor de las ruinas Naga|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Mata a los |cRXP_ENEMY_Wrathscale Marauders|r y a las |cRXP_ENEMY_Wrathscale Sorceresses|r. Despójalos para el |cRXP_LOOT_Survey Data Cristal|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    #label RuinousPolyspore
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Despoja una |cRXP_LOOT_Ruinous Polyspore|r en el suelo
    >>|cRXP_WARN_Parece un pequeño hongo azul encontrado alrededor de las ruinas Naga|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,58.6,55.0,0
    .goto Bloodmyst Isle,58.5,66.7,0
    .goto Bloodmyst Isle,50.2,72.5,0
    .goto Bloodmyst Isle,65.3,54.5,10,0
    .goto Bloodmyst Isle,62.5,53.0,10,0
    .goto Bloodmyst Isle,58.6,55.0,10,0
    .goto Bloodmyst Isle,62.8,59.8,10,0
    .goto Bloodmyst Isle,58.9,61.8,10,0
    .goto Bloodmyst Isle,58.5,66.7,10,0
    .goto Bloodmyst Isle,54.1,67.6,10,0
    .goto Bloodmyst Isle,48.5,66.7,10,0
    .goto Bloodmyst Isle,50.2,72.5,10,0
    .goto Bloodmyst Isle,53.5,75.7,10,0
	>>Despoja un |cRXP_LOOT_Blood Champiñón|r en el suelo
    >>|cRXP_WARN_Estos aparecen en toda la Isla Bruma de Sangre|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith next
    .subzone 3598 >> Viaja a la Isla Wyrmscar
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .accept 9687 >> Acepta la misión Restaurar la santidad
    .target Prince Toreth
step
    #completewith FlyExo
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >> Entrega la misión La colección de champiñones de Mac'Aree
    .accept 9649 >> Acepta la misión Las lágrimas de Ysera
    .target Maatparm
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9779 >> Entrega la misión Interceptando el mensaje
    .accept 9696 >> Acepta la misión Traducciones
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Interrogadora Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >> Entrega la misión Traducciones
    .accept 9698 >> Acepta la misión Audiencia con el Profeta
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9628 >> Entrega la misión Recuperar los datos
    .accept 9584 >> Acepta la misión La segunda muestra
    .target Harbinger Mikolaas
step
    #label FlyExo
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Vuela a El Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Desciende al interior de El Exodar
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9698 >> Entrega la misión Audiencia con el Profeta
    .accept 9699 >> Acepta la misión Verdad o mentira
step
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .accept 9699 >> Acepta la misión Verdad o mentira
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
	.isOnQuest 9699,9584,9643,9580,10063
    .hs >> Viajar a Avanzada de Sangre
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Vuela a Avanzada de Sangre
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9699 >> Entrega la misión Verdad o mentira
    .accept 9700 >> Acepta la misión Disparando magia en la oscuridad
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132775:0|t[Cristal de Perspicacia] |cRXP_WARN_objeto consumible (Aumenta Intelecto en 5. Dura 30 minutos.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132786:0|t[Cristal de Ferocidad] |cRXP_WARN_objeto consumible (Aumenta poder de ataque en 10. Dura 30 minutos.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Usa el|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_en el|r |cRXP_PICK_Altered Bloodmyst Cristal|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9584 >> Entrega la misión La segunda muestra
    .accept 9585 >> Acepta la misión La última muestra
    .target Harbinger Mikolaas
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Viaja a Axxarien
    >>Mata a los |cRXP_ENEMY_Mutated Constrictors|r. Despójalos por sus |cRXP_LOOT_Thorny Parras constrictoras|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Mata a cualquiera que veas en el camino a Axxarien|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Despoja los |cRXP_LOOT_Corrupted Cristales|r en el suelo
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Mata a |cRXP_ENEMY_Zevrax|r, a |cRXP_ENEMY_Axxarien Shadowstalkers|r y a |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>|cRXP_WARN_Use the|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_on the|r |cRXP_PICK_Axxarien Cristal|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Despoja los |cRXP_LOOT_Corrupted Cristales|r en el suelo
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Mata a |cRXP_ENEMY_Zevrax|r, a |cRXP_ENEMY_Axxarien Shadowstalkers|r y a |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Mata a |cRXP_ENEMY_Axxarien Shadowstalkers|r y a |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Despoja los |cRXP_LOOT_Corrupted Cristales|r en el suelo
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Mata a los |cRXP_ENEMY_Mutated Constrictors|r. Despójalos por sus |cRXP_LOOT_Thorny Parras constrictoras|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Mata a |cRXP_ENEMY_Garraletal|r. Despójalo para obtener |cRXP_LOOT_Garraletal's Paw|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clopper Zumbibang|r
    .turnin 10063 >> Entrega la misión Liga de Expedicionarios, ¿cosa de gnomos?
    .accept 9548 >> Acepta la misión Equipamiento robado
    .accept 9549 >> Acepta la misión Los artefactos de los Cienonegro
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clopper Zumbibang|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si no lo tiene|r
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Mata a los |cRXP_ENEMY_Blacksilt Seers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Idols|r
    >>Mata a los |cRXP_ENEMY_Blacksilt Warriors|r y a |cRXP_ENEMY_Blacksilt Shorestrikers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Despoja el |cRXP_LOOT_Clopper's Equipo|r en el suelo
    >>|cRXP_WARN_Puede aparecer en cualquiera de los campamentos de Múrloc|r
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Mata a los |cRXP_ENEMY_Blacksilt Seers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Idols|r
    >>Mata a los |cRXP_ENEMY_Blacksilt Warriors|r y a |cRXP_ENEMY_Blacksilt Shorestrikers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clopper Zumbibang|r
    .turnin 9548 >> Entrega la misión Equipamiento robado
    .turnin 9549 >> Entrega la misión Los artefactos de los Cienonegro
    .target Clopper Wizbang
step
    .use 23837 >>|cRXP_WARN_Usa la|r |T134269:0|t[Mapa del tesoro deteriorado] |cRXP_WARN_para empezar la misión|r
    .accept 9550 >> Acepta la misión Un mapa con destino desconocido
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Kill |cRXP_ENEMY_Anomalía del Vacío|r and explore the Sun Portal Site
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Mata a los |cRXP_ENEMY_Mutated Constrictors|r. Despójalos por sus |cRXP_LOOT_Thorny Parras constrictoras|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Prioriza |cRXP_ENEMY_Mutated Constrictors|r ya que tendrás tiempo después para terminar con los|r |cRXP_ENEMY_Elder Brown Osos|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Loot the |cRXP_LOOT_Huesos de dragón|r on the ground
    >>|cRXP_WARN_Estos pueden ser difíciles de ver y normalmente se encuentran alrededor de los campamentos pequeños|r
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Haz clic en el |cRXP_PICK_Battered Ancient Libro|r en el suelo
    .turnin 9550 >> Entrega la misión Un mapa con destino desconocido
    .accept 9557 >> Acepta la misión Descifrar el libro
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .turnin 9557 >> Entrega la misión Descifrar el libro
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9585 >> Entrega la misión La última muestra
    .accept 10064 >> Acepta la misión Habla con la Mano
    .turnin 9646 >> Entrega la misión SE BUSCA: Garraletal
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .accept 9561 >> Acepta la misión Las palabras de Nolkai
    .accept 9632 >> Acepta la misión Aliados inesperados
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9700 >> Entrega la misión Disparando magia en la oscuridad
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Kuros|r
    .accept 9703 >> Acepta la misión El Crionúcleo
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .turnin 9643 >> Entrega la misión Parras constrictoras
    .accept 9647 >> Acepta la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9643 >> Entrega la misión Parras constrictoras
    .accept 9647 >> Acepta la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .turnin 9569 >> Entrega la misión Contener la amenaza
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Acepta la misión La expedición desaparecida
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges al Cyro-Núcleo|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges al Cyro-Núcleo|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >> Viaja al Cyro-Núcleo
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Haz clic en el |cRXP_FRIENDLY_Cadáver de Galaen|r
    >>|cRXP_WARN_Evita intentar matar muchos |cRXP_ENEMY_Sunhawk Reclaimers|r si es posible mientras te diriges al |cRXP_FRIENDLY_Cadáver de Galaen|r
    .turnin 9578 >> Entrega la misión En busca de Galaen
    .accept 9579 >> Acepta la misión El sino de Galaen
    .accept 9706 >> Acepta la misión El diario de Galaen: El destino del vindicador Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Mata a los |cRXP_ENEMY_Sunhawk Reclaimers|r. Despójalos para obtener |cRXP_LOOT_Galaen's Amulet|r y sus |cRXP_LOOT_Medical Suministros|r
    >>También puedes despojar los |cRXP_LOOT_Medical Suministros|r en el suelo
	>>|cRXP_WARN_Usa los pilares y estructuras para romper línea si es necesario para evitar sus|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_lanzamientos|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.isOnQuest 9580
	#completewith GFate
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges a la Avanzada de Sangre|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges a la Avanzada de Sangre|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >> Viaja a Avanzada de Sangre
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Entrega la misión El sino de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Kuros|r
    .turnin 9703 >> Entrega la misión El Crionúcleo
    .turnin 9706 >> Entrega la misión El diario de Galaen: El destino del vindicador Saruan
    .accept 9711 >> Acepta la misión Matis el Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .accept 9748 >> Acepta la misión Agua que no has de beber...
    .accept 9753 >> Acepta la misión Saber es poder << Draenei
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9753 >> Entrega la misión Saber es poder
    .accept 9756 >> Accept What We Don't Know... (NOT TRANSLATED IN :esMX YET)
    .target Exarch Admetius
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_ENEMY_Agente Halcón del Sol capturado|r dentro de la |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9756 >> Entrega la misión Lo que no sabemos
    .accept 9760 >> Acepta la misión El Reposo del Vindicador
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Jorli|r y |cRXP_FRIENDLY_Exploradora Loryi|r
    .turnin 10064 >> Entrega la misión Habla con la Mano
    .accept 10065 >> Acepta la misión Abrirse paso
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Acepta la misión Alimañas del vacío
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Corin|r
    .turnin 9760 >> Entrega la misión El Reposo del Vindicador << Draenei
    .accept 10066 >> Acepta la misión ¡Vaya una maraña de telarañas!
    .accept 10067 >> Acepta la misión Espíritus del agua contaminados
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>|cRXP_WARN_Usa la|r |T134536:0|t[Pistola de bengalas] |cRXP_WARN_en|r |cRXP_ENEMY_Matis el Cruel|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get aggro as |cRXP_ENEMY_Matis the Cruel|r hits very hard|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_ENEMY_Matis el Cruel|r |cRXP_WARN_patrulla una sección grande de la carretera. Su ruta de patrulla está marcada en tu mapa|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Mata a los |cRXP_ENEMY_Void Critters|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_Anomalía del Vacío|r to trigger |cRXP_ENEMY_Void Critters|r to spawn|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Mata a los |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Mata a los |cRXP_ENEMY_Enraged Ravagers|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Mata a los |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicadora Corin|r
    .turnin 10066 >> Entrega la misión ¡Vaya una maraña de telarañas!
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Exploradora Jorli|r
    .turnin 10065 >> Entrega la misión Abrirse paso
    .target Scout Jorli
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mata a los |cRXP_ENEMY_Espíritus del agua contaminados|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicadora Corin|r
    .turnin 10067 >> Entrega la misión Espíritus del agua contaminados
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Investigador Cornelius|r
    .accept 9670 >> Acepta la misión ¡Viven! A lo mejor...
    .target Researcher Cornelius
step
	#completewith next
	>>Kill the |cRXP_ENEMY_Criatura enredada|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't aggro you|r (NOT TRANSLATED IN :esMX YET)
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Mata a los |cRXP_ENEMY_Myst Leechers|r, a los |cRXP_ENEMY_Myst Spinners|r y a |cRXP_ENEMY_Zarakh|r en la cima de Amberweb Pasar
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Kill the |cRXP_ENEMY_Criatura enredada|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't aggro you|r (NOT TRANSLATED IN :esMX YET)
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Investigador Cornelius|r
    .turnin 9670 >> Entrega la misión ¡Viven! A lo mejor...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Usa el|r |T134870:0|t[Frasco de muestra de agua] |cRXP_WARN_en la base de la cascada|r
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step << Druid
    .isQuestAvailable 26,6121
	#completewith Lessons
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestAvailable 26,6121
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Vuela a la Aldea Rut'theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    .isQuestAvailable 26,6121
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    #label Lessons
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 26 >> Acepta la misión Una lección que aprender
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 6121 >> Entrega la misión Nuevas lecciones
    .accept 6122 >> Acepta la misión La fuente del envenenamiento
    .turnin 26 >> Entrega la misión Una lección que aprender
    .accept 29 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    #loop
    .goto Moonglade,54.2,55.6,0
    .goto Moonglade,53.1,48.4,60,0
    .goto Moonglade,54.2,55.6,60,0
    .goto Moonglade,60.5,58.5,60,0
    >>Open a |cRXP_PICK_Bauble Container|r in the lake. Loot it for the |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r] (NOT TRANSLATED IN :esMX YET)
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use the|r |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r] |cRXP_WARN_at the Shrine of Remulos tree|r (NOT TRANSLATED IN :esMX YET)
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Entrega la misión La prueba del lago
    .accept 272 >> Acepta la misión La prueba del león marino
    .target Tajarri
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Viajar a Avanzada de Sangre
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Entrega la misión La expedición desaparecida
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .turnin 9741 >> Entrega la misión Alimañas del vacío
    .turnin 9748 >> Entrega la misión Agua que no has de beber...
    .accept 9746 >> Acepta la misión Los límites del agotamiento << Hunter/Shaman/Mage/Warlock
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Kuros|r
    .turnin 9711 >> Entrega la misión Matis el Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    #completewith next
    .subzone 3591 >> Viaja a las Ruinas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Haz clic en el |cRXP_PICK_Túmulo de barro|r del suelo
    .turnin 9561 >> Entrega la misión Las palabras de Nolkai
step
    #completewith next
    .subzone 3598 >> Viaja a la Isla Wyrmscar
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .turnin 9687 >> Entrega la misión Restaurar la santidad
    .accept 9688 >> Acepta la misión Entrando en el Sueño
    .target Prince Toreth
step
	#completewith TurninRazormaw
	>>Despoja las |cRXP_LOOT_Lágrimas de Ysera|r en el suelo
    >>|cRXP_WARN_Se ven como pequeños hongos verdes|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Mata a los |cRXP_ENEMY_Veridian Whelps|r y a los |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .turnin 9688 >> Entrega la misión Entrando en el Sueño
    .accept 9689 >> Acepta la misión Tajobuche
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Click the |cRXP_PICK_Pira perenne|r atop the mountain to summon |cRXP_ENEMY_Razormaw|r
    .timer 36,Tajobuche Roleplay
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Mata al |cRXP_ENEMY_Tajobuche|r
    >>|cRXP_ENEMY_Tajobuche|r |cRXP_WARN_es un enemigo élite de nivel 20. Tarda aproximadamente 35 segundos en aterrizar|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Encuentra un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Recuerda lanzar|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ti o un miembro del grupo si es necesario|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    #label TurninRazormaw
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .turnin 9689 >> Entrega la misión Tajobuche
    .target Prince Toreth
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Despoja las |cRXP_LOOT_Lágrimas de Ysera|r en el suelo
    >>|cRXP_WARN_Se ven como pequeños hongos verdes|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << Hunter/Shaman/Mage/Warlock
    .isOnQuest 9746
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Mata a los |cRXP_ENEMY_Sunhawk Pyromancers|r y a los |cRXP_ENEMY_Sunhawk Defenders|r
    >>|cRXP_WARN_Completa esto solo si tienes menos del 90% del nivel 19. Es importante que llegues al nivel 20 antes de abandonar Isla Bruma de Sangre|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp 19.95,1 -- Skips step if you are above 19.95%
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestComplete 9746
	.xp 20-2700
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestNotComplete 9746
    .xp 20-1350
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >> Entrega la misión Las lágrimas de Ysera
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .turnin 9746 >> Entrega la misión Los límites del agotamiento
    .target Vindicator Aesom
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
    .xp <20,1
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Vuela a El Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Mage/Hunter/Warrior/Priest
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Desciende al interior de El Exodar
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Sube por las rampas hacia |cRXP_FRIENDLY_Maestro Maestro Maestro Behomat|r en el piso superior
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Behomat|r
    .trainer >> Aprende tus hechizos de clase
    .target Behomat
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Aprende tus hechizos de clase
    .target Sulaa
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edirah|r
    .trainer >> Aprende tus hechizos de clase
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >> Aprende |T135756:0|t[Teletransporte a: El Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Compra al menos uno|r |T134419:0|t[Runa de teletransporte] |cRXP_BUY_de ella|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vord|r
	.trainer >> Aprende tus hechizos de clase
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Entrena los hechizos de tu mascota
    .target Ganaar
step << Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_a ella o revisa la Casa de Subastas por algo mejor o más barato|r
    >>|cRXP_WARN_Equípala más tarde una vez que hayas entrenado Arcos|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado]
    >>|cRXP_WARN_Equípala más tarde una vez que hayas entrenado Arcos|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
    .train 264,3
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_de él o busca uno mejor en la Casa de Subastas|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_de él|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Equipa la|r |T135139:0|t[Varita ardiente]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izmir|r
    .trainer >> Aprende tus hechizos de clase
    .target Izmir
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cazadora Kella Arconocturno|r
    >>|cRXP_FRIENDLY_Huntress Kella Nightbow|r |cRXP_WARN_is located outside the back entrance of The Exodar|r (NOT TRANSLATED IN :esMX YET)
    .turnin 9632 >> Entrega la misión Aliados Inesperados
    .accept 9633 >> Acepta la misión Camino de Auberdine
    .target Huntress Kella Nightbow
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine>>Vuela a Costa Oscura
    .target Sindrayl
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step << !NightElf Hunter/!NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
step << !NightElf Hunter
    >>|cRXP_WARN_Subepor la rampa a la derecha de|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Entrena los hechizos de tu mascota
    .target Silvaria
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Aprende el uso de Arcos
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_a ella o revisa la Casa de Subastas por algo mejor o más barato|r
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado]
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #optional
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r bajo tierra
    .trainer >> Aprende tus hechizos de clase
    .target Syurna
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Cómprale una|r |T135324:0|t[Tizona] |cRXP_BUY_o verifica la Casa de subastas si hay algo mejor/más barato|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135324:0|t[Tizona]|cRXP_BUY_. Equípalo a nivel 21|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darnassus,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Vuela a Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r abajo
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Ahora viajarás a Las Minas de la Muerte|r
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    >>|cRXP_WARN_Alternativamente, puedes verificar la Casa de Subastas pronto para algo mejor o más barato|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << !NightElf !Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milstaff Ojotrueno|r
    .train 3562 >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor 6382 >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorios] |cRXP_BUY_para tus mascotas si lo deseas|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Salta del final del muelle y nada hacia el punto marcado de la ruta
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utiliza el servicio automático de personaje atascado para ir directamente a Forjaz. Tendrás que cerrar sesión en el lugar, luego navega al menú de ayuda en otro personaje (alternativamente, pega el enlace de desatasco a continuación en tu navegador), luego desplázate hacia abajo hasta autoayuda. Haz clic en tu personaje y muévelo. Si no puedes desatascarlo, omite este paso y nada a lo largo de las montañas hacia Páramos de Poniente
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_Haz clic aquí para la referencia del vídeo|r
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_Haz clic aquí para el enlace de desatascarse para servidores de EE.UU.|r
    .link https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_Haz clic aquí para el enlace de desatascarse para servidores de UE|r
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si el sitio web de servicio de personaje atascado no está disponible, nada hacia Páramos de Poniente
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Corre por la costa y dirígete hacia la Colina del Centinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Corre hacia Ventormenta
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia Ventormenta
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
	.xp <20,1
    .target Larimaine Purdue
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que la necesitarás más tarde|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid/Priest
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin/Hunter
    .target Woo Ping
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Westfall >> Vuela a Páramos de Poniente << Human/Dwarf Warrior/Gnome Warrior/Rogue/Warlock
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Grindea a los |cRXP_ENEMY_Gnolls|r al sur de Colina Centinela mientras reúnes un grupo para Minas de la Muerte|r
    .subzone 20 >>Una vez que tu grupo esté reunido, viaja a Arroyo de la Luna
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entra a la Ladronera de los Defias con tu grupo
step
.dungeon DM
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_También puedes completar esto dentro de Minas de la Muerte|r
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
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Sal de Minas de la Muerte por la salida trasera al este de |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r en lo alto de la Torre
    .train 2138 >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith DevourerofSouls
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19835 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .train 8103 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 1856 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Viaja hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r dentro de IV:7 en el piso de arriba
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    #completewith RedridgeRendevous
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge Mountains >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
step << !Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Sal de Ventormenta
step << !Human Rogue
.dungeon DM
    #optional
    .isOnQuest 2281,2360
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << !Human
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
	.target Wiley the Black
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >> Viaja al Molino de Alther
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
step << Rogue
.dungeon DM
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step << Rogue
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Entrega la misión Molino de Alther
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Sentinel Hill >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
step << Rogue
.dungeon DM
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
.dungeon DM
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
step << Rogue
.dungeon DM
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
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
.dungeon DM
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
step << Rogue
.dungeon DM
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
.dungeon DM
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
.dungeon DM
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jasper Vil|r en la planta baja del edificio
    >>Compra componentes para elaborar |T132273:0|t[|cRXP_FRIENDLY_Veneno instantáneo|r] y |T132331:0|t[|cRXP_FRIENDLY_Esfumarse|r] a este vendedor
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
.dungeon DM
    >>Abre tu libro de hechizos y busca |T136242:0|t[|cRXP_FRIENDLY_Venenos|r] la habilidad de la pestaña general. Ábrela y fabrica 20 Venenos Instantáneos. |cRXP_WARN_Recuerda mantenerlos aplicados a ambas armas durante el combate|r
    .collect 6947,20 --Instant Poison (20)
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .train 6192 >> Aprende tus hechizos de clase
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .use 2874 >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .accept 373 >> Acepta la misión La carta sin enviar
    .turnin 373 >> Entrega la misión La carta sin enviar
    .accept 389 >> Acepta la misión Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .turnin 389 >> Entrega la misión Bazil Thredd
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
    >>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .zoneskip Darkshore
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step << NightElf
.dungeon BFD
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
step << !NightElf
.dungeon BFD
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Manados|r y el |cRXP_FRIENDLY_Vigía del Alba Shaedlass|r subiendo las escaleras
    .accept 1199 >> Acepta la misión Cascada Crepuscular
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Acepta la misión Buscando a Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
--
step << !Warlock
#xprate >1.49
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Acepta la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
	.turnin 9633 >> Entrega la misión Camino de Auberdine
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step << !Warlock
#xprate >1.49
    #completewith next
    .goto 1439,35.724,83.696,50 >> Travel to Southern Darkshore (NOT TRANSLATED IN :esMX YET)
step << !Warlock
#xprate >1.49
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Esto comenzará una escolta. Es posible que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .accept 731,1 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 731
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    .complete 731,1
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance !Warlock
#xprate <1.5
#name 20-21 Costa Oscura
#subgroup Alianza 20-32
#defaultfor !Draenei
#next 21-23 Vallefresno

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
step
    .goto Darkshore,37.219,44.227
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Acepta la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 986 >> Acepta la misión El maestro perdido
    .target Terenthis
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
	.turnin 9633 >> Entrega la misión Camino de Auberdine
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el|r |cRXP_PICK_Pozo lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #optional
    #completewith MistVeil
    +|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Amanecer de Plata|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Halo de bruma|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Halo de bruma|r dentro|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #completewith BottomKey
    #optional
    >>Kill |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Reptador de marea escamado|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4725 >> Acepta la misión Tortuga marina varada
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Nada hacia mar adentro|r
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Agilidad acuática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acepta la misión La búsqueda de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Mata |cRXP_ENEMY_Oráculos Brumagris|r y |cRXP_ENEMY_Cazamareas Brumagris|r. Despójalos para obtener la |cRXP_LOOT_Mitad de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>|cRXP_WARN_Puedes cortar la línea de visión (LoS) de las|cRXP_ENEMY_  |T136048:0|t[Descargas de relámpagos] |rde los|r Oráculos Niebla Gris|cRXP_WARN_ usando el barco hundido para evitar recibir su daño|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mata |cRXP_ENEMY_Zancudos del bosque gigantes|r. Despójalos para obtener la |cRXP_LOOT_Parte superior de la llave de Gelkak|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r y a las |cRXP_ENEMY_Matriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>|cRXP_WARN_Ten cuidado con las |cRXP_ENEMY_Matriarcas Acechalunas|r. Siempre atacan con un |cRXP_ENEMY_Cachorro Acechalunas|r a su lado|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >> Habla con |cRXP_FRIENDLY_El Trillomajareitor 4100|r para empezar la escolta
    .skipgossip
    .target The Threshwackonator 4100
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>Escolta al |cRXP_FRIENDLY_El Trillomajareitor 4100|r hasta |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Mata a |cRXP_ENEMY_El Trillomajareitor 4100|r cuando se vuelva hostil
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Entrega la misión La venganza de Gyromast
    .target Gelkak Gyromast
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step << Druid
    .goto Darkshore,54.99,33.41
    >>|cRXP_WARN_Usa la|r |T134776:0|t[Muestra vacía de Salto de Fonroca] |cRXP_WARN_en el agua en la entrada de la Cueva del Río Fonroca|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Abre las |cRXP_PICK_Provisiones de fruta de los Bosque Negro|r. Despójalas para obtener la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Abre las |cRXP_PICK_Provisiones de nueces de los Bosque Negro|r. Despójalo para obtener la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Usa el|r |T134712:0|t[Cuenco de purificación lleno] |cRXP_WARN_en la |cRXP_PICK_Fogata|r para invocar a|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corrupción de los Bosque Negro RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>Mata a |cRXP_ENEMY_Xabraxxis|r. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae en el suelo. Despójala para obtener el |cRXP_LOOT_Dije de corrupción|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Cachorros cardo|r que pueden aturdirte durante 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Hunter/Rogue
	#completewith FOTS
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20 << NightElf Hunter -- not going to Darn if already have a better bow
step
    #completewith FOTS
    .subzone 442 >> Viaja a Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .accept 993 >> Acepta la misión El maestro perdido
    .target Terenthis
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Acepta la misión El maestro perdido
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .turnin 6122 >> Entrega la misión La fuente del envenenamiento
    .target Alanndarian Nightsong
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Cómprale una|r |T135324:0|t[Tizona] |cRXP_BUY_o verifica la Casa de subastas si hay algo mejor/más barato|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra una|r |T135324:0|t[Tizona]
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r bajo tierra
    .trainer >> Aprende tus hechizos de clase
    .target Syurna
step << Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darnassus,1
step << Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Vuela a Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    #optional
    #completewith next
    .isOnQuest 1138
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Asegúrate de verificar si |cRXP_ENEMY_Viscoso|r ya está en el agua (si alguien ha fallado previamente el encuentro o dejó al |cRXP_ENEMY_Cazador Brumagris|r en la oleada con la que aparece vivo)|r
    >>Mata a los |cRXP_ENEMY_Guerreros Brumagris|r y a los |cRXP_ENEMY_Cazadores Brumagris|r en el campamento
    >>|cRXP_WARN_Muévete a la Fogata en el centro del campamento para iniciar el encuentro con |cRXP_ENEMY_Viscoso|r:|r
    >>|cRXP_WARN_3 oleadas aparecerán del agua, cada una después de matar la oleada anterior: Oleada 1 tiene 3 nivel 12-13 |cRXP_ENEMY_Correcostas Brumagris|r, Oleada 2 tiene 2 nivel 15-16 |cRXP_ENEMY_Guerreros Brumagris|r, y Oleada 3 tiene un nivel 19 |cRXP_ENEMY_Viscoso|r y un nivel 16-17 |cRXP_ENEMY_Cazador Brumagris|r. Puedes moverte lejos de la Fogata para evitar atraer la siguiente oleada|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .turnin -952 >> Entrega la misión El Páramo de los Ancianos << NightElf
    .target Onu
step
    .goto Darkshore,38.54,86.05,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    >>|cRXP_WARN_Este objeto tiene muy pocas probabilidades de caer. Omite este paso una vez que hayas completado otros objetivos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto Darkshore,38.54,86.05
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    .goto 1439,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Esto comenzará una escolta. Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Esto comenzará una escolta. Es posible que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .accept 731,1 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    .complete 731,1
    .target Prospector Remtravel
step
    #optional
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>|cRXP_WARN_Omite este paso y abandona la misión "Rico marisco" si no tienes suerte|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isOnQuest 993
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Esto iniciará una escolta. Despeja a los |cRXP_ENEMY_Furbolgs|r cerca de la cueva antes de hablar con él|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 994,1 >> Acepta la misión Escaparse por la fuerza
    .target Volcor
step
    .isQuestTurnedIn 993
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Esto iniciará una escolta. Despeja a los |cRXP_ENEMY_Furbolgs|r cerca de la cueva antes de hablar con él|r
    .accept 994,1 >> Acepta la misión Escaparse por la fuerza
    .target Volcor
step
    .isOnQuest 994
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escolta a |cRXP_FRIENDLY_Volcor|r
    >>Después de cruzar la 3ª antorcha al salir de la cueva, un |cRXP_ENEMY_Furlbog|r aparecerá de ambos lados y atacará a |cRXP_FRIENDLY_Volcor|r
    >>A mitad de camino a la carretera, unos |cRXP_ENEMY_Fúrbolgs|r aparecerán desde ambos lados y atacarán a |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .target Volcor
step
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance !Warlock
#name 21-23 Vallefresno
#subgroup Alianza 20-32
#defaultfor !Draenei
#next 23-24 Los Humedales;24-27 Redridge/Bosque del Ocaso

step
#xprate <1.5
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .accept 970 >> Acepta la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1010 >> Acepta la misión Cabello de Bathran
	.target Orendil Broadleaf
step
#xprate <1.5
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r, |cRXP_ENEMY_Adeptos de la Facción Oscura|r, |cRXP_ENEMY_Déspotas de la Facción Oscura|r y |cRXP_ENEMY_Excavadores de la Facción Oscura|r. Despójalos para obtener su |cRXP_LOOT_Gema de alma resplandeciente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
#xprate <1.5
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
    .accept 973 >> Acepta la misión La Torre de Althalaxx
	.target Delgren the Purifier
step
#xprate <1.5
    .isQuestTurnedIn 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .accept 973 >> Acepta la misión La Torre de Althalaxx
	.target Delgren the Purifier
step
    #optional
    #completewith TZS
    .subzone 415 >> Viaja a Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin -10752 >> Entrega la misión A Vallefresno
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
step
.dungeon WC
    #completewith TravelRatchet
    +|cRXP_WARN_Comienza a buscar un grupo de Cuevas de los Lamentos mientras completas los próximos dos pasos. Muy pronto irás a The Barrens para hacer Cuevas de los Lamentos|r
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mata a |cRXP_ENEMY_Dal Zarpasangrante|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Dal Zarpasangrante|r |cRXP_WARN_patrulla el Poblado Piel de Cardo|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Viaja a Trinquete en Los Baldíos. Sigue la flecha para evitar a los |cRXP_ENEMY_Guardas de Los Baldíos|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la Ruta de Vuelo de Ratchet
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Operador de grúa Pelardo|r
    .accept 959 >> Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Viaja a las Cuevas de los Lamentos. Sube a la montaña, luego cae en la cueva oculta encima de la entrada de las Cuevas de los Lamentos. Sigue la Flecha para llegar a |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acepta la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Acepta la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    >>|cRXP_WARN_Esto se puede completar DENTRO y FUERA de Cuevas de los Lamentos|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_ENEMY_Loco Magglish|r |cRXP_WARN_puede aparecer en varios lugares|r
    >>|cRXP_WARN_Esta misión se completa FUERA de Cuevas de los Lamentos|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Entra en Las Cuevas de los Lamentos
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Mata a |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r y |cRXP_ENEMY_Lady Anacondra|r luego habla con el |cRXP_FRIENDLY_Discípulo de Naralex|r al inicio de la instancia para comenzar su escolta
    >>Escolta al |cRXP_FRIENDLY_Discípulo de Naralex|r a través de Cuevas de los Lamentos y completa el ritual del despertar
    >>Mata a |cRXP_ENEMY_Mutanus el Devorador|r. Despójalo para obtener el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r]
    >>|cRXP_WARN_Usa el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r] para comenzar la misión|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acepta la misión El fragmento resplandeciente
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    >>|cRXP_WARN_Esto se puede completar DENTRO y FUERA de Cuevas de los Lamentos|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Viaja a Trinquete. Entregarás las misiones situadas sobre Cuevas de los Lamentos pronto
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Operador de grúa Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Asciende la montaña empinada encima de las Cuevas de los Lamentos. Sigue la Flecha
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala Viento Sabio|r
    .turnin 6981 >> Entrega la misión El fragmento resplandeciente
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Déjate caer en la cueva oculta encima de la entrada de las Cuevas de los Lamentos. Sigue la Flecha para llegar a |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
    .subzoneskip 415
step
    .goto Ashenvale,46.37,46.38
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mata a |cRXP_ENEMY_Dal Zarpasangrante|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Dal Zarpasangrante|r |cRXP_WARN_patrulla el Poblado Piel de Cardo|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >> Viaja a Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1054 >> Entrega la misión Matanza selectiva
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Entrega la misión Lágrima de Elune
    .timer 17,Lágrima de Elune "Roleplay"
    .accept 1034 >> Acepta la misión Las Ruinas del Polvo Estelar
step
    .goto Ashenvale,33.30,67.79
    >>Despoja los |cRXP_PICK_Arbustos cubiertos de polvo estelar|r para obtener el |cRXP_LOOT_Puñado de Polvo estelar|r
    >>|cRXP_WARN_Sus puntos de aparición están dispersos por toda la isla|r
    .complete 1034,1
step
#xprate <1.5
    #completewith ToA973
    .goto Ashenvale,31.67,64.24,15 >> Ve a la base de la montaña
    .goto Ashenvale,31.21,61.60,15 >>Corre directamente al norte mientras escalas la montaña
step
#xprate <1.5
    .isOnQuest 973
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Mata a |cRXP_ENEMY_Ilkrud Magthrull|r. Despójalo para obtener su |cRXP_LOOT_Escrito|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 |cRXP_ENEMY_Abisario|r. Stop this cast if you're able to|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Entrega la misión La fuga de Therylune
	.target Therysil
step
#xprate <1.5
    #label ToA973
    .isQuestComplete 973
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Entrega la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver de Teronis|r
	.turnin 991 >> Entrega la misión La limpieza de Raene
    .accept 1023 >> Acepta la misión La limpieza de Raene
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Mata a los |cRXP_ENEMY_Múrlocs Gapo Salino|r. Despójalos para obtener la |cRXP_LOOT_Gema resplandeciente|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Oráculos|r pueden curarse y lanzar un hechizo de choque instantáneo de 90 de daño cada pocos segundos|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acepta la misión La estatuilla antigua
step
    #completewith nagas
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    >>|cRXP_WARN_No te desvíes para completar esto aún|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Despoja la |cRXP_LOOT_Estatuilla antigua|r del suelo
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Entrega la misión La estatuilla antigua
    .timer 22,La estatuilla antigua Roleplay
    .accept 1009 >> Acepta la misión Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_WARN_Si tienes algunas|r |T133717:0|t[Bombas]|cRXP_WARN_/|r[Granadas] |cRXP_WARN_también puedes usarlas para hacer un "split pull"|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Hacer clic aquí para ver un vídeo de referencia sobre el "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_Comienza a buscar un grupo de Cavernas de Brazanegra mientras completas los siguientes pasos. Muy pronto estarás corriendo Cavernas de Brazanegra|r
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
    .isQuestComplete 1009
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Entrega la misión Ruuzel
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Farmea a los |cRXP_ENEMY_Naga|r mientras reúnes un grupo para BFD. Ve a BFD una vez que tengas un grupo.
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Viaja a Cavernas de Brazanegra
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Mata |cRXP_ENEMY_Pícaros Malarraíz|r, |cRXP_ENEMY_Sátiros Malarraíz|r, |cRXP_ENEMY_Oráculos Brazanegra|r y |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalos para obtener los |cRXP_LOOT_Bulbos raquídeos corruptos|r
    >>|cRXP_WARN_También puedes despojar los |cRXP_LOOT_Bulbos raquídeos corruptos|r una vez dentro de la Instancia|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    >>|cRXP_WARN_Comprueba si alguien en tu grupo puede compartirte la misión "Conocimiento en las Cavernas" desde Ironforge|r
step
.dungeon BFD
    #completewith Kelris
    >>Mata |cRXP_ENEMY_Nagas|r y |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Bulbos raquídeos corruptos|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Abre el |cRXP_PICK_Cofre de hierro|r bajo el agua cerca de la zona con las tortugas. Despójalo para obtener el |cRXP_LOOT_Manuscrito de Lorgalis|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Thaelrid|r
    .turnin -1198 >> Entrega la misión Buscando a Thaelrid
    .accept 1200 >> Acepta la misión La vileza de Brazanegra
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Mata a todos los |cRXP_ENEMY_Martillo Crepuscular|r. Despójalos para obtener los |cRXP_LOOT_Colgantes Crepuscular|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Mata al |cRXP_ENEMY_Señor Crepuscular Kelris|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Mata a todos los |cRXP_ENEMY_Martillo Crepuscular|r. Despójalos para obtener los |cRXP_LOOT_Colgantes Crepuscular|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Mata |cRXP_ENEMY_Nagas|r y |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Bulbos raquídeos corruptos|r
    >>Si aún no has completado esta misión todavía, haz clic en el altar al final de la mazmorra para teletransportarte a la entrada. Los enemigos de fuera de la instancia también pueden soltarlo.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TZS2
    .subzone 415 >> Viaja a Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1023 >> Entrega la misión La limpieza de Raene
    .target Raene Wolfrunner
step
    #optional
    #sticky
    .destroy 5505 >> Destruye el |T133741:0|t[Diario de Teronis]. Ya no lo necesitas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Entrega la misión Las Ruinas del Polvo Estelar
step
    #label TZS2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Entrega la misión La Ensenada de Zoram
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Daelyshia
step
#xprate <1.5
    #optional
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >> Entrega la misión SE BUSCA: ¡Viscoso!
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 1275 >> Entrega la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
#xprate <1.5
    .isOnQuest 994
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Entrega la misión Escaparse por la fuerza
    .target Terenthis
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step << !Hunter !NightElf !Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Darnassus
    .zoneskip Darnassus
step << NightElf/Hunter/Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    >>|cRXP_WARN_Si todavía no tienes la ruta de vuelo para Teldrassil, toma el barco del muelle allí|r << !NightElf
	.target Caylais Moonfeather
step
.dungeon BFD
    .isOnQuest 1199,1200,741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .isOnQuest 1199,1200,741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step
    .isOnQuest 1199,1200,741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Acepta la misión El prospector despistado
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Manados|r subiendo las escaleras
    .turnin 1199 >> Entrega la misión Cascada Crepuscular
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía del Alba Selgorm|r subiendo las escaleras
    .turnin 1200 >> Entrega la misión La vileza de Brazanegra
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darnassus,1
step
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Vuela a Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +|cRXP_WARN_Comienza a buscar un grupo para Castillo de Colmillo Oscuro. Pronto irás a Bosque de Argénteos para explorar Castillo de Colmillo Oscuro|r
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .accept 288 >> Acepta la misión La Tercera Flota
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    >>|cRXP_BUY_Compra un|r |T132792:0|t[Cántaro de hidromiel enano]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Sube las escaleras hacia el |cRXP_FRIENDLY_Arqueólogo Gargavino|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r subiendo las escaleras
    .target Archaeologist Flagongut
    .turnin 942 >> Entrega la misión El prospector despistado
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .turnin 288 >> Entrega la misión La Tercera Flota
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Mata repetidamente |cRXP_ENEMY_Gnolls Pellejomusgo|r mientras buscas grupo para Castillo de Colmillo Oscuro
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>No hay misiones para Castillo de Colmillo Oscuro. Tendrás que correr desde Los Humedales hasta el Bosque de Argénteos. Asegúrate de permanecer en el camino mientras atraviesas las Tierras Altas de Arathi, y ten cuidado con la |cRXP_ENEMY_Mensajera Renegada|r
    >>|cRXP_WARN_No necesitas conseguir la ruta de vuelo de Tierras Altas de Arathi todavía|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Consigue la Ruta de Vuelo de Costasur
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entra en el Castillo de Colmillo Oscuro
step
#xprate >1.49
.dungeon SFK
    +No hay misiones para Castillo de Colmillo Oscuro
    >>Completa el Castillo de Colmillo Oscuro. Sal cuando hayas terminado
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei !NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << NightElf/Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Travel through the Dun Algaz tunnel to Loch Modan|r (NOT TRANSLATED IN :esMX YET)
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Ve a la cueva en la base de la presa en el este de Los Humedales
	.zone Loch Modan >> Desconéctate encima de las setas en el fondo de la cueva.
    >>Cuando vuelvas a conectarte, esto te teletransportará a Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_HAZ CLIC AQUÍ para ver una referencia|r
step << NightElf/Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step << NightElf/Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Comienza a quitarte tu equipo mientras corres hacia Dun Morogh|r
    .deathskip >> aggro the |cRXP_ENEMY_Scarred Crag Boars|r to die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r once you are in Dun Morogh (NOT TRANSLATED IN :esMX YET)
    .mob Scarred Crag Boar
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	>>Entra en la cueva Trogg del sureste. Realiza un "logout skip"
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver el vídeo de referencia|r
	.zone Ironforge >> Realiza un "logout skip" o viaja a Forjaz
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Loslor Rudge|r no tiene uno|r
	.target Loslor Rudge
    .bronzetube
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >> Viaja a Forjaz
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Toma el tranvía a Ventormenta
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance Warlock
#name 20-23 Costa Oscura/Vallefresno
#subgroup Alianza 20-32
#next 23-24 Los Humedales;24-27 Redridge/Bosque del Ocaso

step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind>> Vuela a Ventormenta
    .target Shellei Brondir
step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
step << Warlock
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    +Entra en The Stockades. Ahora 'Ghetto Hoguera' a Costa Oscura
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>> Ghetto Hoguera a Costa Oscura. Para hacer esto, entra en The Stockades, luego copia y pega el enlace abajo en el chat. Espera la cuenta regresiva de 1 minuto
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> HAZ CLIC AQUÍ
step
#xprate <1.5
    .goto Darkshore,37.219,44.227
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
	.turnin 9633 >> Entrega la misión Camino de Auberdine
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Acepta la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
#xprate <1.5
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Asegúrate de verificar si |cRXP_ENEMY_Viscoso|r ya está en el agua (si alguien ha fallado previamente el encuentro o dejó al |cRXP_ENEMY_Cazador Brumagris|r en la oleada con la que aparece vivo)|r
    >>Mata a los |cRXP_ENEMY_Guerreros Brumagris|r y a los |cRXP_ENEMY_Cazadores Brumagris|r en el campamento
    >>|cRXP_WARN_Muévete a la Fogata en el centro del campamento para iniciar el encuentro con |cRXP_ENEMY_Viscoso|r:|r
    >>|cRXP_WARN_3 oleadas aparecerán del agua, cada una después de matar la oleada anterior: Oleada 1 tiene 3 nivel 12-13 |cRXP_ENEMY_Correcostas Brumagris|r, Oleada 2 tiene 2 nivel 15-16 |cRXP_ENEMY_Guerreros Brumagris|r, y Oleada 3 tiene un nivel 19 |cRXP_ENEMY_Viscoso|r y un nivel 16-17 |cRXP_ENEMY_Cazador Brumagris|r. Puedes moverte lejos de la Fogata para evitar atraer la siguiente oleada|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Esto comenzará una escolta. Es posible que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .accept 731,1 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    .complete 731,1
    .target Prospector Remtravel
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Esto comenzará una escolta. Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .isOnQuest 10752,945,4740,731
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1010 >> Acepta la misión Cabello de Bathran
	.target Orendil Broadleaf
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Viaja a Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin -10752 >> Entrega la misión A Vallefresno
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
step
    .goto Ashenvale,46.37,46.38
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Entrega la misión Lágrima de Elune
    .timer 17,Lágrima de Elune "Roleplay"
    .accept 1034 >> Acepta la misión Las Ruinas del Polvo Estelar
step
    .goto Ashenvale,33.30,67.79
    >>Despoja los |cRXP_PICK_Arbustos cubiertos de polvo estelar|r para obtener el |cRXP_LOOT_Puñado de Polvo estelar|r
    >>|cRXP_WARN_Sus puntos de aparición están dispersos por toda la isla|r
    .complete 1034,1
step
    #optional
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Ve a la base de la montaña
    .goto Ashenvale,31.21,61.60,15 >>Corre directamente al norte mientras escalas la montaña
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Entrega la misión La fuga de Therylune
	.target Therysil
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver de Teronis|r
	.turnin 991 >> Entrega la misión La limpieza de Raene
    .accept 1023 >> Acepta la misión La limpieza de Raene
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Mata a los |cRXP_ENEMY_Múrlocs Gapo Salino|r. Despójalos para obtener la |cRXP_LOOT_Gema resplandeciente|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Oráculos|r pueden curarse y lanzar un hechizo de choque instantáneo de 90 de daño cada pocos segundos|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acepta la misión La estatuilla antigua
step
    #completewith nagas
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    >>|cRXP_WARN_No te desvíes para completar esto aún|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Despoja la |cRXP_LOOT_Estatuilla antigua|r del suelo
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Entrega la misión La estatuilla antigua
    .timer 22,La estatuilla antigua Roleplay
    .accept 1009 >> Acepta la misión Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_WARN_Si tienes algunas|r |T133717:0|t[Bombas]|cRXP_WARN_/|r[Granadas] |cRXP_WARN_también puedes usarlas para hacer un "split pull"|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Hacer clic aquí para ver un vídeo de referencia sobre el "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_Comienza a buscar un grupo de Cavernas de Brazanegra mientras completas los siguientes pasos. Muy pronto estarás corriendo Cavernas de Brazanegra|r
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Entrega la misión Ruuzel
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Farmea a los |cRXP_ENEMY_Naga|r mientras reúnes un grupo para BFD. Ve a BFD una vez que tengas un grupo.
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Viaja a Cavernas de Brazanegra
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Mata |cRXP_ENEMY_Pícaros Malarraíz|r, |cRXP_ENEMY_Sátiros Malarraíz|r, |cRXP_ENEMY_Oráculos Brazanegra|r y |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalos para obtener los |cRXP_LOOT_Bulbos raquídeos corruptos|r
    >>|cRXP_WARN_También puedes despojar los |cRXP_LOOT_Bulbos raquídeos corruptos|r una vez dentro de la Instancia|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    >>|cRXP_WARN_Comprueba si alguien en tu grupo puede compartirte la misión "Conocimiento en las Cavernas" desde Ironforge|r
step
.dungeon BFD
    #completewith Kelris
    >>Mata |cRXP_ENEMY_Nagas|r y |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Bulbos raquídeos corruptos|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Abre el |cRXP_PICK_Cofre de hierro|r bajo el agua cerca de la zona con las tortugas. Despójalo para obtener el |cRXP_LOOT_Manuscrito de Lorgalis|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Thaelrid|r
    .turnin -1198 >> Entrega la misión Buscando a Thaelrid
    .accept 1200 >> Acepta la misión La vileza de Brazanegra
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Mata a todos los |cRXP_ENEMY_Martillo Crepuscular|r. Despójalos para obtener los |cRXP_LOOT_Colgantes Crepuscular|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Mata al |cRXP_ENEMY_Señor Crepuscular Kelris|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Mata a todos los |cRXP_ENEMY_Martillo Crepuscular|r. Despójalos para obtener los |cRXP_LOOT_Colgantes Crepuscular|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Mata |cRXP_ENEMY_Nagas|r y |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Bulbos raquídeos corruptos|r
    >>Si aún no has completado esta misión todavía, haz clic en el altar al final de la mazmorra para teletransportarte a la entrada. Los enemigos de fuera de la instancia también pueden soltarlo.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TRoS
    .subzone 415 >> Viaja a Astranaar
step
#xprate <1.5
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1023 >> Entrega la misión La limpieza de Raene
    .accept 1025 >> Acepta la misión Una defensa agresiva
    .target Raene Wolfrunner
step
#xprate >1.49
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1023 >> Entrega la misión La limpieza de Raene
    .target Raene Wolfrunner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Entrega la misión La Ensenada de Zoram
step
    #label TRoS
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Entrega la misión Las Ruinas del Polvo Estelar
step
    #optional
    #sticky
    .destroy 5505 >> Destruye el |T133741:0|t[Diario de Teronis]. Ya no lo necesitas
step
#xprate <1.5
    #loop
    .goto Ashenvale,50.08,59.94,0
    .goto Ashenvale,53.75,63.49,0
    .goto Ashenvale,54.17,61.69,0
    .goto Ashenvale,56.45,63.62,0
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,56.45,63.62,70,0
    >>Mata |cRXP_ENEMY_Guerreros Maderiza|r, |cRXP_ENEMY_Totémicos Maderiza|r, |cRXP_ENEMY_Ursas Maderiza|r y un |cRXP_ENEMY_Vigía del cubil Maderiza|r
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Velene Golpe estelar|r
    .accept 1016 >> Acepta la misión Brazales elementales
    .target Sentinel Velene Starstrike
step
#xprate <1.5
    #loop
    .goto Ashenvale,44.78,70.07,0
    .goto Ashenvale,48.90,70.05,0
    .goto Ashenvale,51.28,70.51,0
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    >>Mata |cRXP_ENEMY_Elementales de agua podrida|r. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
#xprate <1.5
    .use 5456 >> |cRXP_WARN_Usa el|r |T134943:0|t[Pergamino de adivinación] |cRXP_WARN_para crear el|r |T134938:0|t[Pergamino descifrado]
    .complete 1016,1 -- Divined Scroll
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Velene Golpe estelar|r
    .turnin 1016 >> Entrega la misión Brazales elementales
    .accept 1017 >> Acepta la misión Mago invocador
    .target Sentinel Velene Starstrike
step
    .isOnQuest 1017,1716,1025,4740,731
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Viaja a Los Baldíos. Sigue la flecha para evitar a los |cRXP_ENEMY_Guardas de Los Baldíos|r
step
#xprate <1.5
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Asciende ala Cima Calígine. Sigue la Flecha hacia la cima
step
#xprate <1.5
    .goto The Barrens,48.22,19.15
    >>Mata a |cRXP_ENEMY_Sarilus Fuenteviciosa|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Los |cRXP_ENEMY_Filo Ardiente|r de los alrededores son solo de nivel 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
step
#xprate <1.5
.dungeon !WC
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
.dungeon WC
    #completewith TroubleDocks
    +|cRXP_WARN_Comienza buscando un grupo de Cuevas de los Lamentos. Pronto entrarás en Cuevas de los Lamentos|r
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takar el Vidente|r
    .turnin 1716 >> Entrega la misión Devoradora de almas
    .accept 1738 >> Acepta la misión Duramen
    .target Takar the Seer
step << Warlock
.dungeon !WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la Ruta de Vuelo de Ratchet
    .fly Astranaar>> Vuela a Astranaar
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la Ruta de Vuelo de Ratchet
    .target Bragok
step
.dungeon WC
    #label TroubleDocks
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Operador de grúa Pelardo|r
    .accept 959 >> Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Viaja a las Cuevas de los Lamentos. Sube a la montaña, luego cae en la cueva oculta encima de la entrada de las Cuevas de los Lamentos. Sigue la Flecha para llegar a |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acepta la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Acepta la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    >>|cRXP_WARN_Esto se puede completar DENTRO y FUERA de Cuevas de los Lamentos|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_ENEMY_Loco Magglish|r |cRXP_WARN_puede aparecer en varios lugares|r
    >>|cRXP_WARN_Esta misión se completa FUERA de Cuevas de los Lamentos|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Entra en Las Cuevas de los Lamentos
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Mata a |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r y |cRXP_ENEMY_Lady Anacondra|r luego habla con el |cRXP_FRIENDLY_Discípulo de Naralex|r al inicio de la instancia para comenzar su escolta
    >>Escolta al |cRXP_FRIENDLY_Discípulo de Naralex|r a través de Cuevas de los Lamentos y completa el ritual del despertar
    >>Mata a |cRXP_ENEMY_Mutanus el Devorador|r. Despójalo para obtener el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r]
    >>|cRXP_WARN_Usa el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r] para comenzar la misión|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acepta la misión El fragmento resplandeciente
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    >>|cRXP_WARN_Esto se puede completar DENTRO y FUERA de Cuevas de los Lamentos|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Viaja a Trinquete. Entregarás las misiones situadas sobre Cuevas de los Lamentos pronto
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Operador de grúa Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Asciende la montaña empinada encima de las Cuevas de los Lamentos. Sigue la Flecha
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala Viento Sabio|r
    .turnin 6981 >> Entrega la misión El fragmento resplandeciente
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Déjate caer en la cueva oculta encima de la entrada de las Cuevas de los Lamentos. Sigue la Flecha para llegar a |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1025 >> Entrega la misión Una defensa agresiva
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mata a |cRXP_ENEMY_Dal Zarpasangrante|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Dal Zarpasangrante|r |cRXP_WARN_patrulla el Poblado Piel de Cardo|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step << Warlock
    #completewith next
    .goto Ashenvale,31.50,31.50,40 >> Viaja a Las ruinas de Ordil'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>Despoja el |cRXP_LOOT_Duramen|r del árbol gigante
    .complete 1738,1
step
    #completewith next
    .goto Ashenvale,40.1,53.1,0
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Ensure you die on the east side of the |cRXP_ENEMY_Múrloc|r lake so you are sent to Astranaar|r
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Velene Golpe estelar|r
    .turnin 1017 >> Entrega la misión Mago invocador
	>>|cRXP_WARN_Esta misión te recompensará con la|r |T134754:0|t[Luz de Elune]
    >>|T134754:0|t[Luz de Elune] |cRXP_WARN_- Otorga inmunidad a todo daño y hechizos durante 10 seg.|r
    >>|cRXP_WARN_Esto es de un solo uso. Úsalo en caso de emergencia|r
    .target Sentinel Velene Starstrike
step
    #completewith FlyAuber
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
.dungeon !WC
#xprate <1.5
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1054 >> Entrega la misión Matanza selectiva
    .turnin 1025 >> Entrega la misión Una defensa agresiva
    .target Raene Wolfrunner
step
.dungeon !WC
#xprate >1.49
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1054 >> Entrega la misión Matanza selectiva
    .target Raene Wolfrunner
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1054 >> Entrega la misión Matanza selectiva
    .target Raene Wolfrunner
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Daelyshia
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >> Entrega la misión SE BUSCA: ¡Viscoso!
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 1275 >> Entrega la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Teldrassil
    .zoneskip Darnassus
step
    #optional
    #completewith next
    .isOnQuest 741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Acepta la misión El prospector despistado
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Manados|r subiendo las escaleras
    .turnin 1199 >> Entrega la misión Cascada Crepuscular
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía del Alba Selgorm|r subiendo las escaleras
    .turnin 1200 >> Entrega la misión La vileza de Brazanegra
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Consigue la ruta de vuelo de Aldea Rut'theran
    .fly Auberdine >> Vuela a Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +|cRXP_WARN_Comienza a buscar un grupo para Castillo de Colmillo Oscuro. Pronto irás a Bosque de Argénteos para explorar Castillo de Colmillo Oscuro|r
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .accept 288 >> Acepta la misión La Tercera Flota
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    >>|cRXP_BUY_Compra un|r |T132792:0|t[Cántaro de hidromiel enano]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Sube las escaleras hacia el |cRXP_FRIENDLY_Arqueólogo Gargavino|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r subiendo las escaleras
    .target Archaeologist Flagongut
    .turnin 942 >> Entrega la misión El prospector despistado
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .turnin 288 >> Entrega la misión La Tercera Flota
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Mata repetidamente |cRXP_ENEMY_Gnolls Pellejomusgo|r mientras buscas grupo para Castillo de Colmillo Oscuro
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>No hay misiones para Castillo de Colmillo Oscuro. Tendrás que correr desde Los Humedales hasta el Bosque de Argénteos. Asegúrate de permanecer en el camino mientras atraviesas las Tierras Altas de Arathi, y ten cuidado con la |cRXP_ENEMY_Mensajera Renegada|r
    >>|cRXP_WARN_No necesitas conseguir la ruta de vuelo de Tierras Altas de Arathi todavía|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Consigue la Ruta de Vuelo de Costasur
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entra en el Castillo de Colmillo Oscuro
step
#xprate >1.49
.dungeon SFK
    +No hay misiones para Castillo de Colmillo Oscuro
    >>Completa el Castillo de Colmillo Oscuro. Sal cuando hayas terminado
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
]])
