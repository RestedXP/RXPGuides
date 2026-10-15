if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Bosque de Elwynn Mago AoE
#version 1
#group RestedXP Alianza Mago
#defaultfor Human
#next 10-12 Loch Modan Mago AoE
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Has seleccionado una guía destinada a Humanos. Deberías elegir la misma zona inicial en la que comienzas << Gnome
    +Ten en cuenta que has seleccionado la guía de AoE. Suele ser mucho más difícil que el de mago a un solo objetivo, pero es MUCHO más rápido
step
    >>Elimina tu Piedra de hogar
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 783 >> Acepta la misión Una amenaza interna
step
    .goto Elwynn Forest,48.923,41.606
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 783 >> Entrega la misión Una amenaza interna
.target Marshal McBride
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Mata lobos hasta tener 50 cobres en objetos para vender. Véndelos y compra 10x aguas al Hermano Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Mata enemigos hasta el nivel 2
step
    .goto Elwynn Forest,48.9,40.2
>>Habla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
.target Eagan Peltskinner
    .accept 33 >> Acepta la misión Lobos en la frontera
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>Mata a los Lobos jóvenes en la zona para obtener carne
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>Mata Alimañas kóbold en la zona
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>Habla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 33 >> Entrega la misión Lobos en la frontera
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vende la basura, luego compra 10x aguas más al Hermano Danil
step
    .goto Elwynn Forest,48.923,41.606
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
.target Marshal McBride
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3104 >> Acepta la misión Una carta glífica
step
    .xp 3 >> Mata enemigos hasta el nivel 3
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>Mata Trabajadores kóbold
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>Mata enemigos hasta alcanzar 1110+/1400xp de camino de vuelta al pueblo
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vende la basura
step
    .goto Elwynn Forest,48.923,41.606
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
.target Marshal McBride
    .accept 21 >> Acepta la misión Refriega en el Eco
step
    >>Sube las escaleras
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>Habla con |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Entrega la misión Una carta glífica
    .trainer >> Aprende tus hechizos de clase
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 18 >> Acepta la misión Hermandad de ladrones
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>Mata a los Matones Defias. Despójalos para obtener Pañuelos
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 18 >> Entrega la misión Hermandad de ladrones
.target Deputy Willem
    .accept 6 >> Acepta la misión La recompensa por Garrick Piesuaves
    .accept 3903 >> Acepta la misión Milly Osworth
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vende la basura, repara
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>Mata a los Obreros en la mina
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Mata enemigos hasta el nivel 5
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Habla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Entrega la misión Milly Osworth
.target Milly Osworth
    .accept 3904 >> Acepta la misión La cosecha de Milly
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target Milly Osworth
>>Habla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Entrega la misión Milly Osworth
step
    #era/som
    >>Despoja los Cubos de uvas en el campo
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Mata a Garrick y despoja su Cabeza
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Mata enemigos de camino de vuelta hasta alcanzar 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Habla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Entrega la misión La cosecha de Milly
.target Milly Osworth
    .accept 3905 >>Acepta la misión Informe de la vendimia
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 6 >> Entrega la misión La recompensa por Garrick Piesuaves
step
    .goto Elwynn Forest,48.923,41.606
>>Habla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 21 >> Entrega la misión Refriega en el Eco
.target Marshal McBride
    .accept 54 >> Acepta la misión Informa en Villadorada
step
     #era/som
     >>Sube por la escalera principal
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>Habla con el |cRXP_FRIENDLY_Hermano Neals|r
    .turnin 3905 >>Entrega la misión Informe de la vendimia
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>Habla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .accept 2158 >> Acepta la misión Descanso y relajación
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >> Muere y resucita en el Ángel de la Resurrección, o corre a Villadorada
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vende la basura, repara
step
    .goto Elwynn Forest,42.105,65.927
>>Habla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
.target Marshal Dughan
    .accept 62 >> Acepta la misión La Mina Abisal
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>A tu izquierda nada más entrar en la Posada
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >> Acepta la misión Las velas de los kóbolds
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>Habla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 2158 >> Entrega la misión Descanso y relajación
    .home >> Establece tu Piedra de hogar en Villadorada
step
    .xp 6 >> Mata enemigos hasta el nivel 6
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Sube las escaleras. Aprende tus hechizos de clase
step
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Habla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
step
    #sticky
    #completewith BoarMeat1
    >>Empieza a matar los jabalíes que veas para conseguir carne de jabalí
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Habla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .accept 85 >> Acepta la misión El collar perdido
    .goto Elwynn Forest,34.660,84.482
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
    .goto Elwynn Forest,43.132,85.722
>>Habla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Entrega la misión El collar perdido
.target Billy Maclure
    .accept 86 >> Acepta la misión Un pastel para Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Habla con |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acepta la misión Jóvenes enamorados
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Vende objetos y compra toda la leche que puedas
step
    #sticky
    #completewith next
    >>Mata a los jabalíes que veas para obtener Carne de jabalí
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>Habla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
.target Tommy Joe Stonefield
    .accept 111 >> Acepta la misión Habla con la abuelita
step
    .goto Elwynn Forest,32.5,85.5
    >>Termina de conseguir la carne de jabalí
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
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
    .goto Elwynn Forest,43.132,85.722
>>Habla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
.target Billy Maclure
    .accept 87 >> Acepta la misión Dientes de Oro
step
    >>Entra en la mina
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Mata a Dientes de Oro para obtener el Collar de Bernice
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Mata enemigos hasta alcanzar 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Habla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 87 >> Entrega la misión Dientes de Oro
step
    >>Grindea algunos enemigos de regreso a Villadorada
    .xp 7+2690 >>Mata enemigos hasta alcanzar 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>Habla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
.target Remy "Two Times"
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vende la basura, repara
step
    .goto Elwynn Forest,42.105,65.927
>>Habla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
.target Marshal Dughan
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vende la basura, repara
step
    .goto Elwynn Forest,43.283,65.721
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
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Compra una bolsa de 6 ranuras de Brog
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Sube las escaleras. Aprende tus hechizos de clase
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Compra Agua de nivel 5 hasta tener 40
step
    >>Mata Múrlocs hacia el este y despójalos para obtener Hoja de alga. mata a los enemigos de la isla si todavía necesitas algunos
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Ve a la mina y sigue el camino del medio
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
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
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Habla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vende la basura, repara
step
    #sticky
    #completewith Bundles
    >>Mantente atento a los fardos de troncos en la base de los árboles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >> Ve hacia el cadáver del guardia
step
    .goto Elwynn Forest,79.8,55.5
    >> Mata a los enemigos alrededor del cadáver. Atrae a los 2 enemigos enfrente de las cabañas, aléjate y haz oveja a uno mientras matas al otro, luego mata al enemigo que has hecho oveja. Despoja el cadáver en el suelo
    >> Ten cuidado ya que esta misión puede ser difícil
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Inicia tu regreso y termina con los fardos
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Habla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
step
    #label Prowlers
    .xp 9 >> Mata enemigos hasta el nivel 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Habla con |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acepta la misión Artículos rojos de lino
step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>Mata a los últimos enemigos para la misión Proteger la frontera
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,73.973,72.179
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
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>Empieza a dar vueltas a la granja, matando Defias y despojándolos para conseguir pañuelos
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>Mata a Princesa. Usa una Poción de Sanación inferior de antes si es necesario. Despójala para obtener la Collera
    >>También puedes saltar de un lado a otro de las vallas del borde de la granja para matar a Princesa y a sus guardias
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Muere y resucita en el Ángel de la Resurrección si tienes poca vida, de lo contrario solo corre de regreso y entrega la misión
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Habla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>Mata enemigos de camino a Montañas Crestagrana
step
    #softcore
    #sticky
    #completewith next
    +Muere a manos de los enemigos aquí
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>Reaparece en el Ángel de la Resurrección
    .goto Redridge Mountains,20.8,56.6,100 >>Reaparece en el Ángel de la Resurrección
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
step
    #hardcore
    >>Corre hacia el maestro de vuelo. Ten extremo cuidado para no atraer la atención de los enemigos ni morir en el camino. Procura no salirte del camino y mantente alerta
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
step
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step
    .goto Elwynn Forest,43.283,65.721
    >>No esperes a su evento de rol
.target William Pestle
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 112 >> Entrega la misión La recolección de algas
step
    .goto Elwynn Forest,42.2,65.8
>>Habla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
.target Marshal Dughan
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Habla con |cRXP_FRIENDLY_Verner Osbien|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acepta la misión La tarea de Elmore
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vende la basura, repara
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Habla con |cRXP_FRIENDLY_William Mortero|r
    .accept 114 >> Acepta la misión La fuga
step
    >>Sal de la posada y ve hacia el sur
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Habla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Habla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .turnin 88 >> Entrega la misión ¡Princesa debe morir!
step
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Habla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Habla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Habla con |cRXP_FRIENDLY_Verna Cejade|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Habla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Muere y resucita en el Ángel de la Resurrección, o corre a Colina del Centinela
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Habla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
step
    .goto Westfall,57.002,47.169
    .vendor >>vende la basura
.target Quartermaster Lewis
>>Habla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .accept 6181 >> Acepta la misión Mensajero a toda prisa
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >> Mata enemigos hasta alcanzar 3750+/8800xp
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
>>Habla con |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Entrega la misión Mensajero a toda prisa
.target Thor
    .accept 6281 >> Acepta la misión Prosigue hasta Ventormenta
    .fly Stormwind >> Vuela a Ventormenta
step
    .goto StormwindClassic,56.2,64.6
    >>Elige los Cohetes como recompensa. Tienen un daño muy bueno y se pueden usar para "split pulling"
.target Morgan Pestle
>>Habla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61 >> Entrega la misión Un envío para Ventormenta
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >> Aprende Espadas de 1 mano
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Habla con |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    >>Vende y Repara
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Habla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Habla con |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Entra en el Tranvía Subterráneo
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
    .goto Ironforge,77.0,51.0,30 >>Entra en Forjaz
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >> Aprende tus hechizos de clase
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Sal de Forjaz
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >> Sube esta parte de la montaña
step
    >>Mata a Vagash. Despójalo para obtener su Colmillo
    >>Atráelo hacia el guardia al sur del rancho. Asegúrate de hacerle 51%+ del daño
    >>Ten cuidado ya que esta misión puede ser difícil
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    >>Mata algunos enemigos de camino
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendedor, compra comida+agua
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .accept 433 >> Acepta la misión El servidor público
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 432 >> Acepta la misión ¡Malditos troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Mata a los Troggs en la cueva
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Mata enemigos hasta alcanzar 6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vende la basura, repara
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 433 >> Entrega la misión El servidor público
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>vende basura, compra x30 bebidas de nivel 5 a Kazan
    .trainer >> Aprende Cocina de Ghilm. La necesitarás para aceptar 2 misiones adicionales más tarde
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    >>Mata a Sarnagarra. Despójalo para obtener su Garra
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    .goto Dun Morogh,84.4,31.1,25 >>Atraviesa el túnel hacia Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 Dun Morogh Mago AoE
#version 1
#group RestedXP Alianza Mago
#defaultfor Dwarf/Gnome
#next 10-12 Loch Modan Mago AoE
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas << Human
    +Ten en cuenta que has seleccionado la guía de AoE. Suele ser mucho más difícil que el de mago a un solo objetivo, pero es MUCHO más rápido
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas << Human
    +Ten en cuenta que has seleccionado la guía de AoE. Subir en AoE suele ser mucho más difícil que jugar con un mago a un solo objetivo, pero con los recientes cambios del 100% de experiencia en misiones, también es más lento
step
    >>Elimina tu Piedra de hogar
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>Habla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .accept 179 >> Acepta la misión Los enanos modistos
step
    >>Mata lobos. Despójalos para conseguir carne
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Mata enemigos hasta el nivel 2
step
    .goto Dun Morogh,30.0,71.5
    >>vende la basura. Compra 15 Aguas. Mata lobos adicionales si no tienes suficiente dinero
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>Habla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179 >> Entrega la misión Los enanos modistos
.target Sten Stoutarm
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3114 >> Acepta la misión Memorándum glífico
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Habla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .accept 170 >> Acepta la misión Una nueva amenaza
step
    #sticky
    #completewith Rockjaw
    >>Mata a los Troggs Comepiedras normales que encuentres
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Mata a los Troggs Comepiedras fornidos
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>Habla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
.target Talin Keeneye
    .accept 183 >> Acepta la misión Cazador de jabalíes
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Mata a los Jabalíes en la zona
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Habla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 183 >> Entrega la misión Cazador de jabalíes
step
    .xp 3+860 >> Mata enemigos hasta alcanzar 860+/1400xp
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
.target Grelin Whitebeard
    .accept 182 >> Acepta la misión La cueva de los trols
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    >> Una vez aceptada, un temporizador de 5 minutos comenzará. Relájate y sigue la guía
step
    .goto Dun Morogh,28.7,77.5
    >>Sube aquí arriba y mata a los Troggs si aún no los has terminado
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Si fuiste demasiado lento y fallaste la misión cronometrada, ve y acéptala de nuevo
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Habla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>Habla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
.target Durnan Furcutter
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> vende la basura
step
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Habla con |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Entrega la misión Memorándum glífico
    .trainer >> Aprende tus hechizos de clase
step
    >>Corre de vuelta fuera del búnker
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Habla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>Compra 10 aguas al vendedor
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>Mata a las Crías de trol Peloescarcha
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
step
    .goto Dun Morogh,25.076,75.713
>>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 182 >> Entrega la misión La cueva de los trols
.target Grelin Whitebeard
    .accept 218 >> Acepta la misión El diario robado
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Entra en la cueva Trol. Mata a Grik'nir y despójalo del Diario de Grelin
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Mata algunos enemigos de camino de vuelta a este punto
    .goto Dun Morogh,25.1,75.8
>>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
.target Grelin Whitebeard
    .accept 282 >> Acepta la misión Las observaciones de Senir
step
    >> Mata algunas criaturas de camino hasta este punto
    .goto Dun Morogh,33.484,71.841
>>Habla con el |cRXP_FRIENDLY_Montaraz Thalos|r
    .turnin 282 >> Entrega la misión Las observaciones de Senir
.target Mountaineer Thalos
    .accept 420 >> Acepta la misión Las observaciones de Senir
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Habla con |cRXP_FRIENDLY_Manit Piñomuelle|r
    .accept 2160 >> Acepta la misión Suministros para Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>Atraviesa el túnel
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
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Mata enemigos hasta alcanzar 2415/+2800xp
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >> Muere y resucita en el Ángel de la Resurrección, o corre hacia Kharanos. Asegúrate de que tu subzona NO sea Desfiladero de Crestanevada
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Habla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>vende la basura
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Habla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Mata enemigos hasta el nivel 6
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Habla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .turnin 2160 >> Entrega la misión Suministros para Tannok
step
    >>Piso superior
    .goto Dun Morogh,47.5,52.1
    .trainer >> Aprende tus hechizos de clase
step
    .goto Dun Morogh,47.4,52.5
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .vendor >> Compra tanta bebida de nivel 5 como puedas permitirte
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Habla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
step
    .goto Dun Morogh,49.426,48.410
    >>NO mates a los osos de camino
.target Pilot Bellowfiz
>>Habla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Habla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .accept 313 >> Acepta la misión El Cubil Pardo
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Habla con |cRXP_FRIENDLY_Beldin Brasacerada|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Habla con |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Acepta la misión Municiones para Estruendo
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>Obtén los objetos para Los suministros del reactor a vapor
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>Habla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
.target Pilot Bellowfiz
    .accept 318 >> Acepta la misión La tajada
step
    >>Vuelve a la Posada
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Compra tanta bebida de nivel 5 como puedas permitirte
    >>Puedes comprar un Cuchillo para desollar fuera de la posada si lo deseas, es mejor que un bastón hasta que obtengas un arma con estadísticas
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Entra en la cueva. Mata a los Wendigos. Despójalos para obtener sus Crines
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Despoja la caja
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Habla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .vendor >> Vende y repara
step
    .xp 7 >> Mata enemigos hasta el nivel 7
step
    >>Mata algunos enemigos de camino
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Habla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
step
    .goto Dun Morogh,30.5,46.0
    .vendor >> Vendedor. Compra hasta 20 bebidas de nivel 5
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>Habla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 318 >> Entrega la misión La tajada
.target Rejold Barleybrew
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Habla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .accept 310 >> Acepta la misión Rivales acérrimos
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >> Mata Osos, Jabalíes y Leopardos. Ve de norte->oeste->sur
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Termina de recolectar las Costillas de jabalí
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
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
    .goto Dun Morogh,47.4,52.5
    >> Compra una Malta rapsódica y una Cerveza del Trueno a Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>Baja las escaleras, luego habla con Jarven, y dale la Cerveza del Trueno
    >>Espera a que al pasar el ratón sobre el barril se quede "desprotegido", luego entrégala
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Habla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
     >>Vende la receta cuando vayas a vender de nuevo
step
    .xp 8 >> Mata enemigos hasta el nivel 8
step
    .goto Dun Morogh,47.5,52.1
    .trainer >> Aprende tus hechizos de clase
    >>Asegúrate de aprender Polimorfia
step
    .goto Dun Morogh,47.4,52.5
    .vendor >> Compra hasta 30 bebidas de nivel 5 del tabernero
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Habla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .accept 287 >> Acepta la misión Poblado Peloescarcha
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Habla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Habla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz
step
    #era/som
    >>Entra en el edificio
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Habla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .accept 412 >> Acepta la misión Operación Recombobulación
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >> Corre por la rampa hacia el Cardaluz
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Despeja los enemigos en esta zona. Ten cuidado si necesitas limpiar el campamento central. Puedes atraer los enemigos en las cabañas y cortarles la línea de visión (LoS) detrás de las cabañas si necesitas 2 enemigos más. Si tienes mala suerte, corre hacia la otra zona
    >>Despoja las cajas en el suelo
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Lanza Polimorfia al Viejo Barbahielo, luego despoja las carnes
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Habla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> Compra hasta 20 bebidas de nivel 5 más
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>Habla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 315 >> Entrega la misión La cerveza perfecta
.target Rejold Barleybrew
    .accept 413 >> Acepta la misión Cerveza negra Brillante
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Habla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Mata a los Gnomos parias. Despójalos para obtener Engranajes y Piñones
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Mata enemigos hasta el nivel 9
step
    .goto Dun Morogh,24.5,50.8,35 >>Entra en la cueva
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>Mata a los Rebanacabezas dentro de la cueva
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Baja cuidadosamente hacia este rincón en la cueva
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Sube de regreso por la cueva
step
    #softcore
    >>Salta abajo, mueres después
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >> Usa tu Piedra de hogar si está disponible, si no, regresa matando enemigos hasta Kharanos
step
    .goto Dun Morogh,46.726,53.826
>>Habla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
.target Senir Whitebeard
    .accept 291 >> Acepta la misión Los informes
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Habla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .turnin 412 >> Entrega la misión Operación Recombobulación
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Sube esta parte de la montaña
step
    >>Mata a Vagash. Despójalo para obtener su Colmillo
    >>Atráelo hacia el guardia al sur del rancho. Asegúrate de hacerle 51%+ del daño
    >>Ten cuidado ya que esta misión puede ser difícil
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Habla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    >>Mata algunos enemigos de camino
    .goto Dun Morogh,68.6,54.7
    .vendor >>vende la basura. Compra algo de comida/agua si es necesario
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .accept 433 >> Acepta la misión El servidor público
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vende la basura, repara
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 432 >> Acepta la misión ¡Malditos troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Mata a los Troggs en la cueva
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vende la basura, repara
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Habla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 433 >> Entrega la misión El servidor público
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >> Mata troggs hasta alcanzar el nivel 10
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>vende basura, compra hasta tener 30 bebidas de nivel 5 a Kazan
    .trainer >> Aprende Cocina de Ghilm. La necesitarás para aceptar 2 misiones adicionales más tarde
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
step
    >>Mata enemigos de camino
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    >>Mata a Sarnagarra. Despójalo para obtener su Garra
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Habla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    >>Regresa por el túnel por el que viniste
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Habla con el |cRXP_FRIENDLY_Montaraz Cebadiz|r
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
.target Mountaineer Barleybrew
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Loch Modan Mago AoE
#version 1
#group RestedXP Alianza Mago
#defaultfor Human Mage/Gnome Mage
#next 12-18 Costa Oscura Mago AoE
step
    #era/som
    #completewith next
    +Mientras haces misiones en Loch Modan, guarda TODOS los Trozos de carne de jabalí que consigas y NO los vendas. Los necesitarás para más adelante
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Habla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Entra en el búnker desde atrás
.target Captain Rugelfuss
>>Habla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .accept 267 >> Acepta la misión La amenaza trogg
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >> Corre hacia la Entrada de Troggs
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Mata a los Trogg Rompecantos. Despójalos para obtener sus Dientes
    >>Ten cuidado ya que esta misión puede ser difícil. Corre si accidentalmente atraes 2 enemigos a la vez
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Habla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Entra en el búnker desde atrás
.target Captain Rugelfuss
>>Habla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .turnin 267 >> Entrega la misión La amenaza trogg
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>Vende y repara
step << Human
    .goto Loch Modan,24.764,18.397
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
    .goto Loch Modan,35.1,47.8,130 >>Mata enemigos por el camino para la misión de cocina de más adelante
step
    >>Corre a Thelsamar. NO establezcas tu piedra de hogar << Gnome
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Habla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
step << Human
    #sticky
    .abandon 1338 >> Abandona la misión Un pedido de Pico Tormenta. Esto es para desbloquear la misión La tarea del montaraz Pico Tormenta
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Compra de 1 a 2 bolsas de 6 casillas para llenar todos tus huecos de bolsa
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Compra comida/agua (intenta tener 40 bebidas de nivel 5, 20 comidas de nivel 5)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
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
    .goto Loch Modan,24.1,18.2
    .vendor >>Vende y repara
step << Gnome
    .goto Loch Modan,24.764,18.397
>>Habla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
.target Mountaineer Stormpike
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>Mata algunos enemigos de camino para conseguir Intestinos de jabalí, Carne de Oso e Icor de araña
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Mata algunos enemigos de camino para conseguir Intestinos de jabalí, Carne de Oso e Icor de araña
step
    #sticky
    #completewith Gear
    >> Mata a las Ratatúneles. Despójalas para obtener sus Orejas
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>Ve a la entrada de la cueva mientras matas ratas
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>Recoge los cofres que encuentres en la cueva. Ten cuidado porque esto es difícil a nivel 11
    >>Ten cuidado ya que los Geománticos lanzan Guarda de llama (Inmunidad al Fuego) después de unos segundos
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
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
    .goto Loch Modan,23.3,17.9,60 >>Corre de vuelta al búnker, matando enemigos por el camino
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vende y repara
step
    .goto Loch Modan,24.7,18.3
>>Habla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta << Human
.target Mountaineer Stormpike
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>Mata a los Osos. Despójalos para obtener Carne
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>Mata a las Arañas. Despójalos para obtener Icor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>Mata a los Jabalís. Despójalos para obtener Intestinos
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Encuentra a Kadrell. Patrulla por el camino de Thelsamar
.target Mountaineer Kadrell
>>Habla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .turnin 416 >> Entrega la misión Mata ratas
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Habla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >> Compra bolsas de 6 casillas hasta llenar tus huecos para bolsas. También compra 1 Sílex y yesca y 2 Madera Simple
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Mata enemigos hasta el nivel 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >> Comprueba si Aldren tiene un Cinturón de hombre sabio. Cómpralo si te lo puedes permitir. Guárdalo para más adelante
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>Habla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .accept 298 >>Acepta la misión Un informe sobre el avance de la excavación
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >> Muere y resucita de vuelta en Thelsamar
step << Gnome
    #hardcore
    >> Corre de vuelta a Thelsamar. Entra en el edificio
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
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
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Habla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >>Acepta la misión Estudiantes de honor
>>Habla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 298 >>Entrega la misión Un informe sobre el avance de la excavación
.target Jern Hornhelm
    .accept 301 >>Acepta la misión Informe a Forjaz
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
>>Habla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entrega la misión Estudiantes de honor << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Acepta la misión Vuela a Forjaz << Gnome
    .fly Ironforge >> Vuela a Forjaz
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >> Aprende tus hechizos de clase
step << skip --logout skip << Human
    #completewith next
    +Dirígete hacia la escalera detrás de los instructores de paladines, al fondo de la sala. Sube aproximadamente hasta la mitad, luego colócate al borde de la escalera hasta que parezca que estés flotando. Desconéctate, luego vuelve a entrar
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> HAZ CLIC AQUÍ para ver la referencia
    >>Realiza Logout Skip y aparecerás en la entrada de Forjaz
step << Human
    .goto Ironforge,12.24,89.17,120 >> Sal de Forjaz
step << Gnome
    .goto Ironforge,74.65,11.74
>>Habla con el |cRXP_FRIENDLY_Prospector Pico Tormenta|r
    .turnin 301 >>Entrega la misión Informe a Forjaz
.target Prospector Stormpike
    .accept 302 >>Acepta la misión Pólvora para Vetaferro
step << Gnome
    >>Vuelve hacia La Gran Fundición, luego gira a la derecha y entra en el edificio
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>Habla con |cRXP_FRIENDLY_Golnir Dedorroca|r
    .turnin 6391 >>Entrega la misión Vuela a Forjaz
.target Golnir Bouldertoe
    .accept 6388 >>Acepta la misión Gryth Thurden
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>Habla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .turnin 291 >>Entrega la misión Los informes
step << Gnome
    .goto Ironforge,55.50,47.74
>>Habla con |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Entrega la misión Gryth Thurden
.target Gryth Thurden
    .accept 6392 >>Acepta la misión Regresa con Brock
    .fly Thelsamar >> Vuela a Thelsamar
step << Gnome
    >>Entra en el edificio
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Habla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >>Entrega la misión Regresa con Brock
.target Jern Hornhelm
>>Habla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 302 >>Entrega la misión Pólvora para Vetaferro
step << Gnome
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >> Aprende tus hechizos de clase
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Ve hacia el punto para hacer el atajo (skip)
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Abre este enlace y síguelo en otra pantalla.
    >>Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales
    >>Evita a los Cocodrilos al cruzar el mar
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> HAGA CLIC AQUÍ para ver la referencia
    .goto Wetlands,12.1,60.3,80 >> Viaja al Puerto de Menethil
step
    #softcore
    .goto Dun Morogh,30.3,37.5,50 >> Corre hacia aquí
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Corre montaña arriba hacia el norte
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Síguela hasta aquí
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Sigue corriendo recto hacia el norte, cae y muere, luego resucita
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >> Nada hacia la orilla
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >> Si tienes 8 platas, revisa con Neal Allen si tiene Tubo de bronce y cómpralo si está allí
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >> Comprueba si Dewin tiene pociones de curación y compra hasta que te quede 1 de plata
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Espera aquí al barco. Haz una Hoguera de tu libro de hechizos y comienza a cocinar los trozos de carne de jabalí que guardaste anteriormente. Necesitas al menos 10 puntos de habilidad ahora, y 50 más tarde (así que cocina todo)
    .goto Wetlands,4.7,57.3
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

