if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Lanza de hielo - 2 (Bosque de Elwynn)
#title Lanza de hielo
<< Human Mage SoD


step
    +|cRXP_WARN_DEBES ser al menos de nivel 2 para obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_ya que es el requisito de nivel para obtener el|r |T133736:0|t[Manual de comprensión]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >> Viaja a Bosque de Elwynn
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>Entra en la Abadía de Villanorte
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Research
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r subiendo las escaleras
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r dentro
    .accept 77620 >> Acepta la misión Investigación sobre hechizos
    .target Khelden Bremen
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>Sal de la Abadía de Villanorte
    .train 401760,1
    .xp <2,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Entra en la Abadía de Villanorte
    .isOnQuest 77620
    .xp <2,1
step
    #optional
    #requires IceLance2
    #completewith Research2
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r subiendo las escaleras
    .isQuestComplete 77620
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r dentro
    .turnin 77620 >> Entrega la misión Investigación sobre hechizos
    .target Khelden Bremen
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Lanza de hielo - 2 (Dun Morogh)
#title Lanza de hielo

<< Gnome Mage SoD


step
    +|cRXP_WARN_DEBES ser al menos de nivel 2 para obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_ya que es el requisito de nivel para obtener el|r |T133736:0|t[Manual de comprensión]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >> Viaja a Dun Morogh
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .accept 77667 >> Acepta la misión Investigación sobre hechizos
    .target Marryk Nurribit
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >> Sal de Yunquemar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >> Entra en Yunquemar
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 77667 >> Entrega la misión Investigación sobre hechizos
    .target Marryk Nurribit
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Lanza de hielo - 2 (Durotar)
#title Lanza de hielo

<< Troll Mage SoD


step
    +|cRXP_WARN_DEBES ser al menos de nivel 2 para obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_ya que es el requisito de nivel para obtener el|r |T133736:0|t[Manual de comprensión]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >> Viaja a Durotar
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Acepta la misión Investigación sobre hechizos
    .target Mai'ah
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>Entra en el Aquelarre del Filo Ardiente
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>Viaja hacia el |cRXP_PICK_Alijo calado|r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>Abre el |cRXP_PICK_Alijo calado|r bajo el agua dentro de la cueva. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>Sal del Aquelarre del Filo Ardiente
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77643 >> Entrega la misión Investigación sobre hechizos
    .target Mai'ah
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Lanza de hielo - 2 (Tirisfal)
#title Lanza de hielo
<< Undead Mage SoD


step
    +|cRXP_WARN_DEBES ser al menos de nivel 2 para obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_ya que es el requisito de nivel para obtener el|r |T133736:0|t[Manual de comprensión]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >> Viaja a Claros de Tirisfal
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Entra en la capilla de Camposanto
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .accept 77671 >>Acepta la misión Investigación sobre hechizos
    .target Isabella
    .xp <2,1
step
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>Mata |cRXP_ENEMY_Iniciados Escarlata|r. Despójalos para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Entra en la capilla de Camposanto
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Entrega la misión Investigación sobre hechizos
    .target Isabella
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Regeneración - 12 (Páramos de Poniente)
#title Regeneración

<< Alliance Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 12 para obtener|r |T133815:0|t[Grabar pechera - Regeneración] |cRXP_WARN_en Páramos de Poniente en solitario|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Viaja a la Ciudad de Ventormenta
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Entra en el Herbolario Mortero
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Señalo|r dentro
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a esta vendedora|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401767,1
step
    #completewith next
    .zone Westfall >>Viaja a Páramos de Poniente
    .train 401767,1
step
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
step
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: RANGE CERNEIO]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Regeneración]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Regeneración - 13 (Loch Modan)
#title Regeneración

<< Alliance Mage SoD


step
    +|cRXP_WARN_Debes ser al menos nivel 13 para obtener|r |T133815:0|t[Grabar pechera - Regeneración] |cRXP_WARN_en Loch Modan en solitario|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Viaja a Forjaz
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entra en la casa de |cRXP_FRIENDLY_Ginny Largamora|r
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ginny Largamora|r dentro
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a esta vendedora|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Vuela a Loch Modan
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >> Entra en la tienda
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Abre la |cRXP_PICK_Pila de libros robados|r dentro. Despójalos para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Regeneración]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Regeneración - 12 (Los Baldíos)
#title Regeneración

<< Horde Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 12 para obtener|r |T133815:0|t[Grabar pechera - Regeneración] |cRXP_WARN_en Los Baldíos en solitario|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Wabang|r
    >>|cRXP_BUY_Compra una|r |T134237:0|t[Llave del botín de Kolkar] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Esto te ahorrará unos minutos más adelante|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    >>|cRXP_BUY_Compra una|r |T134237:0|t[Llave del botín de Kolkar] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Esto te ahorrará unos minutos más adelante|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>Viaja a Los Baldíos
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hula'mahi|r
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a este vendedor|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Hula'mahi
    .train 401767,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Mata |cRXP_ENEMY_Retadores Kolkar|r y |cRXP_ENEMY_Agitadoras Kolkar|r. Despójalos para obtener una |T134237:0|t[Llave del botín de Kolkar]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>Abre el |cRXP_PICK_Botín de Kolkar|r en el suelo. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r] |cRXP_WARN_para aprender|r |T132869:0|t[Regeneración]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Regeneración - 12 (Bosque de Argénteos)
#title Regeneración
<< Horde Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 12 para obtener|r |T133815:0|t[Grabar pechera - Regeneración] |cRXP_WARN_en Bosque de Argénteos en solitario|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Viaja a Entrañas
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a este vendedor|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>Viaja al Bosque de Argénteos
    .train 401767,1
step
    #loop
    .goto 1421,52.375,56.808,0
    .goto 1421,49.614,60.886,0
    .goto 1421,51.556,64.300,0
    .goto 1421,52.689,71.258,0
    .goto 1421,52.375,56.808,45,0
    .goto 1421,51.644,57.939,45,0
    .goto 1421,50.539,59.184,45,0
    .goto 1421,50.826,59.697,45,0
    .goto 1421,50.053,60.021,45,0
    .goto 1421,49.614,60.886,45,0
    .goto 1421,50.449,60.894,45,0
    .goto 1421,50.914,61.289,45,0
    .goto 1421,51.749,61.612,45,0
    .goto 1421,50.566,62.991,45,0
    .goto 1421,51.556,64.300,45,0
    .goto 1421,52.412,63.834,45,0
    .goto 1421,51.969,65.028,45,0
    .goto 1421,52.850,66.113,45,0
    .goto 1421,51.986,66.138,45,0
    .goto 1421,52.689,71.258,45,0
    >>Mata |cRXP_ENEMY_Aprendices de Dalaran|r. Despójalos para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: RANGE CERNEIO]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r] |cRXP_WARN_para aprender|r |T132869:0|t[Regeneración]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Dedos de Escarcha - 10 (Bosque de Elwynn)
#title Dedos de Escarcha

<< Alliance Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 10 para adquirir|r |T133815:0|t[Grabar pechera - Dedos de Escarcha] |cRXP_WARN_en Bosque de Elwynn en solitario|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Viaja a la Ciudad de Ventormenta
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Entra en el Herbolario Mortero
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Señalo|r dentro
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a esta vendedora|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>Viaja al Bosque de Elwynn
    .train 401765,1
step
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,25.2,92.7,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan Hogger
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Dedos de Escarcha - 5 (Dun Morogh)
#title Dedos de Escarcha
<< Alliance Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 5 para adquirir|r |T133815:0|t[Grabar pechera - Dedos de Escarcha] |cRXP_WARN_en Dun Morogh en solitario|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Viaja a Forjaz
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entra en la casa de |cRXP_FRIENDLY_Ginny Largamora|r
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ginny Largamora|r dentro
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a esta vendedora|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>Viaja a Dun Morogh
    .train 401765,1
step
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Mata a |cRXP_ENEMY_Fyodi|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r
    >>|cRXP_WARN_Aunque |cRXP_ENEMY_Fyodi|r aparece como un élite, sus valores de salud, daño y armadura son los de un enemigo estándar|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, infligiendo 35-80 de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    >>|cRXP_WARN_NOTA: Las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_también pueden caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Sarnagarra|r y |rViejo Barbahielo|cRXP_ENEMY_|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r
    >>|cRXP_WARN_NOTA: Las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_también pueden caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Sarnagarra|r y |rViejo Barbahielo|cRXP_ENEMY_|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Vagash
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Dedos de Escarcha - 8 (Claros de Tirisfal)
#title Dedos de Escarcha
<< Horde Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 8 para adquirir|r |T133815:0|t[Grabar pechera - Dedos de Escarcha] |cRXP_WARN_en Claros de Tirisfal en solitario|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Viaja a Entrañas
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a este vendedor|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>Viaja hacia |cRXP_ENEMY_Gillgar|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Dedos de Escarcha - 8 (Durotar)
#title Dedos de Escarcha


step
    +|cRXP_WARN_Deberías ser al menos nivel 8 para adquirir|r |T133815:0|t[Grabar pechera - Dedos de Escarcha] |cRXP_WARN_en Durotar en solitario|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >> Viaja a Orgrimmar
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Horthus|r dentro
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a este vendedor|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Horthus
    .train 401765,1
step
    #completewith next
    .zone Durotar >>Viaja a Durotar
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Zalazane
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r. Despójalo para obtener las |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fizzle Darkstorm
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Incendio - 6 (Dun Morogh)
#title Incendio

<< Alliance Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 6 para adquirir|r |T132686:0|t[Grabar pechera - Incendio] |cRXP_WARN_en Dun Morogh con otro jugador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>Viaja a Dun Morogh
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Busca a otros Magos o Brujos cerca del |cRXP_ENEMY_Trogg congelado|r o en el canal General (escribe /1 en el chat)|r
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_en el |cRXP_ENEMY_Trogg congelado|r para aplicar una carga de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 cargas a la vez para matar al |cRXP_ENEMY_Trogg congelado|r. Despójalo para obtener las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r |cRXP_WARN_para aprender|r |T132686:0|t[Grabar pechera - Incendio]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Incendio - 6 (Bosque de Elwynn)
#title Incendio

<< Alliance Mage SoD

step
    +|cRXP_WARN_Deberías ser al menos nivel 6 para adquirir|r |T132686:0|t[Grabar pechera - Incendio] |cRXP_WARN_en Bosque de Elwynn con otro jugador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>Viaja al Bosque de Elwynn
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_Busca a otros Magos o Brujos cerca del |cRXP_ENEMY_Múrloc congelado|r o en el canal General (escribe /1 en el chat)|r
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_en el |cRXP_ENEMY_Múrloc congelado|r para aplicar una carga de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 cargas a la vez para matar al |cRXP_ENEMY_Múrloc congelado|r. Despójalo para obtener las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r |cRXP_WARN_para aprender|r |T132686:0|t[Grabar pechera - Incendio]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Incendio - 6 (Durotar)
#title Incendio

<< Horde Mage SoD

step
    +|cRXP_WARN_Deberías ser al menos nivel 6 para adquirir|r |T132686:0|t[Grabar pechera - Incendio] |cRXP_WARN_en Durotar con otro jugador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>Viaja a Durotar
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Busca a otros Magos, Brujos, o Chamanes cerca del |cRXP_ENEMY_Makrura congelado|r o en el canal General (escribe /1 en el chat)|r
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_en el |cRXP_ENEMY_Makrura congelado|r para aplicar una carga de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 cargas a la vez para matar al |cRXP_ENEMY_Makrura congelado|r. Despójalo para obtener las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r |cRXP_WARN_para aprender|r |T132686:0|t[Grabar pechera - Incendio]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Incendio - 6 (Claros de Tirisfal)
#title Incendio

<< Horde Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 6 para adquirir|r |T132686:0|t[Grabar pechera - Incendio] |cRXP_WARN_en Claros de Tirisfal con otro jugador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_Busca a otros Magos o Brujos cerca del |cRXP_ENEMY_Múrloc congelado|r o en el canal General (escribe /1 en el chat)|r
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_en el |cRXP_ENEMY_Múrloc congelado|r para aplicar una carga de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 cargas a la vez para matar al |cRXP_ENEMY_Múrloc congelado|r. Despójalo para obtener las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r |cRXP_WARN_para aprender|r |T132686:0|t[Grabar pechera - Incendio]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Esclarecimiento - 8 (Bosque de Elwynn)
#title Esclarecimiento

<< Alliance Mage SoD


step
    +|cRXP_WARN_DEBES ser al menos de nivel 8 para adquirir|r |T133815:0|t[Grabar pechera - Esclarecimiento] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T136071:0|t[Polimorfia]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>Viaja al Bosque de Elwynn
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>Entra en la Posada de Villadorada. Sube las escaleras
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
    .target Zaldimar Wefhellt
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1429,49.68,73.74,0
    .goto 1429,79.92,64.51,0
    .goto 1429,83.61,83.86,0
    .goto 1429,77.54,40.05,0
    .goto 1429,83.67,83.53,0
    .goto 1429,49.68,73.74,40,0
    .goto 1429,49.04,55.23,40,0
    .goto 1429,58.93,59.8,40,0
    .goto 1429,62.95,63.3,40,0
    .goto 1429,70.46,63.41,40,0
    .goto 1429,79.92,64.51,40,0
    .goto 1429,85.79,65.94,40,0
    .goto 1429,82.89,70.69,40,0
    .goto 1429,79.07,79.02,40,0
    .goto 1429,82.61,86.35,40,0
    .goto 1429,83.61,83.86,40,0
    .goto 1429,87.27,82.16,40,0
    .goto 1429,90.67,77.25,40,0
    .goto 1429,86.02,66.26,40,0
    .goto 1429,80.6,50.21,40,0
    .goto 1429,77.54,40.05,40,0
    .goto 1429,73.96,41.08,40,0
    .goto 1429,65.67,41.75,40,0
    .goto 1429,58.87,59.97,40,0
    .goto 1429,79.37,78.84,40,0
    .goto 1429,83.67,83.53,40,0
    >>Lanza |T136071:0|t[Polimorfia] en las siguientes alimañas inusuales: |cRXP_ENEMY_Gacelas|r, |cRXP_ENEMY_Gusanos|r, |cRXP_ENEMY_Loros|r, |cRXP_ENEMY_Alfazaques de fuego|r, |cRXP_ENEMY_Carneros|r, |cRXP_ENEMY_Larvas|r, y |cRXP_ENEMY_Gatos|r. Espera a que termine el "Roleplay"
    >>Abre las |cRXP_PICK_Notas de hechizos|r del suelo. Despójala para obtener |T134332:0|t|cRXP_LOOT_[Nota de aprendiz de Azora]|r
    .collect 204864,6 --Azora Apprentice Notes (6)
    .mob Gazelle
    .mob Maggot
    .mob Parrot
    .mob Fire Beetle
    .mob Ram
    .mob Larva
    .mob Cat
    .train 415942,1
    .xp <8,1
step
    >>Usa las |T134332:0|t|cRXP_LOOT_[Nota de aprendiz de Azora]|r para crear |T134332:0|t|cRXP_FRIENDLY_[Notas de hechizo: Esclarecimiento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_FRIENDLY_[Notas de hechizo: Esclarecimiento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Esclarecimiento - 8 (Claros de Tirisfal)
#title Esclarecimiento

<< Horde Mage SoD

step
    +|cRXP_WARN_DEBES ser al menos de nivel 8 para adquirir|r |T133815:0|t[Grabar pechera - Esclarecimiento] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T136071:0|t[Polimorfia]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>Entra en la Posada de Rémol. Sube las escaleras
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain Pirosón|r
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
    .target Cain Firesong
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1420,58.840,58.321,0
    .goto 1420,52.861,57.885,0
    .goto 1420,47.292,50.612,0
    .goto 1420,58.840,58.321,30,0
    .goto 1420,54.062,60.058,30,0
    .goto 1420,53.920,58.332,30,0
    .goto 1420,54.000,56.767,30,0
    .goto 1420,52.861,57.885,30,0
    .goto 1420,51.611,57.241,30,0
    .goto 1420,50.303,61.941,30,0
    .goto 1420,49.885,59.576,30,0
    .goto 1420,50.073,50.644,30,0
    .goto 1420,49.573,46.473,30,0
    .goto 1420,47.292,50.612,30,0
    >>Lanza |T136071:0|t[Polimorfia] en |cRXP_ENEMY_Melones Extraños|r, luego espera a que termine el "Roleplay"
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>Usa la |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r para crear |T134332:0|t|cRXP_FRIENDLY_[Notas de hechizo: Esclarecimiento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_FRIENDLY_[Notas de hechizo: Esclarecimiento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Guía de Runas y Libros
<<Alliance Mage SoD
#subgroup Piernas/Botas/Casco
#name Venas heladas/Poder con hechizos/Congelación profunda - 40 (Azeroth)
#title Venas heladas y Poder con hechizos y Congelación profunda

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >> Viaja a |cFFfa9602a Ventormenta.|r
    .cast 3561 >>Usa [Teletransporte a: Ventormenta] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >> Compra |T134419:0|t[Runas de teletransporte] a un |cRXP_FRIENDLY_Vendedor de componentes, Artículos arcanos, Pergaminos y Pociones|r |cRXP_WARN_Esto reducirá considerablemente el tiempo de viaje.|r
    >>|cRXP_WARN_Sáltate este paso manualmente si quieres prescindir de ello.|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >> |cRXP_WARN_Revisa tu banco por si acaso tienes algún libro depositado.|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >> |cRXP_WARN_Es muy recomendable reparar, ya que utilizaremos "death skips".|r
    >>|cFFFF0000Si prefieres no utilizar "death skips", omite manualmente este paso.|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>Haz clic en el |cRXP_PICK_Libro de biblioteca|r situado |cFFfa9602en un estante en Bosque de Elwynn|r para obtener |T133744:0|t[Diario de investigación del archimago Theocritus]
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>Viaja a |cFFfa9602Páramos de Poniente|r a pie si estás |cRXP_WARN_en|r |cFFfa9602Bosque de Elwynn.|r|r
    .fly Westfall >>Toma una Ruta de Vuelo a |cFFfa9602Páramos de Poniente|r si no estás |cRXP_WARN_en|r |cFFfa9602Bosque de Elwynn.|r|r
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
--     >>|cRXP_WARN_manually skip this step if you are on a flightpath.|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0
    .goto 1436,52.64,53.83
    >>Haz clic en el |cRXP_PICK_Tomo Gnómico|r |cFFfa9602en la mesa en la Posada de Páramos de Poniente|r para obtener |T133744:0|t[Rumi de Gnomeregan: Obras completas.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Viaja a |cFFfa9602Páramos de Poniente|r |cRXP_WARN_tomando una ruta de vuelo.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Haz clic en el |cRXP_PICK_Libro de hechizos|r ubicado |cFFfa9602en el Armario de Alquimia dentro de una casa pequeña en Arroyo de la Luna, Páramos de Poniente|r para obtener |T133733:0|t[Hechizos y encantamientos.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Viaja a |cFFfa9602Bosque del Ocaso|r
    .fly Westfall >>Toma la ruta de vuelo a |cFFfa9602Páramos de Poniente|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Haz clic en el |cRXP_PICK_Libro|r |cFFfa9602dentro de las Catacumbas del Bosque Aurora en la Mesa de Alquimia en Bosque del Ocaso|r para obtener |T133738:0|t[Crímenes contra la anatomía.]
    >>|cRXP_WARN_Se recomienda correr hasta el final de las catacumbas y morir. Además, tal vez quieras considerar formar un grupo.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja a |cFFfa9602Pantano de las Penas|r
    .fly Swamp of Sorrows >>Toma la ruta de vuelo a |cFFfa9602Pantano de las Penas|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Mata al |cRXP_ENEMY_Cazador Perdido|r, |cRXP_ENEMY_Habitabosta Perdido|r,|cRXP_ENEMY_Cocinero Perdido|r y |cRXP_ENEMY_Vidente Perdido|r . Despójalos para obtener |cRXP_LOOT_|T237379:0|t[Llave de jaula oxidada]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Haz clic en la |cRXP_PICK_Jaula Oxidada|r para recibir el Libro |T133742:0|t[Guía de cuidado de mascotas demoníacas para el ludita común]
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>Haz clic en la |cRXP_PICK_Libro|r para obtener |T133738:0|t[Hechicería sanguina]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Viaja a |cFFfa9602Las Tierras Devastadas|r
    .fly Blasted Lands >>Toma la ruta de vuelo a |cFFfa9602Las Tierras Devastadas|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Haz clic en la |cRXP_PICK_Libro|r para obtener |T133736:0|t[Códice de conjurador]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a |cFFfa9602Vega de Tuercespina|r
    .fly Stranglethorn Vale >>Toma la ruta de vuelo a |cFFfa9602Vega de Tuercespina|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Haz clic en las |cRXP_PICK_Notas de investigación|r del banco para recibir el Libro |T237162:0|t[Los basiliscos y el infundado miedo a la petrificación]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Viaja a |cFFfa9602La Garganta de Fuego|r
    .fly Searing Gorge >>Toma la ruta de vuelo a |cFFfa9602La Garganta de Fuego|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener el |T133743:0|t[Diseño trabajado en piedra]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Viaja a |cFFfa9602La Garganta de Fuego|r
    .fly Searing Gorge >>Toma la ruta de vuelo a |cFFfa9602La Garganta de Fuego|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener el |T133743:0|t[Diseño trabajado en piedra]
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>Viaja |cFFfa9602a Forjaz.|r
    .cast 3562 >>Usa [Teletransporte a: Forjaz] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >> |cRXP_WARN_Es muy recomendable reparar, ya que utilizaremos "death skips".|r
    >>|cFFFF0000Si prefieres no utilizar "death skips", omite manualmente este paso.|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>Haz clic en el |cRXP_PICK_Libro de biblioteca|r |cFFfa9602en la mesa de la Sala de Exploradores en Forjaz|r para obtener |T133744:0|t[Archimago Antonidas: La autobiografía completa.]
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>Viaja a |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Usa la ruta de vuelo a |cFFfa9602Loch Modan|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>Haz clic en el |cRXP_PICK_Tomo Gnómico|r |cFFfa9602en la mesa en la Posada de Loch Modan|r para obtener |T133744:0|t[Rumi de Gnomeregan: Obras completas.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>Viaja a |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Toma la ruta de vuelo a |cFFfa9602Loch Modan|r |cRXP_WARN_si la tienes.|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>Haz clic en el |cRXP_PICK_Pergamino|r en la |cFFfa9602Cueva de Ogros Élites en Loch Modan|r para obtener |T134938:0|t[Runa de los Reyes hechiceros.]
    >>|cRXP_WARN_Se recomienda correr hasta el final de la cueva y morir. Además, tal vez quieras considerar formar un grupo.|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>Muere y resucita en el |cFF00FF25Ángel de la Resurrección|r |cRXP_WARN_¡Además, puedes omitir los "death skips" si quieres ahorrar costes de reparación!|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>Viaja a |cFFfa9602Tierras Inhóspitas|r
    .fly >> Usa la ruta de vuelo a |cFFfa9602Tierras Inhóspitas|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>Haz clic en el Libro |T134937:0|t[Momias: Una guía de los no-muertos más espantosos]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>Vuela al |cFFfa9602Puerto de Menethil|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>Haz clic en el |cRXP_PICK_Pergamino|r |cFFfa9602en el jarrón en Los Humedales|r para obtener |T237450:0|t[Pergaminos Goaz.]
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >> |cRXP_WARN_Es muy recomendable reparar, ya que utilizaremos "death skips".|r
    >>|cFFFF0000Si prefieres no utilizar "death skips", omite manualmente este paso.|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>Viaja a |cFFfa9602Costa Oscura|r tomando el Barco.
    .fly Menethil Harbor >>Vuela al |cFFfa9602Puerto de Menethil|r |cRXP_WARN_si aún no estás ahí.|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>Ahógate en el agua y resucita en el |cFF00FF25Ángel de la Resurrección|r |cRXP_WARN_¡Además, puedes omitir los "death skips" si quieres ahorrar costes de reparación!|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Haz clic en el |cRXP_PICK_Pergamino|r en |cFFfa9602Costa Oscura|r para obtener el |T237447:0|t[Almanaque de Nar'thalas, vol. 74]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>Muere y resucita en el |cFF00FF25Ángel de la Resurrección|r
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>Viaja a |cFFfa9602Azshara|r
    .fly Ashenvale >>Vuela a |cFFfa9602Vallefresno|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener |T133740:0|t[Etiqueta para el día a día.]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>Viaja a |cFFfa9602Sierra Espolón|r |cRXP_WARN_a pie si ninguna ruta de vuelo está desbloqueada|r
    .fly Stonetalon Mountains >>Vuela a |cFFfa9602Sierra Espolón|r |cRXP_WARN_si tienes la ruta de vuelo desbloqueada.|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Haz clic en el |cRXP_PICK_Pergamino|r |cFFfa9602dentro de la tienda, ubicado en un barril en Sierra Espolón|r para obtener |T133209:0|t[Furia de la tierra.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
    .fly Desolace >>Toma la ruta de vuelo hacia |cFFfa9602Desolace|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Haz clic en el |cRXP_PICK_Pergamino|r para recibir el libro |T133733:0|t[Los demonios y tú]
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Viaja a |cFFfa9602Los Baldíos|r |cRXP_WARN_a pie si no tienes ni una ruta de vuelo.|r
    .fly Ratchet >>Toma la ruta de vuelo a |cFFfa9602Trinquete|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Haz clic en el |cRXP_PICK_Tomo goblin|r |cFFfa9602en Trinquete al lado de|r |cRXP_FRIENDLY_Gazlowe|r para obtener |T133744:0|t[Baxtan: Tratado de magias destructivas.]
    .collect 208800,1
    .isQuestAvailable 79097
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Haz clic en el |cRXP_PICK_Pergamino|r ubicado |cFFfa9602en el suelo cerca del Portal a las Cuevas de los Lamentos en Los Baldíos|r para obtener |T135142:0|t[Secretos de los soñadores.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>Muere y resucita en el |cFF00FF25Ángel de la Resurrección|r
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>Haz clic en el |cRXP_PICK_Manual|r |cFFfa9602en lo alto de la Plataforma Petrolífera en Los Baldíos|r para obtener |T134509:0|t[Manual de sistemas arcánicos.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
    .fly Dustwallow Marsh >>Toma la ruta de vuelo a |cFFfa9602Marjal Revolcafango|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Haz clic en el |cRXP_PICK_Libro anegado|r para recibir el libro |T133740:0|t[¡RwlRwlRwlRwl!].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
    .fly Thousand Needles >>Toma la ruta de vuelo a |cFFfa9602Las Mil Agujas|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Haz clic en el |cRXP_PICK_Pergamino|r para recibir el libro |T133740:0|t[Geomancia: De rocas y verdades] dentro de la tienda junto a un saco.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Viaja a |cFFfa9602Tanaris|r
    .fly Tanaris >>Toma la ruta de vuelo a |cFFfa9602Tanaris|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener |T134941:0|t[Leyendas de los maresabios]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>Viaja |cFFfa9602a Forjaz.|r
    .cast 3562 >>Usa |T135757:0|t[Teletransporte a: Forjaz] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    -- .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    -- .disablecheckbox
    .fly Arathi Highlands >> |cRXP_WARN_Vuela a Tierras Altas de Arathi si no tienes desbloqueada la ruta de vuelo a Laderas de Trabalomas.|r
    .disablecheckbox
    .fly Wetlands >> |cRXP_WARN_Vuela a Los Humedales si no tienes desbloqueada Tierras Altas de Arathi.|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>Viaja a |cFFfa9602Tierras Altas de Arathi|r
    .fly Arathi Highlands >>Toma la ruta de vuelo a |cFFfa9602Tierras Altas de Arathi|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Haz clic en el |cRXP_PICK_Pergamino|r para recibir el Libro |T134331:0|t[Una red de mentiras: Toda la verdad sobre los mitos y las leyendas]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>Viaja a |cFFfa9602Tierras del Interior|r
    .fly The Hinterlands >>Toma la ruta de vuelo a |cFFfa9602Tierras del Interior|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener |T134942:0|t[Travesías venenosas]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>Viaja a |cFFfa9602Montañas de Alterac|r
    .fly Alterac Mountains >>Toma la ruta de vuelo a |cFFfa9602Montañas de Alterac|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Haz clic en el |cRXP_PICK_Manual|r dentro de la torre sobre unas cajas para obtener el Libro |T133736:0|t[Magia defensiva I].
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Haz clic en el |cRXP_PICK_Libro|r |cFFfa9602dentro del Castillo principal de Molino Ámbar en una estantería en Bosque de Argénteos|r para obtener |T134917:0|t[El compendio de Dalaran, vol. 23]
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>Viaja a |cFFfa9602a Ventormenta.|r
    .cast 3561 >>Usa [Teletransporte a: Ventormenta] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602en Ventormenta, Torre de los Magos.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Entrega la misión Almanaque de Nar'thalas
    .accept 78127 >>Entrega la misión El compendio de Dalaran
    .accept 78142 >>Entrega la misión Hechizos y encantamientos
    .accept 78143 >>Entrega la misión Secretos de los soñadores
    .accept 78145 >>Entrega la misión Manual de sistemas arcánicos
    .accept 78146 >>Entrega la misión Pergaminos Goaz
    .accept 78147 >>Entrega la misión Crímenes contra la anatomía
    .accept 78148 >>Entrega la misión Runa de los Reyes hechiceros
    .accept 78149 >>Entrega la misión Furia de la tierra
    .accept 79091 >>Entrega la misión Archimago Antonidas: La autobiografía completa
    .accept 79092 >>Entrega la misión Diario de investigación del archimago Theocritus
    .accept 79093 >>Entrega la misión Rumi de Gnomeregan: Obras completas
    .accept 79094 >>Entrega la misión Las enseñanzas de Ta'zo
    .accept 79095 >>Entrega la misión El manual de la metafísica del boticario
    .accept 79096 >>Entrega la misión Ataeric: Tratado de curiosidades arcanas
    .accept 79097 >>Entrega la misión Baxtan: Sobre la magia destructiva
    .accept 79535 >>Entrega la misión Los basiliscos y el infundado miedo a la petrificación
    .accept 79947 >>Entrega la misión Geomancia: De rocas y verdades
    .accept 79948 >>Entrega la misión Magia defensiva I
    .accept 77949 >>Entrega la misión Una red de mentiras: Toda la verdad sobre los mitos y las leyendas
    .accept 79950 >>Entrega la misión Los demonios y tú
    .accept 79951 >>Entrega la misión Momias: Una guía de los no-muertos más espantosos
    .accept 79952 >>Entrega la misión ¡RwlRwlRwlRwl!
    .accept 81947 >>Entrega la misión Hechicería sanguina
    .accept 81949 >>Entrega la misión Leyendas de los maresabios
    .accept 81951 >>Entrega la misión Lo liminal y lo arcano
    .accept 81952 >>Entrega la misión Etiqueta para el día a día
    .accept 81953 >>Entrega la misión Diseño trabajado en piedra
    .accept 81954 >>Entrega la misión Travesías venenosas
    .accept 81955 >>Entrega la misión Mente metálica
    .accept 81956 >>Entrega la misió Códice del conjurador
    .accept 79953 >>Entrega la misión Guía de cuidado de mascotas demoníacas para el ludita común
    .accept 78150 >>Entrega la misión Contribuyente de la biblioteca
    .accept 79536 >>Entrega la misión Contribuyente mayor de la biblioteca
    .accept 82208 >>Entrega la misión Contribuyente mayor de la biblioteca
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Newton Ladoquemado|r.
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Deposita los Libros restantes.|r
    .target Newton Burnside
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Piernas/Botas
#subgroup Piernas/Botas/Casco
#name Venas heladas/Poder con hechizos/Congelación profunda - 40 (Azeroth)
#title Venas heladas y Poder con hechizos y Congelación profunda

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
    .cast 3567 >>Usa [Teletransporte a: Orgrimmar] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >> Compra |T134419:0|t[Runas de teletransporte] a un |cRXP_FRIENDLY_Vendedor de componentes, Artículos arcanos, Pergaminos y Pociones|r |cRXP_WARN_Esto reducirá considerablemente el tiempo de viaje.|r
    >>|cRXP_WARN_Sáltate este paso manualmente si quieres prescindir de ello.|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_el Banquero|r
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Revisa tu banco por si acaso tienes algún libro depositado|r
    .target Karus
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >> |cRXP_WARN_Es muy recomendable reparar, ya que utilizaremos "death skips".|r
    >>|cFFFF0000Si prefieres no utilizar "death skips", omite manualmente este paso.|r
step
    .goto 1454,38.66,78.43
    >>Haz clic en la |cRXP_PICK_Piedra Gigante|r |cFFfa9602en la pared en Orgrimmar|r para obtener |T134938:0|t[Las enseñanzas de Ta'zo.]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>Viaja a |cFFfa9602Los Baldíos|r |cRXP_WARN_a pie si no tienes ni una ruta de vuelo.|r
    .fly Ratchet >>Toma la ruta de vuelo a |cFFfa9602Trinquete|r |cRXP_WARN_si la tienes desbloqueada.|r
    .fly Crossroads >>Toma la ruta de vuelo a |cFFfa9602El Cruce|r |cRXP_WARN_si no tienes la de Trinquete.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Haz clic en el |cRXP_PICK_Tomo goblin|r |cFFfa9602en Trinquete al lado de|r |cRXP_FRIENDLY_Gazlowe|r para obtener |T133744:0|t[Baxtan: Tratado de magias destructivas.]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>Toma la ruta de vuelo a |cRXP_WARN_El Cruce|r si la tienes desbloqueada, |cRXP_WARN_de lo contrario ve a pie.|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Haz clic en el |cRXP_PICK_Pergamino|r ubicado |cFFfa9602en el suelo cerca del Portal a las Cuevas de los Lamentos en Los Baldíos|r para obtener |T135142:0|t[Secretos de los soñadores.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Muere y resucita en el |cFF00FF25Ángel de la Resurrección|r
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>Viaja a |cFFfa9602Los Baldíos|r
    .fly Crossroads >>Toma la ruta de vuelo a |cRXP_WARN_El Cruce|r si la tienes desbloqueada, |cRXP_WARN_de lo contrario ve a pie.|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>Haz clic en el |cRXP_PICK_Manual|r |cFFfa9602en lo alto de la Plataforma Petrolífera en Los Baldíos|r para obtener |T134509:0|t[Manual de sistemas arcánicos.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
    .fly Desolace >>Toma la ruta de vuelo hacia |cFFfa9602Desolace|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Haz clic en el |cRXP_PICK_Pergamino|r para recibir el libro |T133733:0|t[Los demonios y tú]
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Viaja a |cFFfa9602Los Baldíos|r |cRXP_WARN_a pie si no tienes ni una ruta de vuelo.|r
    .fly Ratchet >>Toma la ruta de vuelo a |cFFfa9602Trinquete|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>Viaja a |cFFfa9602Sierra Espolón|r a pie si estás en |cFFfa9602Los Baldíos.|r
    .fly Stonetalon Mountains >>Toma la ruta de vuelo desde |cFFfa9602Orgrimmar|r si la tienes desbloqueada.
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Haz clic en el |cRXP_PICK_Pergamino|r |cFFfa9602en Sierra Espolón|r para obtener |T133209:0|t[Furia de la tierra.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>Viaja a |cFFfa9602Azshara|r
    .fly Ashenvale >>Vuela a |cFFfa9602Vallefresno|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener |T133740:0|t[Etiqueta para el día a día.]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>Viaja a |cFFfa9602Costa Oscura|r a pie |cRXP_WARN_si no tienes ni una ruta de vuelo.|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Haz clic en el |cRXP_PICK_Pergamino|r en |cFFfa9602Costa Oscura|r para obtener el |T237447:0|t[Almanaque de Nar'thalas, vol. 74]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
    .fly Dustwallow Marsh >>Toma la ruta de vuelo a |cFFfa9602Marjal Revolcafango|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Haz clic en el |cRXP_PICK_Libro anegado|r para recibir el libro |T133740:0|t[¡RwlRwlRwlRwl!].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
    .fly Thousand Needles >>Toma la ruta de vuelo a |cFFfa9602Las Mil Agujas|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Haz clic en el |cRXP_PICK_Pergamino|r para recibir el libro |T133740:0|t[Geomancia: De rocas y verdades] dentro de la tienda junto a un saco.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Viaja a |cFFfa9602Tanaris|r
    .fly Tanaris >>Toma la ruta de vuelo a |cFFfa9602Tanaris|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener |T134941:0|t[Leyendas de los maresabios]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>Viaja a |cFFfa9602Entrañas|r
    .cast 3563 >>Usa [Teletransporte a: Entrañas] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >> |cRXP_WARN_Es muy recomendable reparar, ya que utilizaremos "death skips".|r
    >>|cFFFF0000Si prefieres no utilizar "death skips", omite manualmente este paso.|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>Haz clic en el |cRXP_PICK_Manual de Sociedad de Boticarios|r |cFFfa9602en Claros de Tirisfal, Rémol|r para obtener |T133737:0|t[El manual de la metafísica del boticario.]
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>Viaja a |cFFfa9602Bosque de Argénteos|r a pie |cRXP_WARN_si estás en|r |cFFfa9602Claros de Tirisfal.|r
    .fly Silverpine Forest >>Toma la ruta de vuelo a |cFFfa9602Bosque de Argénteos|r |cRXP_WARN_si estás en|r |cFFfa9602Entrañas.|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>Haz clic en los |cRXP_PICK_Secretos arcanos|r |cFFfa9602en Bosque de Argénteos|r para obtener |T133744:0|t[Ataeric: Tratado de curiosidades arcanas.]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>Viaja a |cFFfa9602Bosque de Argénteos|r
    .fly Silverpine Forest >>Toma la ruta de vuelo a |cFFfa9602Bosque de Argénteos|r |cRXP_WARN_si estás en|r |cFFfa9602Entrañas.|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Haz clic en el |cRXP_PICK_Libro|r |cFFfa9602dentro del Castillo principal de Molino Ámbar en Bosque de Argénteos|r para obtener |T134917:0|t[El compendio de Dalaran, vol. 23]
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>Viaja a |cFFfa9602Montañas de Alterac|r
    .fly Alterac Mountains >>Toma la ruta de vuelo a |cFFfa9602Montañas de Alterac|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Haz clic en el |cRXP_PICK_Manual|r dentro de la torre sobre unas cajas para obtener el Libro |T133736:0|t[Magia defensiva I].
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>Viaja a |cFFfa9602Tierras del Interior|r
    .fly Hinterlands >>Toma la ruta de vuelo a |cFFfa9602Tierras del Interior|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener |T134942:0|t[Travesías venenosas]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>Viaja a |cFFfa9602Tierras Altas de Arathi|r
    .fly Arathi Highlands >>Toma la ruta de vuelo a |cFFfa9602Tierras Altas de Arathi|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Haz clic en el |cRXP_PICK_Pergamino|r para recibir el Libro |T134331:0|t[Una red de mentiras: Toda la verdad sobre los mitos y las leyendas]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>Viaja a |cFFfa9602Tierras Inhóspitas|r
    .fly >> Usa la ruta de vuelo a |cFFfa9602Tierras Inhóspitas|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>Haz clic en el Libro |T134937:0|t[Momias: Una guía de los no-muertos más espantosos]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>Haz clic en el |cRXP_PICK_Pergamino|r |cFFfa9602en el jarrón en Los Humedales|r para obtener |T237450:0|t[Pergaminos Goaz.]
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Viaja a |cFFfa9602Páramos de Poniente|r |cRXP_WARN_tomando una ruta de vuelo.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Haz clic en el |cRXP_PICK_Libro de hechizos|r ubicado |cFFfa9602en el Armario de Alquimia dentro de una casa pequeña en Arroyo de la Luna, Páramos de Poniente|r para obtener |T133733:0|t[Hechizos y encantamientos.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Viaja a |cFFfa9602Bosque del Ocaso|r
    .fly Westfall >>Toma la ruta de vuelo a |cFFfa9602Páramos de Poniente|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Haz clic en el |cRXP_PICK_Libro|r |cFFfa9602dentro de las Catacumbas del Bosque Aurora en la Mesa de Alquimia en Bosque del Ocaso|r para obtener |T133738:0|t[Crímenes contra la anatomía.]
    >>|cRXP_WARN_Se recomienda correr hasta el final de las catacumbas y morir. Además, tal vez quieras considerar formar un grupo.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja a |cFFfa9602Pantano de las Penas|r
    .fly Swamp of Sorrows >>Toma la ruta de vuelo a |cFFfa9602Pantano de las Penas|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Mata al |cRXP_ENEMY_Cazador Perdido|r, |cRXP_ENEMY_Habitabosta Perdido|r,|cRXP_ENEMY_Cocinero Perdido|r y |cRXP_ENEMY_Vidente Perdido|r . Despójalos para obtener |cRXP_LOOT_|T237379:0|t[Llave de jaula oxidada]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Haz clic en la |cRXP_PICK_Jaula Oxidada|r para recibir el Libro |T133742:0|t[Guía de cuidado de mascotas demoníacas para el ludita común]
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja a |cFFfa9602Pantano de las Penas|r
    .fly Swamp of Sorrows >>Toma la ruta de vuelo a |cFFfa9602Pantano de las Penas|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>Haz clic en la |cRXP_PICK_Libro|r para obtener |T133738:0|t[Hechicería sanguina]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Viaja a |cFFfa9602Las Tierras Devastadas|r
    .fly Blasted Lands >>Toma la ruta de vuelo a |cFFfa9602Las Tierras Devastadas|r |cRXP_WARN_si la tienes desbloqueada y aún no estás allí.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Haz clic en la |cRXP_PICK_Libro|r para obtener |T133736:0|t[Códice de conjurador]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a |cFFfa9602Vega de Tuercespina|r
    .fly Stranglethorn Vale >>Toma la ruta de vuelo a |cFFfa9602Vega de Tuercespina|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Haz clic en las |cRXP_PICK_Notas de investigación|r del banco para recibir el Libro |T237162:0|t[Los basiliscos y el infundado miedo a la petrificación]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Viaja a |cFFfa9602La Garganta de Fuego|r
    .fly Searing Gorge >>Toma la ruta de vuelo a |cFFfa9602La Garganta de Fuego|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener el |T133743:0|t[Diseño trabajado en piedra]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Viaja a |cFFfa9602La Garganta de Fuego|r
    .fly Searing Gorge >>Toma la ruta de vuelo a |cFFfa9602La Garganta de Fuego|r |cRXP_WARN_si la tienes desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Haz clic en el |cRXP_PICK_Libro|r para obtener el |T133743:0|t[Diseño trabajado en piedra]
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>Viaja a |cFFfa9602Entrañas|r
    .cast 3563 >>Usa |T135766:0|t[Teletransporte a: Entrañas] |cRXP_WARN_si tienes|r |T134419:0|t[Runa de teletransporte]
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602en Entrañas, Barrio de la Magia.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Entrega la misión Almanaque de Nar'thalas
    .accept 78127 >>Entrega la misión El compendio de Dalaran
    .accept 78142 >>Entrega la misión Hechizos y encantamientos
    .accept 78143 >>Entrega la misión Secretos de los soñadores
    .accept 78145 >>Entrega la misión Manual de sistemas arcánicos
    .accept 78146 >>Entrega la misión Pergaminos Goaz
    .accept 78147 >>Entrega la misión Crímenes contra la anatomía
    .accept 78148 >>Entrega la misión Runa de los Reyes hechiceros
    .accept 78149 >>Entrega la misión Furia de la tierra
    .accept 79094 >>Entrega la misión Las enseñanzas de Ta'zo
    .accept 79095 >>Entrega la misión El manual de la metafísica del boticario
    .accept 79096 >>Entrega la misión Ataeric: Tratado de curiosidades arcanas
    .accept 79097 >>Entrega la misión Baxtan: Sobre la magia destructiva
    .accept 79535 >>Entrega la misión Los basiliscos y el infundado miedo a la petrificación
    .accept 79947 >>Entrega la misión Geomancia: De rocas y verdades
    .accept 79948 >>Entrega la misión Magia defensiva I
    .accept 77949 >>Entrega la misión Una red de mentiras: Toda la verdad sobre los mitos y las leyendas
    .accept 79950 >>Entrega la misión Los demonios y tú
    .accept 79951 >>Entrega la misión Momias: Una guía de los no-muertos más espantosos
    .accept 79952 >>Entrega la misión ¡RwlRwlRwlRwl!
    .accept 81947 >>Entrega la misión Hechicería sanguina
    .accept 81949 >>Entrega la misión Leyendas de los maresabios
    .accept 81951 >>Entrega la misión Lo liminal y lo arcano
    .accept 81952 >>Entrega la misión Etiqueta para el día a día
    .accept 81953 >>Entrega la misión Diseño trabajado en piedra
    .accept 81954 >>Entrega la misión Travesías venenosas
    .accept 81955 >>Entrega la misión Mente metálica
    .accept 81956 >>Entrega la misió Códice del conjurador
    .accept 79953 >>Entrega la misión Guía de cuidado de mascotas demoníacas para el ludita común
    .accept 78150 >>Entrega la misión Contribuyente de la biblioteca
    .accept 79536 >>Entrega la misión Contribuyente mayor de la biblioteca
    .accept 82208 >>Entrega la misión Contribuyente mayor de la biblioteca
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Banquero|r
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Deposita los Libros restantes.|r
    .target Karus
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Llama viva - 6 (Bosque de Elwynn)
#title Llama viva

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4,56.6,-1
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>Viaja a |cFFfa9602Bosque de Elwynn.|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Mata |cRXP_ENEMY_Geománticos kóbold|r, despójalos para obtener las |cRXP_LOOT_|T134939:0|t[Notas de hechizo: MALVA VALI]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Llama viva - 7 (Dun Morogh)
#title Llama viva

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>Viaja a |cFFfa9602Dun Morogh.|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>Mata |cRXP_ENEMY_Taumaturgos umbríos Peloescarcha|r y |cRXP_ENEMY_Videntes Peloescarcha|r para obtener las |cRXP_LOOT_|T134939:0|t[Notas de hechizo: MALVA VALI]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Llama viva - 6 (Durotar)
#title Llama viva

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>Viaja a |cFFfa9602Durotar|r
step
    .train 401768,1
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Viento Seco. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Roca del Cráneo. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Llama viva - 6 (Claros de Tirisfal)
#title Llama viva

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Viaja a |cFFfa9602Claros de Tirisfal|r
step
    .train 401768,1
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Mata |cRXP_ENEMY_Humanos Escarlata|r. Despójalos para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Explosión Arcana - 18 (Vallefresno)
#title Explosión Arcana

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>Viaja a |cFFfa9602Vallefresno|r
step
    .aura 430139,1 >>|cRXP_WARN_Lanza|r |T136116:0|t[Deflagración Arcana] |cRXP_WARN_junto al|r |cRXP_PICK_Cristal morado|r |cRXP_WARN_para obtener el "buff"|r |T135734:0|t[Carga Arcana] |cRXP_WARN_|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_Lanza|r |T136116:0|t[Deflagración Arcana] |cRXP_WARN_junto al|r |cRXP_PICK_Cristal morado|r |cRXP_WARN_para obtener otra acumulación del "buff"|r |T135734:0|t[Carga Arcana] |cRXP_WARN_|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_Lanza|r |T136116:0|t[Deflagración Arcana] |cRXP_WARN_junto al|r |cRXP_PICK_Cristal morado|r |cRXP_WARN_para obtener otra acumulación del "buff"|r |T135734:0|t[Carga Arcana] |cRXP_WARN_|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401757 >>|cRXP_WARN_Usar las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Explosión Arcana|r] |cRXP_WARN_para aprender|r |T135820:0|t[Explosión arcana]
    .use 211691
step
    #optional
    .destroy 211777 >> Destruye el |T133737:0|t[Manuscrito naga]. Ya no lo necesitas
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Bomba viva - 11 (Loch Modan)
#title Bomba viva

<< Alliance Mage SoD


step
    +|cRXP_WARN_Deberías ser al menos nivel 11 para adquirir|r |T236220:0|t[Bomba viva] |cRXP_WARN_en Loch Modan en solitario|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Viaja a Forjaz
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entra en la casa de |cRXP_FRIENDLY_Ginny Largamora|r
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ginny Largamora|r dentro
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a esta vendedora|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Vuela a Loch Modan
    .train 415936,1
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Mata |cRXP_ENEMY_Videntes Rompecantos|r y despójalos para obtener |cRXP_LOOT_|T134939:0|t[Notas de hechizo masticadas]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo masticadas|r] para aprender |T236220:0|t[Bomba viva]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Bomba viva - 18 (Páramos de Poniente)
#title Bomba viva

<< Alliance Mage SoD


step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Compra uno o más |T135933:0|t[Talismán de comprensión] a un |cRXP_FRIENDLY_Vendedor de componentes.|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>Viaja a |cFFfa9602Páramos de Poniente|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Mata a |cRXP_ENEMY_Vigía de la cosecha|r para obtener |cRXP_LOOT_|T132996:0|t[Piezas de repuesto de segador]|r
    .train 401417,1
    .collect 209056,1
    .mob Harvest Golem
    .mob Harvest Repair
    .mob Harvest Watcher
    .mob Rusty Harvest Golem
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Mata a los |cRXP_ENEMY_Diablos de polvo|r para obtener |cRXP_LOOT_|T132842:0|t[Núcleo elemental]|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>Usa las |T132996:0|t[Piezas de repuesto de segador]|r| para crear |T133000:0|t[Prototipo de motor]
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>Encuentra un |cRXP_FRIENDLY_Prototipo de segador de la cosecha|r y usa el |T133000:0|t[Prototipo de motor] en él. Procede a matar al |cRXP_ENEMY_Prototipo de segador de la cosecha.|r
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo masticadas|r] para aprender |T236220:0|t[Bomba viva]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Bomba viva - 17 (Bosque de Argénteos)
#title Bomba viva

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>Viaja a |cFFfa9602Bosque de Argénteos|r
step
    .train 415936,1
    >>Mata a los |cRXP_ENEMY_Putrepellejo|r |cFFfa9602en Isla Fenris.|r Despójalos para obtener |T134173:0|t[Una cabeza que habla]. |cRXP_WARN_Haz clic en ella en tus bolsas.|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Acepta la misión Descansar en piezas
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Interactúa con la |cRXP_PICK_Tumba poco profunda|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Entrega la misión Descansar en piezas
    .accept 461 >>Acepta la misión El nicho oculto
    .target Shallow Grave
step
    .train 415936,1
    >>Interactúa con la |cRXP_PICK_Estantería polvorienta|r |cRXP_WARN_dentro del castillo en la torre superior izquierda (ve a la izquierda tras la primera escalera)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Entrega la misión El nicho oculto
    .accept 491 >>Acepta la misión Una varita para Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Viaja a |cFFfa9602Entrañas|r (si tienes la ruta de vuelo de Entrañas, podrías hacer un "deathskip" a El Sepulcro y volar desde allí)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor Duroyelo|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Entrega la misión Una varita para Bethor
    .accept 78277 >>Acepta la misión Una muestra de gratitud
    .turnin 78277 >>Entrega la misión Una muestra de gratitud
    .train 415936 >>|cRXP_WARN_Aprenderás la runa automáticamente al entregar la misión|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Bomba viva - 20 (Los Baldíos)
#title Bomba viva

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_Debes aprender|r |T135736:0|t[Traslación] |cRXP_WARN_para adquirir la runa|r |T236220:0|t[Bomba viva] |cRXP_WARN_|r
step
    #optional
    .train 415936,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismán de comprensión] |cRXP_BUY_a un|r |cRXP_FRIENDLY_Vendedor de componentes|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>Viaja a |cFFfa9602Los Baldíos|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_Usa Traslación contra el|r |cRXP_PICK_Tallado con grabados|r |cRXP_WARN_de la pared para obtener el "buff"|r |T236168:0|t[Camino sin Pasos] |cRXP_WARN_|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_Lanza|r |T135736:0|t[Traslación] |cRXP_WARN_sobre los círculos verdes uno por uno. Al final, usa Traslación contra el|r |cRXP_PICK_Tallado con grabados|r |cRXP_WARN_para aprender|r |T236220:0|t[Bomba viva]
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#title Descarga de fríoarcano/Descarga de Pirofrío
#name Descarga de fríoarcano/Descarga de Pirofrío - 37 (Vega de Tuercespina)

step << Alliance
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismán de comprensión] |cRXP_BUY_a un|r |cRXP_FRIENDLY_Vendedor de componentes|r
    .collect 211779,1
step << Horde
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismán de comprensión] |cRXP_BUY_a un|r |cRXP_FRIENDLY_Vendedor de componentes|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>Viaja a |cFFfa9602Vega de Tuercespina|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>Mata |cRXP_ENEMY_Místicos Machacacráneos|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Notas de hechizo: DEROEB OFNACRÍORA]|r y |T134939:0|t[|cRXP_LOOT_Notas de hechizo: PARGESCO RÍA DROFIDE|r]
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
step << Alliance
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismán de comprensión] |cRXP_BUY_a un |cRXP_FRIENDLY_Vendedor de componentes|r para descifrar la runa|r
    .collect 211779,1
step << Horde
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Compra uno o más|r |T135933:0|t[Talismán de comprensión] |cRXP_BUY_a un |cRXP_FRIENDLY_Vendedor de componentes|r para descifrar la runa|r
    .collect 211779,1
step
    .train 415948 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: DEROEB OFNACRÍORA|r] |cRXP_WARN_para aprender|r |T135780:0|t[Descarga de fríoarcano]
    .train 401762 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: PARGESCO RÍA DROFIDE|r] |cRXP_WARN_para aprender|r |T236217:0|t[Descarga de pirofrío]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Una buena racha - 32 (Montañas de Alterac)
#title Una buena racha

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >> |cRXP_WARN_Debes tener|r |T135826:0|t[Fogonazo] |cRXP_WARN_aprendido para poder obtener la runa|r |T236218:0|t[Una buena racha] |cRXP_WARN_|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >> Viaja a Montañas de Alterac
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_Lanza|r |T135826:0|t[Fogonazo] |cRXP_WARN_en los dos fuelles conectados al edificio de la herrería en Strahnbrad. Una vez que uno de los fuelles comience a brillar rojo y ardiente, lanza|r |T135826:0|t[Fogonazo] |cRXP_WARN_de nuevo en el segundo fuelle para encenderlo también. Esto hará que aparezca el |cRXP_ENEMY_Elemental de fuego anciano|r|r
    >>Mata al |cRXP_ENEMY_Elemental de fuego anciano|r. Despójalo para obtener las |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Buena racha|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Buena racha|r] |cRXP_WARN_para aprender|r |T236218:0|t[Una buena racha]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Una buena racha - 37 (Tierras Altas de Arathi)
#title Una buena racha

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >> Viaja a las Tierras Altas de Arathi
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Mata |cRXP_ENEMY_Exiliados ardientes|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Buena racha|r]
    >>|cRXP_WARN_Nota: Se ha informado que esto tiene una probabilidad de caída relativamente baja. Tal vez quieras considerar conseguirlo en Montañas de Alterac en su lugar|r
    .collect 213113,1
    .mob Burning Exile
step
    .train 401749 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Buena racha|r] |cRXP_WARN_para aprender|r |T236218:0|t[Una buena racha]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Preservación cronoestática - 30 (Las Mil Agujas)
#title Preservación cronoestática

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_¡Asegúrate de traer al menos a otro amigo |cFF69CCF0Mago|r para los siguientes pasos! ¡Esta siguiente parte no se puede completar en solitario!|r
step
    .train 425189,1
    .zone Thousand Needles >>Viaja a Las Mil Agujas
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>Mata |cRXP_ENEMY_Merodeadores Galak|r, |cRXP_ENEMY_Aplastadores Galaks|r y |cRXP_ENEMY_Agitadoras Galak|r. Despójalos para obtener la |cRXP_LOOT_Llave de jaula de pumas|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +Abre la |cRXP_PICK_Jaula de pumas|r para liberar al |cRXP_ENEMY_Puma de las Agujas agostado|r
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>Mata al |cRXP_ENEMY_Puma de las Agujas agostado|r. Despójalo para obtener la |T134943:0|t[|cRXP_LOOT_Notas parciales de hechizo|r]
    >>|cRXP_WARN_Solo debes usar hechizos de Escarcha para debilitarlo y que pueda recibir daño|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Mata al |cRXP_ENEMY_Consorte de Nido Alto agostado|r. Despójalo para obtener las |T134938:0|t[|cRXP_LOOT_Notas parciales de hechizo|r]
    >>|cRXP_WARN_Solo debes usar hechizos de Escarcha para debilitarlo y que pueda recibir daño|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>Mata al |cRXP_ENEMY_Malapluma estridente agostado|r. Despójalo para obtener las |T134937:0|t[|cRXP_LOOT_Notas parciales de hechizo|r]
    >>|cRXP_WARN_Solo debes usar hechizos de Escarcha para debilitarlo y que pueda recibir daño|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>|cRXP_WARN_Usa las|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Notas parciales de hechizo|r] |cRXP_WARN_para crear las|r |T134939:0|t[|cRXP_FRIENDLY_Notas sobre hechizos: Preservación cronoestática|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>|cRXP_WARN_Usa la|r |T134939:0|t[|cRXP_FRIENDLY_Notas sobre hechizos: Preservación cronostática|r |cRXP_WARN_para aprender|r |T135729:0|t[Preservación cronoestática]
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Anomalía temporal - 42 (Azeroth)


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>Viaja a Feralas
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>Mata a las |cRXP_ENEMY_fuerzas Zukk'ash.|r Despójalos para obtener |T237070:0|t[Resina de Zukk'ash.]
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>Viaja a Tierras del Interior
step
    .train 429306,1
    >>Mata a las |cRXP_ENEMY_Lechubestia.|r Despójalas para obtener |cRXP_LOOT_|T132914:0|tPluma de lechubestia prístina.|r
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>Viaja a Tanaris
step
    .train 429306,1
    >>Mata a los |cRXP_ENEMY_Zombi Zul'Farrak|r. Despójalos para obtener |cRXP_LOOT_|T237132:0|tPapiro farraki.|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602en Entrañas, Barrio de la Magia.|r
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602en Ventormenta, Torre de los Magos.|r
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 15 (Páramos de Poniente)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Viaja a Ventormenta
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Viaja a Entrañas
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step
    .train 429311,1
    #loop
    .goto Westfall,47.0,39.4,40,0
    .goto Westfall,51.0,32.6,40,0
    .goto Westfall,47.6,22.0,40,0
    .goto Westfall,46.8,12.6,40,0
    .goto Westfall,41.6,15.2,40,0
    .goto Westfall,32.4,29.2,40,0
    .goto Westfall,29.8,34.4,40,0
    .goto Westfall,31.8,39.4,40,0
    .goto Westfall,28.6,44.0,40,0
    .goto Westfall,29.0,47.8,40,0
    .goto Westfall,29.0,58.8,40,0
    .goto Westfall,31.4,65.6,40,0
    .goto Westfall,29.6,69.4,40,0
    .goto Westfall,32.2,76.0,40,0
    .goto Westfall,32.2,80.2,40,0
    .goto Westfall,34.0,82.2,40,0
    .goto Westfall,37.8,85.4,40,0
    .goto Westfall,47.6,79.6,40,0
    .goto Westfall,51.6,71.4,40,0
    .goto Westfall,47.6,67.2,40,0
    .goto Westfall,62.6,26.6,40,0
    .goto Westfall,57.0,10.6,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 35 (Desolace)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Viaja a Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Viaja a Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >> Viaja a Desolace
step
    .train 429311,1
    #loop
    .goto Desolace,71.6,18.4,40,0
    .goto Desolace,73.6,24.8,40,0
    .goto Desolace,80.4,17.0,40,0
    .goto Desolace,74.6,10.4,40,0
    .goto Desolace,54.4,19.2,40,0
    .goto Desolace,47.4,22.2,40,0
    .goto Desolace,56.0,74.8,40,0
    .goto Desolace,52.0,85.6,40,0
    .goto Desolace,49.6,74.8,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 45 (Feralas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Viaja a Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Viaja a Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >> Viaja a Feralas
step
    .train 429311,1
    #loop
    .goto Feralas,74.2,50.8,40,0
    .goto Feralas,73.2,54.4,40,0
    .goto Feralas,74.2,56.8,40,0
    .goto Feralas,76.2,56.6,40,0
    .goto Feralas,74.2,60.0,40,0
    .goto Feralas,76.6,63.6,40,0
    .goto Feralas,72.6,63.8,40,0
    .goto Feralas,70.6,62.6,40,0
    .goto Feralas,68.2,58.8,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 45 (Azshara)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Viaja a Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Viaja a Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >> Viaja a Azshara
step
    .train 429311,1
    #loop
    .goto Azshara,17.6,58.8,40,0
    .goto Azshara,16.6,51.0,40,0
    .goto Azshara,21.2,54.0,40,0
    .goto Azshara,24.8,47.8,40,0
    .goto Azshara,33.0,81.6,40,0
    .goto Azshara,30.2,79.8,40,0
    .goto Azshara,25.2,81.6,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 35 (Las Tierras Devastadas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>> Viaja a Ventormenta
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Viaja a Entrañas
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >> Viaja a Las Tierras Devastadas
step
    .train 429311,1
    #loop
    .goto Blasted Lands,56.2,36.6,40,0
    .goto Blasted Lands,62.0,39.2,40,0
    .goto Blasted Lands,60.2,46.8,40,0
    .goto Blasted Lands,49.0,48.2,40,0
    .goto Blasted Lands,46.8,39.2,40,0
    .goto Blasted Lands,41.4,33.6,40,0
    .goto Blasted Lands,43.8,25.0,40,0
    .goto Blasted Lands,35.0,54.8,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 15 (Los Baldíos)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Viaja a Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Viaja a Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step
    .train 429311,1
    #loop
    .goto The Barrens,60.2,36.0,40,0
    .goto The Barrens,60.8,29.0,40,0
    .goto The Barrens,59.8,27.6,40,0
    .goto The Barrens,57.6,23.6,40,0
    .goto The Barrens,42.0,14.2,40,0
    .goto The Barrens,40.0,18.4,40,0
    .goto The Barrens,44.4,50.0,40,0
    .goto The Barrens,46.4,52.6,40,0
    .goto The Barrens,47.6,49.4,40,0
    .goto The Barrens,54.4,48.6,40,0
    .goto The Barrens,58.2,49.6,40,0
    .goto The Barrens,51.8,53.4,40,0
    .goto The Barrens,48.6,83.0,40,0
    .goto The Barrens,46.2,85.6,40,0
    .goto The Barrens,43.8,83.8,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 15 (Costa Oscura)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Viaja a Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Viaja a Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >> Viaja a Costa Oscura
step
    .train 429311,1
    #loop
    .goto Darkshore,43.2,27.0,40,0
    .goto Darkshore,47.4,28.8,40,0
    .goto Darkshore,56.4,24.8,40,0
    .goto Darkshore,59.8,21.8,40,0
    .goto Darkshore,49.8,36.8,40,0
    .goto Darkshore,46.2,46.8,40,0
    .goto Darkshore,37.6,63.8,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 15 (Bosque de Argénteos)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >> Viaja a Forjaz
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Viaja a Entrañas
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step
    .train 429311,1
    #loop
    .goto Silverpine Forest,45.6,31.8,40,0
    .goto Silverpine Forest,44.6,25.8,40,0
    .goto Silverpine Forest,38.8,23.4,40,0
    .goto Silverpine Forest,38.8,18.4,40,0
    .goto Silverpine Forest,49.8,13.4,40,0
    .goto Silverpine Forest,55.6,24.6,40,0
    .goto Silverpine Forest,50.2,56.8,40,0
    .goto Silverpine Forest,50.2,65.2,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 35 (Pantano de las Penas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Viaja a Ventormenta
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Viaja a Entrañas
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >> Viaja al Pantano de las Penas
step
    .train 429311,1
    #loop
    .goto Swamp of Sorrows,36.6,50.0,40,0
    .goto Swamp of Sorrows,27.0,49.8,40,0
    .goto Swamp of Sorrows,22.8,64.6,40,0
    .goto Swamp of Sorrows,16.6,63.6,40,0
    .goto Swamp of Sorrows,10.6,60.2,40,0
    .goto Swamp of Sorrows,12.6,29.6,40,0
    .goto Swamp of Sorrows,34.6,28.0,40,0
    .goto Swamp of Sorrows,49.8,38.6,40,0
    .goto Swamp of Sorrows,61.0,43.4,40,0
    .goto Swamp of Sorrows,60.8,27.4,40,0
    .goto Swamp of Sorrows,72.8,10.4,40,0
    .goto Swamp of Sorrows,87.6,26.0,40,0
    .goto Swamp of Sorrows,81.4,34.6,40,0
    .goto Swamp of Sorrows,91.6,56.4,40,0
    .goto Swamp of Sorrows,91.0,65.6,40,0
    .goto Swamp of Sorrows,83.8,66.4,40,0
    .goto Swamp of Sorrows,77.4,89.6,40,0
    .goto Swamp of Sorrows,77.6,90.0,40,0
    .goto Swamp of Sorrows,69.8,78.0,40,0
    .goto Swamp of Sorrows,56.8,65.6,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Brazales(Descarga de fuego fardo)
#name Descarga de fuego fardo - 28 (Montañas Crestagrana)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Viaja a Ventormenta
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Viaja a Entrañas
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compra un|r |T134945:0|t[Pergamino de reparación espacial] |cRXP_BUY_en la Casa de Subastas.|r |cRXP_WARN_Como alternativa, un encantador puede creártelo.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>Usa el |cRXP_FRIENDLY_Pergamino de reparación espacial|r en el |cRXP_PICK_Portal|r para invocar a un |cRXP_ENEMY_Intruso vil.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mata a |cRXP_ENEMY_Intruso vil|r. Despójalo para obtener las |cRXP_LOOT_|T134939:0|tNotas de hechizo: Descarga de fuego fardo.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Recalentamiento - 55 (Tierras de la Peste del Oeste)
#title Recalentamiento

step
    .train 401764,1
    .zone Western Plaguelands >> Viaja a Tierras de la Peste del Oeste
step
    .train 401764,1
    #loop -- not sure which coord is tied to which itemid, update in future
    .goto Western Plaguelands,36.8,54.7,30,0
    .goto Western Plaguelands,64.2,57.7,30,0
    .goto Western Plaguelands,53.3,64.5,30,0
    .goto Western Plaguelands,45.1,51.9,30,0
    >>|cRXP_WARN_Usando hechizos de Fuego, descongela a las|r |cRXP_FRIENDLY_Magas de escarcha principiantes|r|cRXP_WARN_. ¡NO LAS MATES!|r
    >>|cRXP_WARN_Después lánzales|r |T136082:0|t[Eliminar maldición inferior] |cRXP_WARN_y habla con ellos para recibir sus|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Notas de hechizo rotas|r]
    >>|cRXP_WARN_Repite esto con cada|cRXP_FRIENDLY_ Maga de escarcha principiante|r en cada uno de los Campos de Tierras de la Peste del Oeste|r
    .collect 225938,1 --Felstone Field
    .collect 225939,1
    .collect 225940,1
    .collect 225941,1
    .target Novice Frost Mage
    .skipgossip
step
    .train 401764,1
    .use 225938 >> |cRXP_WARN_Usa cualquiera de las|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Notas de hechizo rotas|r] |cRXP_WARN_para combinarlas en|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Recalentamiento|r]
    .use 225939
    .use 225940
    .use 225941
    .collect 225691,1
step
    .train 401764 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Recalentamiento|r] |cRXP_WARN_para aprender|r |T135813:0|t[Recalentamiento]
    .use 225691
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Orbe congelado - 55 (Frondavil/Cuna del Invierno)
#title Orbe congelado

step
    #completewith next
    .train 440858,1
    .zone Felwood >> Viaja a Frondavil
step
    .train 440858,1
    .goto Felwood,63.0,9.0
    >>Mata |cRXP_ENEMY_Vengadores Muertobosque|r y |cRXP_ENEMY_Chamanes Muertobosque|r. Despójalos para obtener el |T237446:0|t[|cRXP_LOOT_Pergamino darnassiano misterioso|r]
    .collect 227796,1 -- Mysterious Darnassian Scroll 1/1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
step
    .train 440858,1
    >>|cRXP_WARN_Usa un|r |T135933:0|t[|cRXP_LOOT_Talismán de comprensión|r] |cRXP_WARN_en el|r |T237446:0|t[|cRXP_LOOT_Pergamino darnassiano misterioso|r] |cRXP_WARN_para descifrarlo y obtener el|r |T134937:0|t[|cRXP_LOOT_Pergamino darnassiano descifrado|r]
    .collect 227797,1 -- Deciphered Darnassian Scroll 1/1
    .use 211779
    .use 227796
step
    .train 440858,1
    .goto Felwood,61.0,12.0
    .use 227797 >>|cRXP_WARN_Usa el|r |T134937:0|t[|cRXP_LOOT_Pergamino darnassiano descifrado|r] |cRXP_WARN_en|cRXP_FRIENDLY_ Calyx Brilloverde|r y acepta su misión|r
    >>|cRXP_FRIENDLY_Calyx Brilloverde|r |cRXP_WARN_patrulla un poco por los alrededores|r
    .accept 84369 >> Acepta la misión Sanar al sanador
    .unitscan Calyx Greenglow
step
    .train 440858,1
    .goto Winterspring,55.0,22.0
    >>Mata |cRXP_ENEMY_Vapuleadores Troncoferro|r. Despójalos para obtener el |cRXP_LOOT_Frasco inusual|r
    .collect 227924,1,84369,1 -- Unusual Flask 1/1
    .mob Irontree Stomper
step
    .train 440858,1
    #completewith next
    .zone Winterspring >> Viaja a Cuna del Invierno
step
    .train 440858,1
    .goto Winterspring,29.0,35.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calyx Brilloverde|r
    >>|cRXP_WARN_Tendrás que matar a |cRXP_ENEMY_Calyx Brilloverde|r después de entregar esta misión|r
    .turnin 84369 >> Entrega la misión Sanar al sanador
    .unitscan Calyx Greenglow
step
    .train 440858,1
    >>Mata a la |cRXP_ENEMY_Sombra Enfurecida|r. Despójala para obtener las |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Orbe congelado|r]
    .collect 225690,1 -- Spell Notes: Frozen Orb 1/1
    .mob Enraged Shade
step
    .train 440858 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_LOOT_Notas de hechizo: Orbe congelado|r] |cRXP_WARN_para aprender|r |T135851:0|t[Orbe congelado]
    .use 225690
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Tromba Arcana - 60 (Azeroth)
#title Tromba Arcana

<< Mage SoD

step
    .train 401722,1
    #completewith Necromancy101
    .zone Western Plaguelands >> Viaja a Tierras de la Peste del Oeste
step
    .train 401722,1
    .goto Western Plaguelands,38.3,54.6
    >>Despoja el libro |cRXP_LOOT_Papas no-muertas|r en el piso de arriba de la granja del Campo de Piedramácula
    .collect 228132,1
    .isQuestAvailable 84395
step
    .train 401722,1
    #label Necromancy101
    .goto Western Plaguelands,69.41,72.84
    >>Despoja la |cRXP_LOOT_Nigromancia básica|r en el Castillo de Scholomance
    .collect 228141,1
    .isQuestAvailable 84402
step
    .train 401722,1
    #completewith UndeadMenace
    .zone Eastern Plaguelands >> Viaja a Tierras de la Peste del Oeste
step
    .train 401722,1
    .goto Eastern Plaguelands,81.7,57.8
    >>Despoja el libro |cRXP_LOOT_Un estudio de la Luz|r
    .collect 228135,1
    .isQuestAvailable 84398
step
    .train 401722,1
    .goto Eastern Plaguelands,54.5,50.8
    >>Despoja el libro |cRXP_LOOT_El caballero y la dama|r
    .collect 228138,1
    .isQuestAvailable 84400
step
    .train 401722,1
    #label UndeadMenace
    .goto Eastern Plaguelands,31.250,21.000
    >>Despoja el libro |cRXP_LOOT_La Plaga: ¿Amenaza de no-muertos o incomprendidos?|r
    .collect 228140,1
    .isQuestAvailable 84401
step
    .train 401722,1
    #completewith next
    .subzone 1445 >> Viaja a La Garganta de Fuego o a Las Estepas Ardientes y dirígete al interior de la Montaña Roca Negra
step
    .train 401722,1
    .goto 1415,48.388,63.626
    >>|cRXP_WARN_Desciende por la cadena y dirige hacia la entrada de Profundidades de Roca Negra|r
    >>Despoja el libro |cRXP_LOOT_¿Magma o lava?|r del suelo
    .collect 228133,1
    .isQuestAvailable 84396
step
    .train 401722,1
    #completewith next
    .zone Winterspring >> Viaja a Cuna del Invierno
step
    .train 401722,1
    .goto Winterspring,60.7,37.7
    >>Despoja el libro |cRXP_LOOT_Ka-¡Bum!|r del estante
    .collect 228136,1
    .isQuestAvailable 84399
step
    .train 401722,1
    #completewith next
    .zone Felwood >> Viaja a Frondavil
    .subzoneskip 1216
step
    .train 401722,1
    .goto Felwood,65.214,3.248
    >>|cRXP_WARN_Dirígete al túnel de Bastión Fauces de Madera. Ten en cuenta que si no eres al menos Adverso con Bastión Fauces de Madera, los furbolgs te atacarán|r
    >>Despoja el libro |cRXP_LOOT_Norte de Kalimdor: Una guía exhaustiva|r del suelo
    .collect 228134,1
    .isQuestAvailable 84397
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jennea Cañón|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oran Snakewrithe|r  << Horde
    .accept 84395 >> Entrega la misión Papas no-muertas
    .accept 84402 >> Entrega la misión Nigromancia básica
    .accept 84398 >> Entrega la misión Un estudio de la Luz
    .accept 84400 >> Entrega la misión El caballero y la dama
    .accept 84401 >> Entrega la misión La Plaga: ¿Amenaza de no-muertos o incomprendidos?
    .accept 84396 >> Entrega la misión ¿Magma o lava?
    .accept 84399 >> Entrega la misión ¡Ka-bum!
    .accept 84397 >> Entrega la misión Norte de Kalimdor: Una guía exhaustiva
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jennea Cañón|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oran Snakewrithe|r << Horde
    >>|cRXP_WARN_SI NO PUEDES ACEPTAR ESTA MISIÓN, ASEGÚRATE DE HABER ADQUIRIDO LAS RUNAS DE Venas heladas/Poder con hechizos/Congelación profunda YA QUE ESTA ES UNA CONTINUACIÓN DE ESAS RUNAS Y ES OBLIGATORIO|r
    .accept 84394 >> Acepta la misión Contribuyente mayor de la biblioteca
    .turnin 84394 >> Entrega la misión Contribuyente mayor de la biblioteca
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
]])
