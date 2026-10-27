if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Guía Forever (H)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía para Orcos y Trols. Deberías elegir la misma zona inicial donde empiezas|r
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Acepta la misión Tu lugar en el mundo
    .target Kaltunk
step << Warrior/Shaman/Warlock/Mage/Priest
    #completewith next
    +|cRXP_WARN_Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas 35 cobres en objetos para vender (incluyendo tu armadura)|r << Warlock
    +|cRXP_WARN_Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas 60 cobres en objetos para vender (incluyendo tu armadura)|r << Maget
    +|cRXP_WARN_Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas 50 cobres en objetos para vender (incluyendo tu armadura)|r << Priest
    +|cRXP_WARN_Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas 10 cobres en objetos para vender (incluyendo tu armadura)|r << Warrior/Shaman
    .goto 1411/1,-4281.07,-720.15,30,0 << Warlock/Mage/Priest
    .goto 1411/1,-4299.05,-494.9,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto 1411/1,-4214.45,-623.92.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Acepta la misión Familiares viles
    .target Ruzan
step << Warrior/Shaman
    .goto 1411/1,-4214.45,-565.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.01
step
    .goto 1411/1,-4198.05,-605.59,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entrega la misión Tu lugar en el mundo
    .accept 788 >>Acepta la misión Dientes afilados
    --.accept 97279 >>Accept Wayward Weapons
    .target Gornek
    --97279 not worth doing, bad xp loot quest, no followup
step << Warrior/Shaman
    .goto 1411/1,-4198.05,-605.59,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla] << Warrior
    .train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
step << Warlock
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Aprende |T135817:0|t[Inmolar]
    .target Nartok
step << Hunter/Mage/Priest
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Hunter
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,10,6394,1 << !Hunter --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << skip
    #completewith Boars
    >>Despoja las |cRXP_PICK_Armas de entrenamiento abandonadas|r del suelo
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith next
    .goto 1411/1,-4266.26,-563.29,25,0
    >>Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r en el camino hacia el Aquelarre del Filo Ardiente
    >>|cRXP_WARN_Intenta llegar al nivel 2 antes de llegar allí|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto 1411/1,-4357.74,-180.47,100 >> Viaja hacia el Aquelarre del Filo Ardiente
    .isOnQuest 1485
step << Warlock
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Mata a los |cRXP_ENEMY_Familiares viles|r. Despójalos para obtener las |cRXP_LOOT_Cabezas de familiar vil|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto 1411/1,-4266.26,-563.29,35,0 << !Warlock
    .goto 1411/1,-4283.18,-512.53,45,0 << !Warlock
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Acepta la misión Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto 1411/1,-4109.22,-546.370
    >>Mata a |cRXP_ENEMY_Sarkoth|r. Despójalo para obtener la |cRXP_LOOT_Garra destrozada de Sarkoth|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Entrega la misión Sarkoth
    .accept 804 >>Acepta la misión Sarkoth
    .target Hana'zua
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #loop
	.goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+685 >> Mata enemigos hasta alcanzar 685+/1400xp
    .mob Mottled Boar
step
    #optional
    #label Boars
step << skip
    .goto 1411/1,-4260.000,-404.200
    >>Despoja las |cRXP_PICK_Armas de entrenamiento abandonadas|r del suelo
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    #label Duokna2
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto 1411/1,-4214.400,-624.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Entrega la misión Familiares viles
    .accept 1499 >>Acepta la misión Familiares viles
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step << Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Entrega la misión Familiares viles
    .accept 794 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto 1411/1,-4198.05,-605.59,12,0 << Warlock
    .goto 1411/1,-4198.58,-602.41,12,0 << !Warlock
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Entrega la misión Dientes afilados << Shaman
    .turnin 788 >>Entrega la misión Dientes afilados << !Shaman
    .accept 789 >>Acepta la misión Aguijón de escórpido
    .accept 2383 >>Acepta la misión Papiro simple << Orc Warrior
    .accept 3065 >>Acepta la misión Tablilla simple << Troll Warrior
    .accept 3082 >>Acepta la misión Tablilla con grabados << Troll Hunter
    .accept 3083 >>Acepta la misión Tablilla encriptada << Troll Rogue
    .accept 3084 >>Acepta la misión La tablilla con runas grabadas << Troll Shaman
    .accept 3085 >>Acepta la misión Tablilla sacralizada << Troll Priest
    .accept 3086 >>Acepta la misión Tablilla glífica << Troll Mage
    .accept 98575 >>Acepta la misión Contaminated Tablilla << Troll Warlock
    .accept 3087 >>Acepta la misión Papiro con grabados << Orc Hunter
    .accept 3088 >>Acepta la misión Papiro encriptado << Orc Rogue
    .accept 3089 >>Acepta la misión El papiro con runas grabadas << Orc Shaman
    .accept 3090 >>Acepta la misión Papiro corrupto << Orc Warlock
    .accept 98576 >>Acepta la misión Papiro glífico << Orc Mage
    .turnin 804,1 >>Entrega la misión Sarkoth << Shaman
    .turnin 804 >>Entrega la misión Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Viaja hacia |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entrega la misión Tablilla encriptada << Troll Rogue
    .turnin 3088 >>Entrega la misión Papiro encriptado << Orc Rogue
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entrega la misión Tablilla encriptada << Troll Rogue
    .turnin 3088 >>Entrega la misión Papiro encriptado << Orc Rogue
    .target Rwag
step
    #optional
    .goto 1411/1,-4102.400,-588.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kzan Latispina|r al fondo de la cueva
    .turnin 97279 >>Entrega la misión Armas extraviadas
    .target Kzan Thornslash
    .isQuestComplete 97279
step
    #optional
    .abandon 97279 >>Abandona la misión Armas extraviadas
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kzan|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135139:0|t[Bastón corto] (97 cobres)
    .target Kzan Thornslash
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kzan|r
    >>|cRXP_BUY_Compra un|r |T135139:0|t[Bastón corto] |cRXP_BUY_a este vendedor|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0097
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step << Rogue/Warrior
    .goto 1411/1,-4106.000,-593.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Norzsh|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Norzsh
step << Warlock
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entrega la misión Papiro corrupto << Orc Warlock
    .turnin 98575 >>Entrega la misión Contaminated Tablilla << Troll Warlock
    .train 172 >> Aprende |T136118:0|t[Corrupción]
    .target Nartok
step
    #label Galgar
    .goto 1411/1,-4221.85,-561.52,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Acepta la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
step << !Rogue !Shaman
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entrega la misión Tablilla glífica << Troll Mage
    .turnin 98576 >>Entrega la misión Glyph Papyrus << Orc Mage
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acepta la misión Familiares viles
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acepta la misión Peones vagos
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto 1411/1,-4340.82,-628.50,20,0
    .goto 1411/1,-4375.71,-507.590,45,0
    .goto 1411/1,-4467.19,-506.53,45,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Mata |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |cRXP_LOOT_Colas de escórpidos obreros|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto 1411/1,-4177.96,-248.5,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto 1411/1,-4146.24,-583.03,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto 1411/1,-4177.96,-315.13,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4442.34,-347.2,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Mata |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |cRXP_LOOT_Colas de escórpidos obreros|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto 1411/1,-4340.82,-628.50,0
	.goto 1411/1,-4340.82,-628.50,25,0
	.goto 1411/1,-4375.71,-507.590,25,0
	.goto 1411/1,-4467.19,-506.53,25,0
	.goto 1411/1,-4433.88,-329.93,25,0
	.goto 1411/1,-4452.38,-232.640,25,0
	.goto 1411/1,-4283.71,-228.76,25,0
	.goto 1411/1,-4220.26,-209.73,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 4 >> Mata enemigos hasta subir al nivel 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto 1411/1,-4198.58,-602.41,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Entrega la misión Aguijón de escórpido << Shaman
    .turnin 789 >>Entrega la misión Aguijón de escórpido << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto 1411/1,-4204.4,-629.91
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Mai'ah
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.01
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende tus hechizos de clase
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.021
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Entrega la misión Familiares viles
    .accept 794 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .target Frang
    .money <0.01
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Entrega la misión Peones vagos
    .accept 6394 >>Acepta la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >> Mata enemigos hasta alcanzar 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto 1411/1,-4324.43,-480.10,0
	.goto 1411/1,-4259.92,-411.01,25,0
	.goto 1411/1,-4279.48,-402.55,25,0
	.goto 1411/1,-4333.94,-360.95,25,0
	.goto 1411/1,-4335.53,-294.68,25,0
	.goto 1411/1,-4321.25,-243.220,25,0
	.goto 1411/1,-4366.20,-253.44,25,0
	.goto 1411/1,-4391.05,-328.52,25,0
	.goto 1411/1,-4440.75,-319.36,25,0
	.goto 1411/1,-4462.43,-405.370,25,0
	.goto 1411/1,-4398.98,-411.71,25,0
	.goto 1411/1,-4324.43,-480.10,25,0
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 4+1720 >> Mata enemigos hasta alcanzar 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 5 >> Mata enemigos hasta subir al nivel 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto 1411/1,-4360.38,-175.18,30 >>Entra en la cueva
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto 1411/1,-4361.44,-144.16,15,0
    .goto 1411/1,-4311.74,-113.14,15,0
    .goto 1411/1,-4274.19,-87.76,10 >>Viaja hacia el |cRXP_LOOT_Pico de Thazz'ril|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Mata a los |cRXP_ENEMY_Acechadores viles|r. Despójalos para obtener las |cRXP_LOOT_Pezuña de acechador vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto 1411/1,-4274.19,-87.76
    >>Despoja el |cRXP_LOOT_Pico de Thazz'ril|r junto a la pared
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto 1411/1,-4220.26,-59.56
    >>Mata a |cRXP_ENEMY_Yarrog Sombrarruina|r. Despójalo para obtener el |cRXP_LOOT_Medallón del Filo Ardiente|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto 1411/1,-4220.26,-59.56,0
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    >>Mata a los |cRXP_ENEMY_Acechadores viles|r. Despójalos para obtener las |cRXP_LOOT_Pezuña de acechador vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1680 >> Mata enemigos hasta alcanzar 1680+/2800xp << !Shaman
    .xp 5+690 >> Mata enemigos hasta alcanzar 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1300 >> Mata enemigos hasta alcanzar 1300+/2800xp << !Shaman
    .xp 5+310 >> Mata enemigos hasta alcanzar 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto 1411/1,-4326.01,-41.23
    .goto 1411/1,-4793.96,233.36,30 >>|cRXP_WARN_Realiza un Logout Skip posicionando a tu personaje en el borde de la roca hasta que parezca que flota, luego desconecta y vuelve a entrar|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> HAZ CLIC AQUÍ para un ejemplo
step
    #softcore
    #completewith RazorHill1
    .goto 1411/1,-4326.01,-41.23
    .deathskip >> |cRXP_WARN_Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r cerca de la flecha|r
    .target Ángel de la Resurrección
step
    #softcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Puedes hablar con él desde afuera o en lo alto del búnker|r
    .accept 784 >>Acepta la misión Vencer a los traidores
    .target Gar'thok
step
    #softcore
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Torka|r
    .accept 96825 >>Acepta la misión Esta fruta sabe cómo defenderse
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Viaja hacia la torre
step
    #softcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Sube por la torre hacia Furl
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    #softcore
    #label RazorHill1
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Acepta la misión Por el honor
    .target Turroc
step
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir al Valle de los Retos
    .use 6948
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entrega la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
    .isOnQuest 794
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .target +Canaga Earthcaller
    .goto 1411/1,-4204.4,-629.91
    .xp <6,1
step << Shaman
    .goto 1411/1,-4204.4,-629.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .target Canaga Earthcaller
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Entrega la misión El medallón del Filo Ardiente
    .accept 805 >>Acepta la misión Preséntate en el Poblado Sen'jin
    .target Zureetha Fargaze
step
    .goto 1411/1,-4223.800,-631.000
    >>Haz clic en el |cRXP_PICK_Diario perdido|r encima del barril
    .accept 96652 >>Acepta la misión El aventurero
    .isQuestTurnedIn 794
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acepta la misión Al servicio de la espiritualidad
	.train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Ken'jai
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Mai'ah
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .train 6343 >>Aprende |T136105:0|t[Atronar]
    .target Frang
    .money <0.02
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Viaja hacia |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .train 1776 >> Aprende |T132155:0|t[Gubia]
    .target Rwag
    .money <0.02
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre] |cRXP_BUY_a este vendedor|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vende la Basura
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .target Nartok
    .money <0.02
step << Warlock
    #optional
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto 1411/1,-4255.16,-645.07,25,0
    .goto 1411/1,-4245.64,-691.95,25,0
    .goto 1411/1,-4146.77,-787.12,12,0
    .goto 1411/1,-4120.86,-813.21,8,0
    .goto 1411/1,-4220.79,-841.76,10,0
    .goto 1411/1,-4266.26,-853.39,15,0
    .goto 1411/1,-4295.87,-883.36,25 >>Viaja hacia el |cRXP_PICK_Santuario chamán|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Usa la|r |T134743:0|t[Sapta de tierra]
    .use 6635
step << Shaman
    #label CallOE1
    .goto 1411/1,-4290.59,-878.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación|r
    .turnin 1517 >>Entrega la misión La llamada de la tierra
    .accept 1518 >>Acepta la misión La llamada de la tierra
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .goto 1411/1,-4204.4,-629.91
    .turnin 1518 >>Entrega la misión La llamada de la tierra
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .target Shikrik
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto 1411/1,-4600.96,-603.82,25 >>Sal del Valle de los Retos
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Guía Forever (H)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto 1411/1,-4715.17,-599.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acepta la misión Un cargamento de peón
    .target Ukor
step
    #completewith next
    .subzone 367 >>Viaja al Poblado Sen'jin
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Patrulla un poco|r
    .accept 786 >>Acepta la misión Frustrar los planes kolkar
    .target Lar Prowltusk
step
    .goto 1411/1,-4885.200,-852.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xar'Ti|r
    .accept 97223 >>Acepta la misión Matriarca Garrasangre
    .target Xar'Ti
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acepta la misión Presa práctica
    .accept 96821 >>Acepta la misión A pie
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Acepta la misión Un espíritu responsable
    .accept 97225 >>Acepta la misión Ídolos loa olvidados
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.270
    .turnin 805 >>Entrega la misión Preséntate en el Poblado Sen'jin
    .accept 808 >>Acepta la misión La calavera de Minshina
    .accept 826 >>Acepta la misión Zalazane
    .accept 823 >>Acepta la misión Informa a Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    #completewith next
    .goto 1411/1,-4931.96,-815.32,8,0
    .goto 1411/1,-4939.89,-793.12,8 >> Entra en la gran cabaña
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pa'zula|r
    >>|cRXP_WARN_Esto desbloqueará una misión. Omite este paso si ya tienes 2 profesiones|r
    .train 7411 >> Aprende |T136244:0|t[Encantamiento]
    .target Pa'zula
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pa'zula|r
    .accept 96873 >>Acepta la misión Un dolor de cuello
    .target Pa'zula
    .skill enchanting,<1,1
step << Rogue
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compra |r |T132414:0|t[Hacha arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3131,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
    .money <0.07
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (4 platas 79 cobres). Volverás más tarde si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (3 platas 81 cobre). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 60 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 13 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 71 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto 1411/1,-4939.36,-838.941
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Un'Thuwa
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto 1411/1,-4722.57,-1117.42,40,0
    >>Corre por la playa. Mata a los |cRXP_ENEMY_Reptadores|r y a los |cRXP_ENEMY_Makruras|r. Despójalos para obtener |cRXP_LOOT_Mucosidades|r y |cRXP_LOOT_Ojos|r. No tienes que terminar este paso aquí.
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto 1411/1,-4722.57,-1117.42,75 >> Llega al final de la playa
    .isOnQuest 818
step
    #completewith Bonfire
    >>Mata a los |cRXP_ENEMY_Braceros Kolkar|r y a las |cRXP_ENEMY_Avanzadas Kolkar|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    .goto 1411/1,-4653.84,-983.47,30 >>Entra en la base Kolkar
    .isOnQuest 786
step << Priest
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Empieza a reunir 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_mientras haces misiones por Durotar. Los usarás para hacer tu varita más adelante|r
    >>|cRXP_WARN_Omite este paso si ya has comprado una varita o puedes obtener una barata de la Casa de Subastas.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Empieza a reunir 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_mientras haces misiones por Durotar. Los usarás para hacer tu varita más adelante|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Ten cuidado si|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes|r
    .unitscan Warlord Kolkanis
step
    .goto 1411/1,-4596.20,-1057.14
    >>Quema el |cRXP_PICK_Plan de ataque|r dentro de la tienda en el suelo
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Quema el |cRXP_PICK_Plan de ataque|r en el suelo
    .goto 1411/1,-4482.52,-917.90
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Quema el |cRXP_PICK_Plan de ataque|r en el suelo
    .goto 1411/1,-4406.91,-974.30
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #softcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Esto inicia una misión de escolta|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Pal'juh|r no está ahí, puedes saltarte este paso y suicidarte (deathskip) para reaparecer en la hoguera del Poblado Sen'jin|r
    .accept 99123,1 >>Acepta la misión Perdido in the Sombras
    .target Pal'juh
step
    #hardcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Esto inicia una misión de escolta|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Pal'juh|r no está ahí, puedes omitir este paso|r
    .accept 99123,1 >>Acepta la misión Perdido in the Sombras
    .target Pal'juh
step
    #softcore
    .goto 1411/1,-4681.300,-986.800
    >>Escolta a |cRXP_FRIENDLY_Pal'juh|r fuera del Risco Kolkar
    .complete 99123,1 --
    .target Pal'juh
    .isOnQuest 99123
step << skip
    #softcore
    .goto 1411/1,-4417.49,-985.23,-1
    .goto 1411/1,-5002.81,-774.08,-1
    .deathskip >> Muere en la Fogata y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 786
step << skip
    #hardcore
    #completewith next
    .goto 1411/1,-4656.48,-981.35,30 >>Abandona la base Kolkar
    .isQuestComplete 786
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Patrulla un poco|r
    .turnin 786,1 >>Entrega la misión Frustrar los planes Kolkar << Shaman
    .turnin 786 >>Entrega la misión Frustrar los planes Kolkar << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step
    .goto 1411/1,-4920.900,-814.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Vornal|r
    .turnin 99123 >>Entrega la misión Perdido in the Sombras
    .target Master Vornal
    .isQuestComplete 99123
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (4 platas 79 cobres). Volverás más tarde si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (3 platas 81 cobre). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 60 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 13 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 71 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto 1411/1,-4920.86,-813.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (20)
    .vendor >> Vende la basura
    .collect 159,20,784,1
    .target K'waii
step << !Warlock !Mage !Priest
    .goto 1411/1,-4903.41,-786.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Cómprale|r |T133974:0|t[Anca de carne] |cRXP_BUY_si te lo puedes permitir|r << Warrior/Rogue
    .vendor >> Vende la basura
    .target Hai'zan
step
    #softcore
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Patrulla un poco|r
    .turnin 786,1 >>Entrega la misión Frustrar los planes Kolkar << Shaman
    .turnin 786 >>Entrega la misión Frustrar los planes Kolkar << !Shaman
    .target Lar Prowltusk
step
    #completewith next
    >>Mata |cRXP_ENEMY_Rondadores sombrarrisco|r y |cRXP_ENEMY_Trepadores sombrarrisco|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step
    .goto 1411/1,-4565.700,-192.300
    >>Mata a |cRXP_ENEMY_Ukorterror|r (élite). Despójalo para obtener el |T133628:0|t[|cRXP_LOOT_Paquete perdido de Ukor|r]
    >>|cRXP_WARN_¡Esto es difícil! Forma un grupo si es posible. Omite este paso si no puedes matarlo|r
    .collect 275722,1,96876 --Ukor's Lost Pack (x1)
    .accept 96876 >>Acepta la misión La mochila perdida de Ukor
    .mob Ukorsbane
step
    .goto 1411/1,-4710.400,-209.400
    >>Mata |cRXP_ENEMY_Rondadores sombrarrisco|r y |cRXP_ENEMY_Trepadores sombrarrisco|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step --camp quest
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Entrega la misión El aventurero
    .accept 96604 >>Acepta la misión Bendita naturaleza
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #hardcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Acepta la misión Bendita naturaleza
    .target Brakk
step
    #hardcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Escribe /sit (sentarse) junto a la hoguera y espera un minuto hasta obtener la mejora de "Beneficios del campamento"|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Siéntate
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Entrega la misión Bendita naturaleza
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Acepta la misión Campamento básico: Cocina
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #hardcore
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    #hardcore
    #label Betrayers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r y |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .accept 806 >>Acepta la misión Oscuras tormentas
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .accept 784 >>Acepta la misión Vencer a los traidores
    .accept 837 >>Acepta la misión Invasión
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Acepta la misión Romper huevos
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r
    .train 2550 >>Aprende Cocina
    .turnin 96655 >>Entrega la misión Campamento 101: Cocina
    .target Cook Torka
step
    #hardcore
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cocinar Cocinero Torka|r
    .accept 96825 >>Acepta la misión This Fruit Could Mordedura Atrás
    .target Cook Torka
step
    #hardcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Viaja hacia la torre
step
    #hardcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Sube por la torre hacia Furl
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    #hardcore
    #label RazorHill1
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Acepta la misión Por el honor
    .target Turroc
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Viaja al Fuerte de Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Viaja al Fuerte de Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #completewith AgedEnvelope
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step --south/west of keep
    #completewith next
    .goto 1411/1,-4992.700,-234.400,0
    .goto 1411/1,-5101.700,-178.500,0
    .goto 1411/1,-4992.700,-234.400,25,0
    .goto 1411/1,-5101.700,-178.500,25,0
    >>Despoja el |cRXP_PICK_Arco de asaltante|r del suelo
    >>|cRXP_WARN_Tiene dos ubicaciones de aparición diferentes|r
    .complete 96822,1 --|1/1 Raider's Bow
step --center in keep
    .goto 1411/1,-4994.900,-182.300
    >>Despoja el |cRXP_PICK_Hacha de batalla de asaltante|r del suelo
    .complete 96822,2 --|1/1 Raider's Battleaxe
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Comandante de vigilancia Zalafil|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si tienes una|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >> Ve al segundo piso del castillo
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Mata al |cRXP_ENEMY_Teniente Benedict|r. Despójalo para obtener su |cRXP_LOOT_Llave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto 1411/1,-5124.42,-229.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>|cRXP_WARN_Sube las escaleras en el castillo|r
    >>Abre el |cRXP_PICK_Cofre de Benedict|r. Despójalo para obtener el |T133471:0|t[|cRXP_LOOT_Sobre viejo|r]
    >>Usa el |T133471:0|t[|cRXP_LOOT_Sobre viejo|r] para iniciar la misión
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acepta la misión Las órdenes del almirante
    .use 4881
step --south/west of keep
    #loop
    .goto 1411/1,-4992.700,-234.400,0
    .goto 1411/1,-5101.700,-178.500,0
    .goto 1411/1,-5101.700,-178.500,25,0
    .goto 1411/1,-4992.700,-234.400,25,0
    >>Despoja el |cRXP_PICK_Arco del Incursor|r en el suelo
    >>|cRXP_WARN_Tiene dos ubicaciones de aparición diferentes|r
    .complete 96822,1 --|1/1 Raider's Bow
step  --northern tower
    #label AgedEnvelope
    .goto 1411/1,-4951.500,-59.600
    >>Despoja el |cRXP_PICK_Escudo de asaltante|r del suelo
    .complete 96822,3 --|1/1 Raider's Shield
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2520 >> Mata enemigos hasta alcanzar 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2200 >> Mata enemigos hasta alcanzar 2200+/4500 exp
    .isOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2070 >> Mata enemigos hasta alcanzar 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+1750 >> Mata enemigos hasta alcanzar 1750+/4500 exp
    .isOnQuest 823
step << skip
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >> Muere en la torre norte fuera del Fuerte de Tiragarde y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step --camp quest
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Entrega la misión El aventurero
    .accept 96604 >>Acepta la misión Bendita naturaleza
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #softcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Acepta la misión Bendita naturaleza
    .target Brakk
step
    #softcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Escribe /sit en la hoguera y espera un minuto hasta que obtengas el efecto "Camp Benefits"|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Siéntate
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Entrega la misión El gran mundo exterior
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Acepta la misión Campamento básico: Cocina
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r y |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .accept 806 >>Acepta la misión Oscuras tormentas
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .turnin 96821 >>Entrega la misión A pie
    .accept 825 >>Acepta la misión Los restos del naufragio...
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .accept 837 >>Acepta la misión Invasión
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Acepta la misión Romper huevos
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    #label RazorTurnins1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 825 >>Acepta la misión Los restos del naufragio...
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .target +Gar'Thok
step
    #optional
    .goto 1411/1,-4724.900,287.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .accept 99048 >>Acepta la misión Una mano faltante
    .target Orgnil Soulscar
    .xp <8,1
step
    #softcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r
    .train 2550 >>Aprende Cocina
    .turnin 96655 >>Entrega la misión Campamento básico: Cocina
    .target Cook Torka
step
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Viaja hacia la torre
step
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Sube por la torre hacia Furl
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Entrega la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (4 platas 79 cobres). Volverás más tarde si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (3 platas 81 cobre). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 60 cobres). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 13 cobres). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaw|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 83 cobres). Volverás más adelante si aún no tienes suficiente
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a este vendedor|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .bindlocation 362
    .target Innkeeper Grosk
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    >>|cRXP_WARN_¡Guarda 4 monedas de plata para tus hechizos de clase!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_¡Guarda 2 monedas de plata para tus hechizos de clase!|r << Priest
    .vendor >> Vende la Basura
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .vendor >> Vende la Basura
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step
    .goto 1411/1,-4815.400,306.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turroc|r
    .turnin 96822 >>Entrega la misión Por el honor
    .target Turroc
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Aprende tus hechizos de clase
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .train 5116 >> Aprende tus hechizos de clase
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Aprende tus hechizos de clase
    .target Kaplak
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Entrega la misión Al servicio de la espiritualidad
    .accept 5648 >> Acepta la misión Prendas de espiritualidad
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior Rango 2]
    .target Tai'jin
step << Priest
    .goto 1411/1,-4770.16,170.62
    >>Lanza |T135929:0|t[Sanación inferior] y |T135987:0|t[Palabra de poder: entereza] sobre |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Entrega la misión Prendas de espiritualidad
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
step << Rogue/Warrior
    .goto 1411/1,-4826.74,330.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .money <0.01
    .target Rawrk
step
    .goto 1411/1,-4838.37,321.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto 1411/1,-4724.900,287.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .accept 99048 >>Acepta la misión A Missing Hand
    .target Orgnil Soulscar
step
    .goto 1411/1,-5061.700,201.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heglan Shadeeye|r
    .turnin 99048 >>Entrega la misión A Missing Hand
    .accept 99049 >>Acepta la misión Amenaza desde las profundidades
    .target Heglan Shadeeye
step
    .goto 1411/1,-5073.900,244.700
    >>Despoja la |cRXP_PICK_Daga abandonada|r del suelo
    .complete 99049,1 --|1/1 Orcish Dagger
step
    .goto 1411/1,-5140.800,229.100
    >>Despoja la |cRXP_PICK_Parte de arma|r del suelo
    .complete 99049,3 --|1/1 Broken Bone Trident
step
    .goto 1411/1,-5138.000,314.100
    >>Despoja los |cRXP_PICK_Escombros extraños|r del suelo
    .complete 99049,2 --|1/1 Banner Scrap
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto 1411/1,-5238.63,-146.63,0
    .goto 1411/1,-5238.63,-146.63,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    .goto 1411/1,-5263.49,-301.03,20,0
    .goto 1411/1,-5245.51,-330.64,20,0
    .goto 1411/1,-5267.72,-326.41,20,0
    .goto 1411/1,-5306.31,-239.690,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    >>Despoja las |cRXP_PICK_Cajas de herramientas gnoma|r dentro y alrededor de los barcos
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith MartEgg
    .goto 1411/1,-5510.41,-634.14,100 >> Nada a la Isla
step
    #completewith TigerFur
    >>Despoja los |cRXP_PICK_Huevos de colazote|r del suelo
    >>|cRXP_WARN_Generalmente están protegidos por un|r |cRXP_ENEMY_Colazote Garrasangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #optional
    #completewith MainIsland
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step --center of first small island
    #label MartEgg
    .goto 1411/1,-5599.500,-716.700
    >>Mata a la |cRXP_ENEMY_Matriarca Garrasangre|r. Despójala para obtener los |cRXP_LOOT_Huevos de matriarca Garrasangre|r
    .complete 97223,1 --|1/1 Bloodtalon Matriarch Eggs
    .mob Bloodtalon Matriarch
step
    #label MainIsland
    .goto 1411/1,-5501.95,-1167.12,150 >>Nada a la isla principal
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener |cRXP_LOOT_Colgantes embrujados|r
    >>|cRXP_WARN_Usa|r |T135952:0|t[Desencantar] |cRXP_WARN_en los|r |cRXP_LOOT_Colgantes embrujados|r |cRXP_WARN_para obtener|r |T1500915:0|t[|cRXP_LOOT_Residuo luminoso|r]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #completewith ZalazaneKill
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #completewith VooHexTrolls
    >>Despoja los |cRXP_PICK_Ídolos loa|r del suelo
    >>|cRXP_WARN_Se encuentran principalmente cerca de los muros de piedra de la zona|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #optional
    #completewith next
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto 1411/1,-5526.27,-1286.62
    >>Despoja una de los |cRXP_LOOT_Calaveras|r del suelo
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto 1411/1,-5526.27,-1286.62
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith VooHexTrolls
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener |cRXP_LOOT_Colgantes embrujados|r
    >>|cRXP_WARN_Usa|r |T135952:0|t[Desencantar] |cRXP_WARN_en los|r |cRXP_LOOT_Colgantes embrujados|r |cRXP_WARN_para obtener|r |T1500915:0|t[|cRXP_LOOT_Residuo luminoso|r]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #label VooHexTrolls
    #loop
    .goto 1411/1,-5393.900,-1215.300,0
    .goto 1411/1,-5393.900,-1215.300,30,0
    .goto 1411/1,-5373.300,-1153.000,30,0
    .goto 1411/1,-5427.400,-1114.900,30,0
    .goto 1411/1,-5501.500,-1123.600,30,0
    .goto 1411/1,-5587.600,-1212.000,30,0
    .goto 1411/1,-5479.000,-1212.000,30,0
    >>Despoja los |cRXP_PICK_Ídolos loa|r del suelo
    >>|cRXP_WARN_Se encuentran principalmente cerca de los muros de piedra de la zona|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #completewith TaillasherEggs
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TigerFur
    #loop
    .goto 1411/1,-5123.90,-1132.93,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label TaillasherEggs
    #loop
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Despoja los |cRXP_PICK_Huevos de colazote|r del suelo
    >>|cRXP_WARN_Generalmente están protegidos por un|r |cRXP_ENEMY_Colazote Garrasangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #loop
    .goto 1411/1,-5115.96,-794.53,0
    .goto 1411/1,-5115.96,-794.53,60,0
    .goto 1411/1,-5035.07,-916.490,60,0
    .goto 1411/1,-4990.65,-989.81,60,0
    .goto 1411/1,-4905.52,-1028.23,60,0
    .goto 1411/1,-4807.17,-1122.35,60,0
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith next
    .goto 1411/1,-5002.81,-774.08,50,0
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r, o corre de vuelta
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Viaja al Poblado Sen'jin
step
    .goto 1411/1,-4948.88,-768.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Salta a la cabaña|r
    .vendor >> Vende la basura y repara
    .target Trayexir
    .isOnQuest 808
step
    .goto 1411/1,-4960.100,-791.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pa'zula|r
    .turnin 96873 >>Entrega la misión Un dolor de cuello
    .target Pa'zula
    .isQuestComplete 96873
    .skill enchanting,<1,1
step << Mage
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Aprende tus hechizos de clase
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Entrega la misión La calavera de Minshina
    .turnin 826,2 >>Entrega la misión Zalazane << Shaman
    .turnin 826 >>Entrega la misión Zalazane << !Shaman
    .turnin 97225 >>Entrega la misión Ídolos loa olvidados
    .target +Master Gadrin
    .goto 1411/1,-4920.86,-825.90
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target +Master Vornal
    .goto 1411/1,-4920.86,-813.91
    .turnin 817 >>Entrega la misión Presa práctica
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
step
    .goto 1411/1,-4885.400,-852.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xar'Ti|r
    .turnin 97223 >>Entrega la misión Matriarca Garrasangre
    .target Xar'Ti
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Asigna a tus barras de acción|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_y|r |T134712:0|t[Pegamento muy pegajoso]|cRXP_WARN_. Guárdalos para situaciones de emergencia|r
step
    .goto 1411/1,-4715.100,-599.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ukor|r
    .turnin 96876 >>Entrega la misión La mochila perdida de Ukor
    .target Ukor
    .isOnQuest 96876
step --at low lvl razormanes
    #completewith QuilboarsScouts
    >>Despoja el |cRXP_PICK_Fruto pera espinosa|r del suelo
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #label QuilboarsScouts
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto 1411/1,-4442.34,112.46,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Mata |cRXP_ENEMY_Jabaespín Crines de Acero|r y |cRXP_ENEMY_Exploradores Crines de Acero|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step --at low lvl razormanes
    #loop
    .goto 1411/1,-4543.300,82.500,0
    .goto 1411/1,-4543.300,82.500,40,0
    .goto 1411/1,-4459.000,66.300,40,0
    >>Despoja el |cRXP_PICK_Fruto pera espinosa|r del suelo
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step << Hunter
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #loop
	.goto 1411/1,-4475.12,92.72,0
	.goto 1411/1,-4475.12,92.72,50,0
	.goto 1411/1,-4401.09,205.52,50,0
	.goto 1411/1,-4270.49,260.51,50,0
	.goto 1411/1,-4166.33,233.01,50,0
	.goto 1411/1,-4130.37,182.25,50,0
	.goto 1411/1,-4208.1,98.71,50,0
	.goto 1411/1,-4300.1,57.11,50,0
	.goto 1411/1,-4456.61,65.57,50,0
    .xp 9+4960 >> Farmea hasta 4960+/6500xp
step
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 825 >>Entrega la misión Los restos del naufragio...
    .turnin 837 >>Entrega la misión Invasión << Hunter
    .target Gar'Thok
step
    .goto 1411/1,-4725.000,287.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil Escaralma|r
    .turnin 99049 >>Entrega la misión Amenaza desde las profundidades
    --.accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar
step
    .goto 1411/1,-4665.47,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Entrega la misión Romper huevos
    .turnin 96825 >>Entrega la misión Esta fruta sabe cómo defenderse
    .target Cook Torka
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6062 >>Acepta la misión Domesticar la bestia
    .trainer >> Aprende tus hechizos de clase
    .target Thotar
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto 1411/1,-4693.49,-183.64,0
    .goto 1411/1,-4699.31,101.88,40,0
    .goto 1411/1,-4696.14,37.73,40,0
    .goto 1411/1,-4693.49,-1.4,40,0
    .goto 1411/1,-4701.42,-66.26,40,0
    .goto 1411/1,-4649.61,-82.83,40,0
    .use 15917 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí jaspeado temible|r |cRXP_WARN_a rango máximo|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6062 >>Entrega la misión Domesticar la bestia
    .accept 6083 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6083 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Jabalí jaspeado temible|r haciendo clic derecho en su marco de unidad y haciendo clic en Retirar, de lo contrario no podrás domesticar un|r |cRXP_ENEMY_Reptador de espuma|r
step << Hunter
    #loop
    .goto 1411/1,-5115.44,984.19,0
    .goto 1411/1,-5091.64,809.0,40,0
    .goto 1411/1,-5129.18,877.03,40,0
    .goto 1411/1,-5137.11,934.49,40,0
    >>|cRXP_WARN_No mates a los|r |cRXP_ENEMY_Escórpidos acorazados|r |cRXP_WARN_que ves. Los necesitarás más tarde|r
    .use 15919 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Reptador de espuma|r |cRXP_WARN_a rango máximo|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6083 >>Entrega la misión Domesticar la bestia
    .accept 6082 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Reptador de espuma|r haciendo clic derecho en su marco de unidad y haciendo clic en Retirar, de lo contrario no podrás domesticar a un|r |cRXP_ENEMY_Escórpido acorazado|r
step << Hunter
    #loop
    .goto 1411/1,-4862.16,506.2,0
    .goto 1411/1,-4862.16,506.2,40,0
    .goto 1411/1,-4818.28,616.53,40,0
    .goto 1411/1,-4829.38,733.21,40,0
    .goto 1411/1,-4908.17,727.57,40,0
    .goto 1411/1,-4933.55,776.21,40,0
    .goto 1411/1,-4973.73,846.71,40,0
    .goto 1411/1,-4984.31,906.29,40,0
    .use 15920 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Escórpido acorazado|r |cRXP_WARN_a rango máximo|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6082 >>Entrega la misión Domesticar la bestia
    .accept 6081 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith Rezlak1
    +|cRXP_WARN_Pon|r |T132164:0|t[Domesticar bestia]|cRXP_WARN_,|r |T136095:0|t[Retirar mascota]|cRXP_WARN_, y|r |T132161:0|t[Llamar a mascota] |cRXP_WARN_en tu barra de acciones|r
step << Hunter
    .goto 1411/1,-4666.0,305.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Compra|r |T133972:0|t[Cecina dura] |cRXP_BUY_al vendedor|r. |cRXP_BUY_Usarás esto para alimentar a tu mascota más tarde|r
    .vendor >> Vende la Basura
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step << Hunter
    #optional
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
    .xp <10,1
step << Hunter/Shaman
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acepta la misión Perdido, pero no olvidado
    .target Misha Tor'kren
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Aprende tus hechizos de clase
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Swart
    .xp <10,1
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
    .xp <10,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acepta la misión Maleficio de Debilidad << Troll
    .accept 5660 >> Acepta la misión Toque de debilidad << Undead
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
    .xp <10,1
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <10,1
step << !Hunter
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >> Viaja a Rezlak
step
    #label Rezlak1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acepta la misión Las arpías Viento Seco
    .target Rezlak
step
    #loop
    .goto 1411/1,-4590.39,1036.36,0
    .goto 1411/1,-4590.39,1036.36,40,0
    .goto 1411/1,-4590.39,950.7,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto 1411/1,-4505.79,597.14,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Despoja los |cRXP_PICK_Sacos de provisiones robado|r del suelo
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entrega la misión Las arpías Viento Seco
    .accept 835 >>Acepta la misión Asegurar las rutas
    .target Rezlak
step
    #completewith next
    .goto 1411/1,-4327.07,932.02,40,0
    .goto 1411/1,-4198.05,911.22,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Salta a Monte del Trueno << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Retira tu|r |T136218:0|t[Diablillo] |cRXP_WARN_haciendo clic derecho en su marco de unidad y seleccionando retirar|r << Warlock
    .cast 2641 >>|cRXP_WARN_Usa|r |T136095:0|t[Retirar mascota] |cRXP_WARN_y después salta dentro de Monte del Trueno|r << Hunter
step
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_No tengas miedo de morir por la |cRXP_LOOT_Garra|r ya que resucitarás en el |cRXP_FRIENDLY_Ángel de la Resurrección|r después|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4449.74,1188.64
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 806
    .xp >10,1
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4035.2,679.63,60 >> Ábrete paso luchando para salir de Monte del Trueno
    .isQuestComplete 806
    .xp <10,1
step << Hunter/Shaman
    #hardcore
    .goto 1411/1,-4035.2,679.63,60 >> Ábrete paso luchando para salir de Monte del Trueno
    .isQuestComplete 806
step << Hunter/Shaman
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 45 minutos para la misión. NO te vayas AFK ni desconectes durante los próximos 5 minutos|r
    .accept 812 >>Acepta la misión Se necesita un remedio
    .target Rhinag
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    .xp 9+2520 >>Mata enemigos hasta alcanzar 2520+/6500 del nivel 9
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    +Mata monstruos hasta que tu recarga de piedra de hogar sea menor de 5 minutos
    .cooldown item,6948,<0
step << Hunter/Shaman
    #label EnterOrg
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
step << Hunter/Shaman
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Está arriba en el edificio|r
    .accept 97246 >>Acepta la misión Comida apetecible
    .target Thatog
step << Hunter/Shaman
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Entrega la misión Comida apetecible
    .accept 97249 >>Acepta la misión Comida favorita
    .target Borstan
step << Hunter/Shaman
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Entrega la misión Halikor's Hoof
    .target Kamari
    .isOnQuest 96877
step << Hunter/Shaman
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'geld|r
    .accept 97242 >>Acepta la misión La mezcla de Yelmak
    .target Kor'geld
step << Hunter/Shaman
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Viaja al Valle del Honor
step << Hunter/Shaman
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Despoja el |cRXP_PICK_Puñado de eneas|r y los |cRXP_PICK_Esquejes de césped lanza|r en el agua
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Entrega la misión Domesticar la bestia
    .target Ormak Grimshot
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Entrena los hechizos de tu mascota
    .target Xao'tsu
step << Hunter
    #completewith FindAntidote
    +|cRXP_WARN_Pon|r |T132162:0|t[Adiestramiento de bestias]|cRXP_WARN_(bajo la pestaña General),|r |T132163:0|t[Revivir mascota]|cRXP_WARN_, y|r |T132165:0|t[Alimentar mascota] |cRXP_WARN_en tus Barras de acciones|r
    >>|cRXP_WARN_Recuerda entrenar a tu mascota siempre que obtenga Puntos de entrenamiento mediante|r |T132162:0|t[Adiestramiento de bestias]
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado] |cRXP_WARN_cuando alcances el nivel 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Hunter/Shaman
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Entrega la misión La mezcla de Yelmak
    .target Kor'geld
step << Hunter/Shaman
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Puede que tengas que esperar aproximadamente 10 segundos antes de poder aceptar esta misión|r
    .accept 97275 >>Acepta la misión La prisa de Whuut
    .target Yelmak
step << Hunter/Shaman
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Entrega la misión La prisa de Whuut
    .target Whuut
step << Hunter/Shaman
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Entrega la misión Comida favorita
    .target Migi
step << Hunter/Shaman
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thra|r
    .accept 97326 >>Acepta la misión De rocas a descansos
    .target Thra
step << Hunter/Shaman
    .goto 1454/1,-4293.600,1949.900
    >>Despoja las |cRXP_PICK_Rocas|r naranjas del suelo
    >>|cRXP_WARN_¡Omite esta misión si hay mucha competencia! No hay tantas |cRXP_PICK_Rocas|r y no reaparecen rápidamente|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step << Hunter/Shaman
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Entrega la misión De rocas a descansos
    .target Thra
    .isQuestComplete 97326
step << Hunter/Shaman
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step << Hunter/Shaman
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
step << Hunter/Shaman
    #label FindAntidote
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'ghan|r en el Circo de las Sombras
    .accept 813 >>Acepta la misión En busca del antídoto
    .target Kor'ghan
    .isOnQuest 812
step << Hunter/Shaman
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Abandona la misión Se necesita un remedio. Esto eliminará el temporizador de la misión pero seguirás pudiendo hacerla|r
    .abandon 812 >>Abandona la misión Se necesita un remedio
    .isOnQuest 812
step << Priest
    #optional
    #loop
    .goto 1411/1,-4162.63,943.30,40,0--c:Durotar,41.61,24.54
    .goto 1411/1,-4073.80,953.87,40,0--c:Durotar,39.93,24.24
    .goto 1411/1,-4026.21,866.10,40,0--c:Durotar,39.03,26.73
    .goto 1411/1,-4035.20,687.38--c:Durotar,39.20,31.80
    .xp 9+3150 >>Mata enemigos hasta alcanzar 3150+/6500 del nivel 9
step
    #completewith RazorTurnins2
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0,1
step
    #completewith RazorTurnins2
    .subzone 362 >>Viaja a Cerrotajo
    .isQuestComplete 806
    .cooldown item,6948,<0
step
    #requires NeedACure
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .vendor >> Vende la Basura
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .collect 1179,15,828,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,828,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .accept 828 >>Acepta la misión Margoz
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 837 >>Entrega la misión Invasión
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Aprende tus hechizos de clase
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acepta la misión Maleficio de Debilidad << Troll
    .accept 5660 >> Acepta la misión Toque de debilidad << Undead
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .train 13549 >> Aprende tus hechizos de clase
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Aprende tus hechizos de clase
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Guía Forever (H)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orco/Trol) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 Los Baldíos << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step << Shaman/Hunter
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step << Shaman
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
    .isOnQuest 840,2983,1522,2984,1523
step << Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entrega la misión La llamada del fuego
    .accept 1524 >>Acepta la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    #completewith next
    >>Mata a los |cRXP_ENEMY_Crocoliscos Fauzatroz|r en el camino. Despójalos para obtener |cRXP_LOOT_Amuleto de Kron|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #label CallofFire3
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entrega la misión La llamada del fuego
    .accept 1525 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << skip --Shaman
    #completewith MargozTurnIn
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Hunter
    #completewith MargozTurnIn
    +Domestica a un |cRXP_ENEMY_Escórpido Venocola|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #completewith next
    .subzone 371 >>Viaja hacia la Cueva Viento Seco
step << Shaman
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Mata |cRXP_ENEMY_Cultores Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4939.36,824.51,80,0
    .goto 1411/1,-4945.18,1101.92,50 >> Viaja hasta |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entrega la misión Margoz
    .accept 827 >>Acepta la misión Roca del Cráneo
    .target Margoz
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4949.41,925.67,50,0
    .goto 1411/1,-4929.32,823.45,50,0
    .goto 1411/1,-4774.39,780.80,50 >> Viaja hacia la Cueva Viento Seco
    .isQuestTurnedIn 828
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4749.01,822.39,12,0
    >>Mata |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step
    #label Ravine
    #completewith next
    .subzone 370 >> Baja saltando al Barranco Árido
step
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Mata |cRXP_ENEMY_Salvajes Viento Seco|r y |cRXP_ENEMY_Brujas de la Tormenta Viento Seco|r
    .use 277661 >>Despoja a las |cRXP_ENEMY_Brujas de la Tormenta Viento Seco|r para obtener un |T134336:0|t[|cRXP_LOOT_Orbe de tormenta apagado|r]. Úsalo para aceptar la misión
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .collect 277661,1,97281 --Dull Storm Orb (x1)
    .accept 97281 >>Acepta la misión Una tormenta inminente
step << skip
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #hardcore
    #completewith next
    .goto 1411/1,-4804.53,830.5,60,0
    .goto 1411/1,-4698.78,842.48,60,0
    .goto 1411/1,-4414.31,999.70,60 >> Viaja por la cueva hacia |cRXP_FRIENDLY_Rezlak|r
step
    #label SecuringLinesTurnIn
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entrega la misión Asegurar las rutas
    .turnin 97281 >>Entrega la misión Una tormenta inminente
    .accept 97282 >>Acepta la misión Potencial tormentoso
    .target Rezlak
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4010.35,1031.42,0
    .goto 1411/1,-4217.09,1087.47,60,0
    .goto 1411/1,-4100.24,1113.2,60,0
    .goto 1411/1,-4108.7,1229.88,60,0
    .goto 1411/1,-4013.52,1209.08,60,0
    .goto 1411/1,-4010.35,1031.42,60,0
    >>Termina de matar |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #completewith next
    >>Mata |cRXP_ENEMY_Truenagartos|r y |cRXP_ENEMY_Lomorrayos|r. Despójalos para obtener sus |cRXP_LOOT_Órganos de Truenagarto cargados|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step
    #loop
    .goto 1411/1,-4248.400,972.300,0
    .goto 1411/1,-4117.500,747.200,0
    .goto 1411/1,-4248.400,972.300,40,0
    .goto 1411/1,-4117.500,747.200,40,0
    >>Mata a |cRXP_ENEMY_Halikor|r (élite). Despójalo para obtener la |T134061:0|t[|cRXP_LOOT_Pezuña de Halikor|r]
    >>|cRXP_WARN_¡Esto es difícil! Únete a un grupo si es posible. Tiene 800 de salud, pero su daño es manejable. Omite este paso si no puedes matarlo|r
    >>|cRXP_WARN_Tiene al menos dos ubicaciones de aparición diferentes dentro de Monte del Trueno|r
    .collect 275723,1,96877 --Halikor's Hoof (x1)
    .accept 96877 >>Acepta la misión Halikor's Hoof
    .mob Halikor
step
    .goto 1411/1,-4047.300,918.400
    >>Mata |cRXP_ENEMY_Truenagartos|r y |cRXP_ENEMY_Lomorrayos|r. Despójalos para obtener sus |cRXP_LOOT_Órganos de Truenagarto cargados|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step << skip
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto 1411/1,-4414.500,999.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 97282 >>Entrega la misión Potencial tormentoso
    .target Rezlak
step << Shaman/Hunter
    #completewith next
    .goto 1411/1,-4945.18,1101.92,50 >> Viaja hasta |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entrega la misión Margoz
    .accept 827 >>Acepta la misión Roca del Cráneo
    .target Margoz
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4876.97,1452.310,60 >> Viaja hacia Roca del Cráneo
step << Shaman/Hunter
    #completewith Gazzuz
    >>Mata |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    >>Mata |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r y una |cRXP_LOOT_Insignia de Teniente|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #label Gazzuz
    .goto 1411/1,-4701.42,1455.83
    >>Mata a |cRXP_ENEMY_Gazz'uz|r. Despójalo para obtener su |T134085:0|t[|cRXP_LOOT_Ojo de la Sombra ardiente|r]
    >>|cRXP_WARN_Usa el |T134085:0|t[|cRXP_LOOT_Ojo de la Sombra ardiente|r] para empezar la misión|r
    >>|cRXP_WARN_Usa tu|r |T134712:0|t[Pegamento muy pegajoso] |cRXP_WARN_en el|r |cRXP_ENEMY_Abisario|r |cRXP_WARN_para evitar ser golpeado, y|r |T134829:0|t[Pociones de sanación] |cRXP_WARN_para recuperar vida. Usa LoS (línea de visión) para evitar|r |cRXP_ENEMY_las Descargas de las Sombras|r de |cRXP_WARN_Gazz'uz|r
    >>|cRXP_WARN_Puedes correr hacia las zonas de agua que hay dentro de la cueva para evadir al|r |cRXP_ENEMY_Abisario|r |cRXP_WARN_después de matar a|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Ten cuidado, ya que es MUY difícil. Puedes saltarte esta misión si lo necesitas|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Acepta la misión Sombras Ardientes
    .use 4903
	.unitscan Gazz'uz
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Mata |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r y una |cRXP_LOOT_Insignia de Teniente|r
    >>|cRXP_WARN_Omite la|r |cRXP_LOOT_Insignia de Teniente|r |cRXP_WARN_si no tienes suerte con el botín|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #completewith Ravine
    >>Mata |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entrega la misión Roca del Cráneo
    .accept 829 >>Acepta la misión Neeru Hojafuego
    .target Margoz
    .isQuestTurnedIn 806
step
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
step << !Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trak'gen|r
    .vendor >> Vende tu basura
    .target Trak'gen
    .isQuestAvailable 97246
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra un |r |T135419:0|t[Hacha arrojadiza afilada] |cRXP_BUY_a este vendedor|r
    .collect 3135,1,354,1 --Sharp Throwing Axe (200)
    .vendor >> Vende tu basura
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .money <0.03
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Hacha arrojadiza afilada] |cRXP_WARN_cuando tengas nivel 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Entrega la misión Maleficio de Debilidad
    .trainer >> Aprende tus hechizos de clase
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Entrega la misión Maleficio de Debilidad
    .trainer >> Aprende tus hechizos de clase
    .target Ur'kyo
step
    .goto 1454/1,-4460.000,1598.600
    .goto 1454/1,-4460.600,1584.300,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Está arriba en el edificio|r
    .accept 97246 >>Acepta la misión Comida apetecible
    .target Thatog
step << Shaman
    .goto 1454/1,-4347.54,1634.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,924,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith NeeruFireblade
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borstan|r
    .turnin 97246 >>Entrega la misión Comida apetecible
    .accept 97249 >>Acepta la misión Comida favorita
    .target Borstan
step
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Entrega la misión Halikor's Hoof
    .target Kamari
    .isOnQuest 96877
step
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'geld|r
    .accept 97242 >>Acepta la misión La mezcla de Yelmak
    .target Kor'geld
step
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Viaja al Valle del Honor
step
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Despoja el |cRXP_PICK_Puñado de eneas|r y los |cRXP_PICK_Esquejes de césped lanza|r en el agua
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14281 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <12,1
step
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Entrega la misión La mezcla de Yelmak
    .target Kor'geld
step
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Puede que tengas que esperar aproximadamente 10 segundos antes de poder aceptar esta misión|r
    .accept 97275 >>Acepta la misión La prisa de Whuut
    .target Yelmak
step
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Whuut|r
    .turnin 97275 >>Entrega la misión La prisa de Whuut
    .target Whuut
step
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Entrega la misión Comida favorita
    .target Migi
step
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thra|r
    .accept 97326 >>Acepta la misión De rocas a descansos
    .target Thra
step
    .goto 1454/1,-4293.600,1949.900
    >>Despoja las |cRXP_PICK_Rocas|r naranjas del suelo
    >>|cRXP_WARN_¡Omite esta misión si hay mucha competencia! No hay tantas |cRXP_PICK_Rocas|r y no reaparecen rápidamente|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Entrega la misión De rocas a descansos
    .target Thra
    .isQuestComplete 97326
step << !Shaman !Hunter
    #label Admiralorders1
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step << !Shaman !Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
step
    .goto 1454/1,-4320.700,1750.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kareth|r
    .vendor >>Repara tu equipo
    .target Kareth
    .isOnQuest 829
step << Rogue
    .goto 1454/1,-4280.21,1773.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acepta la misión Mano Destrozada << Orc Rogue/Troll Rogue
    .target Therzok
step << Shaman/Hunter
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entrega la misión En busca del antídoto
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto 1454/1,-4362.13,1834.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Mirket
step << Shaman/Hunter
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entrega la misión Neeru Hojafuego
    .turnin 832 >>Entrega la misión Sombras Ardientes
    .accept 809 >>Acepta la misión Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entrega la misión Neeru Hojafuego
    .accept 809 >>Acepta la misión Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Entra en Sima Ígnea
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
step << !Shaman !Hunter
    --#hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Entra en Sima Ígnea
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
step << Shaman/Hunter
    --#hardcore
    #completewith FoundtheCure
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label FoundtheCure
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acepta la misión Se necesita un remedio
    .turnin 812 >>Entrega la misión Se necesita un remedio
    .target Rhinag
step << Shaman/Hunter
    .goto 1411/1,-3802.55,650.72,50,0
    .goto 1411/1,-3803.08,503.38,50,0
    .goto 1411/1,-3783.51,238.65,50,0
    .goto 1411/1,-3774.53,150.88,50,0
    .goto 1411/1,-3797.79,317.260
    >>Viaja al sur junto al río hacia la Avanzada del Puente
    >>Mata a los |cRXP_ENEMY_Crocoliscos Fauzatroz|r en el camino. Despójalos para obtener |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Omite y abandona esta misión si no cae|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entrega la misión Perdido, pero no olvidado
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entrega la misión Ak'Zeloth
    .accept 924 >>Acepta la misión La Semilla del Demonio
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Shaman/Hunter
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Despoja la|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_junto a|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este objeto tiene un temporizador de 30 minutos, así que date prisa|r
    .turnin 926 >>Entrega la misión La piedra de energía con imperfecciones
    .isOnQuest 924
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Insignia de Teniente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .dungeon RFC
    .isOnQuest 5726
step << !Shaman !Hunter
    #label ZeptoUC1
    .goto 1411/1,-4648.55,1321.88,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    >>|cRXP_WARN_Crea agua mientras esperas|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandona la misión Perdido, pero no olvidado
]])


RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 10-12 Tirisfal (Orco/Trol)
#version 11
#group RestedXP Guía Forever (H)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Bosque de Argénteos << !Hunter !Shaman !Tauren !Skyborne !Undead

step
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Viaja a Rémol
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia de la Muerte Terrence|r
    .accept 96895 >>Acepta la misión The Argent Emisario
    .target Deathguard Terrence
step << Warrior
    #optional
    .abandon 1505 >>Abandona la misión Uzzek, el veterano
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandona la misión Camino de defensa
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ageron|r dentro de la posada
    .accept 1478 >> Acepta la misión Las invocaciones de Halgar
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r dentro de la posada
    .accept 1885 >>Acepta la misión Mennet Carkad
    .target Marion Call
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Haz clic en el|r |cRXP_WARN_Disparador del Mausoleo|r |cRXP_WARN_del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Entrega la misión Habla con Coleman
    .target Coleman Farthing
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 588 >>Aprende |T135926:0|t[Fuego interno]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 145 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1766 >> Aprende |T132219:0|t[Patada]
    .target Marion Call
    .money <0.08
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Aprende |T136168:0|t[Cauce de salud]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñón con motas rojas] |cRXP_BUY_a esta vendedora|r << Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñón con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock/Hunter
    .vendor >> Vende la Basura
    .collect 1179,20,96897,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,96897,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,96897,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,96897,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Acepta la misión Patrulla de la retaguardia
    .target Deathguard Linnea
    .maxlevel 11
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Entrega la misión The Argent Emisario
    .accept 96897 >>Acepta la misión El Culto de los Malditos
    .accept 96898 >>Acepta la misión Los restos de la guerra
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Mata |cRXP_ENEMY_Déspotas oscuros|r y |cRXP_ENEMY_Neófitos oscuros|r. Despójalos para obtener los |cRXP_LOOT_Trozos de cristal necrótico|r
    >>|cRXP_LOOT_Los|r Trozos de cristal necróticos|cRXP_WARN_ también se pueden despojar del suelo|r
    >>|cRXP_WARN_¡Ten cuidado! Estos enemigos golpean fuerte. Los |cRXP_ENEMY_Déspotas oscuros|r también tienen una habilidad de lanzamiento instantáneo de 50-70 de daño|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Entrega la misión El Culto de los Malditos
    .turnin 96898 >>Entrega la misión Los restos de la guerra
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson
step
    #label LinneaTurnin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Entrega la misión Patrulla de la retaguardia
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #completewith UCflightpath1
    .goto 1420/0,240.75,1877.57,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Toma el ascensor para bajar a Entrañas
step << !Undead
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Entrega la misión Mennet Carkad
    .accept 1886 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Archibald|r en el Barrio de la Guerra
    .train 201 >>Aprende Espadas de 1 mano
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto 1458/0,308.89,1667.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Subastador Cain|r
    >>|cRXP_BUY_Compra tres|r |T133884:0|t[Ojos de múrloc] |cRXP_BUY_en la Casa de subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
    .zoneskip Undercity,1
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1478 >> Entrega la misión Las invocaciones de Halgar
    .accept 1473 >> Acepta la misión Criatura Abisal
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
step << Warlock
    #optional
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Despoja |cRXP_PICK_Cofre de Perrine|r para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>Despoja |cRXP_PICK_Cofre de Perrine|r del suelo para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >> Viaja de vuelta a Entrañas a través de las cloacas
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1473 >> Entrega la misión Criatura Abisal
    .accept 1471 >> Acepta la misión El vínculo
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,41.99,1704.480
    .cast 9221 >>|cRXP_WARN_Usa las|r |T134416:0|t[Runas de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Entrega la misión El vínculo
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Priest
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Aprende |T136244:0|t[Encantamiento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.24,1681.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josef|r
    .train 3908 >> Aprende |T136249:0|t[Sastrería]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Convierte todos tus|r |T132889:0|t[Paño de lino] |cRXP_WARN_en|r |T132890:0|t[Madeja de paño de lino]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josef|r
    .train 7623 >> Aprende |T132662:0|t[Toga de lino marrón]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Compra|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crea tantas|r |T132662:0|t[Togas de lino marrón] |cRXP_WARN_como puedas|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Compra una|r |T133942:0|t[Vara de cobre] |cRXP_BUY_y|r |T135435:0|t[Madera simple] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Desencanta todas las|r |T132662:0|t[Togas de lino marrón] |cRXP_WARN_que hiciste y crea una|r |T135225:0|t[Vara rúnica de cobre]
    >>|cRXP_WARN_Si no obtuviste una|r |T132867:0|t[Esencia mágica inferior] |cRXP_WARN_entonces compra una de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_si hay una disponible. De lo contrario termina este paso más tarde|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Aprende |T135139:0|t[Varita mágica inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
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
step << Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 1766 >> Aprende |T132219:0|t[Patada]
    .target Carolyn Ward
    .xp <12,1
    .money <0.08
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r
    .train 145 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Anastasia Hartwell
    .xp <12,1
    .money <0.08
step << Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 755 >> Aprende |T136168:0|t[Cauce de salud]
    .target Richard Kerwin
    .xp <12,1
    .money <0.08
step << Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lazarus|r
	.train 588 >>Aprende |T135926:0|t[Fuego interno]
    .target Father Lazarus
    .xp <12,1
    .money <0.08
step << Warrior
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baltus Fowler|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .target Baltus Fowler
    .xp <12,1
    .money <0.08
step
    #optional
    .abandon 806 >> Abandona la misión Oscuras tormentas
step
    #optional
    .abandon 408 >> Abandona la misión La Cripta de la Familia
step << Warrior
    #optional
    .abandon 1821 >> Abandona la misión Reliquias Agamand
step
    #optional
    .abandon 375 >>Abandona la misión El frío de la muerte
step
    #label LeaveUndercity3
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Silverpine Forest
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .zoneskip Silverpine Forest
]])
