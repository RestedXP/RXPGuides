if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 1-6 Claros de Tirisfal
#version 7
#subgroup RXP TBC Survival Guide 1-30
#defaultfor Scourge
#next 6-10 Bosque Canción Eterna


step << !Undead
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía destinada para No-muertos. Se recomienda elegir la misma zona inicial en la que empiezas|r
step
    #completewith Zombies
	.destroy 6948 >> Destruye la |T134414:0|t[Piedra de hogar] en tu inventario, ya que ya no es necesaria
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Sube de la cripta hacia |cRXP_FRIENDLY_Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mordo|r
    .accept 363 >> Acepta la misión Desvelo brutal
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 60 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Mage
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 50 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Priest
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 10 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Entra en el edificio
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Venya|r y |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Acepta la misión Descubrir el misterio << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >> Entrega la misión Desvelo brutal
    .accept 364 >> Acepta la misión Los autómatas
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vende la Basura
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Aprende |T135817:0|t[Inmolar]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Entrega la misión Desvelo brutal
    .accept 364 >> Acepta la misión Los autómatas
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>Mata |cRXP_ENEMY_Esqueletos armadóseos|r. Despójalos para obtener sus |cRXP_LOOT_Calaveras armadóseas|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Mata |cRXP_ENEMY_Zombis descerebrados|r y |cRXP_ENEMY_Zombis espantosos|r. Despójalos hasta que tengas 25 monedas de cobre en objetos para vender (incluyendo tu armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>Entrega la misión Descubrir el misterio
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
    .goto Tirisfal Glades,31.72,63.98,0
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
    >>Mata |cRXP_ENEMY_Zombis descerebrados|r y |cRXP_ENEMY_Zombis espantosos|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Mata |cRXP_ENEMY_Zombis descerebrados|r y |cRXP_ENEMY_Zombis espantosos|r. Despójalos hasta que tengas 33 monedas de cobre en objetos para vender (incluyendo tu armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Vende la Basura
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vende la Basura
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r y |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r y |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r y |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >> Entrega la misión Los autómatas
    .accept 3095 >> Acepta la misión Un pergamino simple << Warrior
    .accept 3096 >> Acepta la misión Un pergamino codificado << Rogue
    .accept 3097 >> Acepta la misión Un pergamino sacralizado << Priest
    .accept 3098 >> Acepta la misión Un pergamino glífico << Mage
    .accept 3099 >> Acepta la misión Un pergamino corrupto << Warlock
    .accept 3901 >> Acepta la misión Sacudir esqueletos
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >> Acepta la misión Los Malditos
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Entrega la misión Un pergamino corrupto << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .target +Isabella << Mage
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,29.21,66.68,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    >>Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Carroñeros pulgosos|r. Despójalos para obtener sus |cRXP_LOOT_Garras de carroñero|r
    >>Mata |cRXP_ENEMY_Murciumbríos|r y |cRXP_ENEMY_Murciumbríos sarnosos|r. Despójalos para obtener sus |cRXP_LOOT_Alas de Murciumbrío|r
    >>|cRXP_WARN_Intenta evitar |cRXP_ENEMY_Murciumbríos sarnosos|r si puedes debido a que son mucho más difíciles de matar que los |cRXP_ENEMY_Murciumbríos|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>Mata |cRXP_ENEMY_Esqueletos armadóseos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+940 >>Mata enemigos hasta alcanzar 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Mata enemigos hasta alcanzar 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 1 moneda de plata|r << Mage/Warlock/Priest
    .vendor >> Vende la Basura
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r y |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Entrega la misión Sacudir esqueletos
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Entrega la misión Los Malditos
    .accept 6395 >> Acepta la misión El último deseo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Aprende tus hechizos de clase
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior Rango 2]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Aprende |T136118:0|t[Corrupción]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia de la Muerte Saltain|r y el |cRXP_FRIENDLY_Ejecutor Arren|r
    .accept 3902 >> Acepta la misión Hurgar en Camposanto
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >> Acepta la misión Hoya Nocturácnidas
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .target David Trias
step
    #loop
	.goto Tirisfal Glades,32.37,64.37,0
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
    >>Abre las |cRXP_PICK_Cajas de equipamiento|r en el suelo. Despójalas para obtener las |cRXP_LOOT_Mercancías extraviadas|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #loop
	.goto Tirisfal Glades,29.94,57.33,0
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
    >>Mata |cRXP_ENEMY_Nocturácnidas jóvenes|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto Tirisfal Glades,28.25,58.27,0
    .goto Tirisfal Glades,27.86,58.98,40,0
	.goto Tirisfal Glades,28.25,58.27,40,0
	.goto Tirisfal Glades,28.42,59.07,40,0
	.goto Tirisfal Glades,27.86,60.57,40,0
	.goto Tirisfal Glades,27.17,59.18,40,0
	.goto Tirisfal Glades,27.30,57.97,40,0
	.goto Tirisfal Glades,26.94,56.42,40,0
	.goto Tirisfal Glades,27.51,56.00,40,0
    >>Mata |cRXP_ENEMY_Nocturácnidas jóvenes|r cerca de la entrada de la cueva
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Entra en la cueva
step
    #loop
    .goto Tirisfal Glades,26.31,59.60,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    >>Mata |cRXP_ENEMY_Arañas nocturácnidas|r dentro de la cueva
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #completewith Scavenging
    .goto Tirisfal Glades,31.61,65.62,80 >>Regresa a Camposanto
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Entrega la misión Hurgar en Camposanto
    .target Deathguard Saltain
step
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Entrega la misión Hoya Nocturácnidas
    .accept 381 >> Acepta la misión La Cruzada Escarlata
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Vende la Basura
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
    .goto Tirisfal Glades,36.13,68.74,0
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
    >>Mata |cRXP_ENEMY_Iniciados Escarlata|r y |cRXP_ENEMY_Conversos Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Bandas Escarlata|r
    >>|cRXP_WARN_No mates a |cRXP_ENEMY_Meven Korgal|r todavía|r
    >>|cRXP_WARN_Intenta evitar a los |cRXP_ENEMY_Iniciados Escarlata|r si puedes ya que tienen|r |T135843:0|t[Armadura de Escarcha] |cRXP_WARN_(reduce tu velocidad de ataque)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Mata a |cRXP_ENEMY_Samuel|r. Despoja a Samuel para obtener |cRXP_LOOT_Restos de Samuel|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #completewith next
    .goto Tirisfal Glades,31.17,65.08,80 >>Regresa a Camposanto
step
    .goto Tirisfal Glades,31.17,65.08
	>>Haz clic en la |cRXP_PICK_Tumba de Marla|r del suelo
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r y |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >> Entrega la misión El último deseo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >> Acepta la misión Al servicio de la Oscuridad << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Entrega la misión La Cruzada Escarlata
    .accept 382 >> Acepta la misión El mensajero rojo
    .target Executor Arren
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>Mata a |cRXP_ENEMY_Meven|r. Despójalo para obtener los |cRXP_LOOT_Documentos de la Cruzada Escarlata|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Entrega la misión El mensajero rojo
    .accept 383 >> Acepta la misión Información decisiva
    .target Executor Arren
step
    #loop
    .goto Tirisfal Glades,37.51,62.99,0
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
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
    .xp 5+2350 >>Mata enemigos hasta alcanzar 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calvin|r
    .accept 8 >>Acepta la misión Un trato de pícaro
    .target Calvin Montague
step
    #completewith next
    .subzone 159 >>Viaja a Rémol
step
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 383 >>Entrega la misión Información decisiva
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Buy |r |T132414:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r (NOT TRANSLATED IN :esMX YET)
    .collect 29007,1,8475,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,8475,1 --Collect Stiletto (1)
    .target Oliver Dwor
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135321:0|t[Gladius] (5 platas 36 cobres). Volverás más tarde si no tienes suficiente dinero
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_a este vendedor|r
    .collect 2488,1,8475,1 --Collect Gladius (1)
    .target Oliver Dwor
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gina Lang|r en el segundo piso
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre] |cRXP_BUY_a esta vendedora|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Vende la Basura
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .target Rupert Boch
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    .turnin 8 >>Entrega la misión Un trato de pícaro
    .home >> Establece tu Piedra de hogar en Rémol << Priest
    .target Innkeeper Renee
    .bindlocation 2119 << Priest
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r arriba
    .turnin 5651 >> Entrega la misión Al servicio de la Oscuridad
    .accept 5650 >> Acepta la misión Las prendas de la Oscuridad
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior Rango 2]
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r arriba
    .turnin 5651 >> Entrega la misión Al servicio de la Oscuridad
    .accept 5650 >> Acepta la misión Las prendas de la Oscuridad
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .target Dark Cleric Beryl
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r arriba
    .turnin 5651 >> Entrega la misión Al servicio de la Oscuridad
    .accept 5650 >> Acepta la misión Las prendas de la Oscuridad
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior Rango 2]
    .target Dark Cleric Beryl
    .train 2052,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r arriba
    .turnin 5651 >> Entrega la misión Al servicio de la Oscuridad
    .accept 5650 >> Acepta la misión Las prendas de la Oscuridad
    .target Dark Cleric Beryl
step << Priest
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Sal de la Posada
step << Priest
    .goto Tirisfal Glades,59.18,46.49,50 >>Viaja hacia |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #label Kel1
    .goto Tirisfal Glades,59.18,46.49
    .cast 2052 >> |cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior Rank 2] |cRXP_WARN_en|r |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #requires Kel1
    #completewith next
    .goto Tirisfal Glades,59.18,46.49
    .cast 1243 >> |cRXP_WARN_Lanza|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en|r |cRXP_FRIENDLY_Kel|r
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Sana y luego fortifica |cRXP_FRIENDLY_Kel|r
    .complete 5650,1 --Heal and fortify Deathguard Kel
    .target Deathguard Kel
step << Priest
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .bindlocation 2119,1
    .subzoneskip 159
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r arriba
    .turnin 5650 >> Entrega la misión Las prendas de la Oscuridad
    .target Dark Cleric Beryl
step
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Sal de la Posada
step
    #completewith next
    .goto Undercity,65.87,1.48,15,0
    .goto Undercity,65.82,5.44,15,0
    .goto Undercity,62.76,11.02,12,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Toma el Orbe de traslado hacia la Ciudad de Lunargenta
step
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Sal de Lunargenta
step
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Aprende la ruta de vuelo hacia Ciudad de Lunargenta
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >> Acepta la misión La Cicatriz Muerta
    .target Ranger Jaela
step
    .goto Eversong Woods,46.68,49.10,40 >>Viaja a Falconwing Square
    .isQuestAvailable 8463
]])
