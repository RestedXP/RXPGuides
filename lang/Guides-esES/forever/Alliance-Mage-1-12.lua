if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Human Mage
#name 1-10 Bosque de Elwynn Mago AoE
#version 1
#group RestedXP Alianza Mago

#defaultfor none Human
#next 10-12 Loch Modan Mago AoE
step
    #sticky
    #completewith next
    .goto 1429/0,-136.52,-8933.53
    +Has seleccionado una guía destinada a Humanos. Deberías elegir la misma zona inicial en la que comienzas << Gnome
    +Ten en cuenta que has seleccionado la guía de AoE. Suele ser mucho más difícil que el de mago a un solo objetivo, pero es MUCHO más rápido
step
    >>Elimina tu Piedra de hogar
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 783 >> Acepta la misión Una amenaza interna
step
    .goto 1429/0,-162.62,-8902.59
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 783 >> Entrega la misión Una amenaza interna
.target Marshal McBride
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
step
    .goto 1429/0,-68.11,-8874.67
    .vendor >>Mata lobos hasta tener 50 cobres en objetos para vender. Véndelos y compra 10x aguas al Hermano Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Mata enemigos hasta el nivel 2
step
    .goto 1429/0,-161.82,-8870.05
>>Habla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
.target Eagan Peltskinner
    .accept 33 >> Acepta la misión Lobos en la frontera
step
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    >>Mata a los Lobos jóvenes en la zona para obtener carne
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    >>Mata Alimañas kóbold en la zona
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto 1429/0,-161.82,-8870.05
.target Eagan Peltskinner
>>Habla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 33 >> Entrega la misión Lobos en la frontera
step
    .goto 1429/0,-116.70,-8900.14
    .vendor >>vende la basura, luego compra 10x aguas más al Hermano Danil
step
    .goto 1429/0,-162.62,-8902.59
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
.target Marshal McBride
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3104 >> Acepta la misión Una carta glífica
step
    .xp 3 >> Mata enemigos hasta el nivel 3
step
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    >>Mata Trabajadores kóbold
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto 1429/0,-120.17,-8897.82
    .xp 3+1110 >>Mata enemigos hasta alcanzar 1110+/1400xp de camino de vuelta al pueblo
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vende la basura
step
    .goto 1429/0,-162.62,-8902.59
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
.target Marshal McBride
    .accept 21 >> Acepta la misión Refriega en el Eco
step
    >>Sube las escaleras
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-182.65,-8865.42,15,0
    .goto 1429/0,-188.23,-8851.58
.target Khelden Bremen
>>Habla con |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Entrega la misión Una carta glífica
    .trainer >> Aprende tus hechizos de clase
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 18 >> Acepta la misión Hermandad de ladrones
step
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    >>Mata a los Matones Defias. Despójalos para obtener Pañuelos
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto 1429/0,-136.52,-8933.53
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 18 >> Entrega la misión Hermandad de ladrones
.target Deputy Willem
    .accept 6 >> Acepta la misión La recompensa por Garrick Piesuaves
    .accept 3903 >> Acepta la misión Milly Osworth
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vende la basura, repara
step
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    >>Mata a los Obreros en la mina
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Mata enemigos hasta el nivel 5
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Habla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Entrega la misión Milly Osworth
.target Milly Osworth
    .accept 3904 >> Acepta la misión La cosecha de Milly
step
    #som
    #phase 3-6
    .goto 1429/0,-224.30,-8846.90
.target Milly Osworth
>>Habla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Entrega la misión Milly Osworth
step
    #era/som
    >>Despoja los Cubos de uvas en el campo
    .goto 1429/0,-356.19,-9082.99
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-460.31,-9055.21
    >>Mata a Garrick y despoja su Cabeza
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Mata enemigos de camino de vuelta hasta alcanzar 1175+/2800xp
    .goto 1429/0,-224.30,-8846.90
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Habla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Entrega la misión La cosecha de Milly
.target Milly Osworth
    .accept 3905 >>Acepta la misión Informe de la vendimia
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 6 >> Entrega la misión La recompensa por Garrick Piesuaves
step
    .goto 1429/0,-162.62,-8902.59
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 21 >> Entrega la misión Refriega en el Eco
.target Marshal McBride
    .accept 54 >> Acepta la misión Informa en Villadorada
step
     #era/som
     >>Sube por la escalera principal
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,15,0
    .goto 1429/0,-181.64,-8902.13
.target Brother Neals
>>Habla con el |cRXP_FRIENDLY_Hermano Neals|r
    .turnin 3905 >>Entrega la misión Informe de la vendimia
step
    .goto 1429/0,-47.28,-9043.64
.target Falkhaan Isenstrider
>>Habla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .accept 2158 >> Acepta la misión Descanso y relajación
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,164.44,-9339.91,200 >> Muere y resucita en el Ángel de la Resurrección, o corre a Villadorada
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> vende la basura, repara
step
    .goto 1429/0,74.02,-9465.52
>>Habla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
.target Marshal Dughan
    .accept 62 >> Acepta la misión La Mina Abisal
step
    .goto 1429/0,46.43,-9460.26,15,0
    >>A tu izquierda nada más entrar en la Posada
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >> Acepta la misión Las velas de los kóbolds
step
    .goto 1429/0,16.20,-9462.65
.target Innkeeper Farley
>>Habla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 2158 >> Entrega la misión Descanso y relajación
    .home >> Establece tu Piedra de hogar en Villadorada
step
    .xp 6 >> Mata enemigos hasta el nivel 6
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Sube las escaleras. Aprende tus hechizos de clase
step
    .goto 1429/0,74.20,-9497.30
.target Remy "Two Times"
>>Habla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
step
    #sticky
    #completewith BoarMeat1
    >>Empieza a matar los jabalíes que veas para conseguir carne de jabalí
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Habla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .accept 85 >> Acepta la misión El collar perdido
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Habla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
step
    #sticky
    #completewith Candles
    >> Obtén Velas de los Kóbolds cercanos
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >> Obtén Polvo de oro de los Kóbolds cercanos
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>Grindea enemigos hacia el este por el exterior de la mina
    .goto 1429/0,38.38,-9923.69
>>Habla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Entrega la misión El collar perdido
.target Billy Maclure
    .accept 86 >> Acepta la misión Un pastel para Billy
step
    #label BoarMeat1
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Habla con |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acepta la misión Jóvenes enamorados
step
    .goto 1429/0,63.78,-10008.82
    .vendor >>Vende objetos y compra toda la leche que puedas
step
    #sticky
    #completewith next
    >>Mata a los jabalíes que veas para obtener Carne de jabalí
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
>>Habla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
.target Tommy Joe Stonefield
    .accept 111 >> Acepta la misión Habla con la abuelita
step
    .goto 1429/0,407.40,-9918.55
    >>Termina de conseguir la carne de jabalí
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
>>Habla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 86 >> Entrega la misión Un pastel para Billy
.target "Auntie" Bernice Stonefield
    .accept 84 >> Acepta la misión Vuelve con Billy
step
    .goto 1429,34.945,83.855
>>Habla con la |cRXP_FRIENDLY_Abuela Pedregosa|r
    .turnin 111 >> Entrega la misión Habla con la abuelita
.target Gramma Stonefield
    .accept 107 >> Acepta la misión Una nota para William
step
    #sticky
    #label KoboldCandles
    >> Obtén Velas de los Kóbolds cercanos
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >> Obtén Polvo de oro de los Kóbolds cercanos
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Grindea enemigos hacia el este por el exterior de la mina
    .goto 1429/0,38.38,-9923.69
>>Habla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
.target Billy Maclure
    .accept 87 >> Acepta la misión Dientes de Oro
step
    >>Entra en la mina
    .goto 1429/0,129.73,-9844.49
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Mata a Dientes de Oro para obtener el Collar de Bernice
    .goto 1429/0,88.08,-9744.96--??
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Mata enemigos hasta alcanzar 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Habla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 87 >> Entrega la misión Dientes de Oro
step
    >>Grindea algunos enemigos de regreso a Villadorada
    .xp 7+2690 >>Mata enemigos hasta alcanzar 2690+/4500xp
    .goto 1429/0,74.20,-9497.30
step
    .goto 1429/0,74.20,-9497.30
>>Habla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
.target Remy "Two Times"
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>vende la basura, repara
step
    .goto 1429/0,74.02,-9465.52
>>Habla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
.target Marshal Dughan
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> vende la basura, repara
step
    .goto 1429/0,33.14,-9460.75
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
.target William Pestle
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> La recolección de algas
step
    .xp 8 >> Mata enemigos hasta el nivel 8
step
    .money <0.1250
    .goto 1429/0,8.25,-9464.89
    .vendor >>Compra una bolsa de 6 ranuras de Brog
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Sube las escaleras. Aprende tus hechizos de clase
step
    .goto 1429/0,16.20,-9462.65
    .vendor >>Compra Agua de nivel 5 hasta tener 40
step
    >>Mata Múrlocs hacia el este y despójalos para obtener Hoja de alga. mata a los enemigos de la isla si todavía necesitas algunos
    .goto 1429/0,-116.70,-9404.71,60,0
    .goto 1429/0,-248.59,-9434.80,50,0
    .goto 1429/0,-463.78,-9393.14,50,0
    .goto 1429/0,-422.13,-9481.10,50,0
    .goto 1429/0,-331.89,-9485.73,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Ve a la mina y sigue el camino del medio
    .goto 1429/0,-609.56,-9189.46,60,0
    .goto 1429/0,-560.97,-9101.50
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-1032.06,-9610.23
>>Habla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 35 >> Entrega la misión Más preocupaciones
.target Guard Thomas
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
step
    #sticky
    #completewith Prowlers
    >>Mata a los Merodeadores mientras haces otras misiones
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Mata a los Osos mientras haces otras misiones. Mata a cualquiera que veas
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-987.88,-9335.28
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Habla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
step
    .goto 1429/0,-1355.79,-9469.52
    .vendor >> vende la basura, repara
step
    #sticky
    #completewith Bundles
    >>Mantente atento a los fardos de troncos en la base de los árboles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto 1429/0,-1234.31,-9224.18,60 >> Ve hacia el cadáver del guardia
step
    .goto 1429/0,-1234.31,-9224.18
    >> Mata a los enemigos alrededor del cadáver. Atrae a los 2 enemigos enfrente de las cabañas, aléjate y haz oveja a uno mientras matas al otro, luego mata al enemigo que has hecho oveja. Despoja el cadáver en el suelo
    >> Ten cuidado ya que esta misión puede ser difícil
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    >>Inicia tu regreso y termina con los fardos
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Habla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
step
    #label Prowlers
    .xp 9 >> Mata enemigos hasta el nivel 9
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
.target Sara Timberlain
>>Habla con |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acepta la misión Artículos rojos de lino
step
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    >>Mata a los últimos enemigos para la misión Proteger la frontera
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-1032.06,-9610.23
>>Habla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
.target Guard Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
>>Habla con el |cRXP_FRIENDLY_Granjero Saldean|r
-->>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
-->>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
--
-->>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
-->>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
step
    #sticky
    #completewith Princess
    >>Mantente atento a las Escrituras de los Páramos de Poniente de los Defias (botín raro)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    >>Empieza a dar vueltas a la granja, matando Defias y despojándolos para conseguir pañuelos
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto 1429/0,-873.34,-9772.73
    >>Mata a Princesa. Usa una Poción de Sanación inferior de antes si es necesario. Despójala para obtener la Collera
    >>También puedes saltar de un lado a otro de las vallas del borde de la granja para matar a Princesa y a sus guardias
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,-1366.20,-9552.85,120 >>Muere y resucita en el Ángel de la Resurrección si tienes poca vida, de lo contrario solo corre de regreso y entrega la misión
step
    .goto 1429/0,-1223.90,-9534.33
.target Sara Timberlain
>>Habla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .isQuestComplete 83
step
    .goto 1433/0,-1741.68,-9644.29
    .zone Redridge Mountains >>Mata enemigos de camino a Montañas Crestagrana
step
    #softcore
    #sticky
    #completewith next
    +Muere a manos de los enemigos aquí
    .goto 1433/0,-1813.97,-9710.17
step
    #softcore
    >>Reaparece en el Ángel de la Resurrección
    .goto 1433/0,-2022.37,-9394.52,100 >>Reaparece en el Ángel de la Resurrección
step
    #softcore
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
step
    #hardcore
    >>Corre hacia el maestro de vuelo. Ten extremo cuidado para no atraer la atención de los enemigos ni morir en el camino. Procura no salirte del camino y mantente alerta
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
step
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step
    .goto 1429/0,33.14,-9460.75
    >>No esperes a su evento de rol
.target William Pestle
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 112 >> Entrega la misión La recolección de algas
step
    .goto 1429/0,70.72,-9462.58
>>Habla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
.target Marshal Dughan
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
step
    .goto 1429/0,87.87,-9456.65
.target Smith Argus
.target Verner Osgood
>>Habla con |cRXP_FRIENDLY_Verner Osbien|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acepta la misión La tarea de Elmore
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>vende la basura, repara
step
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .accept 114 >> Acepta la misión La fuga
step
    >>Sal de la posada y ve hacia el sur
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Habla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
step
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Habla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .turnin 88 >> Entrega la misión ¡Princesa debe morir!
step
    .goto 1429/0,695.47,-9663.95
.target Deputy Rainer
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
step
    .isOnQuest 184
    .goto 1436/0,916.67,-9852.67
.target Farmer Furlbrow
>>Habla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
step
    .goto 1436/0,919.54,-9853.04
.target Verna Furlbrow
>>Habla con |cRXP_FRIENDLY_Verna Cejade|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
step
    .goto 1436/0,1042.11,-10112.11
.target Salma Saldean
>>Habla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
step
    #softcore
    #sticky
    #completewith next
    .goto 1436/0,1207.17,-10552.67,150 >> Muere y resucita en el Ángel de la Resurrección, o corre a Colina del Centinela
step
    .goto 1436/0,1045.22,-10508.800
.target Gryan Stoutmantle
>>Habla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
step
    .goto 1436/0,1021.60,-10500.61
    .vendor >>vende la basura
.target Quartermaster Lewis
>>Habla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .accept 6181 >> Acepta la misión Mensajero a toda prisa
step
    #phase 3-6
    .goto 1436/0,1042.11,-10112.11
    .xp 11+3750 >> Mata enemigos hasta alcanzar 3750+/8800xp
step
    .goto 1436/0,1035.67,-10627.33
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
>>Habla con |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Entrega la misión Mensajero a toda prisa
.target Thor
    .accept 6281 >> Acepta la misión Prosigue hasta Ventormenta
    .fly Stormwind >> Vuela a Ventormenta
step
    .goto 1453/0,625.49,-8857.89
    >>Elige los Cohetes como recompensa. Tienen un daño muy bueno y se pueden usar para "split pulling"
.target Morgan Pestle
>>Habla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61 >> Entrega la misión Un envío para Ventormenta
step
    #era/som
    .goto 1453/0,613.39,-8796.05
    .trainer >> Aprende Espadas de 1 mano
step
    .goto 1453/0,382.18,-8701.93
.target Osric Strang
>>Habla con |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    >>Vende y Repara
step
    #completewith next
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Habla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
step
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Habla con |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
step
    #sticky
    #completewith next
    .goto 1453/0,521.98,-8353.25,20 >>Entra en el Tranvía Subterráneo
step
    >>Toma el tranvía cuando llegue, luego baja cuando llegue al otro lado
.target Monty
>>Habla con |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
step
    >>Usa tu flauta en las ratas dispersas por ahí
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Habla con |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
step
    .goto 1455/0,-1322.37,-4838.32,30 >>Entra en Forjaz
step
    .goto 1455/0,-1152.40,-4821.13
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
step
    #phase 3-6
    .goto 1455/0,-928.40,-4614.46
     .trainer >> Aprende tus hechizos de clase
step
    #sticky
    #completewith next
    .goto 1426/0,-832.79,-5022.97,100 >>Sal de Forjaz
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,12 >> Sube esta parte de la montaña
step
    >>Mata a Vagash. Despójalo para obtener su Colmillo
    >>Atráelo hacia el guardia al sur del rancho. Asegúrate de hacerle 51%+ del daño
    >>Ten cuidado ya que esta misión puede ser difícil
    .goto 1426/0,-1280.97,-5390.70
    .goto 1426/0,-1289.83,-5669.780,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    >>Mata algunos enemigos de camino
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Vendedor, compra comida+agua
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .accept 433 >> Acepta la misión El servidor público
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 432 >> Acepta la misión ¡Malditos troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Mata a los Troggs en la cueva
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Mata enemigos hasta alcanzar 6350+/7600
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> vende la basura, repara
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 433 >> Entrega la misión El servidor público
step
    #era/som--xpgate
    .xp 11
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>vende basura, compra x30 bebidas de nivel 5 a Kazan
    .trainer >> Aprende Cocina de Ghilm. La necesitarás para aceptar 2 misiones adicionales más tarde
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
step
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    >>Mata a Sarnagarra. Despójalo para obtener su Garra
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    .goto 1426/0,-2354.62,-4898.20,25 >>Atraviesa el túnel hacia Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Gnome Mage
#name 1-10 Dun Morogh Mago AoE
#version 1
#group RestedXP Alianza Mago

#defaultfor none Gnome
#next 10-12 Loch Modan Mago AoE
step
    #era/som
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas << Human
    +Ten en cuenta que has seleccionado la guía de AoE. Suele ser mucho más difícil que el de mago a un solo objetivo, pero es MUCHO más rápido
step
    #phase 3-6
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas << Human
    +Ten en cuenta que has seleccionado la guía de AoE. Subir en AoE suele ser mucho más difícil que jugar con un mago a un solo objetivo, pero con los recientes cambios del 100% de experiencia en misiones, también es más lento
step
    >>Elimina tu Piedra de hogar
    .goto 1426/0,328.18,-6214.85
.target Sten Stoutarm
>>Habla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .accept 179 >> Acepta la misión Los enanos modistos
step
    >>Mata lobos. Despójalos para conseguir carne
    .goto 1426/0,388.61,-6333.02
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Mata enemigos hasta el nivel 2
step
    .goto 1426/0,324.58,-6224.67
    >>vende la basura. Compra 15 Aguas. Mata lobos adicionales si no tienes suficiente dinero
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto 1426/0,328.18,-6214.85
>>Habla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179 >> Entrega la misión Los enanos modistos
.target Sten Stoutarm
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3114 >> Acepta la misión Memorándum glífico
step
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Habla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .accept 170 >> Acepta la misión Una nueva amenaza
step
    #sticky
    #completewith Rockjaw
    >>Mata a los Troggs Comepiedras normales que encuentres
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    >>Mata a los Troggs Comepiedras fornidos
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto 1426/0,688.98,-6222.47
>>Habla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
.target Talin Keeneye
    .accept 183 >> Acepta la misión Cazador de jabalíes
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
step
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    >>Mata a los Jabalíes en la zona
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto 1426/0,688.98,-6222.47
.target Talin Keeneye
>>Habla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 183 >> Entrega la misión Cazador de jabalíes
step
    .xp 3+860 >> Mata enemigos hasta alcanzar 860+/1400xp
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
step
    #label Rockjaw
    .goto 1426/0,567.09,-6362.99
>>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
.target Grelin Whitebeard
    .accept 182 >> Acepta la misión La cueva de los trols
step
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    >> Una vez aceptada, un temporizador de 5 minutos comenzará. Relájate y sigue la guía
step
    .goto 1426/0,388.61,-6421.67
    >>Sube aquí arriba y mata a los Troggs si aún no los has terminado
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Si fuiste demasiado lento y fallaste la misión cronometrada, ve y acéptala de nuevo
    .goto 1426/0,570.83,-6372.42,0
.target Nori Pridedrift
>>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto 1426/0,383.68,-6057.22
.target Durnan Furcutter
>>Habla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
step
    #label Scalding1
    .goto 1426/0,383.68,-6057.22
>>Habla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
.target Durnan Furcutter
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> vende la basura
step
    .goto 1426/0,388.17,-6056.10
.target Marryk Nurribit
>>Habla con |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Entrega la misión Memorándum glífico
    .trainer >> Aprende tus hechizos de clase
step
    >>Corre de vuelta fuera del búnker
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Habla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
step
    .goto 1426/0,324.58,-6224.67
    .vendor >>Compra 10 aguas al vendedor
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto 1426/0,506.81,-6477.48,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    >>Mata a las Crías de trol Peloescarcha
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
step
    .goto 1426/0,567.09,-6362.99
>>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 182 >> Entrega la misión La cueva de los trols
.target Grelin Whitebeard
    .accept 218 >> Acepta la misión El diario robado
step
    #requires Mug
    .goto 1426/0,482.18,-6500.47,30,0
    .goto 1426/0,373.83,-6470.92,15,0
    .goto 1426/0,295.03,-6513.60
    >>Entra en la cueva Trol. Mata a Grik'nir y despójalo del Diario de Grelin
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Mata algunos enemigos de camino de vuelta a este punto
    .goto 1426/0,565.91,-6365.85
>>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
.target Grelin Whitebeard
    .accept 282 >> Acepta la misión Las observaciones de Senir
step
    >> Mata algunas criaturas de camino hasta este punto
    .goto 1426/0,153.00,-6235.86
>>Habla con el |cRXP_FRIENDLY_Montaraz Thalos|r
    .turnin 282 >> Entrega la misión Las observaciones de Senir
.target Mountaineer Thalos
    .accept 420 >> Acepta la misión Las observaciones de Senir
step
    .goto 1426/0,132.51,-6247.65
.target Hands Springsprocket
>>Habla con |cRXP_FRIENDLY_Manit Piñomuelle|r
    .accept 2160 >> Acepta la misión Suministros para Tannok
step
    .goto 1426/0,122.66,-6227.95,20,0
    .goto 1426/0,43.86,-6044.08,20 >>Atraviesa el túnel
step
    #sticky
    #completewith BoarMeat44
    >> Mata a los jabalíes para obtener 4 Carne de jabalí para después
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Mata a los jabalíes para obtener 6 Costillas de jabalí para después
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>mata jabalíes hacia el noreste rumbo a Kharanos
    .goto 1426/0,9.38,-5942.30,45,0
    .goto 1426/0,-54.64,-5863.50,45,0
    .goto 1426/0,-359.99,-5705.90
    .xp 5+2415 >> Mata enemigos hasta alcanzar 2415/+2800xp
step
    #softcore
    .goto 1426/0,-512.67,-5686.2,120 >> Muere y resucita en el Ángel de la Resurrección, o corre hacia Kharanos. Asegúrate de que tu subzona NO sea Desfiladero de Crestanevada
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Habla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
step
    #completewith next
    .goto 1426/0,-497.89,-5633.67
    .vendor >>vende la basura
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Habla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
step
    .goto 1426/0,-576.69,-5748.58
    .xp 6 >> Mata enemigos hasta el nivel 6
step
    .goto 1426/0,-523.35,-5590.82
.target Tannok Frosthammer
>>Habla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .turnin 2160 >> Entrega la misión Suministros para Tannok
step
    >>Piso superior
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Aprende tus hechizos de clase
step
    .goto 1426/0,-532.37,-5600.83
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .vendor >> Compra tanta bebida de nivel 5 como puedas permitirte
step
    .goto 1426/0,-464.45,-5573.78
.target Tharek Blackstone
>>Habla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
step
    .goto 1426/0,-632.15,-5466.540
    >>NO mates a los osos de camino
.target Pilot Bellowfiz
>>Habla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Habla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .accept 313 >> Acepta la misión El Cubil Pardo
step
    .goto 1426/0,-680.12,-5489.20
.target Beldin Steelgrill
>>Habla con |cRXP_FRIENDLY_Beldin Brasacerada|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
step
    #label BoarMeat44
    .goto 1426/0,-664.55,-5499.710
.target Loslor Rudge
>>Habla con |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Acepta la misión Municiones para Estruendo
step
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    >>Obtén los objetos para Los suministros del reactor a vapor
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto 1426/0,-632.15,-5466.540
>>Habla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
.target Pilot Bellowfiz
    .accept 318 >> Acepta la misión La tajada
step
    >>Vuelve a la Posada
    .goto 1426/0,-507.74,-5587.70,20,0
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Compra tanta bebida de nivel 5 como puedas permitirte
    >>Puedes comprar un Cuchillo para desollar fuera de la posada si lo deseas, es mejor que un bastón hasta que obtengas un arma con estadísticas
step
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    >> Entra en la cueva. Mata a los Wendigos. Despójalos para obtener sus Crines
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Despoja la caja
    .goto 1426/0,-369.84,-5745.30
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto 1426/0,-197.47,-5932.45,30,0
    .goto 1426/0,-201.51,-6015.520
.target Hegnar Rumbleshot
>>Habla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .vendor >> Vende y repara
step
    .xp 7 >> Mata enemigos hasta el nivel 7
step
    >>Mata algunos enemigos de camino
    .goto 1426/0,68.48,-5728.88,50,0
    .goto 1426/0,29.08,-5584.42,50,0
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Habla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
step
    .goto 1426/0,299.96,-5387.42
    .vendor >> Vendedor. Compra hasta 20 bebidas de nivel 5
step
    #sticky
    #label Evershine
    .goto 1426/0,314.73,-5380.85
>>Habla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 318 >> Entrega la misión La tajada
.target Rejold Barleybrew
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Habla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .accept 310 >> Acepta la misión Rivales acérrimos
step
    #label Ribs
    #requires Evershine
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    >> Mata Osos, Jabalíes y Leopardos. Ve de norte->oeste->sur
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Termina de recolectar las Costillas de jabalí
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto 1426/0,315.28,-5378.39
>>Habla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
.target Rejold Barleybrew
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Mata enemigos hasta alcanzar 4360+/4500xp
step
    .xp 7+3735 >>Mata enemigos hasta alcanzar 3735+/4500xp
step
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step
    .goto 1426/0,-532.37,-5600.83
    >> Compra una Malta rapsódica y una Cerveza del Trueno a Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto 1426/0,-542.22,-5597.55,10,0
    .goto 1426/0,-547.63,-5607.07
    >>Baja las escaleras, luego habla con Jarven, y dale la Cerveza del Trueno
    >>Espera a que al pasar el ratón sobre el barril se quede "desprotegido", luego entrégala
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Habla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
     >>Vende la receta cuando vayas a vender de nuevo
step
    .xp 8 >> Mata enemigos hasta el nivel 8
step
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Aprende tus hechizos de clase
    >>Asegúrate de aprender Polimorfia
step
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Compra hasta 30 bebidas de nivel 5 del tabernero
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Habla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .accept 287 >> Acepta la misión Poblado Peloescarcha
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Habla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
step
    .goto 1426/0,-632.15,-5466.540
.target Pilot Bellowfiz
>>Habla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz
step
    #era/som
    >>Entra en el edificio
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Habla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .accept 412 >> Acepta la misión Operación Recombobulación
step
    .goto 1426/0,-320.59,-5354.58,25,0
    .goto 1426/0,-271.34,-5367.72,25 >> Corre por la rampa hacia el Cardaluz
step
    .goto 1426/0,-212.24,-5364.43,30,0
    .goto 1426/0,-241.79,-5308.62,30,0
    .goto 1426/0,-153.14,-5190.42,30,0
    .goto 1426/0,-271.34,-5003.27,30,0
    >>Despeja los enemigos en esta zona. Ten cuidado si necesitas limpiar el campamento central. Puedes atraer los enemigos en las cabañas y cortarles la línea de visión (LoS) detrás de las cabañas si necesitas 2 enemigos más. Si tienes mala suerte, corre hacia la otra zona
    >>Despoja las cajas en el suelo
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Lanza Polimorfia al Viejo Barbahielo, luego despoja las carnes
    .goto 1426/0,-94.04,-5646.80
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Habla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
step
    .goto 1426/0,304.88,-5380.85
    .vendor >> Compra hasta 20 bebidas de nivel 5 más
step
    #sticky
    #label Stout
    .goto 1426/0,315.28,-5378.39
>>Habla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 315 >> Entrega la misión La cerveza perfecta
.target Rejold Barleybrew
    .accept 413 >> Acepta la misión Cerveza negra Brillante
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Habla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
step
    #era/som
    #requires Stout
    .goto 1426/0,462.48,-5288.92,40,0
    .goto 1426/0,580.68,-5167.43,40,0
    .goto 1426/0,541.28,-5302.05,40,0
    .goto 1426/0,605.31,-5321.75,40,0
    .goto 1426/0,551.13,-5367.72,40,0
    >>Mata a los Gnomos parias. Despójalos para obtener Engranajes y Piñones
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Mata enemigos hasta el nivel 9
step
    .goto 1426/0,595.46,-5545.02,35 >>Entra en la cueva
step
    .goto 1426/0,713.66,-5528.60,40,0
    .goto 1426/0,753.06,-5613.97,40,0
    >>Mata a los Rebanacabezas dentro de la cueva
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Baja cuidadosamente hacia este rincón en la cueva
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto 1426/0,649.63,-5568.00,15 >>Sube de regreso por la cueva
step
    #softcore
    >>Salta abajo, mueres después
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
step
    #hardcore
   .goto 1426/0,-499.17,-5644.37,150 >> Usa tu Piedra de hogar si está disponible, si no, regresa matando enemigos hasta Kharanos
step
    .goto 1426/0,-499.17,-5644.37
>>Habla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
.target Senir Whitebeard
    .accept 291 >> Acepta la misión Los informes
step
    #era/som
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Habla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .turnin 412 >> Entrega la misión Operación Recombobulación
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,10 >>Sube esta parte de la montaña
step
    >>Mata a Vagash. Despójalo para obtener su Colmillo
    >>Atráelo hacia el guardia al sur del rancho. Asegúrate de hacerle 51%+ del daño
    >>Ten cuidado ya que esta misión puede ser difícil
    .goto 1426/0,-1280.97,-5390.70
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    >>Mata algunos enemigos de camino
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>vende la basura. Compra algo de comida/agua si es necesario
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .accept 433 >> Acepta la misión El servidor público
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> vende la basura, repara
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 432 >> Acepta la misión ¡Malditos troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Mata a los Troggs en la cueva
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> vende la basura, repara
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 433 >> Entrega la misión El servidor público
step
    .goto 1426/0,-1502.59,-5837.23,40,0
    .goto 1426/0,-1679.89,-5787.98,40,0
    .goto 1426/0,-1694.67,-5646.8,40,0
    .xp 10 >> Mata troggs hasta alcanzar el nivel 10
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>vende basura, compra hasta tener 30 bebidas de nivel 5 a Kazan
    .trainer >> Aprende Cocina de Ghilm. La necesitarás para aceptar 2 misiones adicionales más tarde
step
    .goto 1426/0,-2325.07,-5164.15
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
step
    >>Mata enemigos de camino
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    >>Mata a Sarnagarra. Despójalo para obtener su Garra
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    >>Regresa por el túnel por el que viniste
    .goto 1426/0,-2118.22,-5541.73,50,0
    .goto 1426/0,-2251.19,-5633.67,25,0
    .goto 1426/0,-2447.11,-5479.74
>>Habla con el |cRXP_FRIENDLY_Montaraz Cebadiz|r
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
.target Mountaineer Barleybrew
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 10-12 Loch Modan Mago AoE
#version 1
#group RestedXP Alianza Mago

#defaultfor none Mage
#next 12-18 Costa Oscura Mago AoE
step
    #era/som
    #completewith next
    +Mientras haces misiones en Loch Modan, guarda TODOS los Trozos de carne de jabalí que consigas y NO los vendas. Los necesitarás para más adelante
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Habla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Entra en el búnker desde atrás
.target Captain Rugelfuss
>>Habla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .accept 267 >> Acepta la misión La amenaza trogg
step << Gnome
    .goto 1432/0,-2818.49,-5742.10,45 >> Corre hacia la Entrada de Troggs
step << Gnome
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    >>Mata a los Trogg Rompecantos. Despójalos para obtener sus Dientes
    >>Ten cuidado ya que esta misión puede ser difícil. Corre si accidentalmente atraes 2 enemigos a la vez
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Habla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Entra en el búnker desde atrás
.target Captain Rugelfuss
>>Habla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .turnin 267 >> Entrega la misión La amenaza trogg
step << Human
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vende y repara
step << Human
    .goto 1432/0,-2676.82,-4825.93
>>Habla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
.target Mountaineer Stormpike
    .accept 307 >> Acepta la misión Zarpas asquerosas
step << Human
    #sticky
    #completewith next
    >>Mata a las Arañas en la zona para obtener Icor de Araña
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Mata a los Osos en la zona para obtener Carne de Oso
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Mata a los Jabalís en la zona para obtener Intestinos de Jabalí
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto 1432/0,-2961.92,-5366.82,130 >>Mata enemigos por el camino para la misión de cocina de más adelante
step
    >>Corre a Thelsamar. NO establezcas tu piedra de hogar << Gnome
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Habla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
step << Human
    #sticky
    .abandon 1338 >> Abandona la misión Un pedido de Pico Tormenta. Esto es para desbloquear la misión La tarea del montaraz Pico Tormenta
step
    .goto 1432/0,-2953.65,-5381.54
    .vendor >>Compra de 1 a 2 bolsas de 6 casillas para llenar todos tus huecos de bolsa
step
    .goto 1432/0,-2972.96,-5377.86
    .vendor >> Compra comida/agua (intenta tener 40 bebidas de nivel 5, 20 comidas de nivel 5)
step
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Encuentra a Kadrell. Patrulla por el camino de Thelsamar
.target Mountaineer Kadrell
>>Habla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
step
    #sticky
    #completewith Thelsamar1
    >>Mata a las Arañas en la zona para la misión Morcillas de Thelsamar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Mata a los Osos en la zona para la misión Morcillas de Thelsamar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Mata a los Jabalíes en la zona para la misión Morcillas de Thelsamar
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vende y repara
step << Gnome
    .goto 1432/0,-2676.82,-4825.93
>>Habla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
.target Mountaineer Stormpike
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
step << Gnome
    #label Thelsamar1
    .goto 1432/0,-2923.58,-4803.910,130 >>Mata algunos enemigos de camino para conseguir Intestinos de jabalí, Carne de Oso e Icor de araña
step << Human
    #label Thelsamar1
    .goto 1432/0,-3077.77,-4984.19,130 >>Mata algunos enemigos de camino para conseguir Intestinos de jabalí, Carne de Oso e Icor de araña
step
    #sticky
    #completewith Gear
    >> Mata a las Ratatúneles. Despójalas para obtener sus Orejas
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto 1432/0,-2972.96,-4822.30,45 >>Ve a la entrada de la cueva mientras matas ratas
step
    #label Gear
    .goto 1432/0,-2972.96,-4853.58,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2956.41,-4945.56,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2972.96,-4853.58,12,0
    >>Recoge los cofres que encuentres en la cueva. Ten cuidado porque esto es difícil a nivel 11
    >>Ten cuidado ya que los Geománticos lanzan Guarda de llama (Inmunidad al Fuego) después de unos segundos
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto 1432/0,-3081.36,-4902.88
    >> Mata a las Ratatúneles. Despójalas para obtener sus Orejas
    >> Intenta matar a las Alimañas en lugar de a los Kóbolds/Geománticos
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>Mata a las Arañas en la zona para la misión Morcillas de Thelsamar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Mata a los Osos en la zona para la misión Morcillas de Thelsamar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Mata a los Jabalíes en la zona para la misión Morcillas de Thelsamar
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto 1432/0,-2636.44,-4816.79,60 >>Corre de vuelta al búnker, matando enemigos por el camino
step
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>vende y repara
step
    .goto 1432/0,-2675.06,-4824.14
>>Habla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta << Human
.target Mountaineer Stormpike
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta << Human
step
    #sticky
    #label Meat9
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34
    >>Mata a los Osos. Despójalos para obtener Carne
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19
    >>Mata a las Arañas. Despójalos para obtener Icor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51
    >>Mata a los Jabalís. Despójalos para obtener Intestinos
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Encuentra a Kadrell. Patrulla por el camino de Thelsamar
.target Mountaineer Kadrell
>>Habla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .turnin 416 >> Entrega la misión Mata ratas
step
    #requires Ichor9
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Habla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step
    #era/som
    .goto 1432/0,-2952.55,-5381.91
    .vendor >> Compra bolsas de 6 casillas hasta llenar tus huecos para bolsas. También compra 1 Sílex y yesca y 2 Madera Simple
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Mata enemigos hasta el nivel 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto 1432/0,-3781.70,-5702.36
    .vendor >> Comprueba si Aldren tiene un Cinturón de hombre sabio. Cómpralo si te lo puedes permitir. Guárdalo para más adelante
step << Gnome
    #requires RatCatching
    .goto 1432/0,-3812.59,-5694.63
.target Prospector Ironband
>>Habla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .accept 298 >>Acepta la misión Un informe sobre el avance de la excavación
step << Gnome
    #softcore
    .goto 1432/0,-3872.73,-5646.07
    .deathskip >> Muere y resucita de vuelta en Thelsamar
step << Gnome
    #hardcore
    >> Corre de vuelta a Thelsamar. Entra en el edificio
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Habla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >>Acepta la misión Estudiantes de honor
>>Habla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 298 >>Entrega la misión Un informe sobre el avance de la excavación
.target Jern Hornhelm
    .accept 301 >>Acepta la misión Informe a Forjaz
step << Gnome
    #softcore
    >> Entra en el edificio
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Habla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >>Acepta la misión Estudiantes de honor
>>Habla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 298 >>Entrega la misión Un informe sobre el avance de la excavación
.target Jern Hornhelm
    .accept 301 >>Acepta la misión Informe a Forjaz
step
    #requires RatCatching
    .goto 1432/0,-2929.93,-5424.95
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
>>Habla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entrega la misión Estudiantes de honor << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Acepta la misión Vuela a Forjaz << Gnome
    .fly Ironforge >> Vuela a Forjaz
step << Human
    .goto 1455/0,-928.25,-4614.46
    .trainer >> Aprende tus hechizos de clase
step << skip --logout skip << Human
    #completewith next
    +Dirígete hacia la escalera detrás de los instructores de paladines, al fondo de la sala. Sube aproximadamente hasta la mitad, luego colócate al borde de la escalera hasta que parezca que estés flotando. Desconéctate, luego vuelve a entrar
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> HAZ CLIC AQUÍ para ver la referencia
    >>Realiza Logout Skip y aparecerás en la entrada de Forjaz
step << Human
    .goto 1455/0,-810.36,-5039.71,120 >> Sal de Forjaz
step << Gnome
    .goto 1455/0,-1303.79,-4631.18
>>Habla con el |cRXP_FRIENDLY_Prospector Pico Tormenta|r
    .turnin 301 >>Entrega la misión Informe a Forjaz
.target Prospector Stormpike
    .accept 302 >>Acepta la misión Pólvora para Vetaferro
step << Gnome
    >>Vuelve hacia La Gran Fundición, luego gira a la derecha y entra en el edificio
    .goto 1455/0,-1105.66,-4722.04,30,0
    .goto 1455/0,-1120.92,-4708.11
>>Habla con |cRXP_FRIENDLY_Golnir Dedorroca|r
    .turnin 6391 >>Entrega la misión Vuela a Forjaz
.target Golnir Bouldertoe
    .accept 6388 >>Acepta la misión Gryth Thurden
step << Gnome
    .goto 1455/0,-1026.28,-4872.56
.target Senator Barin Redstone
>>Habla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .turnin 291 >>Entrega la misión Los informes
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
>>Habla con |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Entrega la misión Gryth Thurden
.target Gryth Thurden
    .accept 6392 >>Acepta la misión Regresa con Brock
    .fly Thelsamar >> Vuela a Thelsamar
step << Gnome
    >>Entra en el edificio
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Habla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >>Entrega la misión Regresa con Brock
.target Jern Hornhelm
>>Habla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 302 >>Entrega la misión Pólvora para Vetaferro
step << Gnome
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step << Gnome
    .goto 1426/0,-537.29,-5587.04
    .trainer >> Aprende tus hechizos de clase
step
    #hardcore
    #completewith next
    .goto 1426/0,-1124.84,-5283.99,150 >> Ve hacia el punto para hacer el atajo (skip)
step
    #hardcore
    .goto 1426/0,-1128.29,-5282.35,40,0
    .goto 1426/0,-1172.62,-5325.03,40,0
    .goto 1426/0,-1207.09,-5325.03,40,0
    .goto 1426/0,-1212.02,-5265.93,40,0
    .goto 1426/0,-1192.32,-5219.97,40,0
    .goto 1426/0,-1103.67,-5174.0,40,0
    .goto 1426/0,-1167.69,-5144.45,40,0
    .goto 1426/0,-1236.64,-5147.73,40,0
    .goto 1426/0,-1433.64,-4586.28,40,0
    .goto 1426/0,-1438.57,-4287.50,40,0
    .goto 1426/0,-1428.72,-4231.68,40,0
    .goto 1426/0,-1473.04,-4205.42,40,0
    .goto 1426/0,-1492.74,-4156.17,40,0
    .goto 1437/0,-1241.48,-4000.12,50,0
    .goto 1437/0,-1121.55,-4013.90,40,0
    .goto 1437/0,-1084.33,-3947.75,40,0
    .goto 1437/0,-1014.03,-3911.92,40,0
    .goto 1437/0,-889.97,-3809.94,40,0
    >>Abre este enlace y síguelo en otra pantalla.
    >>Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales
    >>Evita a los Cocodrilos al cruzar el mar
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> HAGA CLIC AQUÍ para ver la referencia
    .goto 1437/0,-889.97,-3809.94,80 >> Viaja al Puerto de Menethil
step
    #softcore
    .goto 1426/0,309.81,-5108.33,50 >> Corre hacia aquí
step
    #softcore
    .goto 1426/0,280.26,-4963.87,15 >>Corre montaña arriba hacia el norte
step
    #softcore
    .goto 1426/0,206.38,-4832.53,15 >>Síguela hasta aquí
step
    #softcore
    .goto 1426/0,176.83,-4770.15,15,0
    .goto 1426/0,176.83,-4704.48,15,0
    .goto 1437/0,-869.29,-3344.13,60,0
    .deathskip >>Sigue corriendo recto hacia el norte, cae y muere, luego resucita
step
    #softcore
    #completewith next
    .goto 1437/0,-914.78,-3435.09,60 >> Nada hacia la orilla
step
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    .vendor >> Si tienes 8 platas, revisa con Neal Allen si tiene Tubo de bronce y cómpralo si está allí
step
    .money <0.04
    .goto 1437/0,-724.55,-3699.69
    .vendor >> Comprueba si Dewin tiene pociones de curación y compra hasta que te quede 1 de plata
step
    .goto 1437/0,-782.45,-3793.40
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Espera aquí al barco. Haz una Hoguera de tu libro de hechizos y comienza a cocinar los trozos de carne de jabalí que guardaste anteriormente. Necesitas al menos 10 puntos de habilidad ahora, y 50 más tarde (así que cocina todo)
    .goto 1437/0,-583.95,-3727.25
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>Sube al barco cuando llegue. Tómalo a Costa Oscura. Si has terminado de cocinar comida, comienza a conjurar tanta agua de nivel 5 como sea posible
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>Sube al barco cuando llegue. Tómalo a Costa Oscura. Empieza a conjurar tanta agua de nivel 5 como sea posible
]])

