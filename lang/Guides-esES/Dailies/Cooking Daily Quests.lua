if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de profesión
#wotlk
#cata
#name Cocina

step << Alliance
	.goto Dalaran,40.43,65.66
	.daily 13100,13101,13102,13103,13107 >> Habla con |cRXP_FRIENDLY_Katherine Lee|r dentro de la posada. Ella tiene 1 de 5 misiones diarias de Cocina. Acepta la que sea disponible
	>>Pastel de carne de champiñones imbuidos
	>>Estofado de cloaca
	>>Mustard Dogs
	>>Convención en el Juego de Manos
	>>Queso para Frunceoro
	.target Katherine Lee
step << Horde
	.goto Dalaran,69.96,39.05
	.daily 13112,13113,13114,13115,13116 >> Habla con |cRXP_FRIENDLY_Awilo Lon'gomba|r dentro de la posada. Él tiene 1 de 5 misiones de cocina diarias. Acepta la que sea disponible
	>>Pastel de carne de champiñones imbuidos
	>>Estofado de cloaca
	>>Mustard Dogs
	>>Convención en el Juego de Manos
	>>Queso para Frunceoro
	.target Awilo Lon'gomba
-- Quest: Mustard Dogs!
step << Alliance
	>>Despoja |cRXP_PICK_Wild Mustard|r en las áreas cubiertas de hierba de Dalaran
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70,15,0
	.goto Dalaran,49.95,43.88,15,0
	.goto Dalaran,52.04,46.39,15,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13107
step << Horde
	>>Despoja |cRXP_PICK_Wild Mustard|r en las áreas cubiertas de hierba de Dalaran
	.goto Dalaran,55.17,38.59,25,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77,15,0
	.goto Dalaran,51.70,47.34,15,0
	.goto Dalaran,49.38,44.26,15,0
	.goto Dalaran,47.58,47.52,15,0
	.goto Dalaran,50.19,50.54,15,0
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13116
step
	#sticky
	>> Mata a los |cRXP_ENEMY_Rinocerontes|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Carne de Rinoceronte|r. Alternativamente puedes comprar |cRXP_LOOT_Carne de Rinoceronte|r o |cRXP_LOOT_Perritos de rinoceronte|r directamente de la Casa de Subastas en Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13107 << Alliance
	.isOnQuest 13116 << Horde
step << Alliance
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Rhino Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Rhino Carne|r o |cRXP_LOOT_Perritos de rinoceronte|r directamente de la Casa de Subastas en Ciudad de Ventormenta o Forjaz
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13107
step << Horde
	#sticky
	>> Mata a los |cRXP_ENEMY_Rinocerontes|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Carne de Rinoceronte|r. Alternativamente puedes comprar |cRXP_LOOT_Carne de Rinoceronte|r o |cRXP_LOOT_Perritos de rinoceronte|r directamente de la Casa de Subastas en Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13116
step << Alliance
	.goto Dalaran,40.20,66.98
	>>Usa tu profesión de Cocina para cocinar 4 |cRXP_LOOT_Carne de Rinoceronte|r en 4 |cRXP_LOOT_Perritos de rinoceronte|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13107
step << Horde
	.goto Dalaran,70.44,39.80
	>>Usa tu profesión de Cocina para cocinar 4 |cRXP_LOOT_Carne de Rinoceronte|r en 4 |cRXP_LOOT_Perritos de rinoceronte|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13116
step << Alliance
	.use 43142 >>Usa la |cRXP_LOOT_Empty Picnic Basket|r en tu inventario para combinar 4 |cRXP_LOOT_Perritos de rinoceronte|r y 4 |cRXP_LOOT_Wild Mustard|r para crear una |cRXP_LOOT_Canasta de Perritos con Mostaza|r
	.complete 13107,1 --Mustard Dog Basket! (1)
	.isOnQuest 13107
step << Horde
	.use 43142 >>Usa la |cRXP_LOOT_Empty Picnic Basket|r en tu inventario para combinar 4 |cRXP_LOOT_Perritos de rinoceronte|r y 4 |cRXP_LOOT_Wild Mustard|r para crear una |cRXP_LOOT_Canasta de Perritos con Mostaza|r
	.complete 13116,1 --Mustard Dog Basket! (1)
	.isOnQuest 13116
step
	>>Habla con el |cRXP_FRIENDLY_Archimago Pentarus|r en la plataforma de aterrizaje
	.goto Dalaran,68.53,42.04
	.turnin 13107 >>Entrega la misión Mustard Dogs << Alliance
	.isQuestComplete 13107 << Alliance
	.turnin 13116 >>Entrega la misión Mustard Dogs << Horde
	.isQuestComplete 13116 << Horde
	.target Archmage Pentarus
-- Quest: Infused Mushroom Meatloaf
step << Alliance
	>>Baja a las Cloacas de Dalaran. Despoja los |cRXP_PICK_Champiñones Infundidos|r azules esparcidos por el suelo
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms
	.isOnQuest 13100
step << Horde
	>>Baja por el pozo a las Cloacas de Dalaran. Despoja los |cRXP_PICK_Champiñones Infundidos|r azules esparcidos por el suelo
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms (4)
	.isOnQuest 13112
step
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r directamente de la Casa de Subastas en Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13100 << Alliance
	.isOnQuest 13112 << Horde
step << Alliance
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r directamente de la Casa de Subastas en Ciudad de Ventormenta o Forjaz
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13100
step << Horde
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r directamente de la Casa de Subastas en Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13112
step << Alliance
	.use 43101 >>Usa la |cRXP_LOOT_Molde de Pastel de Carne|r en tu inventario para combinar 4 |cRXP_PICK_Champiñones Infundidos|r y 2 |cRXP_LOOT_Chilled Meats|r sobre un fuego
	.goto Dalaran,40.20,66.98
	.complete 13100,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13100
step << Horde
	.use 43101 >>Usa la |cRXP_LOOT_Molde de Pastel de Carne|r en tu inventario para combinar 4 |cRXP_PICK_Champiñones Infundidos|r y 2 |cRXP_LOOT_Chilled Meats|r sobre un fuego
	.goto Dalaran,59.46,31.33,60,0
	.goto Dalaran,70.44,39.80
	.complete 13112,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13112
step
	>>Habla con |cRXP_FRIENDLY_Orton Bennet|r arriba en el edificio Curiosities & Moore
	.goto Dalaran,49.01,56.96,6,0
	.goto Dalaran,48.79,54.94,6,0
	.goto Dalaran,50.11,53.10,6,0
	.goto Dalaran,52.31,55.59
	.turnin 13100 >>Entrega la misión Pastel de carne de champiñones imbuidos << Alliance
	.isQuestComplete 13100 << Alliance
	.turnin 13112 >>Entrega la misión Pastel de carne de champiñones imbuidos << Horde
	.isQuestComplete 13112 << Horde
	.target Orton Bennet
-- Quest: Sewer Stew
step
	.zone CrystalsongForest >>En Dalaran, entra al edificio de la Puerta Violeta y haz clic en el Cristal de la Calle Violeta para teletransportarte abajo al Bosque Canto de Cristal
	.goto Dalaran,57.32,46.55,6,0
	.goto Dalaran,55.91,46.77
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	>>Despoja |cRXP_PICK_Zanahorias Crystalsong|r en el suelo
	.goto CrystalsongForest,25.83,39.27,40,0
	.goto CrystalsongForest,28.74,42.89,40,0
	.goto CrystalsongForest,31.87,43.25,40,0
	.goto CrystalsongForest,30.69,37.48,40,0
	.goto CrystalsongForest,26.96,47.00
	.collect 43148,4 --Crystalsong Carrot (4)
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r directamente de la Casa de Subastas en Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step << Alliance
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r directamente de la Casa de Subastas en Ciudad de Ventormenta o Forjaz
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13102
step << Horde
	#sticky
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r directamente de la Casa de Subastas en Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13114
step << Alliance
	.use 43147 >>Usa la |cRXP_LOOT_Olla de Guisado|r en tu inventario para combinar 4 |cRXP_PICK_Zanahorias Crystalsong|r y 4 |cRXP_LOOT_Chilled Meats|r sobre un fuego
	.goto Dalaran,40.20,66.98
	.complete 13102,1 --Vegetable Stew (1)
	.isOnQuest 13102
step << Horde
	.use 43101 >>Usa la |cRXP_LOOT_Olla de Guisado|r en tu inventario para combinar 4 |cRXP_PICK_Zanahorias Crystalsong|r y 4 |cRXP_LOOT_Chilled Meats|r sobre un fuego
	.goto Dalaran,59.46,31.33,57,0
	.goto Dalaran,70.44,39.80
	.complete 13114,1 --Vegetable Stew (1)
	.isOnQuest 13114
step << Alliance
	>>Habla con Ajay Verde en las Cloacas de Dalaran
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,35.47,57.55
	.turnin 13102 >>Entrega la misión Estofado de cloaca
	.isQuestComplete 13102
step << Horde
	>>Baja por el pozo a las Cloacas de Dalaran. Habla con |cRXP_FRIENDLY_Ajay Verde|r
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,35.47,57.55
	.turnin 13114 >>Entrega la misión Estofado de cloaca
	.isQuestComplete 13114
	.target Ajay Green
-- Quest: Cheese for Glowergold
step << Alliance
	#completewith Cheese
	>>Comienza a buscar |cRXP_PICK_Vasos de Vino de Dalaran a Medio Llenar|r. Están dispersos por los edificios de Dalaran. Revisa dentro de la posada y también arriba
	.goto Dalaran,43.75,63.27
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13103
step << Horde
	#completewith Cheese
	>>Comienza a buscar |cRXP_PICK_Vasos de Vino de Dalaran a Medio Llenar|r. Están dispersos por los edificios de Dalaran. Revisa dentro de la posada y también arriba
	.goto Dalaran,69.42,31.39
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13115
step
	#label Cheese
	>>En Dalaran ve al edificio Un Vaso Más. Despoja |cRXP_PICK_Limburgés Envejecido Dalaran|r. Puede aparecer aleatoriamente en una mesa dentro o fuera
	.goto Dalaran,54.70,31.57
	.collect 43137,1 --Aged Dalaran Limburger (1)
	.isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step
	>>Comienza a buscar |cRXP_PICK_Vasos de Vino de Dalaran a Medio Llenar|r. Están dispersos por los edificios de Dalaran. Revisa dentro de la posada y también arriba
	.goto Dalaran,54.70,31.57
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
    .isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step << Alliance
	.use 43139 >>Usa la Fuente de Queso Vacía para Servir en tu inventario para combinar 6 |cRXP_PICK_Vasos de Vino de Dalaran a Medio Llenar|r y |cRXP_PICK_Limburgés Envejecido Dalaran|r para crear una |cRXP_LOOT_Fuente de queso y vino|r
	.complete 13103,1 --Wine and Cheese Platter (1)
	.isOnQuest 13103
step << Horde
	.use 43139 >>Usa la Fuente de Queso Vacía para Servir en tu inventario para combinar 6 |cRXP_PICK_Vasos de Vino de Dalaran a Medio Llenar|r y |cRXP_PICK_Limburgés Envejecido Dalaran|r para crear una |cRXP_LOOT_Fuente de queso y vino|r
	.complete 13115,1 --Wine and Cheese Platter (1)
	.isOnQuest 13115
step
	>>Habla con |cRXP_FRIENDLY_Ranid Glowergold|r en Dalaran
	.goto Dalaran,36.42,29.64,10,0
	.goto Dalaran,36.62,27.88
	.turnin 13103 >>Queso para Glowergold << Alliance
	.isQuestComplete 13103 << Alliance
	.turnin 13115 >>Queso para Glowergold << Horde
	.isQuestComplete 13115 << Horde
	.target Ranid Glowergold
-- Quest: Convention at the Legerdemain
step << Alliance
	>>En Dalaran ve al edificio Un Vaso Más. Despoja |cRXP_PICK_Jarra de Vino|r. Ten en cuenta que aparece aleatoriamente y también puede aparecer fuera así como arriba
	.goto Dalaran,54.00,32.26
	.complete 13101,2 --Jug of Wine (1)
	.isOnQuest 13101
step << Horde
	>>En Dalaran ve al edificio Un Vaso Más. Despoja |cRXP_PICK_Jarra de Vino|r. Ten en cuenta que aparece aleatoriamente y también puede aparecer fuera así como arriba
	.goto Dalaran,54.00,32.26
	.complete 13113,2 --Jug of Wine (1)
	.isOnQuest 13113
step
	#sticky
    #completewith stew
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r o |cRXP_LOOT_Estofado del Norte|r directamente de la Casa de Subastas en Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13101 << Alliance
	.isOnQuest 13113 << Horde
step << Alliance
	#sticky
    #completewith stew
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r o |cRXP_LOOT_Estofado del Norte|r directamente de la Casa de Subastas en Ciudad de Ventormenta o Forjaz
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13101
step << Horde
	#sticky
    #completewith stew
	>> Mata a los |cRXP_ENEMY_Rhinos|r en Las Cumbres Tormentosas para obtener |cRXP_LOOT_Chilled Carne|r. Alternativamente puedes comprar |cRXP_LOOT_Chilled Carne|r o |cRXP_LOOT_Estofado del Norte|r directamente de la Casa de Subastas en Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13113
step << Alliance
	#completewith next
	.isQuestAvailable 13087
	.isOnQuest 13101
	>>Para aprender a cocinar |cRXP_LOOT_Estofado del Norte|r debes llevar 4 |cRXP_LOOT_Chilled Carne|r a |cRXP_FRIENDLY_Brom Brewbaster|r en Fiordo Aquilonal. Alternativamente puedes comprar |cRXP_LOOT_Estofado del Norte|r directamente de la Casa de Subastas. Si estás comprando |cRXP_LOOT_Estofado del Norte|r en la Casa de Subastas, omite este paso
	>>Si completas esta misión necesitarás un total de 8 Carnes enfriadas
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13087 >> Acepta la misión Cocina norteña
	.turnin 13087 >> Entrega la misión Cocina norteña
	.goto HowlingFjord,58.21,62.06
	.target Brom Brewbaster
step << Horde
	#completewith next
	.isQuestAvailable 13089
	.isOnQuest 13113
	>>Para aprender a cocinar |cRXP_LOOT_Estofado del Norte|r debes llevar 4 |cRXP_LOOT_Chilled Carne|r a |cRXP_FRIENDLY_Thomas Kolichio|r en Fiordo Aquilonal. Alternativamente puedes comprar |cRXP_LOOT_Estofado del Norte|r directamente de la Casa de Subastas. Si estás comprando |cRXP_LOOT_Estofado del Norte|r en la Casa de Subastas, omite este paso
	>>Si completas esta misión necesitarás un total de 8 Carnes enfriadas
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13089 >> Acepta la misión Cocina norteña
	.turnin 13089 >> Entrega la misión Cocina norteña
	.goto HowlingFjord,78.61,29.48
	.target Thomas Kolichio
step << Alliance
    #label stew
	.goto Dalaran,40.20,66.98
	>>Usa tu profesión de Cocina para cocinar 4 |cRXP_LOOT_Chilled Carne|r en 4 |cRXP_LOOT_Estofado del Norte|r
	.complete 13101,1 --Northern Stew (4)
	.isOnQuest 13101
step << Horde
    #label stew
	.goto Dalaran,70.44,39.80
	>>Usa tu profesión de Cocina para cocinar 4 |cRXP_LOOT_Chilled Carne|r en 4 |cRXP_LOOT_Estofado del Norte|r
	.complete 13113,1 --Northern Stew (4)
	.isOnQuest 13113
step
	>>Habla con |cRXP_FRIENDLY_Arille Azuregaze|r en Dalaran
	.goto Dalaran,48.37,37.47
	.turnin 13101 >>Convención en el Juego de Manos << Alliance
	.isQuestComplete 13101 << Alliance
	.turnin 13113 >>Convención en el Juego de Manos << Horde
	.isQuestComplete 13113 << Horde
	.target Arille Azuregaze
step
	+Has completado la misión diaria de cocina por hoy
]])