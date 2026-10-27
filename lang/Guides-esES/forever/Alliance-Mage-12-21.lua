if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 12-18 Costa Oscura Mago AoE
#version 1
#group RestedXP Alianza Mago

#defaultfor none Alliance Mage
#next 18-21 Montañas Crestagrana Mago AoE

step
    #completewith next
    .goto 1439/1,533.23,6399.77
    .vendor >> Puedes comprar comida de nivel 5 extremadamente barata de Laird (vendedor de pescado)
step
    >>Sube al piso superior
    .goto 1439/1,519.48,6405.89
.target Wizbang Cranktoggle
>>Habla con |cRXP_FRIENDLY_Maniveo Zumbang|r
    .accept 983 >>Acepta la misión La caja mecánica 827
step
    >>Salta al 1.er piso
    .goto 1439/1,515.55,6406.32
    .home >> Establece tu Piedra de hogar en Auberdine
step
    .goto 1439/1,497.21,6427.72
.target Barithras Moonshade
>>Habla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >>Acepta la misión La cueva de las setas
step
    .goto 1439/1,473.63,6439.07
.target Sentinel Glynda Nal'Shea
>>Habla con |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >>Acepta la misión El cristal rojo
step
    .goto 1439/1,397.65,6437.76
.target Tharnariun Treetender
>>Habla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >>Acepta la misión Tierras apestadas
step
    .goto 1439/1,362.93,6434.27
.target Terenthis
>>Habla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Acepta la misión La extensión de la amenaza
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Habla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Acepta la misión Varado
step
    .goto 1439/1,561.40,6343.01
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
step
    #completewith Bear
     >> Mata Reptadores a lo largo de la costa
    .complete 983,1 --Crawler Leg (6)
step
    .goto 1439/1,558.78,6111.57
     >> Despoja la criatura marina
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >> Busca un Oso cardo rabioso. Atrae a uno y usa La esperanza de Tharnariun en tus bolsas (orbe morado)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,386.51,5988.430
     >> Dirígete a las proximidades del campamento fúrbolg
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >> Busca un Oso cardo rabioso. Atrae a uno y usa La esperanza de Tharnariun en tus bolsas (orbe morado)
    .goto 1439/1,421.88,5804.16
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,543.71,5962.67,150,0
    .goto 1439/1,577.12,6393.66
    >> Mata Reptadores a lo largo de la costa
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >> Guarda x5 Carne de zancudo para después
    .collect 5469,5,2178,1
step
    .goto 1439/1,540.44,6313.31
    .turnin 983 >>Entrega la misión La caja mecánica 827
    .accept 1001 >>Acepta la misión La caja mecánica 411
step
    .goto 1439/1,543.06,6342.57
>>Habla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entrega la misión Varado
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Acepta la misión Varado
step
    .goto 1439/1,535.85,6409.38,40,0
    >>Corre hacia los Muelles
    .goto 1439/1,600.70,6425.100
.target Cerellean Whiteclaw
>>Habla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >>Acepta la misión Un amor eterno
step
    #sticky
    #completewith Thundris
     >> Mata trilladores de costa oscura en el mar
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto 1439/1,734.32,6479.68,60 >> Corre hasta los muelles y salta al agua en el cruce
step
    .goto 1439/1,854.84,6310.26
    >>Haz clic en la cabeza de la tortuga marina bajo el agua
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,543.06,6342.57
    >>Mata a los Trilladores de regreso a la costa
.target Gwennyth Bly'Leggonde
>>Habla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Entrega la misión Varado
step
    .goto 1439/1,397.65,6437.76
>>Habla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
.target Tharnariun Treetender
    .accept 2138 >> Acepta la misión La limpieza de la infección
step
    .goto 1439/1,362.93,6434.27
>>Habla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
.target Terenthis
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
step
    >> Mata fúrbolgs
    .goto 1439/1,332.80,5883.20
    .goto 1439/1,338.70,5985.81,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto 1439/1,362.93,6434.71
>>Habla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entrega la misión La extensión de la amenaza
.target Terenthis
    .accept 986 >>Acepta la misión El maestro perdido
step
    >>Sube las escaleras
    .goto 1439/1,384.55,6431.65
.target Sentinel Elissa Starbreeze
>>Habla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r
    .accept 965 >>Acepta la misión La Torre de Althalaxx
step
    .goto 1439/1,445.46,6536.01
.target Gorbold Steelhand
>>Habla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
step
    #label Thundris
    .goto 1439/1,492.62,6580.99
>>Habla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
.target Thundris Windweaver
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >>Acepta la misión Bashal'Aran
    .accept 958 >>Acepta la misión Las herramientas de los Altonato
step
     #label Threshers
     #sticky
     >> Nada a lo largo de la costa, matando a los Trilladores
    .complete 1001,1 --Thresher Eye (3)
step
    .goto 1439/1,391.75,7052.59,40,0
    .goto 1439/1,437.60,7076.17
     >> Entra en el 1er barco por el agujero en el casco, luego ve a la parte trasera del piso más bajo del barco
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto 1439/1,302.02,7124.2,40,0
    .goto 1439/1,345.90,7134.68
     >> Entra en el 2do barco por el agujero en el casco, luego ve a la parte trasera del piso más bajo del barco
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,193.29,7082.72
    .turnin 1001 >> Entrega la misión La caja mecánica 411
    .accept 1002 >> Acepta la misión La caja mecánica 323
step
    .goto 1439/1,194.60,6959.14
    .accept 4723 >> Acepta la misión Criatura marina varada
step
    .goto 1448/1,48.92,6748.85
>>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Entrega la misión Bashal'Aran
.target Asterion
    .accept 955 >> Acepta la misión Bashal'Aran
step
    .goto 1448/1,-33.31,6660.30
     >> Mata Grellines. Despójalos para obtener sus Pendientes
    .complete 955,1 --Grell Earring (8)
step
    .goto 1448/1,48.92,6748.85
>>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
.target Asterion
    .accept 956 >> Acepta la misión Bashal'Aran
step
    .goto 1448/1,-60.33,6653.40
     >> Mata sátiros. Despójalos para obtener el Sello
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto 1448/1,48.92,6748.85
>>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
.target Asterion
    .accept 957 >> Acepta la misión Bashal'Aran
step
    #sticky
    #completewith ReadAndy
     >> Mata a cualquier tipo de Acechalunas. Despójalos para obtener sus colmillos
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>Mata a los Osos Cardo rabiosos que veas. Ten al menos un 50% de mana y elimínalos rápidamente antes de que te apliquen Rabia animal (perjuicio)
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto 1439/1,-383.77,7222.89
    >>Usa el Tubo de ensayo vacío que tienes en tus bolsas
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Guarda los huevos pequeños que despojes para subir cocina más adelante. Guarda TODAS las plumas ligeras que consigas
step
    .goto 1439/1,-144.04,6209.82
     >> Sube hasta El Cristal Rojo en las montañas
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Habla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >>Acepta la misión La caída de Ameth'Aran
step
    #sticky
    #label anaya
    .goto 1439/1,171.67,5693.25,0
     >> Mata a Anaia Correalba. Patrulla por el medio de Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto 1439/1,147.44,5630.370,0
     >> Mata a los fantasmas. Despójalos para obtener sus reliquias
    .complete 958,1 --Highborne Relic (7)
step
    .goto 1448/1,147.82,5576.23
     >> Haz clic en la tablilla del suelo
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1448/1,166.22,5634.12
     >> Haz clic en la antorcha verde en el gazebo
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1448/1,105.84,5771.35
     >> Haz clic en la tablilla del suelo
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Habla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 953 >> Entrega la misión La caída de Ameth'Aran
step
    .goto 1439/1,398.30,5677.53
    >>Termina de matar a los Osos Cardo Rabiosos y de conseguir Carne de zancudo
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Despoja la Tortuga marina
    .goto 1439/1,509.00,5620.76
    .accept 4722 >>Acepta la misión Tortuga marina varada
step
    >>Despoja la Tortuga marina
    .goto 1439/1,582.36,5242.17
    .accept 4728 >>Acepta la misión Criatura marina varada
step
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
step
    .goto 1439/1,397.65,6437.33
>>Habla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >>Entrega la misión La limpieza de la infección
.target Tharnariun Treetender
    .accept 2139 >>Acepta la misión La esperanza de Tharnariun
step
    .goto 1439/1,445.46,6535.58
.target Gorbold Steelhand
>>Habla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >>Entrega la misión Profundo océano, mar inmenso
    .vendor >> Compra unas Especias suaves de Gorbold hasta que tengas suficiente para cocinar todos tus huevos
step
    .goto 1439/1,472.97,6557.85
    >>Verifica que tengas 10 puntos en cocina, o no podrás aceptar o entregar la misión
.target Alanndarian Nightsong
>>Habla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >>Acepta la misión Guiso de zancudo
    .turnin 2178 >>Entrega la misión Guiso de zancudo
step
    .goto 1439/1,491.97,6582.303
>>Habla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 958 >>Entrega la misión Las herramientas de los Altonato
    .turnin 4762 >>Entrega la misión El Río Fonroca
.target Thundris Windweaver
    .accept 4763 >>Acepta la misión La corrupción de los Bosque Negro
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Habla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Acepta la misión El prospector despistado
step
    .goto 1439/1,471.66,6439.95
>>Habla con |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Acepta la misión Agua en cascada
step
    .goto 1439/1,467.08,6409.38
     >> Rellena el Tubo de Agua Vacío en la poza de la luna
    .complete 4812,1
     >> Rellena el Cuenco Vacío en la poza de la luna
    .collect 12347,1,4763,1
step
    #completewith next
    .goto 1439/1,529.30,6415.93
    .vendor >> Compra bebida de nivel 15 de Taldan
step
    >>Vuelve al muelle
    .goto 1448/1,600.92,6424.93
.target Cerellean Whiteclaw
>>Habla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .turnin 963 >> Entrega la misión Un amor eterno
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Habla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Habla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entrega la misión Tortuga marina varada
    .turnin 4723 >>Entrega la misión Criatura marina varada
    .turnin 4728 >>Entrega la misión Criatura marina varada << Gnome
step
    .goto 1439/1,-157.79,6206.770
     >> Haz clic en el cristal rojo
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
step
    #sticky
    #label MoonstalkersF
     >> Mata a cualquier tipo de Acechalunas. Despójalos para obtener sus colmillos
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto 1439/1,47.88,6748.67
.target Asterion
>>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Entrega la misión Bashal'Aran
step
    .goto 1439/1,-376.56,6805.87
    >>Equipa tu nueva varita
    >>Despoja la Muestra de grano Bosque Negro de la Barrica, luego corre al sureste hacia la Madre del cubil (no luches contra los enemigos)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    >>Mata a la Madre del cubil. Ten cuidado ya que sus crías pueden derribarte durante 2 segundos
    >>Mata enemigos hasta ser nivel 16 y vuelve a intentarlo si te cuesta
    .goto 1439/1,-430.27,6662.65
    .complete 2139,1 --Den Mother (1)
step
    >>Despoja la Muestra de nuez Bosque Negro de la Barrica
    .goto 1439/1,-451.23,6870.06
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Despoja la Muestra de fruta Bosque Negro de la Barrica. Un enemigo aparecerá delante de ti, y entre las cabañas del oeste - puede que tengas que correr
    .goto 1439/1,-520.01,6873.99
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Usa el Cuenco de purificación lleno en tu inventario cerca de la hoguera. Esto hará que todos los Furlbogs cercanos se vuelvan amistosos.
    >>Mata al Sátiro que aparece entre los campamentos y luego corre alrededor del fuego. Inicia al máximo rango ya que puede ser difícil. Despoja la canasta que cae en el suelo después de matarlo
    .goto 1439/1,-489.22,6879.67
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto 1439/1,-659.52,6901.50,35 >> Dirígete a la cueva arriba de la cascada
step
    .goto 1439/1,-704.06,6809.80
     >> Quédate en la parte superior de la cueva. Si no hay Oronja verde al final del lado superior, entonces baja y consigue una de abajo
     >> El primero azul de la boca de la cueva debería haber reaparecido para cuando hayas despojado la Oronja verde
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,-658.87,7246.47
>>Habla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >>Entrega la misión La Torre de Althalaxx
.target Balthule Shadowstrike
    .accept 966 >>Acepta la misión La Torre de Althalaxx
step
    >>Mata a las Fanáticas de la Facción Oscura. Despójalas para obtener sus Papiros
    .goto 1439/1,-684.41,7161.32
    .complete 966,1 --Worn Parchment (4)
step
    .goto 1439/1,-658.87,7246.47
>>Habla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >>Entrega la misión La Torre de Althalaxx
.target Balthule Shadowstrike
    .accept 967 >>Acepta la misión La Torre de Althalaxx
step
    #requires MoonstalkersF
    .goto 1439/1,-537.04,7540.35
    .accept 4727 >>Acepta la misión Tortuga marina varada
step
    #sticky
    #completewith Turtles
     >> Mata Reptador de arrecife a lo largo de la costa, no te desvíes para completar esta misión y no mates enemigos 4 niveles o más por encima del tuyo
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto 1439/1,-423.72,7277.04,25,0
    .goto 1439/1,-417.83,7262.19
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
step
    #softcore
    #label Turtles
    >>Deja algunos múrlocs cercanos vivos, vas a morir contra ellos tras aceptar esta misión
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    #hardcore
    #label Turtles
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    #softcore
    .deathskip >> Muere y resucita en Auberdine
step
    .goto 1439/1,491.97,6582.303
    >>Equipa tu nueva varita
.target Thundris Windweaver
>>Habla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
step
    .goto 1439/1,397.65,6437.33
.target Tharnariun Treetender
>>Habla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >>Entrega la misión La esperanza de Tharnariun
step
    .goto 1439/1,471.66,6439.95
.target Sentinel Glynda Nal'Shea
>>Habla con |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4813 >>Entrega la misión Los trozos del interior
step
    .goto 1439/1,497.21,6427.72
>>Habla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
.target Barithras Moonshade
    .accept 948 >> Acepta la misión Onus
step
    .goto 1439/1,503.10,6401.96
     >> Haz clic en el cartel de se busca fuera de la posada
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .isQuestComplete 1138
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Habla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entrega la misión Rico marisco
step
    #label end
    #requires bowl
    .goto 1448/1,543.42,6342.52
.target Gwennyth Bly'Leggonde
>>Habla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entrega la misión Criatura marina varada
    .turnin 4725 >> Entrega la misión Tortuga marina varada
step
     #completewith Murkdeep
     >> Mata a cualquier Patriarca Acechalunas que encuentres y Matriarcas si te sientes cómodo. Despójalos para obtener sus Pelambres. Comparten aparición con Osos cardo grisáceos.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto 1439/1,413.37,4818.17,0
     >> Mata Osos cardo grisáceos. Despójalos para obtener sus Cueros cabelludos
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,89.14,5002.00
>>Habla con |cRXP_FRIENDLY_Onus|r
    .turnin 948 >> Entrega la misión Onus
.target Onu
    .accept 944 >> Acepta la misión La Espada del Maestro
step
    #completewith next
    .goto 1439/1,79.97,4986.72
    .vendor >> Compra agua nivel 15 de Tiyani
step << Human
    >>Despoja los restos
    .goto 1439/1,585.63,5237.370
    .accept 4728 >>Acepta la misión Criatura marina varada
step
    #label Murkdeep
    .goto 1439/1,549.61,4990.65
    >> Despeja el campamento murloc, aléjate de la hoguera en el centro
    >> Una vez que limpies todo, muévete al centro del campamento para invocar a Viscoso
    >> Si tienes suerte, Viscoso ya estará allí a unos 30 metros de la costa hacia el oeste (si alguien murió contra él antes).
    .complete 4740,1 --Murkdeep (1)
step
     >> Mata a los cangrejos a lo largo de la costa para obtener Trozos de cangrejo de gran calidad
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Despoja los restos
    .goto 1439/1,799.82,4808.12
    .accept 4730 >>Acepta la misión Criatura marina varada
step
    >>Despoja los restos. Ten cuidado los Oráculos lanzan descargas de relámpagos de 90 de daño y se curan al 100 % con ola de sanación si bajan del 55 % de vida. Usa la cabeza de tortuga de aquí para cortar la línea de visión
    >>Siempre déjate una ruta de escape. Los Cazamareas no son para tanto, pero ojo con su habilidad de veneno de poco daño
    >>Intenta guardar las pociones de sanación para más adelante, especialmente las grandes
    .goto 1439/1,865.32,4678.432
    .accept 4731 >>Acepta la misión Tortuga marina varada
step
    >>El caparazón de tortuga de la isla corta la línea de visión
    .goto 1439/1,896.76,4597.21
    .accept 4732 >>Acepta la misión Tortuga marina varada
step
    >>Despójalo desde su cuello, ten cuidado de los 2 enemigos escondidos por el terreno (solo necesitarás matar 3 enemigos para despojarlo)
    .goto 1439/1,892.83,4517.30
    .accept 4733 >>Acepta la misión Criatura marina varada
step
    .goto 1439/1,602.01,4678.87
.target Prospector Remtravel
>>Habla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    .turnin 729 >> Entrega la misión El prospector despistado
step
    .goto 1439/1,602.01,4678.87
     >>Esta misión es MUY difícil. Hazla con otro jugador si puedes.
     >> Inicia la misión de escolta
.target Prospector Remtravel
>>Habla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    .accept 731,1 >> Acepta la misión El prospector despistado
step
     >>Escolta al Prospector Tripirrem
     >>Deja que Remtravel pille el aggro de todo (los enemigos necesitan golpearlo para aggrearlo), luego revienta al enemigo con Bolas de Fuego
     >>Remtravel es muy blando, así que intenta quitarle el aggro de los demás enemigos
     >>Cuando los troggs aparecen, lanza polimorfia al no está atacando, entonces ataca al otro cuando le haya golpeado. Polimorfia primero al mago que aparece cerca del final DESPUÉS de que dispare una bola de fuego al prospector
     >>Si no puedes completar esta misión a la primera, simplemente sáltala - es MUY exigente en habilidad y también depende mucho de la suerte.
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >> Mata a cualquier Patriarca Acechalunas que encuentres y Matriarcas si te sientes cómodo. Despójalos para obtener sus Pelambres. Comparten aparición con Osos cardo grisáceos.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>Mata Zancudos de llanura. Asegúrate de tener al menos 1 pluma ligera para después
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto 1439/1,413.37,4818.17,0
     >> Mata Osos cardo grisáceos. Despójalos para obtener sus Cueros cabelludos
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>Estate atento a Los Poderes Subyacentes. Es una misión gratuita con una baja tasa de caída
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
step
    #label Glaive
    .goto 1439/1,433.02,4529.09
     >> Entra en La Espada del Maestro y elimina los enemigos alrededor del altar del centro
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto 1439/1,410.09,4519.49
.target Therylune
>>Habla con |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Acepta la misión La fuga de Therylune
step
     >> Suelta el cuenco de visión de tu inventario al suelo
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
step
    .goto 1439/1,416.64,4576.69
     >> Haz clic en el libro encima del pedestal. Ten cuidado de que Therylune no se aleje si ya iniciaste la misión
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
step
    #label Therylune
    #requires TheryluneE
    >> Termina la misión de escolta
    >> Cuando mates el último enemigo saliendo de la espada del maestro, haz una hoguera y cocina toda la carne/huevos que todavía tienes para subir tu habilidad de cocina
    >> Necesitas 50 de habilidad de cocina para una misión regalada en Villa Oscura
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto 1439/1,493.28,4321.68,100,0
    .goto 1439/1,389.79,4836.94,100,0
    .goto 1439/1,71.46,4749.17,100,0
    .goto 1439/1,389.79,4836.94,0
     >> Mata a cualquier Patriarca Acechalunas que encuentres y Matriarcas si te sientes cómodo. Despójalos para obtener sus Pelambres. Comparten aparición con Osos cardo grisáceos
     >> Si tienes muy mala suerte con apariciones y tasas de caída, puedes saltar esta misión
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto 1439/1,413.37,4818.170
     >> Mata Osos cardo grisáceos por todo el sur de Costa Oscura. Despójalos para obtener sus Cueros cabelludos
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,229.97,4815.55
    .turnin 1003 >> Entrega la misión La caja mecánica 525
step
    #requires MoonstalkerP
    .goto 1439/1,89.14,5002.00
.target Onu
>>Habla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
step
    #completewith next
    .goto 1439/1,79.97,4987.16
    .vendor >> Compra comida/bebida de Tiyani si es necesario
step
    >>Acepta la misión de escolta de Kerlonian. Si no está ahí, salta este paso
    .goto 1439/1,33.47,4996.33
.target Kerlonian Evershade
>>Habla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r
    .accept 5321 >>Acepta la misión El despertar
step
    .isOnQuest 5321
    >>Despoja el pequeño cofre gris junto a Kerlonian
    .goto 1439/1,33.47,4996.33
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto 1440/1,152.23,3260.72
    >>Corre hacia el sur a Vallefresno. Asigna el Cuerno de Despertar a tu barra de acciones, y úsalo en Kerlonian cuando empiece a caminar en el mismo lugar y se duerma
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto 1440/1,128.01,3305.31
.target Liladris Moonriver
>>Habla con |cRXP_FRIENDLY_Liladris Rioluna|r
    .turnin 5321 >>Entrega la misión El despertar
step
    .goto 1440/1,189.71,3185.390
.target Delgren the Purifier
>>Habla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >>Entrega la misión La Torre de Althalaxx
step
    #softcore
    >>Corre por el camino hacia el sur. Dirígete hacia el Santuario de Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Habla con |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entrega la misión La fuga de Therylune
step
    #hardcore
    >>Corre por el camino hacia el sur. Dirígete hacia el Santuario de Aessina
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Habla con |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entrega la misión La fuga de Therylune
step
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Habla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entrega la misión Rico marisco
step
    .goto 1439/1,543.06,6342.130
.target Gwennyth Bly'Leggonde
>>Habla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Entrega la misión Criatura marina varada
    .turnin 4731 >>Entrega la misión Tortuga marina varada
    .turnin 4732 >>Entrega la misión Tortuga marina varada
    .turnin 4733 >>Entrega la misión Criatura marina varada
step
    .goto 1439/1,470.35,6439.07
.target Sentinel Glynda Nal'Shea
>>Habla con |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >>Entrega la misión SE BUSCA: ¡Viscoso!
step
    .isQuestComplete 986
    >>Conserva la siguiente parte de la misión en el registro para conservar la capa de +3 de aguante. Abandona la misión cuando ya no la necesites
    .goto 1439/1,362.93,6434.71
>>Habla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entrega la misión El maestro perdido
.target Terenthis
    .accept 993 >>Acepta la misión El maestro perdido
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Habla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .isQuestComplete 731
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Habla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >> Acepta la misión El prospector despistado
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Corre de vuelta al muelle. Espera a que llegue el barco hacia Darnassus
    .goto 1439/1,555.50,6418.99,30,0
    .goto 1439/1,769.03,6579.24,40
step
    .isOnQuest 741
    .zone Teldrassil >> Toma el barco hacia Darnassus
step
    .isOnQuest 741
    .goto 1438/1,965.80,8781.63,30 >> Atraviesa el portal morado
step
    .isOnQuest 741
    .goto 1457/1,2607.74,9642.04
>>Habla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .turnin 741 >>Entrega la misión El prospector despistado
.target Chief Archaeologist Greywhisker
    .accept 942 >>Acepta la misión El prospector despistado
step
    .goto 1438/1,841.05,8641.122
    .fp Teldrassil >> Consigue la ruta de vuelo de Teldrassil
    .fly Auberdine >> Vuela a Auberdine
step
    .goto 1439/1,818.16,6422.92,50,0
    .zone Wetlands >> Toma el barco hacia Menethil
step
    #completewith next
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    >> Si tienes 8 platas, comprueba si Neal Allen tiene el tubo de bronce y cómpralo. Si no, salta este paso
    .collect 4371,1,175,1
step
    .goto 1437/0,-782.03,-3793.12
    .fly Ironforge >> Vuela a Forjaz
step << skip --logout skip
    #completewith next
    .goto 1455/0,-1158.16,-4816.32,0
    +Realiza un Logout Skip saltando encima de una de las cabezas de grifo, desconectando y volviendo a entrar
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> HAZ CLIC AQUÍ
step
    .zone Stormwind City >> Toma el tranvía hacia la Ciudad de Ventormenta
step
    #completewith FlyAndy
    .goto 1453/0,638.8,-8341.95
    .vendor >> Compra un Tubo de bronce si aún no lo has hecho
    >>Este es un objeto de suministro limitado, omite este paso si el pnj no lo tiene
    .bronzetube
step << Human
    #label FlyAndy
    .goto 1429/0,409.13,-9100.58
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
step << Gnome
    .goto 1429/0,622.93,-8830.700
    .zone Stormwind City >> Viaja a la Ciudad de Ventormenta
step << Gnome
    #label FlyAndy
    >>Entra en Ventormenta y consigue la Ruta de Vuelo
    .goto 1453/0,606.4,-8812.0,50,0
    .goto 1453/0,490.12,-8835.76
    .fp Stormwind City >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
step << Gnome
    .goto 1453/0,493.08,-8867.22,12,0
    .goto 1453/0,507.6,-8885.59,18 >> Déjate caer a la repisa pequeña corriendo contra la pared blanca. Ten cuidado. Avanza por ella hacia la salida de Ventormenta
step
    >> Sube al piso de arriba de la Posada de Villadorada
    .goto 1429/0,44.00,-9459.11,15,0
    .goto 1429/0,14.84,-9477.86,15,0
    .goto 1429/0,34.28,-9471.61
    .trainer >> Aprende tus hechizos de clase
step
    .goto 1429/0,-1637.62,-9642.89,125,0
    .zone Redridge Mountains >> Corre todo el camino hacia el este hasta las Montañas de Crestagrana. Organiza tus combinaciones de teclas en el camino, asegurándote de que tus hechizos estén cómodamente en tus barras
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 18-21 Montañas Crestagrana Mago AoE
#version 1
#group RestedXP Alianza Mago

#defaultfor none Alliance Mage
#next 21-22 Bosque del Ocaso Mago AoE

step
    #sticky
    #completewith Gnolls
    +empieza a hacer AoE a los enemigos de misión que veas en grupos de 3+.
    >>Manten abierto este tutorial en otra pestaña para la sección de AoE de Montañas Crestagrana si lo necesitas:
    .link https://youtu.be/SxMc2GoP33c?t=56 >> HAZ CLIC AQUÍ
step
    >>Habla con el Guardia Parker. Patrulla un poco alrededor del cruce
    .goto 1429/0,-1902.44,-9609.56
.target Guard Parker
>>Habla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >>Acepta la misión Gnolls invasores
step
    #sticky
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >>Entrega la misión Gnolls invasores
.target Deputy Feldon
    .accept 246 >>Acepta la misión Evaluar la amenaza
step
    .goto 1433/0,-2234.89,-9435.060
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
step
    #requires Gnolls
    .goto 1433/0,-2298.28,-9283.90
.target Marshal Marris
>>Habla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .accept 20 >>Acepta la misión La amenaza de los Roca Negra
step
    .goto 1433/0,-2268.54,-9279.27
.target Foreman Oslow
>>Habla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .accept 125 >>Acepta la misión Las herramientas perdidas
step
    .goto 1433/0,-2242.49,-9259.00
.target Verner Osgood
>>Habla con |cRXP_FRIENDLY_Verner Osbien|r
    .accept 118 >>Acepta la misión El precio de unas herraduras
step
    >>Entra en el Ayuntamiento
    .goto 1433/0,-2216.00,-9215.85
.target Bailiff Conacher
>>Habla con el |cRXP_FRIENDLY_Alguacil Conacher|r
    .accept 91 >>Acepta la misión Ley de Solomon
step
    .goto 1433/0,-2221.87,-9218.60
    >>Entra en el edificio
.target Magistrate Solomon
>>Habla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .accept 120 >>Acepta la misión Mensajero a Ventormenta
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Habla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
    .accept 127 >>Acepta la misión Pescado a la venta
step
    .goto 1433/0,-2151.53,-9247.12
    .accept 180 >>Acepta la misión Se busca: Teniente Fangore
step
    >>Dentro de la posada
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Habla con |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Acepta la misión Una comida gratis
step
    .goto 1433/0,-2157.18,-9223.96
    .home >> Establece tu Piedra de hogar en Villa del Lago
step
    .goto 1433/0,-2207.32,-9351.66
.target Shawn
>>Habla con |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Acepta la misión El collar de Hilary
step
    >>Busca el Collar de Hilary bajo el agua. Está en un montón de tierra marrón
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto 1433/0,-1906.66,-9478.500,0
    +Haz AoE a los gnolls de los campamentos
step
    .goto 1433/0,-1902.54,-9609.83
>>Habla con el |cRXP_FRIENDLY_Guardia Parker|r
    .turnin 129 >>Entrega la misión Una comida gratis
.target Guard Parker
    .accept 130 >>Acepta la misión Una visita al herborista
step
    .goto 1433/0,-2234.89,-9435.21
    .fly Stormwind >> Vuela a Ventormenta
step
    >>Entra en Ventormenta. Ve al instructor de armas
   .goto 1453/0,612.99,-8796.14
   .trainer >> Aprende Espadas de 1 mano y Dagas
step
    #softcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    +Ve a la Casa de Subastas. Compra un Tubo de bronce si es asequible
    >>Si no hay ninguno aquí o son demasiado caros, también puedes comprar uno de Billibub en el Distrito de los Enanos
    >>Si no puedes encontrar uno, omite este paso
    .bronzetube
step
    #hardcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    .vendor >> Comprueba si Billibub tiene un Tubo de bronce en el Distrito de los Enanos. Cómpralo si está disponible
    .bronzetube
step
    .goto 1453/0,520.77,-8954.16
>>Habla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >>Entrega la misión Mensajero a Ventormenta
.target General Marcus Jonathan
    .accept 121 >>Acepta la misión Mensajero a Ventormenta
step
    >>Corre a Villadorada
    .goto 1429/0,87.73,-9456.79
>>Habla con el |cRXP_FRIENDLY_Herrero Argus|r
    .turnin 118 >>Entrega la misión El precio de unas herraduras
.target Smith Argus
    .accept 119 >>Acepta la misión Regresa junto a Verner
step
    >>Corre a Colina del Centinela
    .goto 1436/0,1045.12,-10508.80
.target Gryan Stoutmantle
>>Habla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >>Acepta la misión La hermandad de los Defias
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >> Usa la Piedra de hogar a Villa del Lago si la tienes disponible
step
    #completewith hsLakeshire
    #label WFFP
    .goto 1436/0,1037.42,-10628.50
    .fp Westfall >> Consigue la ruta de vuelo de Páramos de Poniente << Gnome
    .fly Redridge >> Vuela a Crestagrana
step
    #requires WFFP
    .goto 1433/0,-2243.14,-9259.43
>>Habla con |cRXP_FRIENDLY_Verner Osbien|r
    .turnin 119 >>Entrega la misión Regresa junto a Verner
.target Verner Osgood
    .accept 122 >>Acepta la misión Escamas de barriga
    .accept 124 >>Acepta la misión El aullido de los gnolls
step
    >>Entra en la Fortaleza
    .goto 1433/0,-2220.56,-9218.74
>>Habla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 121 >>Entrega la misión Mensajero a Ventormenta
.target Magistrate Solomon
    .accept 143 >>Acepta la misión Mensajero a los Páramos de Poniente
.target Bailiff Conacher
>>Habla con el |cRXP_FRIENDLY_Alguacil Conacher|r
    .accept 91 >>Acepta la misión Ley de Solomon
step
    >>Sube a la planta superior de la posada
    .goto 1433/0,-2145.45,-9231.63
>>Habla con |cRXP_FRIENDLY_Wiley el Negro|r
    .turnin 65 >>Entrega la misión La hermandad de los Defias
.target Wiley the Black
    .accept 132 >>Acepta la misión La hermandad de los Defias
step
    .goto 1433/0,-2205.58,-9351.52
.target Hilary
>>Habla con |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Entrega la misión El collar de Hilary
step
    #era/som
    #completewith Murlocs
    >>Consigue los primeros 3 objetos para la misión Estofado de Crestagrana mientras haces otras misiones. Consigue también suficientes Trozos de carne de jabalí para subir Cocina a 50
    >>Enfócate mucho en los Dentosangre, no te preocupes por la carne de araña todavía
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>Mata Crías de dragón. Despójalas para obtener sus escamas
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>Haz AoE a los gnolls de la zona. Consulta el vídeo de AoE si lo necesitas
    >>Ponte en la zona muerta (deadzone) de los Furtivos durante el pull en área para que no te disparen
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>Haz AoE a los múrlocs de la zona. Tendrás que hacer matar individualmente a los Clamamareas (descarga de relámpagos + ola de sanación)
    >>Puedes hacer AoE a los Rompeolas (Cargar) y Comecarnes (probabilidad de infligir 25 de daño y robo de vida al atacar). Haz pulls de forma creativa
    >>Guarda 8 Aletas para después
    .goto 1433/0,-2630.63,-9581.16
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Consigue la Carne de cóndor y las Escama de cría por esta zona. Si estás esperando reapariciones, ve al este para conseguir algunas Hachas y luego vuelve aquí
    .goto 1433/0,-2895.91,-9697.86
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Consigue las Escama de cría por esta zona. Si estás esperando reapariciones, ve al este para conseguir algunas Hachas y luego vuelve aquí
    .goto 1433/0,-2895.91,-9697.86
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>Haz AoE a los orcos de la zona. Despójalos para conseguir sus hachas. Cuidado ya que los Avanzada tiran red y los Renegados usan Embate con escudo.
    >>Evita matar a los Renegados por su alto nivel. Junta 3 como máximo a la vez. Hacer AoE aquí es de muy alto riesgo, recompensa media
    >>No recojas todas las hachas todavía, tendrás una oportunidad mejor para terminarlas más adelante
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Ve bajo el agua. Despoja la caja gris
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Termina de conseguir los Morros de dentosangre aquí
    .goto 1433/0,-2267.02,-9596.36
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto 1433/0,-2238.15,-9443.75
.target Deputy Feldon
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 246 >>Entrega la misión Evaluar la amenaza
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Habla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .turnin 20 >>Entrega la misión La amenaza de los Roca Negra
step
    .goto 1433/0,-2268.54,-9279.12
>>Habla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .turnin 125 >>Entrega la misión Las herramientas perdidas
.target Foreman Oslow
    .accept 89 >>Acepta la misión El puente sempiterno
step
    .goto 1433/0,-2243.36,-9259.43
.target Verner Osgood
>>Habla con |cRXP_FRIENDLY_Verner Osbien|r
    .turnin 122 >>Entrega la misión Escamas de barriga
step
    #level 20
    .goto 1433/0,-2172.59,-9261.02
>>Habla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
    .turnin 127 >>Entrega la misión Pescado a la venta
.target Dockmaster Baren
    .accept 150 >>Acepta la misión Cazadores furtivos
    .turnin 150 >>Entrega la misión Cazadores furtivos
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Habla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
    .turnin 127 >>Entrega la misión Pescado a la venta
step
    .goto 1433/0,-2045.38,-9245.82
>>Habla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Entrega la misión Una visita al herborista
.target Martie Jainrose
    .accept 131 >>Acepta la misión Un ramo de narcisos
    .accept 34 >>Acepta la misión Una visita poco grata
step
    >>Mata a Panzallena. Llévatela kiteando hasta el Guardia Adams en el pueblo
    >>Ten cuidado ya que usa atropello (80 daño de área instantáneo), y carga (mantenlo ralentizada y usa nova si es posible)
    >>Asegúrate de hacer la mayoría del daño (51%+ )
    >>Esta misión es MUY difícil
    .goto 1433/0,-1910.79,-9288.97
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto 1433/0,-2045.16,-9245.67
.target Martie Jainrose
>>Habla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Entrega la misión Una visita poco grata
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    >>Mata Gnolls. Despójalos para obtener Picas y Remaches
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Mata a los grupos de orcos bien juntos. Despójalos para terminar las hachas
    >>Si tienes mala suerte después de limpiar los grupos cercanos, tendrás otra oportunidad más adelante
    .goto 1433/0,-2375.13,-9228.73,50,0
    .goto 1433/0,-2401.83,-9180.95,50,0
    .goto 1433/0,-2449.15,-9161.70,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto 1433/0,-2639.97,-9149.24,150 >> Corre hacia las arañas
step
    #era/som
    >>Mata Arañas. Despójalas por la carne
    >>Cuidado ya que su veneno puede hacer bastante daño
    >>Ten cuidado con Castañeta (raro): tiene un aturdimiento de 8 segundos
    .goto 1433/0,-2813.20,-9230.04
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Termina de matar Orcos para conseguir las hachas
    .goto 1433/0,-2911.11,-9195.00
    .complete 20,1 --Blackrock Axe (10)
step
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Habla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .turnin 20 >>Entrega la misión La amenaza de los Roca Negra
step
    .goto 1433/0,-2268.76,-9279.27
.target Foreman Oslow
>>Habla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .turnin 89 >>Entrega la misión El puente sempiterno
step
    .goto 1433/0,-2243.36,-9259.57
>>Habla con |cRXP_FRIENDLY_Verner Osbien|r
    .turnin 124 >>Entrega la misión El aullido de los gnolls
.target Verner Osgood
    .accept 126 >>Acepta la misión El aullido de las colinas
step
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Habla con |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Entrega la misión Un ramo de narcisos
step
    .goto 1433/0,-2157.18,-9223.81
    .vendor >> Compra bebida de nivel 15
step
    #era/som
    .goto 1433/0,-2063.61,-9212.080
    >>Sal de la Posada. Ve al oeste y luego entra en el edificio
.target Chef Breanna
>>Habla con el |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
step
    #era/som
    #completewith next
    .goto 1433/0,-2146.97,-9225.110
    +Cocina toda la carne de jabalí hasta llegar a 50 de habilidad en cocina
    >>Si no tienes suficiente carne, mata jabalíes de camino a Villa Oscura
step
    .goto 1433/0,-1711.94,-9895.21,90,0
    .zone Duskwood >> Viaja a Bosque del Ocaso
]])
