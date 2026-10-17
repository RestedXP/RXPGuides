if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Claros de Tirisfal
#next 6-11 Claros de Tirisfal

step << !Undead
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía destinada para No-muertos. Se recomienda elegir la misma zona inicial en la que empiezas|r
step << !Undead Mage
    #season 2
    #completewith next
    +En Season of Discovery, NO deberías empezar fuera de la zona de inicio de tu raza como Mago, ya que no podrás obtener tu primera runa aquí (|T133816:0|t[Grabar guantes - Lanza de hielo])
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
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Entrega la misión Desvelo brutal
    .accept 364 >> Acepta la misión Los autómatas
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
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
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    #season 2
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
    .accept 77672 >>Acepta la misión La runa perdida << Warlock
    .target +Maximillion << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .accept 77671 >>Acepta la misión Investigación sobre hechizos << Mage
    .target +Isabella << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #season 0
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
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Entrega la misión Meditaciones sobre la no-muerte
    .target Dark Cleric Duesten
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
    .goto Tirisfal Glades,34.32,56.79,0
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
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Mata |cRXP_ENEMY_Esqueletos armadóseos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som--xpgate
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+480 >>Mata enemigos hasta alcanzar 480+/1400xp << Warrior/Rogue
    .xp 3+560 >>Mata enemigos hasta alcanzar 560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia de la Muerte Saltain|r y el |cRXP_FRIENDLY_Ejecutor Arren|r
    .accept 3902 >> Acepta la misión Hurgar en Camposanto
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >> Acepta la misión Hoya Nocturácnidas
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ejecutor Arren|r
    .accept 380 >> Acepta la misión Hoya Nocturácnidas
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .accept 77668 >> Acepta la misión La runa perdida
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .accept 77668 >> Acepta la misión La runa perdida
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .accept 77669 >>Acepta la misión La runa escarlata
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .money <0.04
    .target David Trias
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .accept 77669 >>Acepta la misión La runa escarlata
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >> Abandona la misión Hurgar en Camposanto
step
    #xprate <1.5
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
    #label NightWebStart
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
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Mata |cRXP_ENEMY_Nocturácnidas jóvenes|r cerca de la entrada de la cueva
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Entra en la cueva
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>Mata |cRXP_ENEMY_Arañas nocturácnidas|r dentro de la cueva
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>Mata |cRXP_ENEMY_Arañas nocturácnidas|r dentro de la cueva
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
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
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_Realiza un Logout Skip dentro de la cueva saltando encima de una trituradora, pozo o la tabla de madera clavada en la pared, luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_De lo contrario, corre de vuelta a Camposanto|r
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Entrega la misión Hurgar en Camposanto
    .target Deathguard Saltain
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Entrega la misión La runa perdida
    .target Maximillion
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
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Entrega la misión La runa perdida
    .target Dannal Stern
step
    #requires NightWebH
    #loop
	.goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
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
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    .goto Tirisfal Glades,31.17,65.08
	>>Haz clic en la |cRXP_PICK_Tumba de Marla|r del suelo
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
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
step << Mage
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Entrega la misión Investigación sobre hechizos
    .target Isabella
    .isQuestComplete 77671
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Entrega la misión La Cruzada Escarlata
    .accept 382 >> Acepta la misión El mensajero rojo
    .target Executor Arren
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Entrega la misión La runa escarlata
    .target David Trias
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
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+2350 >>Mata enemigos hasta alcanzar 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Acepta la misión Un trato de pícaro
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-11 Claros de Tirisfal
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Bosque de Argénteos; 12-17 Los Baldíos

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Acepta la misión Campos de pena
    .target Deathguard Simmer
step
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_Es una abominación que patrulla por el camino a Rémol|r
    .accept 5481 >>Acepta la misión La tarea de Gordo
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Aprende |T136249:0|t[Sastrería]. Guarda tu |T132889:0|t[Paño de lino]. Esto te permitirá crear una varita más tarde
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r o corre a Rémol
    .target Ángel de la Resurrección
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r y |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Acepta la misión Una tarea pútrida
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Entrega la misión Información decisiva
    .accept 427 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Sra. Winters|r|cRXP_BUY_. Compra|r |T135421:0|t[Hacha arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
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
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
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
    .collect 2488,1,404,1 --Collect Gladius (1)
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
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    .turnin 8 >>Entrega la misión Un trato de pícaro
    .home >> Establece tu Piedra de hogar en Rémol
    .target Innkeeper Renee
    .bindlocation 2119
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está en el segundo piso de la posada|r
    .accept 375 >>Acepta la misión El frío de la muerte
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
    .turnin 5651 >> Entrega la misión Al servicio de la Oscuridad
    .accept 5650 >> Acepta la misión Las prendas de la Oscuridad
	.train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .train 2052 >>Aprende |T135929:0|t[Sanación inferior Rango 2]
    .target Dark Cleric Beryl
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
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .train 921 >> Aprende |T133644:0|t[Robar]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 921 >> Aprende |T133644:0|t[Robar]
    .target Marion Call
    .money >0.02
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
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vance|r
    .train 7411 >> Aprende |T136244:0|t[Encantamiento]
    >>|cRXP_WARN_Esto junto con|r |T136249:0|t[Sastrería] |cRXP_WARN_te permitirá crear una varita más tarde|r
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Lanza |T135929:0|t[Sanación inferior] y |T135987:0|t[Palabra de poder: entereza] en el |cRXP_FRIENDLY_Guardia de la Muerte Kel|r
    >>|cRXP_WARN_Necesitas Sanación inferior Rango 2 para esta misión|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>Despoja la |cRXP_LOOT_Hierba luminiscente|r del suelo
    .complete 5481,1 --Gloom Weed (3)
step
    #xprate <1.5
    #completewith Pumkpins
    >>Mata a cualquier |cRXP_ENEMY_Can oscuro decrépito|r que veas. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #xprate >1.49
    #completewith GloomWeed
    >>Mata a cualquier |cRXP_ENEMY_Can oscuro decrépito|r que veas. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Mata |cRXP_ENEMY_Muertos en podredumbre|r y |cRXP_ENEMY_Cuerpos devastados|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #label GloomWeed
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Termina de despojar la |cRXP_LOOT_Hierba luminiscente|r del suelo
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .goto Tirisfal Glades,48.03,53.43,80,0
    .goto Tirisfal Glades,43.97,57.27,80,0
    .goto Tirisfal Glades,41.01,55.94,60,0
    .goto Tirisfal Glades,40.57,47.23,60,0
    .goto Tirisfal Glades,40.89,42.77,60,0
    .goto Tirisfal Glades,39.12,39.85,60,0
    >>Termina de matar a los |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Comienza a recolectar 3 montones de|r |T132889:0|t[Paño de lino]|cRXP_WARN_. Esto se usará para crear una|r |T135139:0|t[Varita mágica inferior] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Si no quieres hacer esto o prefieres comprarlo de la Casa de Subastas más tarde, omite este paso|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Comienza a recolectar 3 montones de|r |T132889:0|t[Paño de lino]|cRXP_WARN_. Esto se usará para crear una|r |T135139:0|t[Varita mágica inferior] |cRXP_WARN_más tarde|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Granjeros de Tirisfal|r y |cRXP_ENEMY_Mozos de labranza de Tirisfal|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #label Pumkpins
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Despoja las |cRXP_LOOT_Calabazas|r encontradas en el campo
    .complete 365,1 --Tirisfal Pumpkin (10)
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Granjeros de Tirisfal|r y |cRXP_ENEMY_Mozos de labranza de Tirisfal|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa|r] << Rogue
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] << Mage
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] << Priest
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar el Trozo de Mapa|r << Rogue
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar las Notas de Hechizo|r << Mage
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar la Profecía|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step
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
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r
    >>|cRXP_WARN_Ten cuidado ya que tienen un 50% más de parada durante 8 segundos después de hacer su animación de actitud defensiva|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step << Rogue/Mage/Priest
    #season 2
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
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa|r] << Rogue
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] << Mage
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] << Priest
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar el Trozo de Mapa|r << Rogue
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar las Notas de Hechizo|r << Mage
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar la Profecía|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] << Mage
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] << Priest
    >>|cRXP_WARN_Es un élite de nivel 7 y no es fácil de matar. Omítelo por ahora si es demasiado difícil|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_ Ángel de la Resurrección|r
step
    #softcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holland|r, patrulla alrededor del cementerio.
    .turnin 5481 >>Entrega la misión La tarea de Gordo
    .accept 5482 >>Acepta la misión Apocalíseas
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r y |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entrega la misión Una tarea pútrida
    .accept 426 >>Acepta la misión La invasión de los molinos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>Entrega la misión Una nueva Peste
    .turnin 365 >>Entrega la misión Campos de pena
    .accept 368 >>Acepta la misión Una nueva Peste
    .accept 407 >>Acepta la misión Campos de pena
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 370 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r y |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entrega la misión Una tarea pútrida
    .accept 426 >>Acepta la misión La invasión de los molinos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>Entrega la misión Campos de pena
    .accept 407 >>Acepta la misión Campos de pena
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 370 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Zelote Escarlata Capturado|r abajo en la parte trasera de la posada
    .turnin 407 >>Entrega la misión Campos de pena
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
    .turnin 5650 >>Entrega la misión Las prendas de la Oscuridad
    .train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está en el segundo piso de la posada|r
    .accept 375 >>Acepta la misión El frío de la muerte
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 139 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 205 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 284 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 6760 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Intenta hacerlos durante momentos en los que estés esperando cosas, como los Zepelines|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Nurse Neela
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
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith NewPlague1
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
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith NewPlague1
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #hardcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holland|r, patrulla alrededor del cementerio.
    .turnin 5481 >>Entrega la misión La tarea de Gordo
    .accept 5482 >>Acepta la misión Apocalíseas
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Mata |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .xp 7+3260 >> Mata enemigos hasta alcanzar 3260+/4500
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .xp 7+2640 >> Mata enemigos hasta alcanzar 2640+/4500
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #label NewPlague1
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entrega la misión Una nueva Peste
    .accept 368 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r, el |cRXP_FRIENDLY_Cartel de Se busca|r y |cRXP_FRIENDLY_Sevren|r dentro del edificio
    .accept 374 >>Acepta la misión Prueba de defunción
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acepta la misión Se busca: Ojo de cresa
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Acepta la misión Profanadores
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 139 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 205 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 284 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 6760 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Aprende tus hechizos de clase
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135321:0|t[Gladius] (5 platas 36 cobres). Volverás más tarde si no tienes suficiente dinero
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_a este vendedor|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>Mata a cualquier |cRXP_ENEMY_Gnoll Putrepellejo|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de gnoll cortada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step
    #completewith next
    >>Despoja la |cRXP_LOOT_Apocalísea|r del suelo
    >>|cRXP_WARN_Se encuentran cerca de los árboles en el área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Mata |cRXP_ENEMY_Asaltatumbas Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Mata |cRXP_ENEMY_Bastardos Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Despoja la |cRXP_LOOT_Apocalísea|r del suelo
    >>|cRXP_WARN_Se encuentran cerca de los árboles en el área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>Mata |cRXP_ENEMY_Bastardos Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mata a |cRXP_ENEMY_Ojo de cresa|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mata |cRXP_ENEMY_Bastardos Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mata |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mata a cualquier |cRXP_ENEMY_Gnoll Putrepellejo|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de gnoll cortada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Mata |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener sus |cRXP_LOOT_Escamas|r y una |cRXP_LOOT_Cabeza de múrloc cortada|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r para obtener |T134241:0|t[|cRXP_LOOT_Llave de alijo de naufragio|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Mata |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener sus |cRXP_LOOT_Escamas|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r para obtener |T134241:0|t[|cRXP_LOOT_Llave de alijo de naufragio|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Despojar el |cRXP_PICK_Alijo de náufrago|r para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_Usa los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa|r] |cRXP_WARN_para crear|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith Brill3
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #softcore
    #completewith Brill3
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Asegúrate de morir en (o al oeste de) la flecha|r
step
    #label DoomedWeed
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holland|r, patrulla alrededor del cementerio.
    .turnin 5482 >>Entrega la misión Apocalíseas
    .target Junior Apothecary Holland
    .isQuestComplete 5482
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Tirisfal|r] |cRXP_WARN_bajo el puente|r
    >>Despoja el |cRXP_PICK_Tesoro enterrado|r que aparece para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r y |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entrega la misión Una nueva Peste
    .accept 369 >>Acepta la misión Una nueva Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entrega la misión Profanadores
    .accept 405 >>Acepta la misión El exánime pródigo
    .accept 359 >>Acepta la misión Las obligaciones de los Renegados
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r y |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entrega la misión Una nueva Peste
    .accept 369 >>Acepta la misión Una nueva Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entrega la misión Profanadores
    .accept 405 >>Acepta la misión El exánime pródigo << Mage/Warlock
    .accept 359 >>Acepta la misión Las obligaciones de los Renegados
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .accept 354 >>Acepta la misión Muertes en la familia
    .accept 362 >>Acepta la misión Los molinos fantasma
    .target Coleman Farthing
step << !Mage !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >> Abandona la misión El exánime pródigo
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 139 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 205 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 284 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 6760 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Intenta hacerlos durante momentos en los que estés esperando cosas, como los Zepelines|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Nurse Neela
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
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
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
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #label Brill3
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Repara tu arma
    .target Eliza Callen
step << Warrior
    #season 2
    #completewith AgamandStart
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >> Viaja al norte/oeste hacia los Molinos de Agamand
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Carta de Thurman|r] |cRXP_WARN_puede caer de estos enemigos. Acepta la misión si lo hace|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
step
    #completewith ThurmanGregor
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mata a |cRXP_ENEMY_Devlin|r. Despójalo para obtener sus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >>Mata a |cRXP_ENEMY_Nissa|r. Despójala para obtener sus |cRXP_LOOT_Restos|r. Puede estar dentro del edificio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata a |cRXP_ENEMY_Thurman|r y a |cRXP_ENEMY_Gregor|r. Despójalos para obtener sus |cRXP_LOOT_Restos|r. Pueden estar patrullando la zona
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #label MillsOverun
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3620,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3620 >> Mata enemigos hasta alcanzar 3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+4320 >> Mata enemigos hasta alcanzar 4320+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3840 >> Mata enemigos hasta alcanzar 3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3140 >> Mata enemigos hasta alcanzar 3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+2180 >> Mata enemigos hasta alcanzar 2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3230 >> Mata enemigos hasta alcanzar 3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+2510 >> Mata enemigos hasta alcanzar 2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+1460 >> Mata enemigos hasta alcanzar 1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #season 2
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] << Mage
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] << Priest
    >>|cRXP_WARN_Es un élite de nivel 7 y no es fácil de matar. Omítelo por ahora si es demasiado difícil|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Viaja de vuelta a Rémol
step
    #softcore
    #completewith FoodandWater2
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Entrega la misión La invasión de los molinos
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yvette|r y |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Entrega la misión Una carta sin entregar
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .accept 355 >>Acepta la misión Habla con Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.trainer >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>Abandona la misión Uzzek, el veterano
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandona la misión Camino de defensa
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ageron|r dentro de la posada
    .accept 1478 >> Acepta la misión Las invocaciones de Halgar
    .target Ageron Kargal
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Aprende tus hechizos de clase
    .target Rupert Boch
step << Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r dentro de la posada
    .trainer >> Aprende tus hechizos de clase
    .accept 1885 >>Acepta la misión Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r dentro de la posada
    .accept 1881 >> Acepta la misión Habla con Anastasia
    .target Cain Firesong
step
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Haz clic en la calavera del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Entra en Entrañas
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1478 >> Entrega la misión Las invocaciones de Halgar
    .accept 1473 >> Acepta la misión Criatura Abisal
step << Warlock
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Capitán Perrine|r para obtener un |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja |cRXP_PICK_Cofre de Perrine|r para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Mata al |cRXP_ENEMY_Capitán Perrine|r, |cRXP_ENEMY_Zelotes Escarlata|r y |cRXP_ENEMY_Misioneros Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Capitán Perrine|r para obtener un |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja |cRXP_PICK_Cofre de Perrine|r del suelo para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Entra en Entrañas a través de las cloacas
    .zoneskip Undercity
step
    #xprate >1.49
    #ah << Priest
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Entra en Entrañas a través de las cloacas
    .zoneskip Undercity
--XX Priest skips on 1.5x unless they go for a Wand. No reason to go Undercity if skipping Lich quest and not setting hearth
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Archibald|r en el Barrio de la Guerra
    .train 201 >>Aprende Espadas de 1 mano
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita mágica inferior] |cRXP_BUY_de la Casa de Subastas|r << Priest
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita mágica inferior] |cRXP_BUY_de la Casa de Subastas si lo deseas|r << Mage/Warlock
    >>|cRXP_WARN_Si haces esto y estabas reuniendo|r |T132889:0|t[Paño de lino] |cRXP_WARN_antes, puedes vender tu|r |T132889:0|t[Paño de lino] |cRXP_WARN_en la Casa de Subastas|r << Priest
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << !Priest
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1473 >> Entrega la misión Criatura Abisal
    .accept 1471 >> Acepta la misión El vínculo
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Usa las|r |T134416:0|t[Runas de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Entrega la misión El vínculo
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel Steenwick|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra|r |T135425:0|t[Cuchillos arrojadizo cortantes] |cRXP_BUY_a este vendedor|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Recuerda equipar los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_WARN_cuando llegues al nivel 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Entrega la misión Mennet Carkad
    .accept 1886 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
step << Mage
    #optional
    .abandon 1883 >> Abandona la misión Habla con Un'thuwa, de lo contrario, no podrás aceptar la siguiente misión
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r en el Barrio de la Magia
    .turnin 1881 >> Entrega la misión Habla con Anastasia
    .accept 1882 >> Acepta la misión La Hacienda Balnir
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r en el Barrio de Magia
    .turnin 405 >>Entrega la misión El exánime pródigo
    .accept 357 >>Acepta la misión La identidad del exánime
    .target Bethor Iceshard
step << Mage/Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r en el Barrio de Magia
    .turnin 405 >>Entrega la misión El exánime pródigo
    .target Bethor Iceshard
step
    #xprate <1.5
    #label UCHome
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Norman|r
    .home >> Establece tu Piedra de hogar en Entrañas
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    #xprate <1.5 << !Mage !Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Haz un Logout Skip colocando a tu personaje en la parte más alta de la escalera más baja hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
step << skip -- !Mage !Warlock
    #xprate >1.49
    #ah << Priest
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la pila de barriles, luego desconecta y vuelve a entrar|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la picadora de la Vagoneta de Carne, luego desconecta y vuelve a entrar|r << Rogue
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
step
    #xprate <1.5 << Priest
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Sal de Entrañas
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Si ves a|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, habla con él y mátalo. Despójalo para obtener la carta. Patrulla el camino entre Rémol y El Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>Abandona la misión La identidad del exánime
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 371 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_Usa el|r |T133385:0|t[|cRXP_LOOT_Sello de teniente escarlata|r] |cRXP_WARN_para crear|r |T134328:0|t[|cRXP_LOOT_Memorándum Escarlata falsificado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jamie Nore|r para recibir |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Sra. Winters|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Entrega la misión Habla con Coleman
    .target Coleman Farthing
step << Warrior
    #season 2
    #completewith UnluckyRogue
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Entrega la misión Las obligaciones de los Renegados
    .accept 360 >>Acepta la misión Regresa junto al magistrado
    .accept 356 >>Acepta la misión Patrulla de la retaguardia
    .target Deathguard Linnea
step << Warrior
    #season 2
    #completewith ArriveBalnir
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ArriveBalnir
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>Viaja a la Hacienda Balnir
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #completewith next
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Despoja cualquiera de las plantas en el suelo para obtener |cRXP_PICK_Bocas de dragón de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r |cRXP_WARN_para crear|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata |cRXP_ENEMY_Frailes Escarlata|r y |cRXP_ENEMY_Zelotes Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata a los |cRXP_ENEMY_Frailes Escarlata|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto Tirisfal Glades,78.82,56.14
    >>Mata al |cRXP_ENEMY_Capitán Vachon|r dentro de la torre
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate >1.49
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata |cRXP_ENEMY_Frailes Escarlata|r y |cRXP_ENEMY_Zelotes Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Reúne 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu Varita mágica inferior. Esta es tu última oportunidad para obtener suficientes antes de ir a Bosque de Argénteos|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #season 2
    #completewith ViciousVenom
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ViciousVenom
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ViciousVenom
    #requires Friars2
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Mata |cRXP_ENEMY_Nocturácnidas sañosas|r. Despójalas para obtener su |cRXP_LOOT_Veneno|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << Warrior
    #season 2
    #xprate >1.49
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #season 2
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    .xp 11+2950 >> Mata enemigos hasta alcanzar 2950+/8800 xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625 (374 OPT)+700 (375 OPT) = 3900 -> 5850
--XX +625 (374 OPT) = 3200 -> 4800
--XX +700 (375 OPT) = 3275 -> 4910
step
    #xprate >1.49
    #optional
    .xp 11+3890 >> Mata enemigos hasta alcanzar 3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    .xp 11+4000 >> Mata enemigos hasta alcanzar 4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    .xp 11+4940 >> Mata enemigos hasta alcanzar 4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0,1
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>Despoja |cRXP_PICK_Libros de Gunther|r para obtener |cRXP_LOOT_El libro de hechizos del Exánime|r en la isla en el Lago Aguasclaras
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >> Muere |cRXP_WARN_EN LA ISLA MÁS PEQUEÑA|r y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entrega la misión Una nueva Peste
    .accept 492 >>Acepta la misión Una nueva Peste
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entrega la misión Una nueva Peste
    .accept 492 >>Acepta la misión Una nueva Peste
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 372 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step
    #xprate >1.49
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entrega la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Entrega la misión Regresa junto al magistrado
    .turnin 355 >>Entrega la misión Habla con Sevren
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >> Abandona la misión En guerra con la Cruzada Escarlata
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate >1.49
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Sra. Winters|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Habla con |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Zelote Escarlata capturado|r y con el |cRXP_FRIENDLY_Montaraz capturado|r abajo en la parte de atrás de la posada
    .turnin 407 >>Entrega la misión Campos de pena
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >> Entrega la misión Una nueva Peste
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Corazón azul|r (abajo) dentro de la posada
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Mata a |cRXP_ENEMY_Corazón azul|r, luego habla con |cRXP_FRIENDLY_Penny|r arriba
    .gossipoption 110751 >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1

--XX Start of <1.5x section (undercity hs)


step
    #xprate <1.5
    #completewith UndercityLS2
    .hs >> Usa tu Piedra de hogar para ir a Entrañas
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step
    #xprate <1.5
    #completewith UndercityLS2
    .zone Undercity >>Viaja a Entrañas
    .cooldown item,6948,<0
step
    #xprate <1.5
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
step << Mage
    #xprate <1.5
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r en el Barrio de la Magia
    .turnin 1882 >>Entrega la misión La Hacienda Balnir
    .target Anastasia Hartwell
step
    #optional << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r
    .turnin 357 >>Entrega la misión La identidad del exánime
    .accept 366 >>Acepta la misión Devuelve el libro
    .target Bethor Iceshard
    .isQuestComplete 1886 << Rogue
step << Rogue
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #xprate <1.5
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #xprate <1.5
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Entrega la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entrega la misión Los mortacechadores
    .accept 1899 >>Acepta la misión Los mortacechadores
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,55.43,76.87
    >>Despoja la |cRXP_PICK_Estantería de Andron|r detrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Entrega la misión Los mortacechadores
    .accept 1978 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Entrega la misión Los mortacechadores
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip posicionando a tu personaje en el borde del círculo hasta que parezca que flota, luego desconecta y vuelve a entrar|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r
    .turnin 357 >>Entrega la misión La identidad del exánime
    .accept 366 >>Acepta la misión Devuelve el libro
    .target Bethor Iceshard
    .isOnQuest 1886
step << skip
    #xprate <1.5
    #label UndercityLS2
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Haz un Logout Skip colocando a tu personaje en la parte más alta de la escalera más baja hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .isOnQuest 1886 << Rogue
step
    #xprate <1.5
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Sal de Entrañas
    .zoneskip Tirisfal Glades
step
    #xprate <1.5
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Entrega la misión Patrulla de la retaguardia
    .target Deathguard Linnea
step
    #xprate <1.5
    #label CaptainMelrache
    .goto Tirisfal Glades,79.52,25.14
    >>Mata al |cRXP_ENEMY_Capitán Melrache|r y a sus |cRXP_ENEMY_Guardaespaldas Escarlata|r en la torre. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    >>|cRXP_WARN_Mata enemigos por el camino|r << Warrior/Mage
    .complete 372,1 --Captain Melrache (1)
    .mob +Captain Melrache
    .complete 372,2 --Scarlet Bodyguard (2)
    .mob +Scarlet Bodyguard
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step
    #xprate <1.5
    #label FinishRings
    #loop
    .goto Tirisfal Glades,79.04,28.54,0
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>Termina de recolectar los |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,79.04,28.54,0
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>|cRXP_WARN_Reúne 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu Varita mágica inferior. Esta es tu última oportunidad para obtener suficientes antes de ir a Bosque de Argénteos|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #xprate <1.5
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,72.15,33.17,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    >>Termina de matar a los |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #xprate <1.5
    #season 2
    #loop
    .goto Tirisfal Glades,72.15,33.17,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    .goto Tirisfal Glades,68.19,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther|r
    .turnin 366 >>Entrega la misión Devuelve el libro
    .accept 409 >>Acepta la misión Prueba de lealtad
    .target Gunther Arcanus
step
    #xprate <1.5
    #optional
    #label CandleBeckoning
    #completewith Nefara
    .goto Tirisfal Glades,68.16,42.01
    >>Abre el |cRXP_PICK_Cajón de velas|r del suelo. Despójalo para obtener la |cRXP_LOOT_Vela de señalización|r
    .collect 3080,1,409,1 --Collect Candle of Beckoning (1)
    .isOnQuest 409
step
    #xprate <1.5
    #optional
    #requires CandleBeckoning
    #completewith next
    .goto Tirisfal Glades,66.64,44.89
    +Haz clic en la |cRXP_PICK_Mesa de cena de Lillith|r para hacer aparecer a |cRXP_ENEMY_Nefara|r
    .isOnQuest 409
step
    #xprate <1.5
    #label Nefara
    .goto Tirisfal Glades,66.70,45.05
    >>Mata a |cRXP_ENEMY_Nefara|r
    .complete 409,1 --Lillith Nefara (1)
    .target Lillith Nefara
step
    #xprate <1.5
    .goto Tirisfal Glades,68.20,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther|r
    .turnin 409 >>Entrega la misión Prueba de lealtad
    .accept 411 >>Acepta la misión El regreso del exánime pródigo
    .target Gunther Arcanus
step
    #xprate <1.5
    .xp 11+4900 >> Mata enemigos hasta alcanzar 4900+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575
--XX +625 (374 OPT)+700 (375 OPT) = 3900
--XX +625 (374 OPT) = 3200
--XX +700 (375 OPT) = 3275
--XX moved xpgate to after turnin so people don't turn in whilst grinding
step
    #xprate <1.5
    #optional
    .xp 11+5525 >> Mata enemigos hasta alcanzar 5525+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    .xp 11+5600 >> Mata enemigos hasta alcanzar 5600+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    .xp 11+6225 >> Mata enemigos hasta alcanzar 6225+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #hardcore
    #completewith CrusadewarWon
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith CrusadewarWon
    .goto Tirisfal Glades,64.40,42.65
    .deathskip >> Nada hacia el oeste, muere a manos de los enemigos y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate <1.5
    #label CrusadewarWon
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 372 >>Entrega la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step
    #xprate <1.5
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
step
    #xprate <1.5
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    #xprate <1.5
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar

    --XX End of <1.5x section



step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 588 >>Aprende |T135926:0|t[Fuego interno]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 145 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1766 >> Aprende |T132219:0|t[Patada]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Aprende |T136168:0|t[Cauce de salud]
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #completewith Entersilverpine
    >>|cRXP_WARN_Si ves a|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, habla con él y mátalo. Despójalo para obtener la carta. Patrulla el camino entre Rémol y El Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate >1.49
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Entrega la misión Patrulla de la retaguardia
    .target Deathguard Linnea

--XX Optional Undercity Section Start: If Priest needs wand, Rogue/Warrior needs vendor wep



step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Tirisfal Glades,61.80,65.06,20 >> Entra en Entrañas
    .zoneskip Undercity
step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << Priest
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita mágica inferior] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Si haces esto y estabas reuniendo|r |T132889:0|t[Paño de lino] |cRXP_WARN_antes, puedes vender tu|r |T132889:0|t[Paño de lino] |cRXP_WARN_en la Casa de Subastas|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << Rogue
    #ssf
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #ah
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #ah
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << skip --Warrior/Rogue
    #xprate >1.49
    #season 0,1 << Warrior
    #optional
    #label LogoutSkip3
    .goto Undercity,61.10,54.11
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la pila de barriles, luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
step << Warrior
    #season 2
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.03,70.30,12 >> Viaja hacia |cRXP_FRIENDLY_Dorac|r en El Apothecarium
    .train 403475,1
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorac Tumbas|r en Entrañas
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_Usa los|r |T134455:0|t[Fragmentos de runa] |cRXP_WARN_para crear|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
    .zoneskip Undercity,1
step << skip --Warrior
    #xprate >1.49
    #season 2
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima del abdomen de la abominación, luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Entrega la misión Toque de debilidad
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Rogue/Warrior/Priest
    #xprate <1.5
    #optional
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Entrega la misión El regreso del exánime pródigo
    .target Bethor Iceshard
    .zoneskip Undercity,1
step << skip --Rogue/Warrior
    #xprate <1.5
    #optional
    #label UndercityLS3
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Haz un Logout Skip colocando a tu personaje en la parte más alta de la escalera más baja hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
--XX Priests only go Undercity if they need to make/buy a Lesser Magic Wand (still midway through the steps of doing so)
--XX If rogues haven't killed Astor yet, they logout skip early before doing Rogue quest turnins
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Aprende |T136249:0|t[Sastrería]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Convierte todos tus|r |T132889:0|t[Paño de lino] |cRXP_WARN_en|r |T132890:0|t[Madeja de paño de lino]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Aprende |T132662:0|t[Toga de lino marrón]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Compra|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Crea tantas|r |T132662:0|t[Togas de lino marrón] |cRXP_WARN_como puedas|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Aprende |T136244:0|t[Encantamiento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Compra una|r |T133942:0|t[Vara de cobre] |cRXP_BUY_y|r |T135435:0|t[Madera simple] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Desencanta todas las|r |T132662:0|t[Togas de lino marrón] |cRXP_WARN_que hiciste y crea una|r |T135225:0|t[Vara rúnica de cobre]
    >>|cRXP_WARN_Si no obtuviste una|r |T132867:0|t[Esencia mágica inferior] |cRXP_WARN_entonces compra una de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_si hay una disponible. De lo contrario termina este paso más tarde|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Aprende |T135139:0|t[Varita mágica inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Crea una|r |T135139:0|t[Varita mágica inferior]
    >>|cRXP_WARN_Si no obtuviste una|r |T132867:0|t[Esencia mágica inferior] |cRXP_WARN_entonces compra una de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_si hay una disponible. De lo contrario termina este paso más tarde|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa la|r |T135139:0|t[Varita mágica inferior]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << skip --Priest
    #optional
    #label UndercityLS3
    .goto 1458,61.990,62.272
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la pila de barriles, luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Entrega la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestComplete 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entrega la misión Los mortacechadores
    .accept 1899 >>Acepta la misión Los mortacechadores
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,55.43,76.87
    >>Despoja la |cRXP_PICK_Estantería de Andron|r detrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Entrega la misión Los mortacechadores
    .accept 1978 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Entrega la misión Los mortacechadores
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Rogue
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Coloca a tu personaje en el borde del círculo hasta que parezca que flota. Realiza un Logout Skip desconectando y volviendo a entrar|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .isQuestTurnedIn 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Sal de Entrañas
    .zoneskip Tirisfal Glades
    .isQuestTurnedIn 1886
step << Rogue/Warrior/Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
    .isQuestAvailable 1978

--XX Optional Undercity Section End: If Priest needs wand, Rogue/Warrior needs vendor wep

step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .zoneskip Silverpine Forest
]])

RXPGuides.RegisterGuide([[
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#xprate <1.99
<< Horde
#version 11
#defaultfor Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#classic
#tbc
#era/som--h
#name 12-14 Bosque de Argénteos
#next 12-17 Los Baldíos


step << Undead Warrior
    #season 2
    #sticky
    #optional
    #completewith RuneOfDevastateUndead
    +No elimines tus |cRXP_LOOT_Cabezas cortadas|r. Las entregarás más tarde para |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .itemcount 204477,1
    .train 403475,1
step << Undead Rogue
    #sticky
    #completewith Rot HideCluesTurnIn
    >>|cRXP_WARN_Si ves a|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, habla con él y mátalo. Despójalo para obtener la carta. Patrulla el camino entre Rémol y El Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Mata |cRXP_ENEMY_Huargos|r mientras viajas hacia |cRXP_FRIENDLY_Erland|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mortacechador Erland|r para comenzar la escolta
    >>|cRXP_WARN_Asegúrate de tener vida y maná al máximo antes de comenzar esta misión|r
    .accept 435,1 >>Acepta la misión Escolta a Erland
    .target Deathstalker Erland
step
    #completewith next
    >>Mata |cRXP_ENEMY_Huargos|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Escolta a |cRXP_FRIENDLY_Erland|r de forma segura hasta |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Huargos|r |cRXP_WARN_pueden aparecer uno encima del otro, come y bebe siempre que puedas|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Entrega la misión Escolta a Erland
    .accept 429 >>Acepta la misión Corazones salvajes
    .accept 449 >>Acepta la misión El informe de los Mortacechadores
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Mata |cRXP_ENEMY_Huargos|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >> Viaja a El Sepulcro
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Acepta la misión Demuestra tu valía
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Compra|r |T134532:0|t[Champiñón con motas rojas] |cRXP_BUY_a este vendedor|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_si están disponibles|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r y |cRXP_FRIENDLY_Podrig|r
    .accept 477 >>Acepta la misión Pasa la frontera
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Acepta la misión Suministros para el Sepulcro
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Acepta la misión Pasa la frontera
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entra en la cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r en la cripta
    .turnin 449 >>Entrega la misión El informe de los Mortacechadores
    .accept 3221 >>Acepta la misión Habla con Renferrel
    .accept 437 >>Acepta la misión El Campo Muerto
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Entrega la misión Corazones salvajes
    .turnin 445 >>Entrega la misión Entrega a Bosque de Argénteos
    .turnin 3221 >>Entrega la misión Habla con Renferrel
    .accept 1359 >>Acepta la misión Una entrega de Zinge
    .accept 447 >>Acepta la misión Una fórmula mortal
    .accept 430 >>Acepta la misión Regresa junto a Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Mata |cRXP_ENEMY_Canosos Furia Lunar|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Entrega la misión Demuestra tu valía
    .accept 422 >>Acepta la misión La locura de Arugal
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >> Viaja al Campo de Valgan
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Entra en la casa y ve al segundo piso. Despoja los |cRXP_PICK_Libros de hechizos polvorientos|r del suelo
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80,0
    .subzone 239 >>Viaja a Los Dominios de Ivar
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quinn Yorick|r en el segundo piso de la casa
    .turnin 430 >>Entrega la misión Regresa junto a Quinn
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rane Yorick|r fuera
    .accept 425 >>Acepta la misión Ivar el Hediondo
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Mata a |cRXP_ENEMY_Ivar el Hediondo|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Ivar está protegido por dos|r |cRXP_ENEMY_Esclavos Corvozarpa|r |cRXP_WARN_dentro del granero. Puedes atraer a uno de ellos cuando patrulle hacia adelante.|r
    >>|cRXP_WARN_¡Son inmunes al miedo!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Entrega la misión Ivar el Hediondo
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_¡Ten cuidado! ¡Puede haber un|r |cRXP_ENEMY_Hijo de Arugal|r |cRXP_WARN_en la zona! Este es un élite nivel 25, ¡aléjate de él!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Mata |cRXP_ENEMY_Osos|r. Despójalos para obtener sus|cRXP_LOOT_Corazones|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Mata |cRXP_ENEMY_Gnolls Putrepellejo|r alrededor de El Campo Muerto hasta que aparezca |cRXP_ENEMY_Latipesadilla|r. Mátala y despójala para obtener su |cRXP_LOOT_Esencia|r
    >>|cRXP_WARN_¡Son inmunes al miedo!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Mata |cRXP_ENEMY_Osos|r. Despójalos para obtener sus|cRXP_LOOT_Corazones|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Mata |cRXP_ENEMY_Arañas|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_¡Ten cuidado con|r |cRXP_ENEMY_Krethis Tejeumbra|r |cRXP_WARN_ya que es increíblemente difícil matarla!|r << !Mage !Warlock
    >>|cRXP_WARN_Ten cuidado con|r |cRXP_ENEMY_Krethis Tejeumbra|r |cRXP_WARN_es difícil pero se puede hacer. Tiene un escudo de 130 de daño cada 15s de enfriamiento y una habilidad de choque instantáneo de 110 de daño|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Killian|r
    .vendor >> Vende la basura
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Mata |cRXP_ENEMY_Arañas|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_¡Ten cuidado con|r |cRXP_ENEMY_Krethis Tejeumbra|r |cRXP_WARN_ya que es increíblemente difícil matarla!|r << !Mage !Warlock
    >>|cRXP_WARN_Ten cuidado con|r |cRXP_ENEMY_Krethis Tejeumbra|r |cRXP_WARN_es difícil pero se puede hacer. Tiene un escudo de 130 de daño cada 15s de enfriamiento y una habilidad de choque instantáneo de 110 de daño|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspi
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Termina de matar a los |cRXP_ENEMY_Osos|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #softcore
    #completewith ArugalTurnin
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100,0
    .subzone 228 >>Viaja de vuelta a El Sepulcro
step
    #xprate <1.5
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Entrega la misión La locura de Arugal
    .accept 423 >> Acepta la misión La locura de Arugal
    .target Dalar Dawnweaver
step
    #xprate >1.49
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Entrega la misión La locura de Arugal
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entra en la cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r en la cripta
    .turnin 437 >> Entrega la misión El Campo Muerto
    .accept 438 >> Acepta la misión El Viejo Embarcadero
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwyn|r
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r
    .vendor >> Vende la basura
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_si están disponibles|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andrea|r
    .vendor >> Cómprale el |T132491:0|t[|cRXP_FRIENDLY_Cinturón de hombre sabio|r] si está disponible
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Cómprale las |T132539:0|t[|cRXP_FRIENDLY_Botas de agilidad|r] si están disponibles
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa el|r |T132491:0|t[|cRXP_FRIENDLY_Cinturón de hombre sabio|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa las|r |T132539:0|t[|cRXP_FRIENDLY_Botas de agilidad|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Haz clic en el |cRXP_PICK_Bote|r al lado de los muelles
    .turnin 438 >>Entrega la misión El Viejo Embarcadero
    .accept 439 >>Acepta la misión Pistas de Putrepellejos
step
    #xprate <1.5
    #loop
    .goto Silverpine Forest,56.06,45.75,0
    .goto Silverpine Forest,56.06,45.75,40,0
    .goto Silverpine Forest,55.45,49.18,40,0
    .goto Silverpine Forest,56.80,45.86,40,0
    >>Mata |cRXP_ENEMY_Glotones Furia Lunar|r y |cRXP_ENEMY_Almanegras Furia Lunar|r. Despójalos para obtener sus |cRXP_LOOT_Grilletes|r
    >>|cRXP_WARN_¡Ten cuidado! Los|r |cRXP_ENEMY_Almanegras Furia Lunar|r |cRXP_WARN_se enfurecen cuando están por debajo del 25% de salud. Mátalos rápidamente cuando están débiles|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
step << Mage
    #season 2
    #completewith BorderCrossings
    >>Mata |cRXP_ENEMY_Aprendices de Dalaran|r. Despójalos para obtener |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step
    #hardcore
    .goto Silverpine Forest,49.89,60.33
    >>Haz clic en el |cRXP_PICK_Cajón|r en el campamento
    >>|cRXP_WARN_¡Ten cuidado! Estos enemigos lanzan|r |T135846:0|t[Descarga de Escarcha] |cRXP_WARN_y huyen con poca salud. Atráelos hacia atrás y mátalos uno a uno hasta que puedas hacer clic en el cajón de forma segura|r
    .turnin 477 >>Entrega la misión Pasa la frontera
    .accept 478 >>Acepta la misión Mapas y runas
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto Silverpine Forest,49.89,60.33
    >>Haz clic en el |cRXP_PICK_Cajón|r en el campamento
    >>|cRXP_WARN_Ten cuidado, estos enemigos lanzan|r |T135846:0|t[Descarga de Escarcha]|r
    .turnin 477 >>Entrega la misión Pasa la frontera
    .accept 478 >>Acepta la misión Mapas y runas
    .mob Dalaran Apprentice
step << Mage
    #season 2
    #loop
    .goto Silverpine Forest,49.89,60.33,0
    .goto Silverpine Forest,52.6,56.6,20,0
    .goto Silverpine Forest,56.6,62.8,20,0
    .goto Silverpine Forest,55.6,72.8,20,0
    .goto Silverpine Forest,51.6,71.0,20,0
    .goto Silverpine Forest,50.8,61.6,20,0
    >>Mata |cRXP_ENEMY_Aprendices de Dalaran|r. Despójalos para obtener |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r] |cRXP_WARN_para aprender|r |T132871:0|t[Regeneración.]
    .use 208754
    .itemcount 211779,1
step << Rogue
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Despoja el |cRXP_PICK_Cofre oxidado|r junto a la entrada del Castillo de Colmillo Oscuro para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    >>|cRXP_WARN_Usa|r |T132307:0|t[Sprint] |cRXP_WARN_y luego salta desde el puente hacia el cofre|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    .train 424984 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] |cRXP_WARN_para aprender|r |T132375:0|t[Sablazo]
    .use 208772
    .itemcount 208772,1
step
    #completewith next
    #hardcore
    .goto Silverpine Forest,45.51,41.26,100 >> Viaja de vuelta a El Sepulcro
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r y |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Entrega la misión Mapas y runas
    .accept 481 >>Acepta la misión El análisis de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Entrega la misión La locura de Arugal
    .turnin 481 >>Entrega la misión El análisis de Dalar
    .accept 482 >>Acepta la misión Las intenciones de los Dalaran
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r y |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Entrega la misión Mapas y runas
    .accept 481 >>Acepta la misión El análisis de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 481 >>Entrega la misión El análisis de Dalar
    .accept 482 >>Acepta la misión Las intenciones de los Dalaran
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Entrega la misión Las intenciones de los Dalaran
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entra en la cripta
step
    #label Rot HideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r en la cripta
    .turnin 439 >>Entrega la misión Pistas de Putrepellejos
    .target High Executor Hadrec
step
    #xprate <1.5 << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Entrega la misión Suministros para el Sepulcro << Undead
    .accept 6323 >>Acepta la misión Vuela a Entrañas << Undead
    .fp Sepulcher >> Consigue la ruta de vuelo de El Sepulcro << !Undead
    .fly Undercity >> Vuela a Entrañas << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    #xprate >1.49
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Entrega la misión Suministros para el Sepulcro
    .accept 6323 >>Acepta la misión Vuela a Entrañas
    .fly Undercity >> Vuela a Entrañas
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    #xprate <1.5
    .hs >> Usa tu Piedra de hogar para ir a Entrañas
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1





    --XX Start of Undercity clown fiesta section





step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Entrega la misión Vuela a Entrañas
    .accept 6322 >> Acepta la misión Michael Garrett
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Entrega la misión Michael Garrett
    .target Michael Garrett
step << Undead Warrior
    #xprate <1.5
    #optional
    .goto Undercity,47.41,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baltus Fowler|r
    .train 285 >> Aprende tus hechizos de clase
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Undead Rogue/Undead Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Entrega la misión El regreso del exánime pródigo
    .target Bethor Iceshard
    .isQuestComplete 411
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r en el Barrio de los Pícaros
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >> Crea |T133685:0|t[Vendas de lino] hasta que tu habilidad sea 40 o superior
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r en el Barrio de los Pícaros
    .train 3276 >> Aprende |T133688:0|t[Venda de lino gruesa]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >> Crea |T133688:0|t[Vendas de lino gruesas] hasta que tu habilidad sea 50 o superior
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r en el Barrio de los Pícaros
    .train 3274 >> Aprende Oficial de primeros auxilios
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Entrega la misión Los mortacechadores
    .accept 1898 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entrega la misión Los mortacechadores
    .accept 1899 >>Acepta la misión Los mortacechadores
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Despoja la |cRXP_PICK_Estantería de Andron|r detrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.84,69.25,12 >> Viaja hacia |cRXP_FRIENDLY_Faranell|r en El Apothecarium
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faranell|r y |cRXP_FRIENDLY_Zinge|r en El Apothecarium
    .turnin 447 >>Entrega la misión Una fórmula mortal
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >> Entrega la misión Una entrega de Zinge
    .accept 1358 >> Acepta la misión Muestra para Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
step << Undead Warrior
    #season 2
    #label RuneOfDevastateUndead
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorac|r en Entrañas
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Undead Warrior
    #season 2
    .use 204688 >>|cRXP_WARN_Usa los|r |T134455:0|t[Fragmentos de runa] |cRXP_WARN_para crear|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Undead Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step << skip --Undead Rogue/Undead Warrior
    #xprate <1.5
    #optional
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima del abdomen de la abominación, luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886 << Rogue
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Entrega la misión Los mortacechadores
    .accept 1978 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Entrega la misión Los mortacechadores
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Coloca a tu personaje en el borde del círculo hasta que parezca que flota. Realiza un Logout Skip desconectando y volviendo a entrar|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r en el Barrio de los Pícaros
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Mary Edras
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >> Crea |T133685:0|t[Vendas de lino] hasta que tu habilidad sea 40 o superior
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r en el Barrio de los Pícaros
    .train 3276 >> Aprende |T133688:0|t[Venda de lino gruesa]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >> Crea |T133688:0|t[Vendas de lino gruesas] hasta que tu habilidad sea 50 o superior
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r en el Barrio de los Pícaros
    .train 3274 >> Aprende Oficial de primeros auxilios
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Entrega la misión El regreso del exánime pródigo
    .target Bethor Iceshard
    .isQuestComplete 411
step << Undead Mage
    #xprate >1.49
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r en el Barrio de la Magia
    .turnin 1882 >>Entrega la misión La Hacienda Balnir
    .train 2137 >> Aprende tus hechizos de clase
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Undead Mage
    #xprate >1.49
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r
    .turnin 1882 >>Entrega la misión La Hacienda Balnir
    .train 2120 >> Aprende tus hechizos de clase
    .target Anastasia Hartwell
    .xp <16,1
step << Mage
    #xprate <1.5 << Undead
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Aprende tus hechizos de clase
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #xprate <1.5 << Undead
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    #xprate <1.5
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #xprate <1.5
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Richard Kerwin
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zane Bradford|r en el Barrio de Magia
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zane Bradford|r en el Barrio de Magia
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante] |cRXP_WARN_cuando seas nivel 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Entrega la misión Toque de debilidad
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Entrega la misión Toque de debilidad
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    #xprate <1.5
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lazarus|r
	.train 6074 >> Aprende tus hechizos de clase
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #xprate <1.5
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lazarus|r
	.train 8102 >> Aprende tus hechizos de clase
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Abandona la misión Los mortacechadores, ya no hay oportunidad de hacerlo
    .abandon 1886 >> Abandona la misión Los mortacechadores
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #xprate <1.5
    #requires TouchOW << Undead Priest
    .goto Undercity,56.89,16.77 << Priest
    .goto Undercity,69.46,25.85 << Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la picadora de la Vagoneta de Carne, luego desconecta y vuelve a entrar|r << Priest
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la pila de barriles, luego desconecta y vuelve a entrar|r << Mage/Warlock
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,69.46,25.85 << Priest/Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la pila de barriles, luego desconecta y vuelve a entrar|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
    .dungeon !RFC



--XX End of Undercity clown fiesta section





--XX Start of 1.5x Brill Train section





step << Undead
    #xprate >1.49
    #completewith ZeptoDurotar
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .zoneskip Undercity,1
    .bindlocation 2119,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r dentro de la posada
    .train 1758 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <14,1
    .xp >16,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r dentro de la posada
    .train 6761 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 8122 >>Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <14,1
    .xp >16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 8102 >>Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 1460 >>Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <14,1
    .xp >16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 2120 >>Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <16,1
step << Undead Warrior
    #xprate >1.49
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 285 >>Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <14,1
    .xp >16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <16,1





--XX End of 1.5x Brill Train section





step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Ahora deberías buscar un grupo para Sima Ígnea
    .dungeon RFC
step << Undead
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> Sal de Entrañas
    .zoneskip Tirisfal Glades
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>Toma el zepelín hacia Durotar
    >>Haz piedras de afilar/vendas mientras esperas << Warrior/Rogue
    >>Conjura comida/agua mientras esperas << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Viaja a Orgrimmar
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_¡No vueles a ningún lado!|r
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>Mata a los |cRXP_ENEMY_Filo Ardiente|r en Roca del Cráneo hasta que obtengas una |cRXP_LOOT_Insignia de Teniente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Entrega la misión Enemigos ocultos
    .accept 5727 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 5761 >>Acepta la misión Matar a la bestia
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Entrega la misión Enemigos ocultos
    .accept 5728 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entra por el portal de la instancia a Sima Ígnea. Entra en la mazmorra
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_Si es posible, haz que los miembros del grupo compartan las siguientes misiones|r
    .accept 5722 >> Acepta la misión Buscando la cartera perdida
    .accept 5723 >> Acepta la misión Midiendo fuerzas con el enemigo
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Entrega la misión Buscando la cartera perdida
    .accept 5724 >> Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Mata a |cRXP_ENEMY_Taragaman el Hambriento|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Mata a |cRXP_ENEMY_Bazzalan|r y a |cRXP_ENEMY_Jergosh el Convocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5761 >>Entrega la misión Matar a la bestia
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Entrega la misión Enemigos ocultos
    .accept 5729 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5729 >> Entrega la misión Enemigos ocultos
    .accept 5730 >> Acepta la misión Enemigos ocultos
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >> Viaja a Cerrotajo
step << !Undead
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Aprende tus hechizos de clase
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Aprende tus hechizos de clase
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
    .xp <16,1
step << !Undead
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .goto Durotar,52.24,43.15
    .turnin 837 >>Entrega la misión Invasión
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
    .target Gar'Thok
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Viaja a la Avanzada del Puente
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << !Undead
    #xprate <1.5
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entrega la misión Ak'Zeloth
    .accept 924 >>Acepta la misión La Semilla del Demonio
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Despoja la|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_junto a|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este objeto tiene un temporizador de 30 minutos, así que date prisa|r
    .turnin 926 >>Entrega la misión La piedra de energía con imperfecciones
    .isOnQuest 924
step << Mage
    +Si estás planeando subir de nivel a través de AoE, elige la Guía AoE de Los Baldíos manualmente. Si no, completa este paso
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-7 Claros de Tirisfal
#next 7-13 Claros de Tirisfal

step << !Undead
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía destinada para No-muertos. Se recomienda elegir la misma zona inicial en la que empiezas|r
step << !Undead Mage
    #season 2
    #completewith next
    +En Season of Discovery, NO deberías empezar fuera de la zona de inicio de tu raza como Mago, ya que no podrás obtener tu primera runa aquí (|T133816:0|t[Grabar guantes - Lanza de hielo])
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
    #xprate <2.1
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
step << Warrior/Warlock/Priest/Mage
    #season 0
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 60 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Mage
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 50 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Priest
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 10 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #season 2
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 28 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Rogue/Priest/Warlock
    +|cRXP_WARN_Mata |cRXP_ENEMY_Carroñeros jóvenes|r y |cRXP_ENEMY_Murciumbríos|r. Despójalos hasta que tengas 15 monedas de cobre en objetos para vender (incluyendo tu armadura)|r << Warrior/Mage
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #xprate >2.09
    #loop
    .goto Tirisfal Glades,29.18,68.94,40,0,0
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,30.19,65.32,40,0
    .xp 2 >>Mata enemigos hasta subir al nivel 2
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #season 2
    .goto Tirisfal Glades,31.36,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >>|cRXP_BUY_Vende la basura y compra la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] |cRXP_BUY_y la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] << Warrior
    >>|cRXP_BUY_Vende la basura y compra todas las runas clave de Daño en Área (AoE)|r << Mage
    >>|cRXP_BUY_Vende la basura y compra todas las siguientes runas:|r << Hunter/Warlock/Rogue/Priest
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >>Lanza de hielo solo es útil para poder entregar una misión después << Mage
    >>|cRXP_WARN_Obtendrás el resto de tus runas más tarde|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] para aprender |T132342:0|t[Ataque de la victoria]<< Warrior
    .train 415936 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Bomba viva|r] para aprender |T236220:0|t[Bomba viva] << Mage
    .train 401759 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Incendio|r] para aprender |T236207:0|t[Incendio] << Mage
    .train 440858 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Orbe congelado|r] para aprender |T135851:0|t[Orbe congelado] << Mage
    .train 401760 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Lanza de hielo|r] para aprender |T135844:0|t[Lanza de hielo] << Mage
    .train 401768 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Llama viva|r] para aprender |T135820:0|t[Llama viva] << Mage
    .train 416009 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r] para aprender |T136150:0|t[Tácticas demoníacas] << Warlock
    .train 425476 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del pacto|r] para aprender |T237562:0|t[Pacto demoníaco] << Warlock
    .train 416015 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Incineración|r] para aprender |T135789:0|t[Incinerar] << Warlock
    .train 403919 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r] para aprender |T236298:0|t[Poseer] << Warlock
    .train 403619 >> Usa el |T133733:0|t[Grimorio de Armadura vil] para aprender |T136156:0|t[Armadura vil] |cRXP_WARN_úsalo como tu hechizo de armadura principal|r << Warlock
    .train 402852 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] para aprender |T237570:0|t[Homúnculos] << Priest
    .train 425447 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] para aprender |T236317:0|t[Asalto frenético] << Warrior
    .train 400101 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Paso de las sombras|r] para aprender |T132303:0|t[Paso de las Sombras] << Rogue
    .train 432301 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Juego sucio|r] para aprender |T236285:0|t[Ventaja injusta] << Rogue
    .train 400105 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r] para entrenar |T132323:0|t[Golpesombra] << Rogue
    .train 424984 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] para aprender |T132375:0|t[Sablazo] << Rogue
    .train 415922 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Espadachín|r] para aprender |T134538:0|t[Trabuco] << Rogue
    .train 431663 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] para aprender |T136181:0|t[Púa mental] << Priest
    .train 425216 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] para aprender |T237514:0|t[Plaga del Vacío] << Priest
    .train 402862 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] para aprender |T237545:0|t[Penitencia] << Priest
    .train 402849 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] para aprender |T136149:0|t[Palabra de las Sombras: muerte] << Priest
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_Asegúrate de activar tu|r |T136156:0|t[Armadura vil]
step << Warrior
    #season 0
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Entra en el edificio
step << Priest/Mage
    #season 0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >> Acepta la misión Meditaciones sobre la no-muerte
    .turnin 77670 >> Entrega la misión Meditaciones sobre la no-muerte
    .target Dark Cleric Duesten
step
    #optional
    #label Vendor
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Venya|r y |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Acepta la misión Descubrir el misterio << Warlock
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Entrega la misión Desvelo brutal
    .accept 364 >> Acepta la misión Los autómatas
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    #xprate <2.1
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Warlock/Mage
    #xprate >2.09
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Acepta la misión La runa perdida
    .turnin 77672 >>Entrega la misión La runa perdida
    .target Maximillion
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .accept 77671 >>Acepta la misión Investigación sobre hechizos
    .turnin 77671 >>Entrega la misión Investigación sobre hechizos
    .target Isabella
step << Mage
    #season 2
    #optional
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .engrave 10 >>|cRXP_WARN_Graba tus|r guantes con |T236220:0|t[Bomba viva]
    .engrave 7 >>|cRXP_WARN_Graba tus pantalones con|r |T135820:0|t[Llama viva]
    .engrave 5 >>|cRXP_WARN_Graba tu pecho con|r |T236207:0|t[Incendio]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >> Mantente atento a cualquier capa que caiga. Una vez que tengas una, graba el |T135851:0|t[Orbe congelado] en ella
    >>|cRXP_WARN_Este hechizo está extremadamente roto|r
step << Warlock
    #season 0
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vende la Basura
    .target Kayla Smithe
    .money >0.1
step << Warlock
    #season 0
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
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << !Warlock !Mage
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acepta la misión Los Malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
step << Rogue/Priest/Warlock
    #season 2
    .goto Tirisfal Glades,32.41,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    >>|cRXP_BUY_Cómprale un|r |T132513:0|t[Cinturón de paño andrajoso] |cRXP_BUY_para grabarle una runa|r << Rogue/Priest
    >>|cRXP_BUY_Cómprale unos|r |T132606:0|t[Brazales de paño andrajoso] |cRXP_BUY_para grabarle una runa|r << Warlock
    .collect 3596,1 << Warlock --Tattered Cloth Bracers
    .collect 3595,1 << Rogue/Priest --Tattered Cloth Belt
    .target Archibald Kava
step << Warlock
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .equip 9,3596 >> |cRXP_ENEMY_Equipa los|r |T132606:0|t[Brazales de paño andrajoso]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Graba tus guantes con|r |T236298:0|t[Poseer]
    .engrave 9 >> |cRXP_WARN_Graba tus brazales con|r |T135789:0|t[Incinerar]
    .engrave 7 >> |cRXP_WARN_Graba tus pantalones con|r |T237562:0|t[Pacto demoníaco]
    .engrave 5 >> |cRXP_WARN_Graba tu pecho con|r |T136150:0|t[Tácticas demoníacas]
step << Priest
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .equip 6,3595 >> |cRXP_WARN_Equipa el|r |T132513:0|t[Cinturón de paño andrajoso]
    .use 711
    .use 3595
    .engrave 6 >> Graba |T136181:0|t[Púa mental] en tu cinturón
    .engrave 10 >> Graba |T136149:0|t[Palabra de las Sombras: muerte] en tus guantes
    .engrave 7 >> Graba |T237570:0|t[Homúnculos] en tus pantalones
step << Priest
    #season 2
    #optional
    #sticky
    >>|cRXP_WARN_Estate atento a si te cae algunas|r Botas |cRXP_WARN_. Equípalas y graba|r |T237514:0|t[Plaga del Vacío] |cRXP_WARN_en ellas|r
    .engrave 8 >> Graba tus |T132539:0|t[Botas] con |T237514:0|t[Plaga del Vacío]
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .accept 77669 >>Acepta la misión La runa escarlata
    .turnin 77669 >>Entrega la misión La runa escarlata
    .target David Trias
step << Rogue
    #season 2
    #optional
    .equip 10 >> Equipa los |T132952:0|t[Guantes de cuero rajado]
    .equip 6,3595 >> |cRXP_WARN_Equipa el|r |T132513:0|t[Cinturón de paño andrajoso]
    .engrave 10 >> Graba |T132375:0|t[Sablazo] en tus guantes
    .engrave 6 >> Graba |T132303:0|t[Paso de las Sombras] en tu cinturón
    .use 2125 --Cracked Leather Gloves
    .use 3595 --Tattered Cloth Belt
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Está atento a cualquier|r Capa/Brazalete |cRXP_WARN_que caiga|r|cRXP_WARN_. Equípalos y graba las runas respectivas|r
    .engrave 15 >> Graba |T134538:0|t[Trabuco] en tu |T133771:0|t[Capa]
    .engrave 9 >> Graba |T236285:0|t[Ventaja injusta] en tus |T133830:0|t[Brazales]
step << Warrior
    #season 0
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
    .money >0.1
step << Warrior
    #season 0
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Dannal Stern
step << Warrior
    #season 2
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .accept 77668 >> Acepta la misión La runa perdida
    .turnin 77668 >> Entrega la misión La runa perdida
    .target Dannal Stern
step << Warrior
    #season 2
    .equip 10 >> Equipa los |T132938:0|t[Guantes de anillas deslustradas]
    .engrave 10 >> Graba |T132342:0|t[Ataque de la victoria] en tus guantes
    .engrave 7 >> Graba |T236317:0|t[Asalto frenético] en tus pantalones
    >>|cRXP_WARN_Pronto obtendrás una espada de dos manos de una misión|r
    .use 2385 -- Tarnished Chain Gloves
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    #xprate >2.09
    #completewith next
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
    #xprate <2.1
    #completewith Vendor2
    +|cRXP_WARN_Mata |cRXP_ENEMY_Zombis descerebrados|r y |cRXP_ENEMY_Zombis espantosos|r. Despójalos hasta que tengas 33 monedas de cobre en objetos para vender (incluyendo tu armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    #xprate <2.1
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
    #xprate <2.1
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
    #xprate <2.1
    #season 2
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
    .target +Maximillion << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .target +Isabella << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #xprate <2.1
    #season 0
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
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,34.32,56.79,0
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
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Mata |cRXP_ENEMY_Esqueletos armadóseos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step << Mage/Warlock/Priest
    #xprate <2.1
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
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r y |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Entrega la misión Sacudir esqueletos
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Entrega la misión Los Malditos
    .accept 6395 >> Acepta la misión El último deseo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Mage/Warlock/Priest
    #xprate >2.09
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
    #xprate >2.09
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
    #xprate >2.09
    #season 2
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
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Entrega la misión Los Malditos
    .accept 6395 >> Acepta la misión El último deseo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Entrega la misión Un pergamino corrupto << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target +Dark Cleric Duesten << Priest
step
    #xprate >2.09
    #season 0
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
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Entrega la misión Los Malditos
    .accept 6395 >> Acepta la misión El último deseo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Entrega la misión Un pergamino corrupto << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Entrega la misión Un pergamino glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Entrega la misión Un pergamino sacralizado << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target +Dark Cleric Duesten << Priest
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
    #season 0
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Aprende |T136118:0|t[Corrupción]
    .target Maximillion
step << Mage
    #season 0
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Isabella
step
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia de la Muerte Saltain|r y el |cRXP_FRIENDLY_Ejecutor Arren|r
    .accept 3902 >> Acepta la misión Hurgar en Camposanto
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >> Acepta la misión Hoya Nocturácnidas
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ejecutor Arren|r
    .accept 380 >> Acepta la misión Hoya Nocturácnidas
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vende la Basura
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Entrega la misión Un pergamino simple
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Entrega la misión Un pergamino codificado
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >> Abandona la misión Hurgar en Camposanto
step
    #xprate <1.5
    #loop
	.goto Tirisfal Glades,32.37,64.37,
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
    #label NightWebStart
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
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Mata |cRXP_ENEMY_Nocturácnidas jóvenes|r cerca de la entrada de la cueva
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Entra en la cueva
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>Mata |cRXP_ENEMY_Arañas nocturácnidas|r dentro de la cueva
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>Mata |cRXP_ENEMY_Arañas nocturácnidas|r dentro de la cueva
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
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
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_Realiza un Logout Skip dentro de la cueva saltando encima de una trituradora, pozo o la tabla de madera clavada en la pared, luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_De lo contrario, corre de vuelta a Camposanto|r
step
    #xprate <1.5
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
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
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
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    .goto Tirisfal Glades,31.17,65.08
	>>Haz clic en la |cRXP_PICK_Tumba de Marla|r del suelo
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
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
    #season 2
    .goto Tirisfal Glades,31.36,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la basura y compra todas las |T134419:0|t|cRXP_WARN_[Runas]|r que necesites de él|r
    .target Rune Broker
    .skipgossip
step
    #loop
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+1900 >>Mata enemigos hasta alcanzar 1900+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Acepta la misión Un trato de pícaro
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Claros de Tirisfal
#version 1
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 13-20 Los Baldíos

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Acepta la misión Campos de pena
    .target Deathguard Simmer
step << skip
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_Es una abominación que patrulla por el camino a Rémol|r
    .accept 5481 >>Acepta la misión La tarea de Gordo
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Aprende |T136249:0|t[Sastrería]. Guarda tu |T132889:0|t[Paño de lino]. Esto te permitirá crear una varita más tarde
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r o corre a Rémol
    .target Ángel de la Resurrección
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r y |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Acepta la misión Una tarea pútrida
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Entrega la misión Información decisiva
    .accept 427 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Sra. Winters|r|cRXP_BUY_. Compra|r |T135421:0|t[Hacha arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
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
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
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
    .collect 2488,1,404,1 --Collect Gladius (1)
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
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    .turnin 8 >>Entrega la misión Un trato de pícaro
    .home >> Establece tu Piedra de hogar en Rémol
    .target Innkeeper Renee
    .bindlocation 2119
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está en el segundo piso de la posada|r
    .accept 375 >>Acepta la misión El frío de la muerte
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
    .turnin 5651 >> Entrega la misión Al servicio de la Oscuridad
    .accept 5650 >> Acepta la misión Las prendas de la Oscuridad
	.train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .train 2052 >>Aprende |T135929:0|t[Sanación inferior Rango 2]
    .target Dark Cleric Beryl
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
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .train 921 >> Aprende |T133644:0|t[Robar]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 921 >> Aprende |T133644:0|t[Robar]
    .target Marion Call
    .money >0.02
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
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vance|r
    .train 7411 >> Aprende |T136244:0|t[Encantamiento]. Esto junto con |T136249:0|t[Sastrería] te permitirá crear una varita más adelante
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Lanza |T135929:0|t[Sanación inferior] y |T135987:0|t[Palabra de poder: entereza] en el |cRXP_FRIENDLY_Guardia de la Muerte Kel|r
    >>|cRXP_WARN_Necesitas Sanación inferior Rango 2 para esta misión|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step << skip
    #completewith Claws
    >>Despoja la |cRXP_LOOT_Hierba luminiscente|r del suelo
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith next
    >>Mata a cualquier |cRXP_ENEMY_Can oscuro decrépito|r que veas. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Mata |cRXP_ENEMY_Muertos en podredumbre|r y |cRXP_ENEMY_Cuerpos devastados|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step << skip
    #label GloomWeed
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Termina de despojar la |cRXP_LOOT_Hierba luminiscente|r del suelo
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .goto Tirisfal Glades,48.03,53.43,80,0
    .goto Tirisfal Glades,43.97,57.27,80,0
    .goto Tirisfal Glades,41.01,55.94,60,0
    .goto Tirisfal Glades,40.57,47.23,60,0
    .goto Tirisfal Glades,40.89,42.77,60,0
    .goto Tirisfal Glades,39.12,39.85,60,0
    >>Termina de matar a los |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Comienza a recolectar 3 montones de|r |T132889:0|t[Paño de lino]|cRXP_WARN_. Esto se usará para crear una|r |T135139:0|t[Varita mágica inferior] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Si no quieres hacer esto o prefieres comprarlo de la Casa de Subastas más tarde, omite este paso|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Comienza a recolectar 3 montones de|r |T132889:0|t[Paño de lino]|cRXP_WARN_. Esto se usará para crear una|r |T135139:0|t[Varita mágica inferior] |cRXP_WARN_más tarde|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Granjeros de Tirisfal|r y |cRXP_ENEMY_Mozos de labranza de Tirisfal|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Despoja las |cRXP_LOOT_Calabazas|r encontradas en el campo.
    .complete 365,1 --Tirisfal Pumpkin (10)
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Granjeros de Tirisfal|r y |cRXP_ENEMY_Mozos de labranza de Tirisfal|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa|r] << Rogue
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] << Mage
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] << Priest
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar el Trozo de Mapa|r << Rogue
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar las Notas de Hechizo|r << Mage
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar la Profecía|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step
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
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r
    >>|cRXP_WARN_Ten cuidado ya que tienen un 50% más de parada durante 8 segundos después de hacer su animación de actitud defensiva|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step << Rogue/Mage/Priest
    #season 2
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
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa|r] << Rogue
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] << Mage
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] << Priest
    |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar el Trozo de Mapa|r << Rogue
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar las Notas de Hechizo|r << Mage
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar la Profecía|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] << Mage
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] << Priest
    >>|cRXP_WARN_Es un élite de nivel 7 y no es fácil de matar. Omítelo por ahora si es demasiado difícil|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .subzoneskip 159
    .cooldown item,6948,>0,1
    .bindlocation 2119,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_ Ángel de la Resurrección|r
step << skip
    #softcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holland|r, patrulla alrededor del cementerio.
    .turnin 5481 >>Entrega la misión La tarea de Gordo
    .accept 5482 >>Acepta la misión Apocalíseas
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r y |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entrega la misión Una tarea pútrida
    .accept 426 >>Acepta la misión La invasión de los molinos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>Entrega la misión Una nueva Peste
    .turnin 365 >>Entrega la misión Campos de pena
    .accept 368 >>Acepta la misión Una nueva Peste
    .accept 407 >>Acepta la misión Campos de pena
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 370 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r y |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entrega la misión Una tarea pútrida
    .accept 426 >>Acepta la misión La invasión de los molinos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>Entrega la misión Campos de pena
    .accept 407 >>Acepta la misión Campos de pena
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 370 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r, el |cRXP_FRIENDLY_Cartel de Se busca|r y |cRXP_FRIENDLY_Sevren|r dentro del edificio
    .accept 374 >>Acepta la misión Prueba de defunción
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acepta la misión Se busca: Ojo de cresa
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Acepta la misión Profanadores
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Zelote Escarlata Capturado|r abajo en la parte trasera de la posada
    .turnin 407 >>Entrega la misión Campos de pena
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
    .turnin 5650 >>Entrega la misión Las prendas de la Oscuridad
    .train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está en el segundo piso de la posada|r
    .accept 375 >>Acepta la misión El frío de la muerte
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 139 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 205 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 284 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 6760 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Intenta hacerlos durante momentos en los que estés esperando cosas, como los Zepelines|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Nurse Neela
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
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith NewPlague1
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
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith NewPlague1
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << skip
    #hardcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holland|r, patrulla alrededor del cementerio.
    .turnin 5481 >>Entrega la misión La tarea de Gordo
    .accept 5482 >>Acepta la misión Apocalíseas
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,58.20,58.15,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Mata |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .xp 7+3260 >> Mata enemigos hasta alcanzar 3260+/4500
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #optional
    #label DuskbatTrophy1
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .xp 7+2640 >> Mata enemigos hasta alcanzar 2640+/4500
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #label NewPlague1
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entrega la misión Una nueva Peste
    .accept 368 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r, el |cRXP_FRIENDLY_Cartel de Se busca|r y |cRXP_FRIENDLY_Sevren|r dentro del edificio
    .accept 374 >>Acepta la misión Prueba de defunción
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acepta la misión Se busca: Ojo de cresa
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Acepta la misión Profanadores
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 139 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 205 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 284 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 6760 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Aprende tus hechizos de clase
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135321:0|t[Gladius] (5 platas 36 cobres). Volverás más tarde si no tienes suficiente dinero
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_a este vendedor|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>Mata a cualquier |cRXP_ENEMY_Gnoll Putrepellejo|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de gnoll cortada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << skip
    #completewith next
    >>Despoja la |cRXP_LOOT_Apocalísea|r del suelo
    >>|cRXP_WARN_Se encuentran cerca de los árboles en el área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Mata |cRXP_ENEMY_Asaltatumbas Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Mata |cRXP_ENEMY_Bastardos Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step << skip
    #label Doomweed
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Despoja la |cRXP_LOOT_Apocalísea|r del suelo
    >>|cRXP_WARN_Se encuentran cerca de los árboles en el área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #optional
    #label Doomweed
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>Mata |cRXP_ENEMY_Bastardos Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mata a |cRXP_ENEMY_Ojo de cresa|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mata |cRXP_ENEMY_Bastardos Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mata |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mata a cualquier |cRXP_ENEMY_Gnoll Putrepellejo|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de gnoll cortada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Mage
    #xprate >2.09
    #season 2
    #loop
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    .goto Tirisfal Glades,59.84,33.17,40,0
    .goto Tirisfal Glades,58.38,35.28,40,0
    .goto Tirisfal Glades,60.09,37.01,40,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate >2.09
    #season 2
    >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r |cRXP_WARN_para crear|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate >2.09
    #season 2
    .train 415942 >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Mata |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener sus |cRXP_LOOT_Escamas|r y una |cRXP_LOOT_Cabeza de múrloc cortada|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r para obtener |T134241:0|t[|cRXP_LOOT_Llave de alijo de naufragio|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Mata |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener sus |cRXP_LOOT_Escamas|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r para obtener |T134241:0|t[|cRXP_LOOT_Llave de alijo de naufragio|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Despojar el |cRXP_PICK_Alijo de náufrago|r para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Lanza |T133644:0|t[Robar] y mata a los |cRXP_ENEMY_Múrlocs Anca Vil|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_Usa los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa|r] |cRXP_WARN_para crear|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith DoomedWeed
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #softcore
    #completewith DoomedWeed
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Asegúrate de morir en (o al oeste de) la flecha|r
step << skip
    #label DoomedWeed
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holland|r, patrulla alrededor del cementerio.
    .turnin 5482 >>Entrega la misión Apocalíseas
    .target Junior Apothecary Holland
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Tirisfal|r] |cRXP_WARN_bajo el puente|r
    >>Despoja el |cRXP_PICK_Tesoro enterrado|r que aparece para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r y |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entrega la misión Una nueva Peste
    .accept 369 >>Acepta la misión Una nueva Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entrega la misión Profanadores
    .accept 405 >>Acepta la misión El exánime pródigo << Warlock
    .accept 359 >>Acepta la misión Las obligaciones de los Renegados
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r y |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entrega la misión Una nueva Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entrega la misión Profanadores
    .accept 405 >>Acepta la misión El exánime pródigo << Warlock
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .accept 354 >>Acepta la misión Muertes en la familia
    .accept 362 >>Acepta la misión Los molinos fantasma
    .target Coleman Farthing
step << !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >> Abandona la misión El exánime pródigo
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 139 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <8,1
    .xp >10,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 8092 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 205 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <8,1
    .xp >10,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r
    --.accept 1881 >> Accept Speak with Anastasia
    .train 122 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <10,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 284 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .abandon 1505 >>Abandona la misión Uzzek, el veterano
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandona la misión Camino de defensa
    .isOnQuest 1498
step << Warrior
    #optional
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon
    .xp <10,1
    .isQuestAvailable 1498
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 6760 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <8,1
    .xp >10,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r
    .train 674 >> Aprende tus hechizos de clase
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r en el segundo piso
    .train 980 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <8,1
    .xp >10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ageron|r en el segundo piso
    .accept 1478 >> Acepta la misión Las invocaciones de Halgar
    .target Ageron Kargal
    .xp <10,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ageron|r en el segundo piso
    .accept 1478 >> Acepta la misión Las invocaciones de Halgar
    .target Ageron Kargal
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Intenta hacerlos durante momentos en los que estés esperando cosas, como los Zepelines|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Nurse Neela
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
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
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
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Repara tu arma
    .target Eliza Callen
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Haz clic en la calavera del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step
    #optional
    #label Brill3
    --150% route does Agamand Mills after UC

step << Warrior
    #xprate <2.1
    #season 2
    #completewith AgamandStart
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >> Viaja al norte/oeste hacia los Molinos de Agamand
    .isOnQuest 362
step
    #xprate <2.1
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Carta de Thurman|r] |cRXP_WARN_puede caer de estos enemigos. Acepta la misión si lo hace|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
step
    #xprate <2.1
    #completewith ThurmanGregor
    #label MillsOverun
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <2.1
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mata a |cRXP_ENEMY_Devlin|r. Despójalo para obtener sus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate <2.1
    .goto Tirisfal Glades,49.34,36.02
    >>Mata a |cRXP_ENEMY_Nissa|r. Despójala para obtener sus |cRXP_LOOT_Restos|r. Puede estar dentro del edificio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate <2.1
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata a |cRXP_ENEMY_Thurman|r y a |cRXP_ENEMY_Gregor|r. Despójalos para obtener sus |cRXP_LOOT_Restos|r. Pueden estar patrullando la zona
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener |T134939:0|t[|cRXP_LOOT_Carta de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3620 >> Mata enemigos hasta alcanzar 3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+4320 >> Mata enemigos hasta alcanzar 4320+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3840 >> Mata enemigos hasta alcanzar 3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3140 >> Mata enemigos hasta alcanzar 3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+2180 >> Mata enemigos hasta alcanzar 2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3230 >> Mata enemigos hasta alcanzar 3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+2510 >> Mata enemigos hasta alcanzar 2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+1460 >> Mata enemigos hasta alcanzar 1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #xprate <2.1
    #season 2
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] << Mage
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate <2.1
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .subzoneskip 159
    .cooldown item,6948,>0,1
    .bindlocation 2119,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <2.1
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate <2.1
    #softcore
    #completewith FoodandWater2
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate <2.1
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Entrega la misión La invasión de los molinos
    .target Deathguard Dillinger
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yvette|r y |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Entrega la misión Una carta sin entregar
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .accept 355 >>Acepta la misión Habla con Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #xprate <2.1
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .turnin 1820 >>Entrega la misión Habla con Coleman << Warrior
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <2.1
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.trainer >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
step << Warrior
    #xprate <2.1
    #optional
    .abandon 1505 >>Abandona la misión Uzzek, el veterano
    .isOnQuest 1505
step << Warrior
    #xprate <2.1
    #optional
    .abandon 1498 >>Abandona la misión Camino de defensa
    .isOnQuest 1498
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 2687 >> Aprende tus hechizos de clase
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon << Warrior
    .xp >12,1
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ageron|r dentro de la posada
    .accept 1478 >> Acepta la misión Las invocaciones de Halgar
    .target Ageron Kargal
step << Rogue
    #xprate <2.1
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r
    .train 674 >> Aprende tus hechizos de clase
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Aprende tus hechizos de clase
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <12,1
step << Mage
    #xprate <2.1
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r dentro de la posada
    .accept 1881 >> Acepta la misión Habla con Anastasia
    .target Cain Firesong
step
    #xprate <2.1
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Haz clic en la calavera del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Entra en Entrañas
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1478 >> Entrega la misión Las invocaciones de Halgar
    .accept 1473 >> Acepta la misión Criatura Abisal
step << Warlock
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,55.14,62.01,0
    .goto Tirisfal Glades,56.90,58.25,60,0
    .goto Tirisfal Glades,55.14,62.01,60,0
    .goto Tirisfal Glades,52.36,62.93,60,0
    .goto Tirisfal Glades,48.94,63.72,60,0
    .goto Tirisfal Glades,45.17,62.11,60,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de murciélago cortada|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Capitán Perrine|r para obtener un |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja |cRXP_PICK_Cofre de Perrine|r para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Mata al |cRXP_ENEMY_Capitán Perrine|r, |cRXP_ENEMY_Zelotes Escarlata|r y |cRXP_ENEMY_Misioneros Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Capitán Perrine|r para obtener un |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja |cRXP_PICK_Cofre de Perrine|r del suelo para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Entra en Entrañas a través de las cloacas
    .zoneskip Undercity
step << !Mage
    #xprate >1.49
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Entra en Entrañas a través de las cloacas
    .zoneskip Undercity
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Entrega la misión Toque de debilidad
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Archibald|r en el Barrio de la Guerra
    .train 201 >>Aprende Espadas de 1 mano
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorac Tumbas|r en Entrañas
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_Usa los|r |T134455:0|t[Fragmentos de runa] |cRXP_WARN_para crear|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step << !Mage
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita mágica inferior] |cRXP_BUY_de la Casa de Subastas|r << Priest
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita mágica inferior] |cRXP_BUY_de la Casa de Subastas si lo deseas|r << Mage/Warlock
    >>|cRXP_WARN_Si haces esto y estabas reuniendo|r |T132889:0|t[Paño de lino] |cRXP_WARN_antes, puedes vender tu|r |T132889:0|t[Paño de lino] |cRXP_WARN_en la Casa de Subastas|r << Priest
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << skip
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra 6|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 3164,6,429,1 --Discolored Worg Heart (6)
    .target Auctioneer Rhyker
step << !Warlock
    #xprate <1.5
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Norman|r
    .home >> Establece tu Piedra de hogar en Entrañas
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label UCHome
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1473 >> Entrega la misión Criatura Abisal
    .accept 1471 >> Acepta la misión El vínculo
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Usa las|r |T134416:0|t[Runas de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Entrega la misión El vínculo
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #season 0
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 0
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    .vendor >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_o una|r |T135640:0|t[Jambiya] |cRXP_BUY_a este vendedor|r
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Charles Seaton|r en el Barrio de los Pícaros
    .vendor >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_o una|r |T135640:0|t[Jambiya] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #season 2
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipa la|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel Steenwick|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra|r |T135425:0|t[Cuchillos arrojadizo cortantes] |cRXP_BUY_a este vendedor|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel Steenwick|r en el Barrio de los Pícaros
    >>|cRXP_BUY_Compra|r |T135425:0|t[Cuchillos arrojadizo cortantes] |cRXP_BUY_a este vendedor|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Recuerda equipar los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_WARN_cuando llegues al nivel 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << skip
    --Rogue class q
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Entrega la misión Mennet Carkad
    .accept 1886 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
step << skip
    #optional
    .abandon 1883 >> Abandona la misión Habla con Un'thuwa, de lo contrario, no podrás aceptar la siguiente misión
    .isOnQuest 1883
step << skip
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r en el Barrio de la Magia
    .turnin 1881 >> Entrega la misión Habla con Anastasia
    .accept 1882 >> Acepta la misión La Hacienda Balnir
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r en el Barrio de Magia
    .turnin 405 >>Entrega la misión El exánime pródigo
    .accept 357 >>Acepta la misión La identidad del exánime
    .target Bethor Iceshard
step << Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bethor|r en el Barrio de Magia
    .turnin 405 >>Entrega la misión El exánime pródigo
    .target Bethor Iceshard
step << skip --Warlock
    #xprate <2.1
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Haz un Logout Skip colocando a tu personaje en la parte más alta de la escalera más baja hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
step << skip --!Mage !Warlock
    #xprate <2.1
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la pila de barriles, luego desconecta y vuelve a entrar|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realiza un Logout Skip saltando encima de la picadora de la Vagoneta de Carne, luego desconecta y vuelve a entrar|r << Rogue
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
step
    #optional
    #label LogoutSkip1
step
    #xprate <2.1
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Sal de Entrañas
    .zoneskip Tirisfal Glades
step << skip
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Si ves a|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, habla con él y mátalo. Despójalo para obtener la carta. Patrulla el camino entre Rémol y El Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>Abandona la misión La identidad del exánime
step << Mage
    #xprate <2.1
    #label AtWarS
    #softcore
    #completewith AtWarS
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #completewith AgamandStart
    #xprate >2.09
    .hs >>Usa tu Piedra de Hogar para ir a Rémol
    .bindlocation 2119,1
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 371 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step
    #xprate >2.09
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Entrega la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_Usa el|r |T133385:0|t[|cRXP_LOOT_Sello de teniente escarlata|r] |cRXP_WARN_para crear|r |T134328:0|t[|cRXP_LOOT_Memorándum Escarlata falsificado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jamie Nore|r para recibir de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Sra. Winters|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Entrega la misión Habla con Coleman
    .target Coleman Farthing

    --150% route Agamand Mills here

step
    #xprate >2.09
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >> Viaja al norte/oeste hacia los Molinos de Agamand
    .isOnQuest 362
step
    #xprate >2.09
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Carta de Thurman|r] |cRXP_WARN_puede caer de estos enemigos. Acepta la misión si lo hace|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
step
    #xprate >2.09
    #completewith ThurmanGregor
    #label MillsOverun
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate >2.09
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mata a |cRXP_ENEMY_Devlin|r. Despójalo para obtener sus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate >2.09
    .goto Tirisfal Glades,49.34,36.02
    >>Mata a |cRXP_ENEMY_Nissa|r. Despójala para obtener sus |cRXP_LOOT_Restos|r. Puede estar dentro del edificio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate >2.09
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata a |cRXP_ENEMY_Thurman|r y a |cRXP_ENEMY_Gregor|r. Despójalos para obtener sus |cRXP_LOOT_Restos|r. Pueden estar patrullando la zona
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #xprate >2.09
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step << Mage/Priest
    #xprate >2.09
    #season 2
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] << Mage
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate >2.09
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
    .itemcount 211779,1
step
    #xprate >2.09
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate >2.09
    #softcore
    #completewith FoodandWater2
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate >2.09
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Entrega la misión La invasión de los molinos
    .target Deathguard Dillinger
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yvette|r y |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Entrega la misión Una carta sin entregar
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #xprate >2.09
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .turnin 1820 >>Entrega la misión Habla con Coleman << Warrior
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .target Coleman Farthing
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate >2.09
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.trainer >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 2687 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp >12,1
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #xprate >2.09
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r
    .train 674 >> Aprende tus hechizos de clase
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Aprende tus hechizos de clase
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <12,1
step
    #xprate >2.09
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    #xprate <2.1
    #completewith next
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Entrega la misión Las obligaciones de los Renegados
    .accept 360 >>Acepta la misión Regresa junto al magistrado
    .accept 356 >>Acepta la misión Patrulla de la retaguardia
    .target Deathguard Linnea
step
    #xprate <2.1
    #completewith ArriveBalnir
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>Viaja a la Hacienda Balnir
    .isOnQuest 356
step << Mage
    #xprate <2.1
    #season 2
    #completewith HorrorsandSpirits
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << skip
    #completewith next
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << skip
    .goto Tirisfal Glades,77.48,62.00
    >>Despoja cualquiera de las plantas en el suelo para obtener |cRXP_PICK_Bocas de dragón de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #xprate <2.1
    #optional
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate <2.1
    #season 2
    >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r |cRXP_WARN_para crear|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate <2.1
    #season 2
    .train 415942 >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #xprate <2.1
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata |cRXP_ENEMY_Frailes Escarlata|r y |cRXP_ENEMY_Zelotes Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #xprate <2.1
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata a los |cRXP_ENEMY_Frailes Escarlata|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    #xprate <2.1
    .goto Tirisfal Glades,78.82,56.14
    >>Mata al |cRXP_ENEMY_Capitán Vachon|r dentro de la torre
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate <2.1
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata |cRXP_ENEMY_Frailes Escarlata|r y |cRXP_ENEMY_Zelotes Escarlata|r. Despójalos para obtener sus |cRXP_LOOT_Anillos con la insignia Escarlata|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << skip
    #xprate <2.1
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Reúne 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu Varita mágica inferior. Esta es tu última oportunidad para obtener suficientes antes de ir a Bosque de Argénteos|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <2.1
    #completewith ViciousVenom
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ViciousVenom
    #loop
    #requires Friars2
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Mata |cRXP_ENEMY_Nocturácnidas sañosas|r. Despójalas para obtener su |cRXP_LOOT_Veneno|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Mata |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << skip
    #xprate >1.49
    .xp 11+2950 >> Mata enemigos hasta alcanzar 2950+/8800 xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625 (374 OPT)+700 (375 OPT) = 3900 -> 5850
--XX +625 (374 OPT) = 3200 -> 4800
--XX +700 (375 OPT) = 3275 -> 4910
step << skip
    #xprate >1.49
    #optional
    .xp 11+3890 >> Mata enemigos hasta alcanzar 3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4000 >> Mata enemigos hasta alcanzar 4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4940 >> Mata enemigos hasta alcanzar 4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0,1
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>Despoja |cRXP_PICK_Libros de Gunther|r para obtener |cRXP_LOOT_El libro de hechizos del Exánime|r en la isla en el Lago Aguasclaras
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >> Muere |cRXP_WARN_EN LA ISLA MÁS PEQUEÑA|r y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate <2.1
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entrega la misión Una nueva Peste
    .accept 492 >>Acepta la misión Una nueva Peste
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entrega la misión Una nueva Peste
    .accept 492 >>Acepta la misión Una nueva Peste
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 372 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step
    #optional
    #xprate <2.1
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entrega la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
step
    #xprate <2.1
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Entrega la misión Regresa junto al magistrado
    .turnin 355 >>Entrega la misión Habla con Sevren
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >> Abandona la misión En guerra con la Cruzada Escarlata
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Sra. Winters|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
step
    #xprate <2.1
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Habla con |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    #xprate <1.5
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Zelote Escarlata capturado|r y con el |cRXP_FRIENDLY_Montaraz capturado|r abajo en la parte de atrás de la posada
    .turnin 407 >>Entrega la misión Campos de pena
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >> Entrega la misión Una nueva Peste
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step
    #xprate <2.1
    .goto Tirisfal Glades,61.94,51.40
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz capturado|r abajo al fondo de la posada
    .turnin 492 >> Entrega la misión Una nueva Peste
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Corazón azul|r (abajo) dentro de la posada
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Mata a |cRXP_ENEMY_Corazón azul|r, luego habla con |cRXP_FRIENDLY_Penny|r arriba
    .gossipoption 110751 >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 588 >>Aprende |T135926:0|t[Fuego interno]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 6074 >>Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 145 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 1449 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1766 >> Aprende |T132219:0|t[Patada]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1758 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Aprende |T136168:0|t[Cauce de salud]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <14,1
step << skip
    #completewith Entersilverpine
    >>|cRXP_WARN_Si ves a|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, habla con él y mátalo. Despójalo para obtener la carta. Patrulla el camino entre Rémol y El Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate <2.1
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Entrega la misión Patrulla de la retaguardia
    .target Deathguard Linnea
step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Ahora deberías buscar un grupo para Sima Ígnea
    .dungeon RFC
step
    #optional
    #completewith ZeptoDurotar
    .abandon 374 >>Abandona la misión Prueba de defunción
step
    #optional
    #completewith ZeptoDurotar
    .abandon 375 >>Abandona la misión El frío de la muerte
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>Toma el zepelín hacia Durotar
    >>Haz piedras de afilar/vendas mientras esperas << Warrior/Rogue
    >>Conjura comida/agua mientras esperas << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Viaja a Orgrimmar
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_¡No vueles a ningún lado!|r
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>Mata a los |cRXP_ENEMY_Filo Ardiente|r en Roca del Cráneo hasta que obtengas una |cRXP_LOOT_Insignia de Teniente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Entrega la misión Enemigos ocultos
    .accept 5727 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 5761 >>Acepta la misión Matar a la bestia
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Entrega la misión Enemigos ocultos
    .accept 5728 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entra por el portal de la instancia a Sima Ígnea. Entra en la mazmorra
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_Si es posible, haz que los miembros del grupo compartan las siguientes misiones|r
    .accept 5722 >> Acepta la misión Buscando la cartera perdida
    .accept 5723 >> Acepta la misión Midiendo fuerzas con el enemigo
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Entrega la misión Buscando la cartera perdida
    .accept 5724 >> Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Mata a |cRXP_ENEMY_Taragaman el Hambriento|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Mata a |cRXP_ENEMY_Bazzalan|r y a |cRXP_ENEMY_Jergosh el Convocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5761 >>Entrega la misión Matar a la bestia
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Entrega la misión Enemigos ocultos
    .accept 5729 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5729 >> Entrega la misión Enemigos ocultos
    .accept 5730 >> Acepta la misión Enemigos ocultos
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >> Viaja a Cerrotajo
step << !Undead
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Aprende tus hechizos de clase
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Aprende tus hechizos de clase
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Viaja a la Avanzada del Puente
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar

]])
