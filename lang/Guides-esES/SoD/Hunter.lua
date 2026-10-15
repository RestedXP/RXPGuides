if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Disparo de quimera - 2 (Dun Morogh)
#title Disparo de quimera


step
    +|cRXP_WARN_Deberías ser al menos nivel 2 para obtener|r |T133816:0|t[Grabar guantes - Disparo de quimera] |cRXP_WARN_en Dun Morogh en solitario|r
    .train 410121,1
    .xp >2,1
step
    #completewith Rune
    #label Dun1
    .zone Dun Morogh >> Viaja a Dun Morogh
    .train 410121,1
step
    #optional
    #requires Dun1
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Entra en la Cueva Peloescarcha
    .train 410121,1
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Viaja hacia el |cRXP_PICK_Alijo de botín Peloescarcha|r que hay dentro
    .train 410121,1
step
    #label Rune
    .goto Dun Morogh,30.773,80.063
    >>Abre el |cRXP_PICK_Alijo de botín Peloescarcha|r del suelo en el interior. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Quimera]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Quimera]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo de quimera]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Disparo de quimera - 3 (Teldrassil)
#title Disparo de quimera

step
    +|cRXP_WARN_Deberías ser al menos nivel 3 para obtener|r |T133816:0|t[Grabar guantes - Disparo de quimera] |cRXP_WARN_en Teldrassil en solitario|r
    .train 410121,1
    .xp >3,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >> Viaja a Teldrassil
    .train 410121,1
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,56.694,31.485
    .subzone 25 >> Entra en la Gruta Narácnida
    .train 410121,1
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,56.137,24.971,15,0
    .goto 1438,55.785,25.341,15,0
    .goto 1438,56.137,24.971,15,0
    .goto 1438,56.358,25.242,20,0
    .goto 1438,56.654,26.430,50,0
    .goto 1438,56.874,26.323,10 >> Viaja hacia |cRXP_ENEMY_Githyiss la Vil|r que se encuentra en el interior
    .train 410121,1
step
    #label Rune
    .goto Teldrassil,56.68,26.12
    >>Mata a |cRXP_ENEMY_Githyiss la Vil|r. Despójala para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Quimera]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Quimera]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo de quimera]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Disparo explosivo - 5 (Dun Morogh)
#title Disparo explosivo

step
    +|cRXP_WARN_Deberías ser al menos nivel 5 para obtener|r |T133816:0|t[Grabar guantes - Disparo explosivo] |cRXP_WARN_en Dun Morogh en solitario|r
    .train 410123,1
    .xp >5,1
step
    #completewith Rune
    .zone Dun Morogh >>Viaja a Dun Morogh
    .train 410123,1
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
    >>Mata a |cRXP_ENEMY_Fyodi|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r
    >>|cRXP_WARN_Aunque |cRXP_ENEMY_Fyodi|r aparece como un élite, sus valores de salud, daño y armadura son los de un enemigo estándar|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, infligiendo 35-80 de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    >>|cRXP_WARN_NOTA: La|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_también puede caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_ |rVagash|cRXP_ENEMY_, |rSarnagarra|r, y |cRXP_ENEMY_Viejo Barbahielo|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Fyodi
    .train 410123,1
    .xp >10,1
step
    #label Rune
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r
    >>|cRXP_WARN_NOTA: La|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_también puede caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_ |rFyodi|cRXP_ENEMY_, |rSarnagarra|r, y |cRXP_ENEMY_Viejo Barbahielo|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Vagash
    .train 410123,1
    .xp <10,1
step
    .train 410123 >> |cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo explosivo]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Disparo explosivo - 2 (Durotar)
#title Disparo explosivo


    --Rune of Explosive Shot

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Mata a |cFFFF5722Sarkoth|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Disparo explosivo|r]
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Sarkoth
    .train 410123,1
step
    #season 2
    .train 410123 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Disparo explosivo|r]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Disparo de quimera - 2 (Durotar)
#title Disparo de quimera


    --Rune of Chimera Shot

step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Jen'shan|r
    .accept 77590 >>Acepta la misión Terreno escabroso << Troll Hunter
    .accept 77584 >>Acepta la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
step
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Mata |cFFFF5722Escórpidos obreros|r. Despójalos para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Quimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .train 410121 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Quimera|r]
    .use 206168
    .itemcount 206168,1
step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Jen'shan|r
    .turnin 77590 >>Entrega la misión Terreno escabroso << Troll Hunter
    .turnin 77584 >>Entrega la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Disparo de quimera - 2 (Mulgore)
#title Disparo de quimera


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Acepta la misión La fuerza de un cazador
    .target Lanka Farshot
step
    #season 2
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>Mata |cRXP_ENEMY_Jabaguerreros Erizapúas|r. Despójalos para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Quimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #season 2
    .train 410121 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Quimera|r]
    .use 206168
    .itemcount 206168,1
step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .turnin 77649 >>Entrega la misión La fuerza de un cazador
    .target Lanka Farshot
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Maestro Tirador - 6 (Durotar)
#title Maestro Tirador


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>Lanza |T132212:0|t[Marca del cazador] en el |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo Crines de Acero|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Maestro Tirador - 6 (Mulgore)
#title Maestro Tirador


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>Lanza |T132212:0|t[Marca del cazador] en el |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo de Ventura y Cía.|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Maestro Tirador - 6 (Dun Morogh)
#title Maestro Tirador


    --Rune of Master Marksman

step
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>Lanza |T132212:0|t[Marca del cazador] en el |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo Crines de Acero|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Maestro Tirador - 6 (Teldrassil)
#title Maestro Tirador


    --Rune of Master Marksman

step
    #season 2
    .goto Teldrassil,46.6,46.3
    >>Lanza |T132212:0|t[Marca del cazador] en el |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Cazador furtivo Malarraíz|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Flanqueo - 6 (Mulgore)
#title Flanqueo


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>Mata |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r. Despójalos para obtener |T134025:0|t[|cRXP_LOOT_Carne de ave de Mulgore|r]
    .collect 205961,1 --Mulgore Bird Meat (1)
    .mob Elder Plainstrider
    .mob Adult Plainstrider
    .mob Swoop
    .mob Wiry Swoop
    .mob Taloned Swoop
    .train 425762,1
step
    #season 2
    .goto Mulgore,35.22,57.42
    >>Usa la |T134025:0|t[|cRXP_LOOT_Carne de ave de Mulgore|r] en el cadáver para invocar a |cRXP_ENEMY_Mokwa|r
    >>Mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .use 205961
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r] |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Flanqueo - 6 (Durotar)
#title Flanqueo


    --Rune of Flanking

step
    #season 2
    .goto Durotar,53.43,48.62,70,0
    .goto Durotar,51.77,56.01,70,0
    .goto Durotar,54.04,67.14
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados temibles|r. Despójalos para obtener |T134026:0|t[|cRXP_LOOT_Carne de cerdo de Durotar|r]
    .collect 207590,1 --Durotar Pig Meat (1)
    .mob Dire Mottled Boar
    .train 425762,1
step
    #season 2
    .goto Durotar,68.67,71.68
    .use 207590 >>Usa la |T134026:0|t[|cRXP_LOOT_Carne de cerdo de Durotar|r] en el cadáver para invocar a |cRXP_ENEMY_Raluk|r
    >>Mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Raluk
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r] |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Cuchillada - 10 (Durotar)
#title Cuchillada


    --Rune of Carve

step
    #season 2
    #completewith n`t
    +|cRXP_WARN_Necesitas haber aprendido|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_para poder obtener esta runa|r
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
    >>Mata |cRXP_ENEMY_Jabaespínes Crines de Acero|r. Despójalos para obtener la |T134743:0|t[|cRXP_LOOT_Feromona de víboris|r]
    .collect 207631,1 --Adder Pheromone (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 425758,1
step
    #season 2
    #completewith next
    +Busca una |cRXP_ENEMY_Víboris|r (alimaña). Usa tu |T134743:0|t[|cRXP_LOOT_Feromona de víboris|r] y lanza |T132164:0|t[Domesticar bestia]
    >>|cRXP_WARN_Se encuentran más fácilmente alrededor de Cerrotajo|r
    .use 207631
    .unitscan Adder
step
    #season 2
    .goto Durotar,52.15,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzil|r
    >>Entrega la |cRXP_ENEMY_Víboris|r  para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Razzil
    .train 425758,1
step
    #season 2
    .train 425758 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .use 206032
    .itemcount 206032,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Cuchillada - 10 (Mulgore)
#title Cuchillada


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Necesitas haber aprendido|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_para poder obtener esta runa|r
step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Mata |cRXP_ENEMY_Gnolls Crines Pálidas|r. Despójalos para obtener |T134419:0|t[|cRXP_LOOT_Almizcle de perro de la pradera|r]
    .collect 205995,1 --Prairie Dog Musk (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 425758,1
step
    #season 2
    #completewith next
    +Busca un |cRXP_ENEMY_Perro de la pradera|r (alimaña). Usa tu |T134419:0|t[|cRXP_LOOT_Almizcle de perro de la pradera|r] y lanza |T132164:0|t[Domesticar bestia]
    >>|cRXP_WARN_Se encuentran más fácilmente a lo largo del camino justo al sur/este del Poblado Pezuña de Sangre|r
    .use 205995
    .unitscan Prairie Dog
step
    #season 2
    .goto Mulgore,46.19,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takoda|r
    >>Entrega al |cRXP_ENEMY_Perro de la pradera|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Takoda Sunmane
    .train 425758,1
step
    #season 2
    .train 425758 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .use 206032
    .itemcount 206032,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Cuchillada - 10 (Dun Morogh)
#title Cuchillada


    --Rune of Carve
step
    #season 2
    #completewith next
    +|cRXP_WARN_Necesitas haber aprendido|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_para poder obtener esta runa|r
step
    #season 2
    #loop
    .goto Dun Morogh,68.2,56.2,20,0
    .goto Dun Morogh,68.8,58.2,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,72.6,52.6,20,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r. Despójalos para obtener |T134419:0|t[|cRXP_LOOT_Almizcle de conejo|r]
    .collect 208180,1 --Rabbit Musk (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .mob Rockjaw Backbreaker
    .mob Rockjaw Ambusher
    .train 425758,1
step
    #season 2
    #completewith next
    .goto Dun Morogh,44.4,56.2,20,0
    .goto Dun Morogh,44.8,59.8,20,0
    .goto Dun Morogh,47.4,54.4,20,0
    .goto Dun Morogh,49.2,46.0,20,0
    .goto Dun Morogh,47.0,44.6,20,0
    .goto Dun Morogh,46.8,47.8
    >>Usa el |T134419:0|t[Almizcle de conejo] en un |cRXP_ENEMY_Conejo|r |cRXP_WARN_No retires a tu Mascota actual.|r
    .use 208180
    .unitscan Rabbit
step
    #season 2
    .goto Dun Morogh,63.40,50.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toby|r
    >>Entrega el |cRXP_ENEMY_Conejo|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Toby
    .train 425758,1
step
    #season 2
    .cast 402265 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Cuchillada - 10 (Teldrassil)
#title Cuchillada


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Necesitas haber aprendido|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_para poder obtener esta runa|r
step
    #season 2
    .goto Teldrassil,46.2,51.2,20,0
    .goto Teldrassil,46.8,54.6,20,0
    .goto Teldrassil,48.8,55.4,20,0
    .goto Teldrassil,71.0,58.0,20,0
    .goto Teldrassil,44.8,61.2
    >>Mata |cRXP_ENEMY_Tuercepinos|r. Despójalos para obtener el |T134419:0|t[|cRXP_LOOT_Almizcle de ciervo|r]
    .collect 208607,1 --Deer Musk (1)
    .train 425758,1
    .mob Gnarlpine Augur
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Totemic
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Defender
    .mob Gnarlpine Avenger
    .mob Gnarlpine Shaman
step
    #season 2
    #completewith next
    .goto Teldrassil,42.2,71.6,20,0
    .goto Teldrassil,43.2,74.2,20,0
    .goto Teldrassil,47.6,74.0,20,0
    .goto Teldrassil,53.4,77.0,20,0
    .goto Teldrassil,54.8,58.4
    >>Usa el |T134419:0|t[Almizcle de ciervo] en un |cRXP_ENEMY_Ciervo|r |cRXP_WARN_No retires a tu Mascota actual.|r
    .use 208607,1
    .unitscan Deer
step
    #season 2
    .goto Teldrassil,39.8,9.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Relaeron|r en |cFFfa9602Darnassus|r
    >>Entrega el |cRXP_ENEMY_Ciervo|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Relaeron
    .train 425758,1
step
    #season 2
    .cast 402265 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillada|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Maestría de bestias - 16 (Los Baldíos)
#title Maestría de bestias

    --Rune of Beast Mastery

step
    #season 2
    #completewith next
    +|cRXP_WARN_Necesitas haber aprendido|r |T135813:0|t[Trampa de inmolación] |cRXP_WARN_o cualquier otra trampa para poder obtener esta runa|r
step
    #season 2
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Usa |T135813:0|t[Trampa de inmolación] en la ruta de patrulla del |cRXP_ENEMY_Guepardo vigilante|r para eliminar su buff
    >>Mátalo y despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step
    #season 2
    .train 410110 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r] |cRXP_WARN_para aprender|r |T132270:0|t[Maestría de bestias]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Maestría de bestias - 16 (Bosque de Argénteos)
#title Maestría de bestias

    --Rune of Beast Mastery

step
    #season 2
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>Kill |cRXP_ENEMY_Ferocious Grizzled Bears|r until a |cRXP_ENEMY_Grizzled Protector|r (16 elite) spawns
    >>Mátalo y despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Ferocious Grizzled Bear
    .mob Grizzled Protector
step
    #season 2
    .train 410110 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r] |cRXP_WARN_para aprender|r |T132270:0|t[Maestría de bestias]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Instrucción de francotirador - 18 (Costa Oscura)
#title Instrucción de francotirador


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Darkshore >>Viaja a Costa Oscura
step
    #season 2
    .goto 1439,44.081,20.739
    >>Despoja el |T135129:0|t[Arpón nudoso] que está en el ojo del esqueleto
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 416091,1
step
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Usa el|r |T135129:0|t[Arpón nudoso] |cRXP_WARN_en |cRXP_ENEMY_Paxnozz|r para reducir su salud máxima a 743|r
    .train 416091,1
step
    #season 2
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Mata a |cRXP_ENEMY_Paxnozz|r. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa del Francotirador|r]
    >>|cRXP_WARN_Ten cuidado, es un élite de nivel 20|r
    .collect 208777,1 --Rune of the Sniper (1)
    .train 416091,1
    .use 209047
    .mob Paxnozz
step
    #season 2
    .train 416091 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Francotirador|r] |cRXP_WARN_para aprender|r |T132212:0|t[Instrucción de francotirador]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Instrucción de francotirador - 16 (Páramos de Poniente)
#title Instrucción de francotirador


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Westfall >>Viaja a Páramos de Poniente
step
    #season 2
    #loop
    .goto Westfall,51.2,47.0,20,0
    .goto Westfall,50.2,48.6,20,0
    .goto Westfall,51.6,55.6,20,0
    >>Mata al |cRXP_ENEMY_Explorador Defias|r. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa del Francotirador|r]
    .collect 208777,1
    .train 416091,1
    .mob Defias Scout
step
    #season 2
    .train 416091 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Francotirador|r] |cRXP_WARN_para aprender|r |T132212:0|t[Instrucción de francotirador]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Instrucción de francotirador - 16 (Loch Modan)
#title Instrucción de francotirador


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Loch Modan >>Vuela a Loch Modan
step
    #season 2
    #loop
    .goto Loch Modan,55.6,52.2,20,0
    .goto Loch Modan,55.8,54.4,20,0
    .goto Loch Modan,54.2,56.8,20,0
    .goto Loch Modan,53.8,54.4,20,0
    >>Mata a |cRXP_ENEMY_Kackle|r. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa del Francotirador|r]
    .collect 208777,1
    .train 416091,1
    .mob Kackle
step
    #season 2
    .train 416091 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Francotirador|r] |cRXP_WARN_para aprender|r |T132212:0|t[Instrucción de francotirador]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Flanqueo - 7 (Dun Morogh)
#title Flanqueo


    --Rune of Flanking

step
    #season 2
    #loop
    .goto Dun Morogh,43.4,65.6,20,0
    .goto Dun Morogh,49.2,61.4,20,0
    .goto Dun Morogh,51.0,51.8,20,0
    .goto Dun Morogh,45.8,50.0,20,0
    .goto Dun Morogh,42.6,60.2,20,0
    .goto Dun Morogh,38.2,60.6,20,0
    .train 425762,1
    >>Mata |cRXP_ENEMY_Jabalíes|r. Despójalos para obtener |T134026:0|t[Carne de cerdo de Dun Morogh]
    .collect 208192,1
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #season 2
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Usa |T134026:0|t[Carne de cerdo de Dun Morogh] cerca del cadáver en la |cFFfa9602Caverna Glacial|r para invocar a |cRXP_ENEMY_Jorul|r
    >>Mata a |cRXP_ENEMY_Jorul|r y despójalo para obtener la |T135142:0|t|cRXP_LOOT_[Runa de Flanqueo]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r] |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Flanqueo - 7 (Teldrassil)
#title Flanqueo


    --Rune of Flanking
step
    #season 2
    #loop
    .goto Teldrassil,42.6,52.6,20,0
    .goto Teldrassil,39.8,53.2,20,0
    .goto Teldrassil,39.4,36.2,20,0
    .goto Teldrassil,40.8,31.6,20,0
    .goto Teldrassil,46.6,31.2,20,0
    .train 425762,1
    >>Mata |cRXP_ENEMY_Aves|r en |cFFfa9602Teldrassil|r y despójalas para obtener |T134025:0|t[Carne de ave de Teldrassil]
    .collect 208608,1
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Usa |T134025:0|t[Carne de ave de Teldrassil] cerca del cadáver para invocar a |cRXP_ENEMY_Mowgh|r
    >>Mata a |cRXP_ENEMY_Mowgh|r y despójalo para obtener |T134419:0|t|cRXP_LOOT_[Runa de Flanqueo]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueo|r] |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#title Exponer debilidad
#name Exponer debilidad - 40 (Azeroth)


-- Expose Weakness

step
    #optional
    .train 426445,1
    +|cRXP_WARN_Debes ser al menos de nivel 26 antes de poder obtener la runa de|r |T132353:0|t[Exponer debilidad] |cRXP_WARN_|r
    .xp >26,1
step
    #completewith next
    .zone Badlands >>Viaja a Tierras Inhóspitas
step
    .goto Badlands,66.6,23.4,0
    .goto Badlands,51.2,69.4,0
    .goto Badlands,29.6,56.8,0
    .goto Badlands,62.6,69.2,0
    .goto Badlands,9.6,77.6,0
    .goto Badlands,66.6,23.4,50,0
    .goto Badlands,51.2,69.4,50,0
    .goto Badlands,29.6,56.8,50,0
    .goto Badlands,62.6,69.2,50,0
    .goto Badlands,9.6,77.6
    .use 211269 >>Mata a cualquier |cRXP_ENEMY_Ogro Rotapolvo|r o |cRXP_ENEMY_Trogg Grutacanto|r. Despójalos para obtener la |T237388:0|t[|cRXP_LOOT_Ilustración primitiva|r]
    >>|cRXP_WARN_Usa la|r |T237388:0|t[|cRXP_LOOT_Ilustración primitiva|r] |cRXP_WARN_para iniciar la misión|r
    >>|cRXP_WARN_Sus ubicaciones están marcadas en tu mapa|r
    .collect 211269,1,78823,1 --Primitive Drawing
    .accept 78823 >> Acepta la misión El terror de los cielos desérticos
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
    .mob Dustbelcher Mauler
    .mob Dustbelcher Mystic
    .mob Dustbelcher Shaman
    .mob Dustbelcher Warrior
    .mob Dustbelcher Wyrmhunter
    .mob Stonevault Bonesnapper
    .mob Stonevault Shaman
    .train 410114,1
step
    #optional
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >> Entrega la misión El terror de los cielos desérticos
    .accept 78830 >> Acepta la misión El terror de los cielos desérticos
    .target Hemet Nesingwary
    .train 410114,1
step
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    .use 211272 >>|cRXP_WARN_Usa la|r |T132599:0|t[Jaula de cebo vacía] |cRXP_WARN_en una alimaña |cRXP_ENEMY_Tarántula arbórea|r en Vega de Tuercespina. Se encuentran en la parte superior de los tocones de los árboles|r
    >>|cRXP_WARN_También puedes usarlo en cualquier otra alimaña que veas por el mundo|r
    .collect 211273,1 --Trapped Critter
    .mob Arbor Tarantula
    .mob Rat
    .mob Black Rat
    .mob Chicken
    .train 410114,1
step
    #completewith next
    .zone Badlands >>Viaja a Tierras Inhóspitas
    .train 410114,1
step
    #completewith next
    .goto Badlands,22.352,67.733
    +Haz clic en el |cRXP_PICK_Nido grande|r en la cima de la montaña para invocar a |cRXP_ENEMY_Gharrik|r
    .itemcount 211272,<1
step
    .goto Badlands,22.352,67.733
    >>Mata a |cRXP_ENEMY_Gharrik|r. Despójala para obtener la |cRXP_LOOT_Pluma de trofeo carmesí|r
    .complete 78830,1 --Crimson Trophy Quill (1)
    .mob Gharrik
    .train 410114,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78830 >> Entrega la misión El terror de los cielos desérticos
    .target Hemet Nesingwary
    .train 410114,1
step
    #season 2
    .train 410114 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Exponer debilidad|r] |cRXP_WARN_para aprender|r |T132353:0|t[Exponer debilidad]
    .use 211301
    .itemcount 211301,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#title Disparo firme
#name Disparo firme - 30 (Tierras Altas de Arathi)

step
    #completewith next
    .zone Arathi Highlands >>Viaja a las Tierras Altas de Arathi
step
    .train 410109,1
    #loop
    .goto Arathi Highlands,67.8,66.0,0
    .goto Arathi Highlands,69.4,63.2,25,0
    .goto Arathi Highlands,67.8,66.0,25,0
    .goto Arathi Highlands,68.4,68.2,25,0
    >>Mata a |cRXP_ENEMY_Dentofiloso|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Disparo firme|r]
    >>|cRXP_ENEMY_Dentofiloso|r |cRXP_WARN_es un pez que nada en el lago del Poblado Secacorteza|r
    .collect 213122,1
    .mob Needletooth
step
    .train 410109 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Disparo firme|r] |cRXP_WARN_para aprender|r |T132213:0|t[Disparo firme]
    .use 213122
    .itemcount 213122,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#title Especialización en doble empuñadura
#name Especialización en doble empuñadura - 32 (Vega de Tuercespina)

step
    #optional
    .train 410116,1
    +|cRXP_WARN_You must be at least level 32 before you can acquire the|r |T132147:0|t[Dual Wield Specialization] |cRXP_WARN_rune|r
    .xp >32,1
step
    .train 410116,1
    #optional
    .train 1543 >>|cRXP_WARN_You must train|r |T135815:0|t[Flare] |cRXP_WARN_to acquire the|r |T132147:0|t[Dual Wield Specialization] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_Viaja a la ubicación de la flecha y corre alrededor hasta que el "buff" llamado|r |T132118:0|t[¡Peligro!] |cRXP_WARN_aparezca sobre ti|r
    .aura 435548
    .aura 435428
    .aura 435546
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_Lanza|r |T135815:0|t[Bengala] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Guerrillero Sangrapellejo|r
    .usespell 1543
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>Mata al |cRXP_ENEMY_Guerrillero Sangrapellejo|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del Desguazador|r]
    .collect 213126,1
    .mob Bloodscalp Guerrilla
step
    .itemcount 213126,1
    .use 213126
    .train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual Wield Specialization]
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Enfocar fuego
#name Enfocar fuego - 40 (La Garganta de Fuego)

step
    #completewith next
    +|cRXP_WARN_Tendrás que matar a un enemigo de nivel 45 en un área hostil para adquirir esta runa. Asegúrate de traer ayuda si eres de menor nivel|r
    .xp <45,1
step
    .goto Searing Gorge,53.10,55.85
    >>Camina cuidadosamente por la rama del árbol hacia el nido de pájaro. Despoja el |cRXP_PICK_Huevo de cuervo tormentoso|r del nido.
    .collect 221544,1 --Stormcrow Egg
step
    .goto 1427/0,-1532.400,-6953.600
    >>Vuelve caminando por la rama del árbol. Espera un par de segundos a que aparezca un |cRXP_ENEMY_Cuervo tormentoso enfurecido|r. Mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Fuego enfocado|r]
    .collect 221445,1
    .mob Enraged Stormcrow
    .train 431601,1
step
    .itemcount 221445,1
    .use 221445
    .train 431601 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Fuego enfocado|r] |cRXP_WARN_para aprender|r |T135548:0|t[Enfocar fuego]
 ]])

 RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guía de Runas y Libros
    #subgroup Brazales
    #title Furia de raptor
    #name Furia de raptor - 40 (Tanaris)

step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
step
    #loop
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>Mata a |cRXP_ENEMY_Zopilote|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del Raptor|r]
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_es un ave carroñera que patrulla de este a oeste en un área grande que se extiende desde el sur de Vigía Penas de Arena hasta Gadgetzan|r
    >>CONSEJO: En lugar de correr dando vueltas puedes usar |T132172:0|t[|cRXP_FRIENDLY_Ojo de águila|r] para explorar su posición. Si no lo encuentras, probablemente esté muerto y debería reaparecer cerca del punto marcado con "2+" en tu mapa
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step
    .train 416093 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Raptor|r] |cRXP_WARN_para aprender|r |T132253:0|t[Furia de raptor]
    .use 2220687
    .itemcount 220687,1

    ]])
RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guía de Runas y Libros
    #subgroup Casco
    #title Reflejos felinos
    #name Reflejos felinos - 40 (Feralas)

step
    #completewith next
    .zone Feralas >>Viaja a Feralas
step
    +|cRXP_WARN_Necesitarás uno de estos: |T133951:0|t|cRXP_PICK_Pan de plátano tierno|r o |T133980:0|t|cRXP_PICK_Banana Tel'Abim|r para adquirir esta runa.|cRXP_FRIENDLY_ Mardrack Fonverde|r vende el pan en Plumaluna para la Alianza. La |cRXP_FRIENDLY_Tabernera Greul|r lo vende en Campamento Mojache para la Horda.
    .itemcount 4601,<1 --Soft Banana Bread
    .itemcount 4537,<1 --Tel'Abim Banana
    .target Innkeeper Greul
    .target Mardrack Greenwell
    .train 416083,1
step
    >>Ve a la cueva de los Yetis en Las Altas Tierras Salvajes
    .goto 1444/1,1599.300,-4977.800,10
    .train 416083,1
step
    .goto 1444/1,1778.900,-5179.100,
    >>Toma el camino del medio en el cruce tras entrar a la segunda cueva. Al fondo de la misma encontrarás un |cRXP_FRIENDLY_Infante groddoc|r
    .gossip 222376,1 >>Completa el diálogo del mono para alimentarlo con el |T133951:0|t|cRXP_PICK_Pan de plátano tierno|r o la |T133980:0|t|cRXP_PICK_Banana Tel'Abim|r. Hará aparecer una versión del mismo que te seguirá.
    .target Groddoc Infant
    .train 416083,1
step
    .goto 1444/1,1330.900,-5078.100
    >>Escolta al |cRXP_FRIENDLY_Infante groddoc|r hasta la |cRXP_FRIENDLY_Matriarca groddoc|r marcada en tu mapa. Ten cuidado, el infante es agresivo y atacará enemigos cercanos incluyendo jugadores de la facción contraria.
    .gossip 222406,1 >>Una vez que llegues allí, habla con la Matriarca y completa su diálogo para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa del Felino selvático|r]
    .collect 220791,1 -- Rune of the Jungle Cat
    .train 416083,1
step
    .train 416083 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Felino selvático|r] |cRXP_WARN_para aprender|r |T132167:0|t[Reflejos felinos]
    .use 220791
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guía de Runas y Libros
    #subgroup Casco
    #title Matanza rápida
    #name Matanza rápida - 45 (La Garganta de Fuego y Las Tierras Devastadas)
step
    #completewith next
    .zone Searing Gorge >>Viaja a La Garganta de Fuego
step
    .goto 1427/0,-832.800,-6647.500,10
    >>Viaja a la entrada de la cueva en la Cresta Vigía. Ten en cuenta que necesitarás entrar en una cueva llena de élites de nivel 47-48. Dicho esto, es posible completar esta parte haciendo "deathruns".
    .train 416090,1
step
    .goto Searing Gorge,14.5,36.5
    >>|cRXP_WARN_Al entrar en la cueva, toma el camino de la derecha. Verás rápidamente una gran tablilla llamada |cRXP_FRIENDLY_Grabado desgastado|r en la parte elevada de la sección central de la cueva. Corre hacia ella y acepta la misión.
    >>CONSEJO: Si estás solo, intenta usar trampas y a tu mascota para llegar lo más lejos posible antes de usar |T132293:0|t[|cRXP_FRIENDLY_Fingir muerte|r] para perder la amenaza de los enemigos. Como alternativa, simplemente puedes correr hasta el objeto y morir para luego volver en espíritu para resucitar.
    .accept 81900 >> Acepta la misión La bestia ardiente
step
    #completewith next
    .zone Blasted Lands >>Viaja a Las Tierras Devastadas
step
    .goto Blasted Lands,50.6,14.2
    >>Habla con la |cRXP_FRIENDLY_Maga sangrienta Lynnore|r
    .turnin 81900 >>Entrega la misión La bestia ardiente
    .accept 81917 >>Acepta la misión Cadenas que atan
    .target Bloodmage Lynnore
step
    .goto Blasted Lands,64.24,32.36
    >>Viaja a la zona de la cueva de los Sombra Jurada y mata a cualquier |cRXP_ENEMY_Cultor Sombra Jurada, Matón, o Adepto|r para obtener |cRXP_LOOT_Eslabones infernales|r
    .complete 81917,1 --Infernal Chains 5/5
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
step
    .goto Blasted Lands,50.6,14.2
    >>Habla con la |cRXP_FRIENDLY_Maga sangrienta Lynnore|r
    .turnin 81917 >>Entrega la misión Cadenas que atan
    .accept 81919 >>Acepta la misión Derrotado y de rodillas
    .target Bloodmage Lynnore
step
    #loop
    .goto 1419/0,-2976.500,-11483.101
    .goto 1419/0,-2778.300,-11420.800
    .goto 1419/0,-2821.900,-11353.700
    .goto 1419/0,-2934.700,-11419.101
    >>Busca a |cRXP_ENEMY_Calefactus el Desatado|r, un Can del Núcleo verde de nivel 50. Tiene múltiples puntos de aparición alrededor del borde sur de la parte roja del mapa. Intenta usar |T132172:0|t[|cRXP_FRIENDLY_Ojo de águila|r] para buscarlo. Una vez que lo encuentres, usa el |T136091:0|t|cRXP_LOOT_Lazo infernal|r en él, mátalo y luego despójalo para obtener su sangre.
    .complete 81919,1 --Fel Lifeblood 1/1
    .use 220216
    .unitscan Calefactus the Unleashed
step
    .goto Blasted Lands,50.6,14.2
    >>Habla con la |cRXP_FRIENDLY_Maga sangrienta Lynnore|r
    .turnin 81919 >>Entrega la misión Derrotado y de rodillas
    .target Bloodmage Lynnore
step
    .train 416090 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Voraz|r] |cRXP_WARN_para aprender|r |T132205:0|t[Matanza rápida]
    >>También recibiste el abalorio |T136091:0|t|cRXP_LOOT_Lazo infernal|r que puede usarse para domar Canes del Núcleo
    .use 220217
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guía de Runas y Libros
    #subgroup Capa
    #title Doble tenebroso
    #name Doble tenebroso - 50 (Las Estepas Ardientes)
step
    #completewith next
    .zone Burning Steppes >>Viaja a Las Estepas Ardientes
step
    >>Busca a un |cRXP_ENEMY_Can del Núcleo fugitivo|r, puede aparecer en múltiples lugares de la zona, |cRXP_WARN_revisa tu mapa para ver las posibles ubicaciones de aparición|r. Despójalo para obtener la runa
    >>CONSEJO: En lugar de correr de un lado a otro, puedes usar |T132172:0|t[|cRXP_FRIENDLY_Ojo de águila|r] para buscar su posición
    .goto Burning Steppes,84.8,68.0,0
    .goto Burning Steppes,83.8,60.0,0
    .goto Burning Steppes,88.6,54.8
    .goto Burning Steppes,61.6,54.4,0
    .goto Burning Steppes,39.8,59.4,0
    .goto Burning Steppes,31.8,53.0,0
    .goto Burning Steppes,24.8,55.6,0
    .unitscan Escaped Core Hound
    .collect 226252,1 --rune of the guerrilla (1)
step
    .train 440563 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Guerrilla|r] |cRXP_WARN_para aprender|r |T132171:0|t[Doble tenebroso]
    .use 226252
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guía de Runas y Libros
    #subgroup Capa
    #title Inventiva
    #name Inventiva - 58 (Tierras de la Peste del Este)
step
    #completewith next
    .zone Eastern Plaguelands >>Viaja a Tierras de la Peste del Este
step
    .goto Eastern Plaguelands,74.4,62.7
    .goto Eastern Plaguelands,72.5,66.4,0
    .goto Eastern Plaguelands,72.6,63.7,0
    .goto Eastern Plaguelands,76.7,62.6,0
    .goto Eastern Plaguelands,74.8,58.9,0
    .goto Eastern Plaguelands,76.7,58.7,0
    .goto Eastern Plaguelands,55.6,67.0,0
    .goto Eastern Plaguelands,54.3,70.1,0
    .goto Eastern Plaguelands,51.9,70.0,0
    >>Mata y despoja |cRXP_ENEMY_Lodos en podredumbre|r y |cRXP_ENEMY_Pútridos vivientes|r hasta que despojes un |T132108:0|t[|cRXP_LOOT_Icor verde burbujeante|r]
    >>|cRXP_WARN_¡El icor es un objeto gris, ten cuidado de no venderlo!|r
    .collect 20770,1 --Bubbling Green Ichor (1)
    .mob Living Decay
    .mob Rotting Sludge
step
    .goto Eastern Plaguelands,17.8,30.2
    >>Dirígete al Valle del Terror y mata |cRXP_ENEMY_Puercos apestados|r hasta que despojes una |T134046:0|t[|cRXP_LOOT_Carne de jabalí contaminada|r]
    .collect 225942,1 --Tainted Boar Meat (1)
    .mob Plagued Swine
step
    >>Usa la |T134046:0|t[|cRXP_LOOT_Carne de jabalí contaminada|r] para combinarla con el |T132108:0|t[|cRXP_LOOT_Icor verde burbujeante|r] y crear un |T134047:0|t[Pedazo de carne rancio]
    .collect 225943,1 --Rancid Hunk of Flesh (1)
    .use 225942
step
    .goto Eastern Plaguelands,22.68,37.12,-1
    .goto Eastern Plaguelands,19.37,26.42,-1
    .goto Eastern Plaguelands,29.83,39.05,-1
    >>Busca una |cRXP_ENEMY_Larva carroñera|r o un |cRXP_ENEMY_Devorador carroñero|r. Los posibles puntos de aparición más cercanos al Valle del Terror están justo al norte y al sur del mismo
    >>Usa el |T134047:0|t[Pedazo de carne rancio] en ella para alimentarla. |cRXP_WARN_La larva hará aparecer un esqueleto después de una breve animación, despójalo para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ingenio|r]
    .use 225943
    .collect 225955,1 --Rune of the resourceful (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    .train 440557 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ingenio|r] |cRXP_WARN_para aprender|r |T132178:0|t[Inventiva]
    .use 225955
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guía de Runas y Libros
    #subgroup Capa
    #title Salva mejorada
    #name Salva mejorada - 60 (Silithus)
step
    #completewith next
    .zone Silithus >>Viaja a Silithus
step
    >>Mata a |cRXP_WARN_CUALQUIER enemigo|r en Silithus hasta que despojes un |T132997:0|t[|cRXP_LOOT_Artilugio destrozado|r]. La probabilidad de caída es relativamente baja, pero puede caer de todos los monstruos de la zona
    .collect 226526,1
    .itemcount 226546,<1
step
    .goto Silithus,41.2,88.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwi Cobriperno|r en el Campamento Barbabronce. Avanza por su diálogo para recibir un |T133878:0|t[Sonar de desierto]
    .collect 226546,1 --Desert Sonar (1)
    .itemcount 226546,<1
step
    .goto Silithus,36.00,71.00
    >>|cRXP_WARN_Corre por la zona marcada en tu mapa hasta que veas que el suelo se mueve. Cuando lo hagas, usa|r |T133878:0|t[Sonar de desierto] |cRXP_WARN_para invocar a un |cRXP_ENEMY_Gusano de arena|r. Mátalo y despójalo para obtener la runa|r
    >>El gusano tiene una cantidad sólida de vida y la habilidad de enterrarse, lo que le permite desaparecer por un tiempo. Asegúrate de estar preparado para el combate antes de invocarlo
    .collect 226587,1 --rune of shelling
    .mob Sandworm
step
    .train 440560 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Acorazamiento|r] para aprender |T236179:0|t[|cRXP_FRIENDLY_Salva mejorada|r]
    .use 226587
]])
